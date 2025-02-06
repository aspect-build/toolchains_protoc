"""Mirrored integrity hashes for the pre-built protoc binaries distributed by the protobuf project.

See ./mirror_protoc_release.sh for automation to update this file.
See .github/workflows/mirror_protoc_release.yml for automation that runs the script daily.
"""

# Keys are chosen to match the filenames published on protocolbuffers/protobuf releases
PROTOC_PLATFORMS = {
    "linux-aarch_64": {
        "compatible_with": [
            "@platforms//os:linux",
            "@platforms//cpu:aarch64",
        ],
    },
    "linux-ppcle_64": {
        "compatible_with": [
            "@platforms//os:linux",
            "@platforms//cpu:ppc64le",
        ],
    },
    "linux-s390_64": {
        "compatible_with": [
            "@platforms//os:linux",
            "@platforms//cpu:s390x",
        ],
    },
    "linux-x86_64": {
        "compatible_with": [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
    },
    "osx-aarch_64": {
        "compatible_with": [
            "@platforms//os:macos",
            "@platforms//cpu:aarch64",
        ],
    },
    "osx-x86_64": {
        "compatible_with": [
            "@platforms//os:macos",
            "@platforms//cpu:x86_64",
        ],
    },
    "win64": {
        "compatible_with": [
            "@platforms//os:windows",
            "@platforms//cpu:x86_64",
        ],
    },
}

# Synced from https://github.com/protocolbuffers/protobuf/releases:
PROTOC_VERSIONS = {
    "v30.0-rc1": {
        "protoc-30.0-rc-1-linux-aarch_64.zip": "sha384-56l6kOj6UhfYuLp6N6pQ29w97pB9DIdDWzxL+EpXd0Jkrp5VU7ZKYnXl4KBQnFxb",
        "protoc-30.0-rc-1-linux-ppcle_64.zip": "sha384-22+yeEAleNh6Ie3/Er4NXAz6f3qoNh0XlboqFiBt8GGhe8ojsz3yaBrStMly89XH",
        "protoc-30.0-rc-1-linux-s390_64.zip": "sha384-jtXcXbe3hPMx+VHlE6/0sx3V/b8MY97VbZY5cLSAE6xLTZksZPEetVQxVvyE8rEZ",
        "protoc-30.0-rc-1-linux-x86_32.zip": "sha384-IqXooWnCM7JXxx/U23IhQUnG6M1qxE1349mU5yzZJ7dWs+UYEtEjLqWpjbGeR0s9",
        "protoc-30.0-rc-1-linux-x86_64.zip": "sha384-fdBz2qGLgbPIeU0NoFkc9zV4ph1w9/8Pg2S/zxbU8eczdkXFDB5auw+5wYR9SfCq",
        "protoc-30.0-rc-1-osx-aarch_64.zip": "sha384-XkK6zAdMGD0MPbiAKRcpurg0bP/GWOBxA7Tje2BVow+Y5mZzx05hOVDMJbI9bW29",
        "protoc-30.0-rc-1-osx-universal_binary.zip": "sha384-zPUJQ0mfGujnSboxwsgA40aETyvfDOPWRrh6zvyMtGWVuf/9+6pTrhdr2tMSZduO",
        "protoc-30.0-rc-1-osx-x86_64.zip": "sha384-/T0lgI5gbzWzVwfWd/MvSrC9Ds6iqemUCtcXcLQ0Z5LiI2i6BO5MTaRqJutybs/i",
        "protoc-30.0-rc-1-win32.zip": "sha384-39SdARz57lIQaYaY9Cvykdl32gD2gY4/rue6ALqXKBqSD+j8OFwB7SDDVOI7pyPE",
        "protoc-30.0-rc-1-win64.zip": "sha384-Zst5ubc4YF1UkXZNkF9l4Quj6oEJ+I00oNqjZbvstvh09i0pRLFizu1MbS9oS4U2",
    },
    "v29.3": {
        "protoc-29.3-linux-aarch_64.zip": "sha384-mhMzAMso1xwdDsQpDjkTFLXxzuRYKN8/zCRJciZDP9E5biEA8GDKN6EUvCw9WmnO",
        "protoc-29.3-linux-ppcle_64.zip": "sha384-8ZLcjyNwZl8zhYY4rgoqVFSriPtu6MKCUUpzH0ueuHJ/yVrK501Ctpc6ih7R+fdW",
        "protoc-29.3-linux-s390_64.zip": "sha384-cRSxe6rG4AXSwcD/rjnt/iymCHzqamakppEi+RmZNY43oXjP1Pzcl4GBVSwsLqbg",
        "protoc-29.3-linux-x86_32.zip": "sha384-tZNRGt++DxSIzAVLzoj74sYNbAMfZ6MkU9G006/y6kl1OLDlLRBJS1SNt+e5T0jo",
        "protoc-29.3-linux-x86_64.zip": "sha384-3O42RH4Yl8Bmuwp582nbFw65/U2EOw0qsoWSTKof65TeAzVpk48jqkpNx44Cim7A",
        "protoc-29.3-osx-aarch_64.zip": "sha384-pZBq0LIs1UeNREZbPR7k0JzL+B2pPIP+0lAAUsM9wFrAfdJea6ZfYOYE9sW2xNja",
        "protoc-29.3-osx-universal_binary.zip": "sha384-PTl0ESy+j+Q149pdcvMeVt2qkdMUI9kIFvU8L5oHXyk0qFPRZYVyCD33YYeSU6DQ",
        "protoc-29.3-osx-x86_64.zip": "sha384-6QIIPdn6+0UC2GC14Y3u1H7oP7tYZta8PTQLRZZNDmyY8LRdujq4nhaAI0k/iiPt",
        "protoc-29.3-win32.zip": "sha384-uYhk66tU5n/LVezpf8NUXOepVYQnQfqXdrWBqR+Nhsl34jqaMXLBWtJ5GO1VuHUl",
        "protoc-29.3-win64.zip": "sha384-/cEKVAgcU4H9Ndl9CylylFZ8iN74ZpzzjUuiRhNvvQwwl89IXVqDT2h41bgKEiAC",
    },
    "v29.2": {
        "protoc-29.2-linux-aarch_64.zip": "sha384-YA0QYyrIPwSg/gdb9fi3XZxdp7pycFUPwLxmc/TRoULTToXgYYGEQAEFGiQVXaaz",
        "protoc-29.2-linux-ppcle_64.zip": "sha384-ZwS5o5ON+Kk5EqZMphsUXtacfyAtH2r2lCa8coY1RNcA/fUHaBELTJOtDAKOIEEX",
        "protoc-29.2-linux-s390_64.zip": "sha384-Hxjrzrk9nbo3A0oBaIMdwhB2ASJs9WUtBUDtCwG3vS05h8a5dKn3mkK0fkxlhUy5",
        "protoc-29.2-linux-x86_32.zip": "sha384-rp4Aedrz1hO6TPCHFuHrE7OurkhtV9qV6Aich8y9zbj7+x6imwLYC5ODXy2taX0P",
        "protoc-29.2-linux-x86_64.zip": "sha384-0kba8tS1jX4j6AD2RimMrrXLGxhyo1stso0jV9g5Ayb54g47WXHS3hDOaspXb/+v",
        "protoc-29.2-osx-aarch_64.zip": "sha384-GJWLeuuKUySaygzUIpCgHppXITd6OShkLyGzPPvWMvOtqccyMJkeP541GrwJeWaf",
        "protoc-29.2-osx-universal_binary.zip": "sha384-GYYXkrtH9qEiArIJNVmHXi8VwpuSYEcT8fn0EWd3FxQncaichrFXAxuzTKIE2z2V",
        "protoc-29.2-osx-x86_64.zip": "sha384-IEQl+gPsiPC0n3WM7qNBqfMHeIt7ucaYymy838jL8h7vliKqMkKBnlTs9scdLYky",
        "protoc-29.2-win32.zip": "sha384-R/eC+UYDB4NOHLNgHkKmBYcA6EmrjzCiDx5yRVBR+lY/NgTo/12EVnXMLz5eVDbC",
        "protoc-29.2-win64.zip": "sha384-Ntz2STqPHz9n9ZjmlEt0Nqku2taUrDGJOZKBdxCT9qeOOEj5n7BfugShwrEA8cmI",
    },
    "v29.1": {
        "protoc-29.1-linux-aarch_64.zip": "sha384-fh7s7ujo+Y7FyWa6zMb+D2wDdrRuxAWXjZ9yhMKC6Vv4fzILNfzzXDUq4LiEVznV",
        "protoc-29.1-linux-ppcle_64.zip": "sha384-ahU4wVRoeDtKveQjsDwGUH/+zxc+1MZc3LcRHxs4lHmiNLsIq/pF85yZG1cCP8sf",
        "protoc-29.1-linux-s390_64.zip": "sha384-WskL7t0V1qtqubZ6T+Wvzz6rypNzAnrhQpVNYSMjVPxrcsmnotEhH6qKKfmOJua/",
        "protoc-29.1-linux-x86_32.zip": "sha384-HPP9C20KOYP1KERvbYzBHb3ESE833QAWFzGSeCA9QF/VOT2lLeCvq608iW9RKwoX",
        "protoc-29.1-linux-x86_64.zip": "sha384-DDfylYxpJBDbyurmlSfwW0LVib6pM0XmiDlmdYFBzr5y5e6qBCawD1k7Csr1wY+I",
        "protoc-29.1-osx-aarch_64.zip": "sha384-L+k3qdRvtdAE4sbLKyzxKAH0N7vgl81pVkbrnlLsGWk0OHpZ7Lrd2JCiKmWUWxmU",
        "protoc-29.1-osx-universal_binary.zip": "sha384-jdPuGj68tJdY6quPYDnaL0BwtnJcholRHPhECce49ELpewiplihNcvHSuzaM07qv",
        "protoc-29.1-osx-x86_64.zip": "sha384-HRrSS9NP64ffE+GkFLO7JMyBUqrRCSyPTn6xgmTB37bBG1n/gxh4iuzFeTKGSDz/",
        "protoc-29.1-win32.zip": "sha384-THYRmGt+MqfzvGzq9/3J8ADkyPSQ8leqE0OcU3gZSY4HFP3IzTsZAqy0FeDJAwYC",
        "protoc-29.1-win64.zip": "sha384-3nRFfWq08NAk06EVz3NKdyIz3V81jOV/fIqtZx/GOFSJuR0yxt1U5S3SBBVkdU/A",
    },
    "v29.0": {
        "protoc-29.0-linux-aarch_64.zip": "sha384-jLrEM5U+hRvc449EkXvN3yobIOMt8/HjA1jMiZSoTDTWlwhy7reoMgflQZcv1Yp2",
        "protoc-29.0-linux-ppcle_64.zip": "sha384-Yd8IESZ59LY14DGqz3/wa0aJvoGLo4D8XhgFr/AznGhcJn9zRWgs0qNZvdvDnHDi",
        "protoc-29.0-linux-s390_64.zip": "sha384-6SlDXdc+D8E71WCozgcex2C1gR2FgchhOqvwgdl+oCtu/fvRtmAkgEZSlHwFY6+O",
        "protoc-29.0-linux-x86_32.zip": "sha384-V0wjvWqg0MZNyWBI7zenJEE/MaiTL59cCrtNLjsPWpfyZr5q1IQ26UB51auRfyUH",
        "protoc-29.0-linux-x86_64.zip": "sha384-GDUACCwGu02r7KCNxoFL4icWzlKdO4uxUVBHeYdmxxLulEn0aaq/73oXumaAtbqC",
        "protoc-29.0-osx-aarch_64.zip": "sha384-HzVIEp9cXOcGTLIjMgAt17MZuXfhp3REp+TpHKfOQZ10GePdR5cFKzEGUfmC4cUM",
        "protoc-29.0-osx-universal_binary.zip": "sha384-iJyWGFFKsMPkZ7Ll9ySP74l0PebAKj1KA8Alj5wbib78Vgkcs2Ctp9blywhUH143",
        "protoc-29.0-osx-x86_64.zip": "sha384-qbOMEewjlOCjcXv1ozJwHVyjtCcAFbNEeQXjXxW3veaJYMt0gduuRApBAcgx1xE0",
        "protoc-29.0-win32.zip": "sha384-QWLlPXnkZhxMZL6MkYnmqH+GbcOor+4BMLO8w+7uRsIEQMYG2ofl02Dyzw5rr7An",
        "protoc-29.0-win64.zip": "sha384-WotQJbKI5vda4SXrQMwA84ZnHgiG5OrK4wLn/rWtgETorKd/UYZeDieTRaRQOa6x",
    },
    "v29.0-rc3": {
        "protoc-29.0-rc-3-linux-aarch_64.zip": "sha384-NxW815e4bZ0qLnO9GxzUdkaoDQClQUdrv7aPB6qMMCG8hScx5ob43LSbsYVtcFhi",
        "protoc-29.0-rc-3-linux-ppcle_64.zip": "sha384-teeXNAu6p1em3GVzaxD2RcMLSY7SBiIBt+FC0mooiTrz/MxZmJnwDzA7W3Gq7Hlj",
        "protoc-29.0-rc-3-linux-s390_64.zip": "sha384-rhsqEnsZ0PRu14DJ+1zbMSuH6hBx0HIi9thiWaFj1+0RJkaxEx1VJ1uGFfPJs3zH",
        "protoc-29.0-rc-3-linux-x86_32.zip": "sha384-5bsG/3hq1U63TvDeiv0+5iYoHo/b/5QkJWNrkFcGkH8z6Oad7DPkdm+SDZXKN8e7",
        "protoc-29.0-rc-3-linux-x86_64.zip": "sha384-YPhktbPB4XgpWeVUFWgT7n1cCOPpQjYo99AN1EZ69Y4WG5s6pIDRjVnkxGtOaV5u",
        "protoc-29.0-rc-3-osx-aarch_64.zip": "sha384-5PFAWRFUwcFpA5DKDC1hUn3vm6lzv/Q0/KlasjPilyzEMvTEHL4or7Xjs8sx7R04",
        "protoc-29.0-rc-3-osx-universal_binary.zip": "sha384-CVbsYpN/NOuNnI0Swwwj5rk5t6IOlsoNkyw+98KOL5S0oSv8sDdyqgBy9ln4fJc8",
        "protoc-29.0-rc-3-osx-x86_64.zip": "sha384-naDPBLXsQA6d8zH70xbdyfxQyI99LFexLc2oft7ySOQR8QpmFRoDYKJCJjNCHQRn",
        "protoc-29.0-rc-3-win32.zip": "sha384-N3tBRdEzg6pyBe3vwpXuO6wb9Hk/qtBC9k6q1qkI+YUyUP41dsDdk5M0n6pUYP1a",
        "protoc-29.0-rc-3-win64.zip": "sha384-O7+edL2XR08ijs/xmI2GUQKZtG82ilRW8OxSMcL1LgU2TmCxtyyub+9kHRqpNMkF",
    },
    "v29.0-rc2": {
        "protoc-29.0-rc-2-linux-aarch_64.zip": "sha384-9XUAHaXQ/+4eLp5pZd+GxtGbkf05Lmeg7aHvJ/CMPQpb/H2olJ6OX/Eyu8Iw5LzH",
        "protoc-29.0-rc-2-linux-ppcle_64.zip": "sha384-Oi7fHPde2+IjRIUm8Xrv+vmFzaZ2nXtftsjC9Z5yQE9bWk8fgIEloodq842VUiV6",
        "protoc-29.0-rc-2-linux-s390_64.zip": "sha384-6aLZW4lFckBz+aMCe3nK6V3wh537kteen0rpsyPZ+ZlnsWgjGmN4l2nIwvuzlYKa",
        "protoc-29.0-rc-2-linux-x86_32.zip": "sha384-A9k14IX4ejU1PjODHzG3V16J6ch6dfXLcBJrHUEEnGL7ia85ANAcX/S06H67q/Fh",
        "protoc-29.0-rc-2-linux-x86_64.zip": "sha384-Xz3RqPkN/OH3tc6sr2zOJz6RlPy+CJOT1yaDl3ddVZeSKdfC/ay1PsJyxMuWlNhf",
        "protoc-29.0-rc-2-osx-aarch_64.zip": "sha384-GgAw/Ey4ZgQGrQlWoTVbl7bZ1hPirMdoUwNi6B1bnF/Qz78MuCBErUsDyGAtMWG+",
        "protoc-29.0-rc-2-osx-universal_binary.zip": "sha384-1AX1Ri1aPBrTZFb3O/c5kAN3mSL6dwb08McUMfZ+0Y2LpYTWihlJOyayx009OXiW",
        "protoc-29.0-rc-2-osx-x86_64.zip": "sha384-WjPvIZrdMjLHVLOsde02y9cDHVxOon77lMlU9LZxyZhgRLGIdpXFAVVGH73DQlZx",
        "protoc-29.0-rc-2-win32.zip": "sha384-NnxKOAat6hkiK3UmemjnJSbRRbF9vGzDs2DIc4/28pUmJmrIFksRxQsJXF+UphqK",
        "protoc-29.0-rc-2-win64.zip": "sha384-ODMitcA1yE2q+IjqyWS4KU65hBlJTGneEY3Fshl6SPTSSzZC0Ivca3UgNZP1cN7l",
    },
    "v28.2": {
        "protoc-28.2-linux-aarch_64.zip": "sha384-YoCDjDiOXMmWDF127y+ssNJyzZZB0iBvahJRtg1WXaCAqwPZYINYjVc1PRFU1vye",
        "protoc-28.2-linux-ppcle_64.zip": "sha384-zqj9K/BCLXaLaHogHtxEaXaM7EZOlSDy4gdDF/IgggjC8aep7kiHYXcoI3YGxQGs",
        "protoc-28.2-linux-s390_64.zip": "sha384-T2ZU9mHlVEVcURMIGIOj+eMt1GbLvhoorHqjfSzN37mGSx9u2aM0kXTXJ0o4KuB6",
        "protoc-28.2-linux-x86_32.zip": "sha384-YnxRrXsS+qkRhZqB3gHufgHYDV0GhGMWAYhtlCQSruWRLCoA3dKWmW/SG+x9f0Uf",
        "protoc-28.2-linux-x86_64.zip": "sha384-3+/LYZzN3HJ8mOUaSzov2xT0A/RSGWQLgfwHqps1+BMh9sXGOWx62xjVakT2+iN2",
        "protoc-28.2-osx-aarch_64.zip": "sha384-mGKWrBl4R3GDX32PZb/zBJ4vWIKaVHxEuzjbcjQBcW1wjka4NuyZWir2VzLjD6xQ",
        "protoc-28.2-osx-universal_binary.zip": "sha384-SD7VwWWMxu7LAFNJ4S8QXkyV9oj3Np5Z+yzd0glS/MbIzcTUgAVuW8Xp1yGHajgO",
        "protoc-28.2-osx-x86_64.zip": "sha384-GRfa0oXMMyAYraZts1fGE8JJU34dW57gfXStqACuTi6ffW8EvD/ICAR2fYPqbI2e",
        "protoc-28.2-win32.zip": "sha384-JLZkKQWyZbHgjV3b/Cc21aB6qVpCypCji07cLACszSOl1E7MvqK2NAW+Yail0IlF",
        "protoc-28.2-win64.zip": "sha384-jvlQRfQE4ZO5MxDt4oCWZeL+/z1Tiko1/1LLsnR78kePI4MY4n/g+/wlUDsHlw9P",
    },
    "v28.0": {
        "protoc-28.0-linux-aarch_64.zip": "sha384-/73qpZ0gHlqk4aQ+WCgyHLN0ZxLbMNw8vuegp7vJPIy27KFQ1+M3ChVK2+aLh+Cv",
        "protoc-28.0-linux-ppcle_64.zip": "sha384-10syLQw56+8Q7ArIRdUsOuPsElFVSJTD4K/NFx9/yigGfmkKJOiP8wMQAYD9lgvj",
        "protoc-28.0-linux-s390_64.zip": "sha384-7zFeJbek7YWNQbpj5CQG2cGsv0I2iBY8Q/81gnaSQtM5Frivfsw6VVkGP3mlsUoH",
        "protoc-28.0-linux-x86_32.zip": "sha384-wqGgoJo3aLcbbAo3W5GlFg6IF82eTZAdAJxkSP/d+DiyU8kASZGXR5rKLgZPD6Nv",
        "protoc-28.0-linux-x86_64.zip": "sha384-UvmV56LivD1jmqhsTWnIND/MiiJn4LA9VU4cBX1eGNiP3nxzbuifle3BODBzkoSV",
        "protoc-28.0-osx-aarch_64.zip": "sha384-M6I38C2jqHUK7MOJP1nfvl4quZ+fNKWZ7IMaLAuSmNsrQXQF8g12ToTX/RMw1Vqn",
        "protoc-28.0-osx-universal_binary.zip": "sha384-E9AW2CNj108YyA/B9/ecpI8kUPRksZGRc/GKQo67O0x3Y/ltR4XYwVWSc7eMbjen",
        "protoc-28.0-osx-x86_64.zip": "sha384-818SAi5Go3qU+RgmjdPLgMbdUW5zknXsZWSOU9+eFuyKR7ot/Sil89wnyiVQS4oY",
        "protoc-28.0-win32.zip": "sha384-T1zmL2cZmx8nDOEA6Rf7voDv9DNnpdJw/C4sgIJiIb1Y9Qx0mAgiVxvRdGmqOTWJ",
        "protoc-28.0-win64.zip": "sha384-ysEzGJIkUivfLMS7LH1E1/mBsJrSLSfMUCqSP9BkaR30mjCmn8iXBrtm6A+NfD79",
    },
    "v27.4": {
        "protoc-27.4-linux-aarch_64.zip": "sha384-T9lfA/iZes6gej98LWkOLRWqRs4IdmVjEWcytvALVl9yaTsR9pbEZgw7Zpf0inFD",
        "protoc-27.4-linux-ppcle_64.zip": "sha384-VL5a0XsMimLCvCrgxl7REoOUThR8Jf44fKGk3dugDIEJxpiBoNDqQwyZ/NcvxToU",
        "protoc-27.4-linux-s390_64.zip": "sha384-kKCW78pBv/f+VSuQAm7XP4rgPwdNg3t9ZHpRTKVKnPKGUdRo8xM7sogXcjelBkQr",
        "protoc-27.4-linux-x86_32.zip": "sha384-SR9Cwt08Z3vPVbO53fiEXee+6xIQnrasI70mZUzPApb5GUpAOEOvMsCmsudES+Ef",
        "protoc-27.4-linux-x86_64.zip": "sha384-AiHEQlXXyg517JNPFW+NGLlhCxIfZgQCC8mZj5sjNIq9PABmdVi6zlyG39PTFRYq",
        "protoc-27.4-osx-aarch_64.zip": "sha384-lzijC/Ik+S7PS9DZBP/o0C9dVhSQDQY4Oh+9mCUrqPCIMC2RVY5KoNetuxu2mpwO",
        "protoc-27.4-osx-universal_binary.zip": "sha384-zK8+cuyCP3v7/AW5Uzkc2Q/ix/p0n/5VTGjO6JfcijUFBRX1vBfRu3EuY8e3HnBk",
        "protoc-27.4-osx-x86_64.zip": "sha384-lEja9JT9yDick3FLSFMfp8IwhGKvM+Lzz+R4ZFWdRYdlp3NbR3LO5pQ4VEQSkNTi",
        "protoc-27.4-win32.zip": "sha384-j8neGyJYOWFWE/BWwUKG8aucUMPZgA87m6oX/vqTb6YDLAaMQrtkK+8GQIIN6sFa",
        "protoc-27.4-win64.zip": "sha384-SdQrF/I5B61FaXCPq7OIu9FivQsyegZQasSk56Y7e3vMkl46mHQtKkZLzkbxOCmH",
    },
    "v28.0-rc3": {
        "protoc-28.0-rc-3-linux-aarch_64.zip": "sha384-GvjZp0Zd6Fqm355L06Rb0Af58ArQJ3nKQ6kEkyzThleD86rl4Mlq+NoJ7XA5LBJq",
        "protoc-28.0-rc-3-linux-ppcle_64.zip": "sha384-cnDGPHw7NOqE/w1SejtAvdK3r2CIQvBLjMAIS1+qFC9YykCIhleFd4cNR7m4QR5z",
        "protoc-28.0-rc-3-linux-s390_64.zip": "sha384-Bfz0Yecpu5lEG6/7Z85zTbe95KWS+doN/5CqYsCkDAeNFG52UCW+nYDGAVrtXAM8",
        "protoc-28.0-rc-3-linux-x86_32.zip": "sha384-EN6IrpkVytHc8dFXPuXlhk0MbL1Rp18g29LFc/I1lSU2D+GZE6V57c6yYFWg4krl",
        "protoc-28.0-rc-3-linux-x86_64.zip": "sha384-EmOd1tvcuGsXFgFMl8zfSLo9ALYjzDZNJkxDxeScwwBKMvFif0PLnSxN1AqbY8Im",
        "protoc-28.0-rc-3-osx-aarch_64.zip": "sha384-zJ5IXsav/0RNQ01ykO4zLx+DsB0cgBgoQomjbE6bvDmspCRZ61eTBTQj9cjvhl7i",
        "protoc-28.0-rc-3-osx-universal_binary.zip": "sha384-OBxdGPnUBSUz5dmtLeBtavY1UUIM4fEsQwCH4EEkMPI1zTA5+yosnKzT71XUIaTA",
        "protoc-28.0-rc-3-osx-x86_64.zip": "sha384-SqhKdLa484FqsrerE1QL5ujhAT+GahPeewtYvgHkcg34VCrD2pb6ltjuvOG/ZwTB",
        "protoc-28.0-rc-3-win32.zip": "sha384-B8TAJaNiljUJSEGwDbRDSoC5glTaXN0K34zPJVDZAn3JWNvifx2WFx3qa6710tnR",
        "protoc-28.0-rc-3-win64.zip": "sha384-Mywg9Yn+Ktw5CCIdsxAOyNSmLuVI9ZOQBBbig6UdgzlBlb2w3c/T0gxxyP4mVTKP",
    },
    "v28.0-rc2": {
        "protoc-28.0-rc-2-linux-aarch_64.zip": "sha384-R3oN56+TbRvH7JyrwUVs85bB7cvGqyuqSSiY90vn/QL9G3TPGDoCS7JwgJFOJ2cA",
        "protoc-28.0-rc-2-linux-ppcle_64.zip": "sha384-YiYQ5GiBEWzkn5S6ru+VCk5PdrljdX7J8S63pZIPKmpIdPNB5nIcJKCqp/fDZxcP",
        "protoc-28.0-rc-2-linux-s390_64.zip": "sha384-Yw3GXPILQgw6h2sEmlvsf0TUVKoarMFlyj4kT7A79sKp+LZuAbgvI3ZGL3hoB3o3",
        "protoc-28.0-rc-2-linux-x86_32.zip": "sha384-9nEcf8rihwRivaT5Hog7y0bRg929fZfibDPEt210Zg6HtDiv4NV0usmcmJgRn6v6",
        "protoc-28.0-rc-2-linux-x86_64.zip": "sha384-VcgRjAQqGO3QMnIgJwA7yrENVCyu3PBVx12aZXWT4xmkRAxskSy/gytH3VXK4het",
        "protoc-28.0-rc-2-osx-aarch_64.zip": "sha384-p8/2tlqwOidx1p/nqkWMHPO5SRu+/bZ9ftFQkFKA3J0Bb7QOxrNFLn3uBEH/aCSu",
        "protoc-28.0-rc-2-osx-universal_binary.zip": "sha384-gHi7eXBgm5smiDAhF8P1N8bUJg+c4BKIh3Efgq6cBDKGhlmbWRWaG0kCkoQZdVZI",
        "protoc-28.0-rc-2-osx-x86_64.zip": "sha384-chqo+GKKB+ZeB8Lr/z3ATNc3AoxbyqCb1WrVWZP2Wk4j/0nOVbMVtzx9AXRYlJcr",
        "protoc-28.0-rc-2-win32.zip": "sha384-GaC73mOoLJg1KcJoJQLT3X3B47rEaewdAgXMrL8l76D+tC026oyJzKuzvBJwClh/",
        "protoc-28.0-rc-2-win64.zip": "sha384-TaJqzTrjWPY6nGKjGm0sTWG+k8f+39nKtyRRB3NgtUEnq2dwhPIW11UmlbsrEJ9n",
    },
    "v28.0-rc1": {
        "protoc-28.0-rc-1-linux-aarch_64.zip": "sha384-pIowFvz/r7gUt6y8N8MCmYZVRgOagmWzPZy0c3sNc2vSgUeo3PwFwmzwC4JVTo1F",
        "protoc-28.0-rc-1-linux-ppcle_64.zip": "sha384-VoIb8drzYp5b159in7TJ39X2oY+RKAfwI+Htg5KyLatNZbZ16dIXid2AKXOiAHcy",
        "protoc-28.0-rc-1-linux-s390_64.zip": "sha384-GFfQCsKXt97Oh8CfQ8yEYPjVp55q/h4NjSyCNLEZR6KS9fCJtzdVlzUc6THG3iFH",
        "protoc-28.0-rc-1-linux-x86_32.zip": "sha384-q+8/b4+Mzd7aWyWq/nKty5fLHb6tjriALumCKBLr2mTF5E0KvPf+lssEuiOTY/G1",
        "protoc-28.0-rc-1-linux-x86_64.zip": "sha384-7T1UNQyzbV510m7Uk6L8lWtv4Zleoz+SIWoepMhFN99qCdjcpB/6RX+bh1+YviMu",
        "protoc-28.0-rc-1-osx-aarch_64.zip": "sha384-yQL6/y+1gS4riQ8Sc0QtCUVpbUi0JX8XAmUmsSnQf0FxYj448oDZumGbnUDZ5DXd",
        "protoc-28.0-rc-1-osx-universal_binary.zip": "sha384-9SSmPdg4vAQx/gI1g15TeRX6CZN/S54cS4pGgA9HMexPxN6+UjZ4EM/utWL6wqbr",
        "protoc-28.0-rc-1-osx-x86_64.zip": "sha384-vFDff93DbGHGXVUpWPEv4qzhWNtFTAHeXAiheAMoBJSrIPP8uaA1+Bg44Rx5A09B",
        "protoc-28.0-rc-1-win32.zip": "sha384-+amxGoZHpqC3L2eP1RLJCmnSLmEH8XaHzS00pntMb31CVSOLEqC9y0g+EXBBJSYe",
        "protoc-28.0-rc-1-win64.zip": "sha384-FtaJiV+Y/nsZUcAc4RdAQ9X2W6f/N0QS7cLYyQDMWzf0x2Qrj7qYXViR+uVb+/cQ",
    },
    "v27.3": {
        "protoc-27.3-linux-aarch_64.zip": "sha384-pSkG02wB3RZk3WhP9zUzXiV7y7lpQzXzoYVSzWKxthFSeMx44el4nJFN4D+AOQYu",
        "protoc-27.3-linux-ppcle_64.zip": "sha384-/c/vqSJuxlhCLk3Vs8OrGHvfEi9JZQD6eh0ZHQBQA2LPBesOICNmImGnUYFf/wEO",
        "protoc-27.3-linux-s390_64.zip": "sha384-AzLjNSOy9eQrK68ZZmCke0RbGBrPF9KYxF6uDai+8daU5rHKSGheeVd6kiCZ79QH",
        "protoc-27.3-linux-x86_32.zip": "sha384-nt+noMKrE5YsyxzwYHkygo/bLB8rGtr2qSciF60XHrBX3be6sDaKjDGpR6V7Y6Q/",
        "protoc-27.3-linux-x86_64.zip": "sha384-bmR0X0T03xUpbZL/UiIefBHiJDdshnTq2Zl8t6HXr3Tx/v5bV1lyAXSwS+AQmpkH",
        "protoc-27.3-osx-aarch_64.zip": "sha384-xJzxRk0m8IDXEGz29ox5/IKcAr2WaK85ehNtmrcENTh38iksIS2eGxRn1QmNJKM2",
        "protoc-27.3-osx-universal_binary.zip": "sha384-N3As+G+LXqRdAcUQAfRGFhGt1/z5xqzpC7Lus9RuuRdxFyChmKrC37yHGYQ0GjAw",
        "protoc-27.3-osx-x86_64.zip": "sha384-tskgLuYb31CsIlg0tNEWT4i+rEGNdhI8z+fvoNShsDgOQG3C9Eon1xOmKQStW7Pp",
        "protoc-27.3-win32.zip": "sha384-viFkTCveNVFah7W4sMvJONOh+JDfJsiud9U3fXiUY1HrlXSmh6zEDAeiq6hsOCL5",
        "protoc-27.3-win64.zip": "sha384-7J5X38iYtPBwXoncfTZxIpDuSx7NsGGt0UCo+a7yU5eUwctq+bXqCRYweMjTjzw5",
    },
    "v27.2": {
        "protoc-27.2-linux-aarch_64.zip": "sha384-V1/CCL0in1Xpe2OeTiZeCLwlpvG6bXCb4iu08A0C2UvOgD1y/QJIWm9hzHrJARfk",
        "protoc-27.2-linux-ppcle_64.zip": "sha384-9e2C7NgyIPSqh3IX72FQNmQzV+k+1nzJisz20Qn5frGHqMJ+hAZDPfL1wRsONcOh",
        "protoc-27.2-linux-s390_64.zip": "sha384-Bzr6xX7n1qwB/YR5YnymAfn48NkZRd0iYcOwQUYu2K28Ki4N+0w1EBx571/iGDnz",
        "protoc-27.2-linux-x86_32.zip": "sha384-/sqJs9zDxU/jtUpdHjUfgwVFoxWfQ+dy/30PwPc37zTo4a0zAvUZnB5l7d0k1hSN",
        "protoc-27.2-linux-x86_64.zip": "sha384-7CiISxDCCr71p2CmjDvnYBNmbRMGK+tPHlpgME3LhuRNvijbvl81ncxZdkkty9pj",
        "protoc-27.2-osx-aarch_64.zip": "sha384-3FnQMA3ZDAU7yGVglO+zqacTGk/KeIsrqYszLZMuCFLB79jMlyGQTt34UT4kUOkB",
        "protoc-27.2-osx-universal_binary.zip": "sha384-lvGC/soDtzh7xZJou/FH+LprY9tBNmD/E4JOnSuPYBw2hLGKCejOGd4/eqT04wCF",
        "protoc-27.2-osx-x86_64.zip": "sha384-Yhhh4XktLWLNeOVY40cYBwUwS4G4R3hbtE3RAcDQBdnFlqkPKcE34uZtmbG8UEpu",
        "protoc-27.2-win32.zip": "sha384-FYPXOJBc+qKLS1T9WdjX2KQe/gCwDJ0X15TjaY6x/azFIQHoMcnmpP1Va4AU+LNx",
        "protoc-27.2-win64.zip": "sha384-c+64iC+CsGM2t3mEyXygYrH4Z98ULfRkHerrEutmKoSrEDpeuLg0fG12x3ssnp5r",
    },
    "v27.1": {
        "protoc-27.1-linux-aarch_64.zip": "sha384-t73H2zEfm211cNxkKdwoFLiVczkpW2vjayZaWjU1EUQAJxG0gdPuSikc6zLTbmSy",
        "protoc-27.1-linux-ppcle_64.zip": "sha384-CCtcFMpYAsICe1Mx82cb914j7BDMgPB7bMFQ+vf1pu5mnFnSYuJ53+ctmpa683Ld",
        "protoc-27.1-linux-s390_64.zip": "sha384-vtJnFuNKuI2ETJmQ1eKA0xAjqwb9gLpCOQcRxApvgjV7PCvkKYEw0ZDclYGwnuru",
        "protoc-27.1-linux-x86_32.zip": "sha384-Bn9Kg++xWE+xXiB+PkKpbsNPQGRLZOtH84zqlbfgSM5yPze38AEtU1Bx4RqilUXa",
        "protoc-27.1-linux-x86_64.zip": "sha384-LGikRnsEDQLdg5AmhCtSFmE0JgSXXI4eEKEXKnJQzr/9AwtOCQlmF3DNPttb+5QJ",
        "protoc-27.1-osx-aarch_64.zip": "sha384-DXtxeJiBamTorBL9cZiCdlAui+ZYEmNRriNADMRjvZ53lCVc4uQBqRbSvq4FtaGV",
        "protoc-27.1-osx-universal_binary.zip": "sha384-5ui0zob6p+hchnatV18Jr3iX9rdBCQNu0r9wA0PT8q/0whlj7y0/iQ1IZzdX7u4q",
        "protoc-27.1-osx-x86_64.zip": "sha384-8YB3mQFd6K8Kc7+rNOoW0AzrD7beSuvVBnB8HecewqL2M7eL+t72UMHxwPenc6Bb",
        "protoc-27.1-win32.zip": "sha384-MTMhesS6R1Z1LdWiuS/K1c+nznUwvX5j7JCm3ga4MtFMKciScopj9nbOlM+gr3d9",
        "protoc-27.1-win64.zip": "sha384-BJs+22/8ZzHBoDsc4eJ19LTKpeGf9riMvKMk6X8HHgJH3xMYnDfRuovvTQLQ9zW9",
    },
    "v27.0": {
        "protoc-27.0-linux-aarch_64.zip": "sha384-6eRxUWG55YrIwj7Hgh6IyrmTr7moIbKoa/0KVkWvJ2W4x/ATY0DTquxFwvw7rrn2",
        "protoc-27.0-linux-ppcle_64.zip": "sha384-5yLZaqx22YkLc745WZNbV5hLtB338n8niU2h2nuyQrrzJEkzZX1GoyQC0jJUJ8kM",
        "protoc-27.0-linux-s390_64.zip": "sha384-D/hRO2mIOoVt6wz1C6EWbpYSYK0g88rQVLDTFRgF2Qc//YMCUFz02UrGhJwZhWZi",
        "protoc-27.0-linux-x86_32.zip": "sha384-bcpKqLkEqbZY6F2usxbJ5XWUUdculRkgmd5eguebXUUh0xqfLkvsTPHoUoAqThCJ",
        "protoc-27.0-linux-x86_64.zip": "sha384-AdurbQ3RtowaQ29PpRO76dyvkvdGlw3oBHp9SiEtGosv4qFoUU2wChzFDsuP0fsk",
        "protoc-27.0-osx-aarch_64.zip": "sha384-//iDKCDPnRwJwjOY1+5vFTu6OSiApNjcNVLc0stHpMeuRgnqCXy6XHq1w02AqI8P",
        "protoc-27.0-osx-universal_binary.zip": "sha384-BF+lqA2Jeb571iYqf4D5NuySv7KTq9OCiIiVH/78Wd0H4kz4zlSj6AfrRaD/i5+A",
        "protoc-27.0-osx-x86_64.zip": "sha384-1s+f7jSZcPGTP1S+DveTcV/FrBF+eFrnPdCs2ULY/DQRau/QBeUzrMIoqwjA+/py",
        "protoc-27.0-win32.zip": "sha384-8CxpNBKMfkx9f4SRXIECCSsCYAeNIMGv8GRlg2obGVlrUAbeFZFEc8FcCOLJdKxZ",
        "protoc-27.0-win64.zip": "sha384-tCXavZpuRyVIlDgarYX/bFSLyrznPbwLBBvu1fbPkLOkgPeHIpGPbYFm+PU0CwWU",
    },
    "v27.0-rc3": {
        "protoc-27.0-rc-3-linux-aarch_64.zip": "sha384-GWAMO8tFIC0sUClBxfNQLh1Xmx8wLi9yft/zbq72wkkOUkhPrk7cyjVNf5jJ2pzD",
        "protoc-27.0-rc-3-linux-ppcle_64.zip": "sha384-jiYKyUbQqHaUfuln+xhIqUvoOXeSlvJ2auGn1uaZexpz4e3XWsq5rRl7twNO7vc6",
        "protoc-27.0-rc-3-linux-s390_64.zip": "sha384-dfJq1dG0mTtUcO0qK1C3WsWvjxrpHgN6c+JmuMMMf2LajE7h6nl7GfYTnfe6jW0n",
        "protoc-27.0-rc-3-linux-x86_32.zip": "sha384-t615mZhuoxv92pmvcGNK3LlVt4doDSv5ul2aGjiPhd9Ub/3qblQ6nIczNinu6FEX",
        "protoc-27.0-rc-3-linux-x86_64.zip": "sha384-ESHBTSFUqFJhAScexqoCCjUP2pIi16/pmV924Jas1UrPCInzR/uGPPXLj4Wy8FVh",
        "protoc-27.0-rc-3-osx-aarch_64.zip": "sha384-L6a6ytvEc+1jQ4qR2VRrN9eQtIxiQtnRCCgt3A9Qk0DRuK5/nMkabL2/za0VjBez",
        "protoc-27.0-rc-3-osx-universal_binary.zip": "sha384-CwXNFG8JU0LGaybfWc3o93eRycHapd18b+NgYAClrWNhFD12kjmw4d1mvO7rPxGW",
        "protoc-27.0-rc-3-osx-x86_64.zip": "sha384-AcIMszX8seCGPgOBvPKud5HMbhr2/KMJHdoA1ZxI1P4bxer2BatxjA9eH0zkI3PO",
        "protoc-27.0-rc-3-win32.zip": "sha384-JO6kqU8fJ7SqT/52rXFz5FjSAciLywj9sLUAdWIKPuLPfXzrpSnswE37XrtTeWxA",
        "protoc-27.0-rc-3-win64.zip": "sha384-0FY6I+m2zgGhsEuMGsxu7qqM3gqPXajHADR/naAJ0ySyUYIq803NNJrwFlOU5lD5",
    },
    "v27.0-rc2": {
        "protoc-27.0-rc-2-linux-aarch_64.zip": "sha384-EHm9kihoPFtNjOG/DfU8i0hXu0TZdKs1m8IuKXVCW6MCgmzP2CPcp4iwl94Zh/tV",
        "protoc-27.0-rc-2-linux-ppcle_64.zip": "sha384-xGKP5B9wk4vWmRsQt9srBQyln6lhhWeUwbTCMsPD1VqDkP1s/e4KzOnSWcChCtlX",
        "protoc-27.0-rc-2-linux-s390_64.zip": "sha384-uHH0CAosD5Bn5kw79o2WEYnoSm2X5XIz5sZPv5Amui+WKP6X3xzGRaq/El9LrjWx",
        "protoc-27.0-rc-2-linux-x86_32.zip": "sha384-sY8Y6wrOiUS+Oqpxw7QoYQ//yRENlAhsTdQZeOVoMSeEN7s0TvEIdFe8YxdPZVdB",
        "protoc-27.0-rc-2-linux-x86_64.zip": "sha384-qkN8HHv2RPXBe4YpTTIbh3EHYc0+UoqdJuC/9fmchcH2nTu7YXosDtmeF4EKvzjA",
        "protoc-27.0-rc-2-osx-aarch_64.zip": "sha384-bpIQAulUVEb005Nx6t24w48MckwjPbaCiL1Mak9GDCbJsb1gREQABowTq/ipEy6f",
        "protoc-27.0-rc-2-osx-universal_binary.zip": "sha384-V+RoOpJ1pWowFrW7HRNgW55+yUXoVO0HCZ30677Vl/vff/SfHuD3XuyK9sY2Bx9r",
        "protoc-27.0-rc-2-osx-x86_64.zip": "sha384-5fUx+Bpvr0gYQ1n6FiBoluvR7mJ8ecwt31ZFoMrLi6XJ2rx1Cn29mMuwsRvN3M+P",
        "protoc-27.0-rc-2-win32.zip": "sha384-i2ecjXWpJl6X6L5ttJwSOFLeiQ7QhJwWG2I3TUne7+2H+db9fIkIzzwYYA7tt5pJ",
        "protoc-27.0-rc-2-win64.zip": "sha384-A5IQYqEilNJ8u5KxJcSGhQNPaXMpKdmoLmRmvWJtuhzapgVYyiaaeJ0FtyIOhCk6",
    },
    "v27.0-rc1": {
        "protoc-27.0-rc-1-linux-aarch_64.zip": "sha384-wNIH2fvfux4PNkIATILTmz7HqgfMpOrZNIFNAplERxWPQQn9CYSQYPkDUUn9+xJf",
        "protoc-27.0-rc-1-linux-ppcle_64.zip": "sha384-iDpFT5V4RSFWrzsUvaQe1hU3G3l0SalUekHvkdYJ/xr+xmuR4GUf+geCvMlhZxbv",
        "protoc-27.0-rc-1-linux-s390_64.zip": "sha384-mCvktEgCD1A3+PymSkS/vQYBB5rLznHsz2BIX+OxiKgn2x0ojHFvcQSAj+SCbQw1",
        "protoc-27.0-rc-1-linux-x86_32.zip": "sha384-liKT/3VXBk0moy8nqxzqsq7IS9lhMqZJ/qhoGjqLTaaEN9R+BjcFdPrmZf5dyR0U",
        "protoc-27.0-rc-1-linux-x86_64.zip": "sha384-kvHi0REw9fX4MgwWaBA1+mBxxstR1IWMygo2mosWKbkdubn8XbiPJjydv9M5DQU+",
        "protoc-27.0-rc-1-osx-aarch_64.zip": "sha384-eJvHEEU9Ne9mEjcheV957c8BKfpfvfyrO2ELwXOJqZRA11a4YAv3WQ2wQU9NCqOm",
        "protoc-27.0-rc-1-osx-universal_binary.zip": "sha384-GJzPTZrtcFNljJ7Il/xruBCcbcw2FPPo3KVTziW93wrYSBZI5bI7kutxAE1miMho",
        "protoc-27.0-rc-1-osx-x86_64.zip": "sha384-bDTPOhfarlCN3raEZ58b71KbcECvSlkKNlxMqXjMmgobp89sFru1meJq2HkjJGz4",
        "protoc-27.0-rc-1-win32.zip": "sha384-mbZw/puBuhd7ksFgKrpERRXkLIhc+5gyDMFGxhM6AA9MvSFstTLkdz4gYwlwCCQJ",
        "protoc-27.0-rc-1-win64.zip": "sha384-AKdFPci+QSctQqiPuLWTFugK+nqG5UW8wZVwtHMxw3Ig6Ziq2iLCuMLwVVhce8dg",
    },
    "v26.1": {
        "protoc-26.1-linux-aarch_64.zip": "sha384-RB9HKYLwwXc97tfg4sEbX99KOFY9AjGMt/BlDlF9Mqcqeu2nLXTHY8BU8PAF9oXq",
        "protoc-26.1-linux-ppcle_64.zip": "sha384-sWCKvKPWjqMr+Apjqs26c+YaBRBasZXhffRBP8InEBAZu9aN9ONKy+sz2ZgI2TUP",
        "protoc-26.1-linux-s390_64.zip": "sha384-nuJaZ0pZ49sy44FdpulBQaXmVrDz4o1SR8Eo3up4v2Vq8dNo/GIWHB8NJ1Z0K3Ys",
        "protoc-26.1-linux-x86_32.zip": "sha384-YDOSdXa+FcThGlMNRiS/zyPi0LuV+kkCED+SjK/HXF7SSbuTUYyxzOukzIt9kC1K",
        "protoc-26.1-linux-x86_64.zip": "sha384-WBQND1R3t1kmU2/SrtBIACJJNA8EmTvN3IUlCrVkaXMzKLQskCz8G1tsfX7vBbmb",
        "protoc-26.1-osx-aarch_64.zip": "sha384-hEJnpGeXnHyZbEKjwXIXNGKg6Lk4tFGe7jNifWGsueflsqFTPThd2h8coMNCp6mN",
        "protoc-26.1-osx-universal_binary.zip": "sha384-EwveWUW1MLj8yGY5bPGQLei0kjUS2dPNwJHMD/aev9CjP3CY2atblsctb7VdWJfp",
        "protoc-26.1-osx-x86_64.zip": "sha384-AjlSRMtqFkeNKU8zJLkMYqQi+gG3OOvaWW34fJ0DC5kYFuUYrDnv6d6O8AaKkg9e",
        "protoc-26.1-win32.zip": "sha384-AqsGLVqSHQIc/m24a2FIJpDGM4vLHTD3Mbsi+EUVLNw28auHpyzUcMp85jnVQPWV",
        "protoc-26.1-win64.zip": "sha384-1eCfSPc4xZBAAjREv2sOSgwiOYoww+PsEmsu7Lx9kP0u4K+S/HYlxWJR3BjeezeG",
    },
    "v26.0": {
        "protoc-26.0-linux-aarch_64.zip": "sha384-EKzVVD/u2NrKxUnqVheGdZX0RX9MHdeQyvXFNKsPy4QyJdRSaZhtdzUprWocYfkx",
        "protoc-26.0-linux-ppcle_64.zip": "sha384-HiOh6tmufO8fwqY4luOjTlMNsr70XB4QftLc8rCaJ5Yr/1R4h7BummC95eN2q6ZK",
        "protoc-26.0-linux-s390_64.zip": "sha384-07wd7UOGkF2d8VVkx4xqN3PWY1yoQKCq0FZTVf6dWgN2pTcLYQxacCY4G0uXtXVi",
        "protoc-26.0-linux-x86_32.zip": "sha384-HToF2m1cR2bS0nFkg8m9mObCFoT/51UJSt6XzzVarJoPqWDa+hcX8xi7mdrRr83Q",
        "protoc-26.0-linux-x86_64.zip": "sha384-p/hPsHQe40z3QokS3NEV/kuhQqpBl0iuSXhn4RHL8MLeyYEtZdbHLLUmJTFuoqhL",
        "protoc-26.0-osx-aarch_64.zip": "sha384-is0QxOPAVZwnznnJXA4SiVGKu1YQhY8G5wDdEa3lfnmHt5EZaTE2au5cPHlTMwYi",
        "protoc-26.0-osx-universal_binary.zip": "sha384-z/IOuXtnAu+4JQ5xz05GJA4gcK4U777GGDJaALJG/8dn3bTckOtsMcRCkxGPEMwy",
        "protoc-26.0-osx-x86_64.zip": "sha384-L3bImCCXhv4NfKPO5Ry3HNWWBxavi8ZytWESZiN6SlpMtkAnOpXMBXoZKTsCwW/h",
        "protoc-26.0-win32.zip": "sha384-zUcblmHJE1Z2w3Gu5DDKYgbJiyta5VfmSrQHKzgSueTcb2GjrI0Qbr7lt+HqG8cs",
        "protoc-26.0-win64.zip": "sha384-mSLw3GOXqEzPldPAv3fecK9Q29EvdHdrDodOJf+cCQXRxpMy6s26pJikBz50IgPF",
    },
    "v26.0-rc3": {
        "protoc-26.0-rc-3-linux-aarch_64.zip": "sha384-26j+lJ8JbQrtOiT71bvYSOaBVsE/nhqqudV3Ax/DzJL0dtqKhV0RQ5Oe+y4Ylw0E",
        "protoc-26.0-rc-3-linux-ppcle_64.zip": "sha384-1QxiTOdrXbB/tr1u0LpheREKIdPzOafq6IEx72V54DuKHhIyDUCkxzNXyC+pNfXQ",
        "protoc-26.0-rc-3-linux-s390_64.zip": "sha384-NYWag2bs+quuhzhYlhXcQaJHc1banME7D3UGGVjidZ3G9rEzp6wT1rrwyl9IndkI",
        "protoc-26.0-rc-3-linux-x86_32.zip": "sha384-FO9tf/Lg8gpln8lzUpZDGh0D1uGxK//DjmCuzaT8rKFLt5Am8Tx16VAvEmXAvFj3",
        "protoc-26.0-rc-3-linux-x86_64.zip": "sha384-NtInGn1e9vyypMxSFhfSGifK5uEgKe2N9CHdAr9Q7sEloTKVrxjE3hjDDgkkTSam",
        "protoc-26.0-rc-3-osx-aarch_64.zip": "sha384-UTqN2Wk/mUGOYz+zFb7LB9l/tD8gpU+L6EaJX2ZfgiagPCOZtkhA1cF952lkZ2Fr",
        "protoc-26.0-rc-3-osx-universal_binary.zip": "sha384-xMK8xRZtDJy3mplkAR4IJ7R8shM2WaMkYlRtGeJ/jLkpAJLuLVXbp4XUkFsaonQY",
        "protoc-26.0-rc-3-osx-x86_64.zip": "sha384-75RTRf96480dKHzhPpoQHcLLN7ngcCZDIJz1k7E77aKLe/Y8OUftST/a7Sm/sSjQ",
        "protoc-26.0-rc-3-win32.zip": "sha384-pi4UBm/miGxltC4159CiCBfd7E3W7EeMA8UaNbHbhGI+uAtFLPALrokfRwfSMkM3",
        "protoc-26.0-rc-3-win64.zip": "sha384-TLwRUg/VqBoaX7gXunN/6+66104prygpwFgJKZlC2e+0S5VlPRMpnQaVyzGDwEAV",
    },
    "v25.4": {
        "protoc-25.4-linux-aarch_64.zip": "sha384-Kdis/EHUk57zO/zF5IT26hKjLIejDbllcxaBh2BDyCPbrBqVe5Uj/2W68ge3snEC",
        "protoc-25.4-linux-ppcle_64.zip": "sha384-Gu8Rg4BsEfq1INY9xsK22WNgDGAr65f/4++TW2oB7wt3mDvEmUbyDCqzsN7YBOJc",
        "protoc-25.4-linux-s390_64.zip": "sha384-bEcsz4uZ3UWWOYY8FxrQGypKZbYuwGWjYfm/OORcgGBziubAgllmKrqFdlhumXzP",
        "protoc-25.4-linux-x86_32.zip": "sha384-SyVLfclPgbKCS+pfOCbrk6KN2CtotprCWQFO7F+A7JCKaZ3WkI2qrjg9Oh6pE9Zq",
        "protoc-25.4-linux-x86_64.zip": "sha384-siv945RhHG3LXNAq5bP1vXvgbxt4poufPSRYkgPbqBTiCGTl+59qyVXZTiqknqtg",
        "protoc-25.4-osx-aarch_64.zip": "sha384-EYIIA8DwOtQldIxM0DQy4UIRrR8qBZ8C0lO5g6Ag3tIwYcRpNhID4VCvGGxNPGOX",
        "protoc-25.4-osx-universal_binary.zip": "sha384-2i1zsf+fyWNHqohb4DkjJr6pGzECVlvSHuyudopTr8ZeINd7X2bbQIcMfMkCWLdQ",
        "protoc-25.4-osx-x86_64.zip": "sha384-gwVaVGxXv3u/H6VZwVA2HSLbTIIODuYcT2uoJyUrx0Uf3EbSABPk1ym1VkIA+d4T",
        "protoc-25.4-win32.zip": "sha384-X0fUDFXJBTysrf6tNb3F3OVjnjxn4uMq2vynYvPcGy4PCM4DPyNVgn/9o9nH9AuY",
        "protoc-25.4-win64.zip": "sha384-AxcWQmrMbxyY1PjgNZaAp2yewyW38kys6q4mSjac4PHNN/M96CbRo1QXWV5TJhxj",
    },
    "v25.3": {
        "protoc-25.3-linux-aarch_64.zip": "sha384-jwCvnInYx9lD4bNy3EI/leVIVGqpyYkJ3qZSXXtIERcaBRIS1hAi4Tluu9Cy4eiy",
        "protoc-25.3-linux-ppcle_64.zip": "sha384-aLa68jnCzwO7pS0ler84UxwzaL7srl+9fFZuR3ykh4FJIDJW/jCQGTeuos8VfWcI",
        "protoc-25.3-linux-s390_64.zip": "sha384-PrlMkT15A2RsI4QYbRgvxq/xsNV7i1jzMbIZkSHDUMyZPC2Txf1ydLrmsIdQ/NQP",
        "protoc-25.3-linux-x86_32.zip": "sha384-GeYiLamJeiA/5/JY1bE9JisEoQwy9T65ZwQHmfc6JFV2VkWbUkRHGJqt3BeCBtP/",
        "protoc-25.3-linux-x86_64.zip": "sha384-RJ5r9hcTEMpphUBr1LLyYhjTc6k4tGkqGOW/UOHqHCSTGyFKG2DD7hfZ0XHdrc7e",
        "protoc-25.3-osx-aarch_64.zip": "sha384-B2T/H3pEAm/tEnOLvMhTRae5zq5PCcPMzTjWspe+vjS/CmTxVxnlMH1XjxgibILi",
        "protoc-25.3-osx-universal_binary.zip": "sha384-mhajph4BOcfzO74CC5u5JJ/eQ/sY6/Js1sDBVTszZmmo0nxqHU065rnDkHM5yy9i",
        "protoc-25.3-osx-x86_64.zip": "sha384-AUt06iBAyAmj1bB9KVjilbCX3moW/RLLUwJK3XNLzM3JY9/jIcaY61Juf/gCON3A",
        "protoc-25.3-win32.zip": "sha384-PoVupdbxosMbZs//vJDkLXjTzY2pfF3vI3lJ9J+SoMqsv17r/kFEzH8brM64x0FS",
        "protoc-25.3-win64.zip": "sha384-Fe23g3o7lyfGIpl8YNK6zLecYvp1A7dRjOozoztLQPoIFYlKmETsjh5+p4USHrkL",
    },
    "v24.4": {
        "protoc-24.4-linux-aarch_64.zip": "sha384-1yUAFmmBLZ3LU/vJoLxBX/MWJeanKe7p9SYkVmqlWwghayQEzifO6zsZ65fbQrNZ",
        "protoc-24.4-linux-ppcle_64.zip": "sha384-vx5i4cMWTK4d0P7yCucDG5T8z9nk+Ypi85+nOTZNrONPSsBoDpmrsjTeErcAxTD6",
        "protoc-24.4-linux-s390_64.zip": "sha384-gXY/gbqiOqNOfnHh7Ae1CJDUeFQ+0ZdgJrjNoeZ0Q5dL5IrRiHIdD0D1nV8wo4d8",
        "protoc-24.4-linux-x86_32.zip": "sha384-7ssqfPe6uiKeT2d0WFAOoa8xHePYPWfOpYZrGRHlvj7U7CKO9CweqRCqiZ/ItLVg",
        "protoc-24.4-linux-x86_64.zip": "sha384-gpzw2FvYI08YGwr4zWVcNfNvEiy8UegP/oa5NyG7gejthfpyzXWtKAtT3fo5Zmct",
        "protoc-24.4-osx-aarch_64.zip": "sha384-OlqTHfI/D8J2R3r0Y9o7BQIrODGYNTPCveDyte0zhniECsgDddFSZHR1JxjjtUj0",
        "protoc-24.4-osx-universal_binary.zip": "sha384-cNqrP+ghI+h/Cvd/KBBlfmYiP/rfhdiBjXSJaDUchlJoAJnW6J72jG0W81PXTxpj",
        "protoc-24.4-osx-x86_64.zip": "sha384-rM42wIQ9S33LqbL7aTmUT4RIxZfv93GNrShlwj3RYFbAQ4iGJ4vtHOgPwv1QCovr",
        "protoc-24.4-win32.zip": "sha384-l9ruRjAjGgLYJAQ/r+2Rw7mcUDSvH5CqFZK422aNMbPKLzmjXxtfhK91JT9xl+cU",
        "protoc-24.4-win64.zip": "sha384-HR8U6fkwvpJvc5LlN7fdl6KgAM3BOtxJm0+HyyaT4EWtQIkdKlGW2kd7cQL56X3L",
    },
    "v23.4": {
        "protoc-23.4-linux-aarch_64.zip": "sha384-36L+9u6RetU65cpV+C1AtfPEMEvqwNarfCdBAy00ukdYT+xXSWeSYynGQxkIMCY8",
        "protoc-23.4-linux-ppcle_64.zip": "sha384-Y5y2wQn38Y0obtRe+wNoCspl7hdoExwgwqY4ObBxLEtPug5ZbLZxfrd1g9GbqJLE",
        "protoc-23.4-linux-s390_64.zip": "sha384-EWqVU90VXUX9IsMzZuM/eTcvQfg69WC+5oPfl5IZpAjoJehzJuLleHdPYO8b3Af6",
        "protoc-23.4-linux-x86_32.zip": "sha384-n0B9jivyQuUDHRKcPUjO4mbKTCikmkBFIzui9IG6L2pTzCoDAQYJ8lEX2zIQ95LT",
        "protoc-23.4-linux-x86_64.zip": "sha384-w9VyeEVgTWWlGcZvFG/N2HLWCIDQuIEnizkiiBijZgJK/B81dDUObvSo21VY+aE7",
        "protoc-23.4-osx-aarch_64.zip": "sha384-QOXoTVDlsf3GdN8MjGM7Yvp/rVhHVdYgxwHGPb5S+awfYQnGHYXMlL7L8CgdHVDL",
        "protoc-23.4-osx-universal_binary.zip": "sha384-Yp9SV5FlW0N37njfqAHFIhflb+eb8R7YQpw5nFiyN6s+u1sxHCw9ZCZh9ZzL9QCq",
        "protoc-23.4-osx-x86_64.zip": "sha384-c/SnXBOI72mK6XsVtXR15SzhMapFf/a3PGT1+aCAmtl5uiU04olZagu1BMziIxNR",
        "protoc-23.4-win32.zip": "sha384-1NB0mSSMTlp9CHO0QOre51hNrilVnO+JkLafquaowkcCRKgyZV3ZYK+ExLi+DJyX",
        "protoc-23.4-win64.zip": "sha384-w7UcenXNSkyH9tTOuYo67Ra2WUMkS/la5ftWAuoAmXy/Suj06fU5LHLCx2kQUgOD",
    },
    "v22.5": {
        "protoc-22.5-linux-aarch_64.zip": "sha384-4rBMpoB30Rjwti6ggmSo8WYz5xGE/LES2bospjd7blTS3Ygj2IAsJOCt6VmlRhLh",
        "protoc-22.5-linux-ppcle_64.zip": "sha384-ulV1n2lPtfD1qEFWXLdpJ5bGswCRmhk0NVYLNjRBUSAlO/O97mplvDYUpwX+8Kqj",
        "protoc-22.5-linux-s390_64.zip": "sha384-KzKLDSBMXwMQTHowWexDEEFkpD48jMOsoX7l3GMP4dVrgjSgaf6KIbMZ2/0mwJKr",
        "protoc-22.5-linux-x86_32.zip": "sha384-v79Zuw2ak98dSKXqDkzosiMnc3cwSteMuizgEJu7bC5oJvEYMlXHCz37XBIMmftg",
        "protoc-22.5-linux-x86_64.zip": "sha384-LvvYFW33r9C1mcCqnNJmt1EoMY2ToXU68CXKyz/+OyvvyIRmgAARLzwVBdIrpORx",
        "protoc-22.5-osx-aarch_64.zip": "sha384-bvD409mDuUb3qOLzx58r8SMBsbCTveC2co99WsR+5RX4Tm9IowNM/j3b2tuhx7jw",
        "protoc-22.5-osx-universal_binary.zip": "sha384-hDbjYyN52oiIf4j/rMlX2V4r1qagQsoH5Rxsa5S/k5EJDn0th+PHHc/wZVcRMEWd",
        "protoc-22.5-osx-x86_64.zip": "sha384-QIsuPiPcfEbLHj0opWR2aJwa/cZO8Zi0a7pXw7fNhLnzzOqGT9NwAGOz1MaDvLNy",
        "protoc-22.5-win32.zip": "sha384-zxwlshvYwIYCKAmOczZ3CmY0gMyfi0VUKz/5p0m4U0Illes0g7SAAnRGdpK3zpx0",
        "protoc-22.5-win64.zip": "sha384-0jn4kTJ9ueIYdsQo4gwQt0SwVrTF+ROZoyW0WE9f+GSXweLIvfRyxssdCo0Rp1RF",
    },
    "v21.7": {
        "protoc-21.7-linux-aarch_64.zip": "sha384-NECLy68qRTw4Yo8n6xUZTUbkil0FW5dGjkIUe95r2OOW9emMqMuwWz7p/C+nAfRF",
        "protoc-21.7-linux-ppcle_64.zip": "sha384-FCxc5RKUj24BialSjU/UV3ktTebVhhaRNSCPHapkwMBoL8TVuHqpKaHBSTARfNxl",
        "protoc-21.7-linux-s390_64.zip": "sha384-OmOg3AuMUA0D5DZmQlamiy48Yzt3IhwioJ3tezC6gAPZg79IYXJhUvc38d/Q7XD/",
        "protoc-21.7-linux-x86_32.zip": "sha384-4Z1xX+VE80cOwYGgCopv7GhBQYlvNp9VC78MxLirIoXpFH3TnP8Wy6Z/oCLVwro8",
        "protoc-21.7-linux-x86_64.zip": "sha384-ydJtP/R5m7V5l4E9UoAOfWElwty9PSxjWf2reiRMjT/pdA7xHcWU/nAQe6afEVxI",
        "protoc-21.7-osx-aarch_64.zip": "sha384-q+E9Xjojjb9f/dhbhXcE+f2ZIuDSmTo0YpRubTQfixzPNQK3C+1VLJzCUwWwU+2C",
        "protoc-21.7-osx-universal_binary.zip": "sha384-Rtwb9mDSFKipZV8lEGBfRvLxD7eG7N4hcFCCzgw1lukOPtY+h89b/OlKrYsEaHyS",
        "protoc-21.7-osx-x86_64.zip": "sha384-13SIOaU0KOzF10cqkVJ49eaYRip/9iSj98hcvmDjE7lsJfioqXVfWuVPdXwwtrTc",
        "protoc-21.7-win32.zip": "sha384-l8UV/UcgL3u18WNgTDxMS45ZDMfqnsAqRmnP9CPWpFw8wR31mgPI3Oaj+KxsMjva",
        "protoc-21.7-win64.zip": "sha384-NLDFO3FAsbFziXo+d3vXMnVwQ3CEyP1tVEwgl5CNR1QpPUF3jRr403PsqN4gblE3",
    },
    "v3.20.2": {
        "protoc-3.20.2-linux-aarch_64.zip": "sha384-1lpXaD2R0GfMepaSP3YUJjuRq60PCRCao5YCodYn7xtgqyOHCMT6a6G5sLX36H6/",
        "protoc-3.20.2-linux-ppcle_64.zip": "sha384-Y5iRv2/C4iGUbKW+1BhnvPuduqFAaiEIf8fjTRBjocUMUziXEggPV4AxJ8pSY0z2",
        "protoc-3.20.2-linux-s390_64.zip": "sha384-g6U4sQGVT9UhxlNY32jSxoRwSQT+HMhNddSC9HqGuR8whvTd8RpBY120TVNqtk8Y",
        "protoc-3.20.2-linux-x86_32.zip": "sha384-siBivLIQ1m0DTxXs7SJ9z4w45fhCpecjD8xDpCgqcJqygmAnMrLeiG4jvVI0vUpy",
        "protoc-3.20.2-linux-x86_64.zip": "sha384-XoUIU1QlpHXtFeosTA0fzy2MR443A0A3mCSW7NRQRTdk241Jj2KtjTB2URFBqMqW",
        "protoc-3.20.2-osx-aarch_64.zip": "sha384-vTaa5P/oPnYhV21EFJbLB+xx3SWoBpEgghaf4lVrEH+LsRXh2aAbG53JzUaQMne1",
        "protoc-3.20.2-osx-x86_64.zip": "sha384-VCF8A3eMPkDeaqeHYvGI1o0W1dO38KteGTsgitCTJEXbE+FFe2C9NCH5BfCmJ5ha",
        "protoc-3.20.2-win32.zip": "sha384-pf5YhoLDj50iKcaKl9iSIkg/dLOF0IbCrY1kr+vLiP2hSdye74xmDdCXJ0U+g8Dh",
        "protoc-3.20.2-win64.zip": "sha384-k1Zcl3BGULWpWOodds1IbzbbQNbViLgFaHW5rF6CihYdM0+lsKgns/mhrJZgd+o1",
    },
}
