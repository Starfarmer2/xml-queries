<result>
{
    for $c in /congress/committees/committee[@code="HSED"]/subcommittee[displayname="Higher Education and Workforce Development"]/member
    let $id := $c/@id
    return
    <id>
    {
        $id
    }
    </id>
}
</result>