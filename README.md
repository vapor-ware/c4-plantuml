# PlantUML

## supercharged with 12 C4 vitamins and essential nutrients

Run C4PlantUML diagram generation in a container. Built from the `vaporio/foundation`
base image, it is capable of generating any PlantUML or C4 PlantUML diagrams in
batches.

### Usage

```
docker run --rm -ti -e FORMAT=png -v $PWD:/localhost vaporio/plantuml-c4:latest
```

Presuming `$PWD` contains all the `.wasd` files you wish to generate.

### Example wasd

```
@startuml
!include https://raw.githubusercontent.com/RicardoNiepel/C4-PlantUML/master/C4_Context.puml

LAYOUT_WITH_LEGEND

title System Context diagram for Internet Banking System

Person(customer, "Personal Banking Customer", "A customer of the bank, with personal bank accounts.")
System(banking_system, "Internet Banking System", "Allows customers to view information about their bank accounts, and make payments.")

System_Ext(mail_system, "E-mail system", "The internal Microsoft Exchange e-mail system.")
System_Ext(mainframe, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Rel(customer, banking_system, "Uses")
Rel_Back(customer, mail_system, "Sends e-mails to")
Rel_Neighbor(banking_system, mail_system, "Sends e-mails", "SMTP")
Rel(banking_system, mainframe, "Uses")
@enduml
```

![](https://kroki.io/c4plantuml/svg/eNqVVU1v2zgQvetXTL2HuoASY4GeeopjG5t0Y0eNnE33JIyosU2UIgWSshsU-993KEuy5RT74ZM0nnnv8c0MFd04j9bXpYreSS1UXVBtFey8r9ynycTi4Xor_a7Oa0dWGO1J-2thysmTFGgLs5JUkZrMPl4lCrV_Xj5MSnSeLIeyGeej1GSvq0AQPUz_fHxeZ-vHJJs_vqyi921gmmbp74v17K7LeLlf32UPi98Wq3kUeekVQY8FhcStxRI2xsI9C7KaPNyi_ib1FtJXJi-jKCHrjB6L2nlTko1h1j-NptCFwWzA7whyro7hwAeFqilE1cQAhTC19m70IYqO0NktBwq0r2PxK2NdChh9gB8R8K_XOz5QnmFVcfIL5TCtKsXWeWn0iEOfcY8xpJUN4pd_zEJsTkruWUYjjdvjpYDWekBdNOGeN-8OnkxZ5JDZVYw9SvlvRVcJbimwd6ypsLLyMUz1tlZoQzixZi8LcoBK_ZxlU2sRpKOS_hW8YScbIx3sJYYSaYHPC7k1Bx6YN4pKk0tFrR3L5qXTNPslhq9YIjsx1AJKltJTAa7OHWtpe_ZftLk34o4CoKC9FHQpb56PC_SYo6PQhvYxqEm_PMDg3RvL2sJSgKWtdN4iU4PUPJVl090YdpxcANY8VcJSwe2TqFwchoqcA2W2_EJeXL-xKUfxjXTBPskwr8n9z8dmbjjNnuoGvv2LP8ESBmbqv_rRXnz3YypRqsw1AYZbXC35vV2rgL9m62UDzTuylMIaZzYeFt_FDjVP2LGSYc8wWwUnVMbUG95hutjbM2vDCLadFhzoT3HmMGBuan9qc9yvawzcD-2wOe_J5OiJ1NmVcFrMZ0cucN-t10nKicO84xr9c85gsJvUI122Irnd5ebsGjjCdUveIjXBYds7QnSvWsTwOX1cTc7Jzyn_V2V2y9knYaeRH6I8ERYONtaUza1zsLyEfCeZgNwCz29n3TkD5pkfF2OUMqwDugrRBuMk5GLihhqGdbULN2xPny7XSQvUH2ZQ_mbuOmNC_aR15yt_sjpzbrg0fKn-BlJeaMI=)
