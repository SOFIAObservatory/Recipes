# Adapted from previous scipts by idlastro (https://idlastro.gsfc.nasa.gov/)

__all__ = ["helio2lsr", "vgeo", "jdcnv", "baryvel", "premat"]


def helio2lsr(vhelio, vlsr, ra, dec, reverse):
    import math

    # Stolen from helio2lsr.proo
    solarmotion_ra = ((18.0 + 3.0 / 6.0e1 + 50.29 / 3.6e3) * 15.0) * (math.pi / 180.0)
    solarmotion_dec = (30.0 + 0.0 / 6.0e1 + 16.8 / 3.6e3) * (math.pi / 180.0)
    solarmotion_mag = 20.0

    # solarmotion_ra = ((17+49/6e1+58.667/3.6e3)*15.0)*(math.pi/180.)
    # solarmotion_dec = (28+7/6e1+3.96/3.6e3)*(math.pi/180.)
    # solarmotion_mag = 16.55294

    deldec2 = (dec - solarmotion_dec) / 2.0
    delra2 = (ra - solarmotion_ra) / 2.0
    sindis = math.sqrt(
        math.sin(deldec2) * math.sin(deldec2)
        + math.cos(solarmotion_dec)
        * math.cos(dec)
        * math.sin(delra2)
        * math.sin(delra2)
    )
    theta = 2.0 * math.asin(sindis)

    if reverse:
        vhelio = vlsr - solarmotion_mag * math.cos(theta)

    else:

        vlsr = vhelio + solarmotion_mag * math.cos(theta)

    return vhelio, vlsr


def jdcnv(year, month, day, hour):
    import math

    L = int((month - 14) / 12)  # In leap years, -1 for Jan, Feb, else 0

    julian = (
        day
        - 32075
        + int(1461 * (year + 4800 + L) / 4)
        + int(367 * (month - 2 - L * 12) / 12)
        - int(3 * ((year + 4900 + L) / 100) / 4)
    )

    julian = float(julian) + (hour / 24.0) - 0.5

    return julian


def baryvel(dje, deq=0):
    import numpy as np

    # import math

    dc2pi = 2.0 * np.pi
    cc2pi = 2.0 * np.pi
    dc1 = 1.0e0
    dcto = 2415020.0e0
    dcjul = 36525.0e0  # days in Julian year
    dcbes = 0.313e0
    dctrop = 365.24219572e0  # days in tropical year (...572 insig)
    dc1900 = 1900.0e0
    au = 1.4959787e8

    # Constants dcfel(i,k) of fast changing elements.
    dcfel = np.array(
        [
            1.7400353e00,
            6.2833195099091e02,
            5.2796e-6,
            6.2565836e00,
            6.2830194572674e02,
            -2.6180e-6,
            4.7199666e00,
            8.3997091449254e03,
            -1.9780e-5,
            1.9636505e-1,
            8.4334662911720e03,
            -5.6044e-5,
            4.1547339e00,
            5.2993466764997e01,
            5.8845e-6,
            4.6524223e00,
            2.1354275911213e01,
            5.6797e-6,
            4.2620486e00,
            7.5025342197656e00,
            5.5317e-6,
            1.4740694e00,
            3.8377331909193e00,
            5.6093e-6,
        ]
    )

    dcfel = np.reshape(dcfel, (8, 3))

    # constants dceps and ccsel(i,k) of slowly changing elements.
    dceps = np.array([4.093198e-1, -2.271110e-4, -2.860401e-8])
    ccsel = np.array(
        [
            1.675104e-2,
            -4.179579e-5,
            -1.260516e-7,
            2.220221e-1,
            2.809917e-2,
            1.852532e-5,
            1.589963e00,
            3.418075e-2,
            1.430200e-5,
            2.994089e00,
            2.590824e-2,
            4.155840e-6,
            8.155457e-1,
            2.486352e-2,
            6.836840e-6,
            1.735614e00,
            1.763719e-2,
            6.370440e-6,
            1.968564e00,
            1.524020e-2,
            -2.517152e-6,
            1.282417e00,
            8.703393e-3,
            2.289292e-5,
            2.280820e00,
            1.918010e-2,
            4.484520e-6,
            4.833473e-2,
            1.641773e-4,
            -4.654200e-7,
            5.589232e-2,
            -3.455092e-4,
            -7.388560e-7,
            4.634443e-2,
            -2.658234e-5,
            7.757000e-8,
            8.997041e-3,
            6.329728e-6,
            -1.939256e-9,
            2.284178e-2,
            -9.941590e-5,
            6.787400e-8,
            4.350267e-2,
            -6.839749e-5,
            -2.714956e-7,
            1.348204e-2,
            1.091504e-5,
            6.903760e-7,
            3.106570e-2,
            -1.665665e-4,
            -1.590188e-7,
        ]
    )

    ccsel = np.reshape(ccsel, (17, 3))

    # Constants of the arguments of the short-period perturbations.
    dcargs = np.array(
        [
            5.0974222e0,
            -7.8604195454652e2,
            3.9584962e0,
            -5.7533848094674e2,
            1.6338070e0,
            -1.1506769618935e3,
            2.5487111e0,
            -3.9302097727326e2,
            4.9255514e0,
            -5.8849265665348e2,
            1.3363463e0,
            -5.5076098609303e2,
            1.6072053e0,
            -5.2237501616674e2,
            1.3629480e0,
            -1.1790629318198e3,
            5.5657014e0,
            -1.0977134971135e3,
            5.0708205e0,
            -1.5774000881978e2,
            3.9318944e0,
            5.2963464780000e1,
            4.8989497e0,
            3.9809289073258e1,
            1.3097446e0,
            7.7540959633708e1,
            3.5147141e0,
            7.9618578146517e1,
            3.5413158e0,
            -5.4868336758022e2,
        ]
    )

    dcargs = np.reshape(dcargs, (15, 2))

    # Amplitudes ccamps(n,k) of the short-period perturbations.
    ccamps = np.array(
        [
            -2.279594e-5,
            1.407414e-5,
            8.273188e-6,
            1.340565e-5,
            -2.490817e-7,
            -3.494537e-5,
            2.860401e-7,
            1.289448e-7,
            1.627237e-5,
            -1.823138e-7,
            6.593466e-7,
            1.322572e-5,
            9.258695e-6,
            -4.674248e-7,
            -3.646275e-7,
            1.140767e-5,
            -2.049792e-5,
            -4.747930e-6,
            -2.638763e-6,
            -1.245408e-7,
            9.516893e-6,
            -2.748894e-6,
            -1.319381e-6,
            -4.549908e-6,
            -1.864821e-7,
            7.310990e-6,
            -1.924710e-6,
            -8.772849e-7,
            -3.334143e-6,
            -1.745256e-7,
            -2.603449e-6,
            7.359472e-6,
            3.168357e-6,
            1.119056e-6,
            -1.655307e-7,
            -3.228859e-6,
            1.308997e-7,
            1.013137e-7,
            2.403899e-6,
            -3.736225e-7,
            3.442177e-7,
            2.671323e-6,
            1.832858e-6,
            -2.394688e-7,
            -3.478444e-7,
            8.702406e-6,
            -8.421214e-6,
            -1.372341e-6,
            -1.455234e-6,
            -4.998479e-8,
            -1.488378e-6,
            -1.251789e-5,
            5.226868e-7,
            -2.049301e-7,
            0.0e0,
            -8.043059e-6,
            -2.991300e-6,
            1.473654e-7,
            -3.154542e-7,
            0.0e0,
            3.699128e-6,
            -3.316126e-6,
            2.901257e-7,
            3.407826e-7,
            0.0e0,
            2.550120e-6,
            -1.241123e-6,
            9.901116e-8,
            2.210482e-7,
            0.0e0,
            -6.351059e-7,
            2.341650e-6,
            1.061492e-6,
            2.878231e-7,
            0.0e0,
        ]
    )

    ccamps = np.reshape(ccamps, (15, 5))

    # Constants csec3 and ccsec(n,k) of the secular perturbations in longitude.
    ccsec3 = -7.757020e-8
    ccsec = np.array(
        [
            1.289600e-6,
            5.550147e-1,
            2.076942e00,
            3.102810e-5,
            4.035027e00,
            3.525565e-1,
            9.124190e-6,
            9.990265e-1,
            2.622706e00,
            9.793240e-7,
            5.508259e00,
            1.559103e01,
        ]
    )

    ccsec = np.reshape(ccsec, (4, 3))

    # Sidereal rates.
    dcsld = 1.990987e-7  # sidereal rate in longitude
    ccsgd = 1.990969e-7  # sidereal rate in mean anomaly

    # Constants used in the calculation of the lunar contribution.
    cckm = 3.122140e-5
    ccmld = 2.661699e-6
    ccfdi = 2.399485e-7

    # Constants dcargm(i,k) of the arguments of the perturbations of the motion
    # of the moon.
    dcargm = np.array(
        [
            5.1679830e0,
            8.3286911095275e3,
            5.4913150e0,
            -7.2140632838100e3,
            5.9598530e0,
            1.5542754389685e4,
        ]
    )

    dcargm = np.reshape(dcargm, (3, 2))

    # Amplitudes ccampm(n,k) of the perturbations of the moon.
    ccampm = np.array(
        [
            1.097594e-1,
            2.896773e-7,
            5.450474e-2,
            1.438491e-7,
            -2.223581e-2,
            5.083103e-8,
            1.002548e-2,
            -2.291823e-8,
            1.148966e-2,
            5.658888e-8,
            8.249439e-3,
            4.063015e-8,
        ]
    )

    ccampm = np.reshape(ccampm, (3, 4))

    # ccpamv(k)=a*m*dl,dt (planets), dc1mme=1-mass(earth+moon)
    ccpamv = np.array([8.326827e-11, 1.843484e-11, 1.988712e-12, 1.881276e-12])
    dc1mme = 0.99999696e0

    # Time arguments.
    dt = (dje - dcto) / dcjul
    tvec = np.array([1e0, dt, dt * dt])

    # Values of all elements for the instant(aneous?) dje.
    temp = (np.transpose(np.dot(np.transpose(tvec), np.transpose(dcfel)))) % dc2pi
    dml = temp[0]
    forbel = temp[1:8]
    g = forbel[0]  # old fortran equivalence

    deps = (tvec * dceps).sum() % dc2pi
    sorbel = (np.transpose(np.dot(np.transpose(tvec), np.transpose(ccsel)))) % dc2pi
    e = sorbel[0]  # old fortran equivalence

    # Secular perturbations in longitude.
    dummy = np.cos(2.0)
    sn = np.sin(
        (np.transpose(np.dot(np.transpose(tvec[0:2]), np.transpose(ccsec[:, 1:3]))))
        % cc2pi
    )

    # Periodic perturbations of the emb (earth-moon barycenter).
    pertl = (ccsec[:, 0] * sn).sum() + dt * ccsec3 * sn[2]
    pertld = 0.0
    pertr = 0.0
    pertrd = 0.0

    for k in range(0, 15):
        a = (dcargs[k, 0] + dt * dcargs[k, 1]) % dc2pi
        cosa = np.cos(a)
        sina = np.sin(a)
        pertl = pertl + ccamps[k, 0] * cosa + ccamps[k, 1] * sina
        pertr = pertr + ccamps[k, 2] * cosa + ccamps[k, 3] * sina

        if k < 11:
            pertld = pertld + (ccamps[k, 1] * cosa - ccamps[k, 0] * sina) * ccamps[k, 4]
            pertrd = pertrd + (ccamps[k, 3] * cosa - ccamps[k, 2] * sina) * ccamps[k, 4]

    # Elliptic part of the motion of the emb.
    phi = (e * e / 4e0) * (
        ((8e0 / e) - e) * np.sin(g) + 5 * np.sin(2 * g) + (13 / 3e0) * e * np.sin(3 * g)
    )
    f = g + phi
    sinf = np.sin(f)
    cosf = np.cos(f)
    dpsi = (dc1 - e * e) / (dc1 + e * cosf)
    phid = 2 * e * ccsgd * ((1 + 1.5 * e * e) * cosf + e * (1.25 - 0.5 * sinf * sinf))
    psid = ccsgd * e * sinf / np.sqrt(dc1 - e * e)

    # Perturbed heliocentric motion of the emb.
    d1pdro = dc1 + pertr
    drd = d1pdro * (psid + dpsi * pertrd)
    drld = d1pdro * dpsi * (dcsld + phid + pertld)
    dtl = (dml + phi + pertl) % dc2pi
    dsinls = np.sin(dtl)
    dcosls = np.cos(dtl)
    dxhd = drd * dcosls - drld * dsinls
    dyhd = drd * dsinls + drld * dcosls

    # Influence of eccentricity, evection and variation on the geocentric
    # motion of the moon.
    pertl = 0.0
    pertld = 0.0
    pertp = 0.0
    pertpd = 0.0

    for k in range(0, 3):
        a = (dcargm[k, 0] + dt * dcargm[k, 1]) % dc2pi
        sina = np.sin(a)
        cosa = np.cos(a)
        pertl = pertl + ccampm[k, 0] * sina
        pertld = pertld + ccampm[k, 1] * cosa
        pertp = pertp + ccampm[k, 2] * cosa
        pertpd = pertpd - ccampm[k, 3] * sina

    # Heliocentric motion of the earth.
    tl = forbel[1] + pertl
    sinlm = np.sin(tl)
    coslm = np.cos(tl)
    sigma = cckm / (1.0 + pertp)
    a = sigma * (ccmld + pertld)
    b = sigma * pertpd
    dxhd = dxhd + a * sinlm + b * coslm
    dyhd = dyhd - a * coslm + b * sinlm
    dzhd = -sigma * ccfdi * np.cos(forbel[2])

    # Barycentric motion of the earth.
    dxbd = dxhd * dc1mme
    dybd = dyhd * dc1mme
    dzbd = dzhd * dc1mme

    for k in range(0, 4):
        plon = forbel[k + 3]
        pomg = sorbel[k + 1]
        pecc = sorbel[k + 9]
        tl = (plon + 2.0 * pecc * np.sin(plon - pomg)) % cc2pi
        dxbd = dxbd + ccpamv[k] * (np.sin(tl) + pecc * np.sin(pomg))
        dybd = dybd - ccpamv[k] * (np.cos(tl) + pecc * np.cos(pomg))
        dzbd = dzbd - ccpamv[k] * sorbel[k + 13] * np.cos(plon - sorbel[k + 5])

    # Transition to mean equator of date.
    dcosep = np.cos(deps)
    dsinep = np.sin(deps)
    dyahd = dcosep * dyhd - dsinep * dzhd
    dzahd = dsinep * dyhd + dcosep * dzhd
    dyabd = dcosep * dybd - dsinep * dzbd
    dzabd = dsinep * dybd + dcosep * dzbd

    # Epoch of mean equinox (deq) of zero implies that we should use
    # Julian ephemeris date (dje) as epoch of mean equinox.
    if deq == 0:
        dvelh = au * (np.array([dxhd, dyahd, dzahd]))
        dvelb = au * (np.array([dxbd, dyabd, dzabd]))
        return (dvelh, dvelb)

    # General precession from epoch dje to deq.
    deqdat = (dje - dcto - dcbes) / dctrop + dc1900
    prema = premat(deqdat, deq, fk4=True)

    dvelh = au * (
        np.transpose(
            np.dot(np.transpose(prema), np.transpose(np.array([dxhd, dyahd, dzahd])))
        )
    )
    dvelb = au * (
        np.transpose(
            np.dot(np.transpose(prema), np.transpose(np.array([dxbd, dyabd, dzabd])))
        )
    )

    return (dvelh, dvelb)


def premat(equinox1, equinox2, fk4):
    import numpy as np

    deg_to_rad = np.pi / 180.0e0
    sec_to_rad = deg_to_rad / 3600.0e0

    t = 0.001e0 * (equinox2 - equinox1)

    if not fk4:
        st = 0.001e0 * (equinox1 - 2000.0e0)
        #  Compute 3 rotation angles
        a = (
            sec_to_rad
            * t
            * (
                23062.181e0
                + st * (139.656e0 + 0.0139e0 * st)
                + t * (30.188e0 - 0.344e0 * st + 17.998e0 * t)
            )
        )

        b = sec_to_rad * t * t * (79.280e0 + 0.410e0 * st + 0.205e0 * t) + a

        c = (
            sec_to_rad
            * t
            * (
                20043.109e0
                - st * (85.33e0 + 0.217e0 * st)
                + t * (-42.665e0 - 0.217e0 * st - 41.833e0 * t)
            )
        )

    else:
        st = 0.001e0 * (equinox1 - 1900.0e0)
        #  Compute 3 rotation angles

        a = (
            sec_to_rad
            * t
            * (
                23042.53e0
                + st * (139.75e0 + 0.06e0 * st)
                + t * (30.23e0 - 0.27e0 * st + 18.0e0 * t)
            )
        )

        b = sec_to_rad * t * t * (79.27e0 + 0.66e0 * st + 0.32e0 * t) + a

        c = (
            sec_to_rad
            * t
            * (
                20046.85e0
                - st * (85.33e0 + 0.37e0 * st)
                + t * (-42.67e0 - 0.37e0 * st - 41.8e0 * t)
            )
        )

    sina = np.sin(a)
    sinb = np.sin(b)
    sinc = np.sin(c)
    cosa = np.cos(a)
    cosb = np.cos(b)
    cosc = np.cos(c)

    r = np.zeros((3, 3))
    r[0, :] = np.array(
        [
            cosa * cosb * cosc - sina * sinb,
            sina * cosb + cosa * sinb * cosc,
            cosa * sinc,
        ]
    )
    r[1, :] = np.array(
        [
            -cosa * sinb - sina * cosb * cosc,
            cosa * cosb - sina * sinb * cosc,
            -sina * sinc,
        ]
    )
    r[2, :] = np.array([-cosb * sinc, -sinb * sinc, cosc])

    return r


def calc(
    systemic_velocity,
    coords,
    year,
    month,
    day,
    hour,
    velocity_type,
    v_exp=0,
    epoch=2000.0,
):
    import numpy as np
    import math
    from astropy.coordinates import SkyCoord
    import astropy.units as u

    # Y CVn example
    v_lsr = 7.0  # km s-1
    v_helio = 0.0  # 11.696108934396246

    vh = np.empty(3)
    vb = np.empty(3)
    for i in range(0, 3):
        vh[i] = 0.0
        vb[i] = 0.0

    ra_radian = coords.ra.to(u.radian).value
    dec_radian = coords.dec.to(u.radian).value

    if velocity_type == "lsr":
        v_helio = 0
        helio, lsr = helio2lsr(
            v_helio, systemic_velocity, ra_radian, dec_radian, reverse=True
        )
    elif velocity_type == "helio":
        v_lsr = 0
        helio, lsr = helio2lsr(
            systemic_velocity, v_lsr, ra_radian, dec_radian, reverse=False
        )
    else:
        raise Exception("Unrecognized velocity type (lsr, helio)" + str(velocity_type))

    jd = jdcnv(year, month, day, hour)

    vh, vb = baryvel(jd, epoch)

    vgeo = (
        vh[0] * math.cos(dec_radian) * math.cos(ra_radian)
        + vh[1] * math.cos(dec_radian) * math.sin(ra_radian)
        + vh[2] * math.sin(dec_radian)
    )

    corrVel = helio - vgeo
    return corrVel
