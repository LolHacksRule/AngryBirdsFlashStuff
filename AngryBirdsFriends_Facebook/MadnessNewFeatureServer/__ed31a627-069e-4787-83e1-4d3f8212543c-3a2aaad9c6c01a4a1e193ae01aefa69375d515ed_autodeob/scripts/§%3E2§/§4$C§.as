package §>2§
{
   import §"#z§.Texture;
   import §-$!§.§0$@§;
   import §-$!§.§<U§;
   import §4§.§;!X§;
   import §6#H§.Sprite;
   
   public class §4$C§ extends §""y§
   {
       
      
      private var §'"9§:§;!X§;
      
      public function §4$C§(param1:§;!X§, param2:Sprite, param3:Texture, param4:Number, param5:Number)
      {
         super(param2,param3,param4,param5);
         this.§'"9§ = param1;
      }
      
      override protected function laserSightMaxPoints() : int
      {
         switch(§<U§.§='§())
         {
            case §0$@§.§9!§.§1#7§:
               return !!(this.§'"9§.§1$'§ as §"#1§).§=!G§.§'"d§ ? int(§!!W§.§[2§) : 5;
            default:
               return §!!W§.§[2§;
         }
      }
   }
}
