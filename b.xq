<result>
{
    for $c in /congress/committees/committee[@name="House Committee on Education and the Workforce"]
    (:~ let $id := $c/@id ~:)
    return
    <id>
    {
        $c
    }
    </id>
}
</result>