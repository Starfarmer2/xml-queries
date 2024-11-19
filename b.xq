<result>
{
    for $c in //committee[@displayname="House Committee on Education and the Workforce"]
    (:~ let $id := $c/@id ~:)
    return
    <id>
    {
        $c
    }
    </id>
}
</result>