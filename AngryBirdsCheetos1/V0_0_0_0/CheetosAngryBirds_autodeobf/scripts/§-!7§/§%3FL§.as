package §-!7§
{
   public class §?L§
   {
      
      public static const §#-§:int = 0;
      
      public static const §'H§:int = 1;
      
      public static const §6!1§:int = 2;
      
      public static const §8Z§:int = 3;
      
      public static const §0!;§:int = 4;
      
      private static var final:§?L§ = new §?L§(0,0,10,500,7.5,600,§#-§);
      
      private static var §?!A§:§?L§ = new §?L§(0,0,10,500,7.5,600,§'H§);
      
      private static var §,[§:§?L§ = new §?L§(0,0,15,1750,5,300,§8Z§);
      
      private static var TNT:§?L§ = new §?L§(0,0,10,1500,5,150,§6!1§);
      
      private static var §=!C§:§?L§ = new §?L§(0,0,5,10,7,275,§0!;§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §!!5§:Number;
      
      private var §0>§:Number;
      
      private var §%!1§:Number;
      
      private var §&!L§:Number;
      
      private var §&!9§:int;
      
      public function §?L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§!!5§ = param3;
         this.§0>§ = param4;
         this.§%!1§ = param5;
         this.§&!L§ = param6;
         this.§&!9§ = param7;
      }
      
      public static function §<!V§(param1:int, param2:Number, param3:Number) : §?L§
      {
         var _loc4_:§?L§ = null;
         switch(param1)
         {
            case §'H§:
               _loc4_ = §?!A§;
               break;
            case §6!1§:
               _loc4_ = TNT;
               break;
            case §8Z§:
               _loc4_ = §,[§;
               break;
            case §0!;§:
               _loc4_ = §=!C§;
               break;
            default:
               _loc4_ = final;
         }
         return new §?L§(param2,param3,_loc4_.§0b§,_loc4_.push,_loc4_.§`u§,_loc4_.damage,param1);
      }
      
      public function get §0b§() : Number
      {
         return this.§!!5§;
      }
      
      public function get push() : Number
      {
         return this.§0>§;
      }
      
      public function get §`u§() : Number
      {
         return this.§%!1§;
      }
      
      public function get damage() : Number
      {
         return this.§&!L§;
      }
      
      public function get type() : int
      {
         return this.§&!9§;
      }
   }
}
