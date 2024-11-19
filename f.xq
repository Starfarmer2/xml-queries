<result>
{
    for $c in //committee
    return
    <committee code="{$c/@code}" name="{$c/@displayname}">
        <Democrat count="{
            count(
            for $m in //person[role/@current="1" and role/@party="Democrat"]
            where $m/@id = $c/member/@id
            return
            <member/>
            )
        }"/>
        <Republican count="{
            count(
            for $m in //person[role/@current="1" and role/@party="Republican"]
            where $m/@id = $c/member/@id
            return
            <member/>
            )
        }"/>
        <Independent count="{
            count(
            for $m in //person[role/@current="1" and role/@party="Independent"]
            where $m/@id = $c/member/@id
            return
            <member/>
            )
        }"/>
    </committee>
}
</result>