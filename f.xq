<result>
{
    for $c in //committee
    let $currentMembers := 
        for $member in $c/member
        let $person := //congress/people/person[@id=$member/@id]
        where $person/role[@current="1"]
        return $person/role[@current="1"]/@party
    return
    <committee code="{$c/@code}" name="{$c/@displayname}">
            <Democrat count="{count($currentMembers[. = 'Democrat'])}" />
            <Republican count="{count($currentMembers[. = 'Republican'])}" />
            <Independent count="{count($currentMembers[. = 'Independent'])}" />
    </committee>
}
</result>