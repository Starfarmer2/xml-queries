<result>
{
    for $c in //committee[@displayname="House Committee on Education and the Workforce"]/subcommittee[@displayname="Higher Education and Workforce Development"]/member[@role="Chair"],
        $p in //person
    where $c/@id = $p/@id
    return
    $p
}
</result>