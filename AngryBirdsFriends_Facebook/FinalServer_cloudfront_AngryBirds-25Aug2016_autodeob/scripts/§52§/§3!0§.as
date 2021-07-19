package §52§
{
   import §'z§.§4!x§;
   import §+!d§.§2![§;
   import §+!d§.§3§;
   import §1&§.Texture;
   import §9$§.Sprite;
   
   public class §3!0§ extends §6#1§
   {
       
      
      private var §"!i§:§4!x§;
      
      public function §3!0§(param1:§4!x§, param2:Sprite, param3:Texture, param4:Number, param5:Number)
      {
         super(param2,param3,param4,param5);
         this.§"!i§ = param1;
      }
      
      override protected function laserSightMaxPoints() : int
      {
         switch(§2![§.§,#>§())
         {
            case §3#8§.§ "Z§.§"!E§:
               return !!(this.§"!i§.§#""§ as §#%§).§4"w§.§^!t§ ? int(§;!p§.§`"1§) : 5;
            default:
               return §;!p§.§`"1§;
         }
      }
   }
}
