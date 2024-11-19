<result>
{
    for $p in //person[role/@current="1" and role/@state="CA" and role/@party="Democrat"]
    return
    $p
}
</result>