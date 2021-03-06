locals {
  zone = "skyplabs.net"

  dns_records = [
    # -------------------------------------------------- #
    # DNS zone configuration
    # -------------------------------------------------- #

    {
      name = ""
      type = "NS"
      ttl  = 0,
      targets = [
        "dns17.ovh.net.",
        "ns17.ovh.net.",
      ]
    },
    {
      name = ""
      type = "A"
      ttl  = 0,
      targets = [
        "213.186.33.5",
      ]
    },
    # https://help.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site#configuring-a-subdomain.
    {
      name = "blog"
      type = "CNAME"
      ttl  = 0,
      targets = [
        "skyplabs.github.io.",
      ]
    },
    {
      name = "books"
      type = "CNAME"
      ttl  = 0,
      targets = [
        "hosting.gitbook.com.",
      ]
    },
    # https://tutanota.com/howto/#whitelabel.
    {
      name = "mail"
      type = "CNAME"
      ttl  = 0,
      targets = [
        "login.tutanota.com.",
      ]
    },
    {
      name = ""
      type = "TXT"
      ttl  = 60,
      targets = [
        "\"4|https://blog.skyplabs.net\"",
      ]
    },

    # -------------------------------------------------- #
    # Email configuration
    # -------------------------------------------------- #

    # Configuration for Tutanota: https://tutanota.com/howto#custom-domain.
    {
      name = ""
      type = "MX"
      ttl  = 0,
      targets = [
        "1 mail.tutanota.de.",
      ]
    },
    {
      name = ""
      type = "SPF"
      ttl  = 600,
      targets = [
        "\"v=spf1 include:spf.tutanota.de -all\"",
      ]
    },
    {
      name = "s1._domainkey"
      type = "CNAME"
      ttl  = 0,
      targets = [
        "s1._domainkey.tutanota.de.",
      ]
    },
    {
      name = "s2._domainkey"
      type = "CNAME"
      ttl  = 0,
      targets = [
        "s2._domainkey.tutanota.de.",
      ]
    },
    {
      name = "_dmarc"
      type = "TXT"
      ttl  = 0,
      targets = [
        "\"v=DMARC1; p=quarantine; adkim=s\"",
      ]
    },
    {
      name = "mta-sts"
      type = "CNAME"
      ttl  = 0,
      targets = [
        "mta-sts.tutanota.com.",
      ]
    },
    {
      name = "_mta-sts"
      type = "CNAME"
      ttl  = 0,
      targets = [
        "_mta-sts.tutanota.com.",
      ]
    },

    # -------------------------------------------------- #
    # Domain verification
    # -------------------------------------------------- #

    {
      name = ""
      type = "TXT"
      ttl  = 0,
      targets = [
        "\"keybase-site-verification=r4YLk-AeFOVRhrahHCOUxX-Ocv0N6JMMh9L8wHLo_co\"",
      ]
    },
    {
      name = ""
      type = "TXT"
      ttl  = 0,
      targets = [
        "\"brave-ledger-verification=a3b2ef122a15353fdaaf5bfbbe25bc0976d14bf8cc86ff91b8eba878c1da56f1\"",
      ]
    },

    # -------------------------------------------------- #
    # Misc.
    # -------------------------------------------------- #

    {
      name = ""
      type = "TXT"
      ttl  = 0,
      targets = [
        "\"<script>alert('OPENBUGBOUNTY')</script>\"",
      ]
    },
    {
      name = "xss-openbugbounty"
      type = "TXT"
      ttl  = 0,
      targets = [
        "\"<script>alert('OPENBUGBOUNTY')</script>\"",
      ]
    },
  ]
}

module "dns_records" {
  source = "./modules/ovh-dns"

  zone    = local.zone
  records = local.dns_records
}
