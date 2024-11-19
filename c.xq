<result>
{
    for $p in //person,
    $r in $p/role[@current="1" and @party="Democrat" and @state="CA"]
    return
    <person name="{$p/@name}" age="{2024 - year-from-date($p/@birthday)}" type="{$r/@type} "/>
}
</result>