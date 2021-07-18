package §7P§
{
   import §^#>§.§#_§;
   
   public class §>"_§
   {
      
      public static const §?#6§:int = 0;
      
      public static const §%#G§:int = 1;
      
      public static const §#§:int = 2;
      
      public static const §2"0§:int = 3;
      
      public static const §""G§:int = 4;
      
      public static const §4D§:int = 5;
      
      public static const §#!G§:int = 10;
      
      private static var DEFAULT:§>"_§ = new §>"_§(0,0,10,500,7.5,600,§?#6§);
      
      private static var §8#X§:§>"_§ = new §>"_§(0,0,10,500,7.5,600,§%#G§);
      
      private static var §7">§:§>"_§ = new §>"_§(0,0,15,2000,5,300,§2"0§);
      
      private static var §-"6§:§>"_§ = new §>"_§(0,0,8,1500,0,0,§4D§);
      
      private static var TNT:§>"_§ = new §>"_§(0,0,10,1500,5,150,§#§);
      
      private static var §,"`§:§>"_§ = new §>"_§(0,0,5,10,7,275,§""G§);
       
      
      private var §8!+§:Number;
      
      private var §=!Z§:Number;
      
      private var §>!p§:Number;
      
      private var §-#[§:Number;
      
      private var §;"F§:Number;
      
      private var §75§:Number;
      
      private var §;"-§:int;
      
      private var §6K§:int = -1;
      
      public function §>"_§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§8!+§ = param1;
         this.§=!Z§ = param2;
         this.§>!p§ = param3;
         this.§-#[§ = param4;
         this.§;"F§ = param5;
         this.§75§ = param6;
         this.§;"-§ = param7;
         this.§6K§ = param8;
      }
      
      public static function §[1§(param1:int, param2:Number, param3:Number) : §>"_§
      {
         var _loc4_:§>"_§ = null;
         switch(param1)
         {
            case §%#G§:
               _loc4_ = §8#X§;
               break;
            case §#§:
               _loc4_ = TNT;
               break;
            case §2"0§:
               _loc4_ = §7">§;
               break;
            case §""G§:
               _loc4_ = §,"`§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §>"_§(param2,param3,_loc4_.§&D§,_loc4_.push,_loc4_.§6"-§,_loc4_.damage,param1);
      }
      
      public static function §2W§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §>"_§
      {
         return new §>"_§(param1,param2,param3,param4 * §#_§.§8]§,param5,param6,§#!G§);
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function get §&D§() : Number
      {
         return this.§>!p§;
      }
      
      public function get push() : Number
      {
         return this.§-#[§;
      }
      
      public function get §6"-§() : Number
      {
         return this.§;"F§;
      }
      
      public function get damage() : Number
      {
         return this.§75§;
      }
      
      public function get type() : int
      {
         return this.§;"-§;
      }
      
      public function get § #E§() : int
      {
         return this.§6K§;
      }
   }
}
