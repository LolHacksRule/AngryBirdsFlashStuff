package §#v§
{
   public class §!v§
   {
      
      public static const §`u§:int = 0;
      
      public static const §#-§:int = 1;
      
      public static const §'H§:int = 2;
      
      public static const §6!1§:int = 3;
      
      public static const §8Z§:int = 4;
      
      private static var §0!;§:§!v§ = new §!v§(0,0,10,500,7.5,600,§`u§);
      
      private static var final:§!v§ = new §!v§(0,0,10,500,7.5,600,§#-§);
      
      private static var §?!A§:§!v§ = new §!v§(0,0,15,1750,5,300,§6!1§);
      
      private static var TNT:§!v§ = new §!v§(0,0,10,1500,5,150,§'H§);
      
      private static var §,[§:§!v§ = new §!v§(0,0,5,10,7,275,§8Z§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §?L§:Number;
      
      private var §!!5§:Number;
      
      private var §0>§:Number;
      
      private var §%!1§:Number;
      
      private var §`D§:int;
      
      public function §!v§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§?L§ = param3;
         this.§!!5§ = param4;
         this.§0>§ = param5;
         this.§%!1§ = param6;
         this.§`D§ = param7;
      }
      
      public static function §=!C§(param1:int, param2:Number, param3:Number) : §!v§
      {
         var _loc4_:§!v§ = null;
         switch(param1)
         {
            case §#-§:
               _loc4_ = final;
               break;
            case §'H§:
               _loc4_ = TNT;
               break;
            case §6!1§:
               _loc4_ = §?!A§;
               break;
            case §8Z§:
               _loc4_ = §,[§;
               break;
            default:
               _loc4_ = §0!;§;
         }
         return new §!v§(param2,param3,_loc4_.§&!L§,_loc4_.push,_loc4_.§0b§,_loc4_.damage,param1);
      }
      
      public function get §&!L§() : Number
      {
         return this.§?L§;
      }
      
      public function get push() : Number
      {
         return this.§!!5§;
      }
      
      public function get §0b§() : Number
      {
         return this.§0>§;
      }
      
      public function get damage() : Number
      {
         return this.§%!1§;
      }
      
      public function get type() : int
      {
         return this.§`D§;
      }
   }
}
