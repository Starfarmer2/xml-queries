(:~ <result>
{
    for $p in /congress/people/person,
    $r in $p/role[@current="1" and @party="Democrat" and @state="CA"]
    return
    <person name="{$p/@name}" age="{2024 - fn:year-from-date($p/@birthday)}" type="{$r/@type} "/>
}
</result> ~:)

<result>
{
    for $person in //congress/people/person
    let $currentRoles := $person/role[@current="1"]
    for $role in $currentRoles
    where $role/@party = "Democrat" and $role/@state = "CA"
    return
        <person 
            name="{$person/@name}" 
            age="{2024 - fn:year-from-date($person/@birthday)}" 
            type="{$role/@type}" />
}
</result>