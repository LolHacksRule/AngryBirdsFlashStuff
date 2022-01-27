package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   
   public class §3=§ extends §6"1§
   {
       
      
      protected var §7V§:Number;
      
      protected var §!"6§:Number;
      
      protected var §9"s§:Number;
      
      protected var §&"h§:Number;
      
      public function §3=§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§7V§ = param6;
         this.§!"6§ = param7;
         this.§9"s§ = param8;
         this.§&"h§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§""M§) : void
      {
         if(param1)
         {
            param1.§7"§(§?"Z§().GetPosition().x,§?"Z§().GetPosition().y,this.§7V§,this.§!"6§,this.§9"s§,this.§&"h§);
         }
      }
   }
}
