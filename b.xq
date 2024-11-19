<result>
{
    for $c in /congress/committees/committee[@code="HSED"]
    let $id := $c/@id
    return
    <id>
    {
        $c
    }
    </id>
}
</result>