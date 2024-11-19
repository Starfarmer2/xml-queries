<result>
{
    for $c in /congress/committees/committee
    (:~ let $id := $c/@id ~:)
    return
    <id>
    {
        $c
    }
    </id>
}
</result>