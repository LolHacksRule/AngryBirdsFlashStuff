package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §3U§ extends §-"A§
   {
       
      
      protected var §9!Y§:Number;
      
      protected var §1d§:Number;
      
      protected var §^!$§:Number;
      
      protected var §5"&§:Number;
      
      public function §3U§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param12);
         this.§9!Y§ = param8;
         this.§1d§ = param9;
         this.§^!$§ = param10;
         this.§5"&§ = param11;
      }
      
      override protected function explodeBeforeRemoving(param1:§;U§) : void
      {
         if(param1)
         {
            param1.§6!N§(§^!z§().GetPosition().x,§^!z§().GetPosition().y,this.§9!Y§,this.§1d§,this.§^!$§,this.§5"&§);
         }
      }
   }
}
