<result>
{
    for $m in //person[role/@current="1" and role/@state="GA"]
    where $m/@id = //committee/member/@id or $m/@id = //subcommittee/member/@id
    return
    <member name="{$m/@name}"/>
}
</result>