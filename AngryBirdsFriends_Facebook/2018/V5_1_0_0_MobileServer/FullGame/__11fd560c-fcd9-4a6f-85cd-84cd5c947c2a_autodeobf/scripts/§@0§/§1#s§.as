package §@0§
{
   import §4"R§.§4"c§;
   import §4"R§.§7"]§;
   import §9$;§.Texture;
   import §=#G§.§<#Z§;
   import §^"S§.Sprite;
   
   public class §1#s§ extends §3!Y§
   {
       
      
      private var §&#v§:§<#Z§;
      
      public function §1#s§(param1:§<#Z§, param2:Sprite, param3:Texture, param4:Number, param5:Number)
      {
         super(param2,param3,param4,param5);
         this.§&#v§ = param1;
      }
      
      override protected function laserSightMaxPoints() : int
      {
         switch(§7"]§.§<,§())
         {
            case §4"c§.§]#q§.§5"g§:
               return !!(this.§&#v§.§'"`§ as §2$2§).§2"P§.§>_§ ? int(§1#7§.§%"H§) : 5;
            default:
               return §1#7§.§%"H§;
         }
      }
   }
}
