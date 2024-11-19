<result>
{
    for $s in //person,
        $r in $s/role[@current="1" and @type="sen"]
    return
    <senator name="{$s/@name}" startdate="{$r/@startdate}" party="{$r/@party}"/>
}
</result>