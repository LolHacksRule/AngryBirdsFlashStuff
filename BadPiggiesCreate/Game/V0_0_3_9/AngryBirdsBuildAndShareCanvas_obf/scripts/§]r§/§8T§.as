package §]r§
{
   public class §8T§
   {
      
      public static const §#!e§:int = 0;
      
      public static const §3!D§:int = 1;
      
      public static const §7C§:int = 2;
      
      public static const §!%§:int = 3;
      
      public static const §=7§:int = 4;
      
      private static var §"!k§:§8T§ = new §8T§(0,0,10,500,7.5,600,§#!e§);
      
      private static var §"!e§:§8T§ = new §8T§(0,0,10,500,7.5,600,§3!D§);
      
      private static var §#!l§:§8T§ = new §8T§(0,0,15,1750,5,300,§!%§);
      
      private static var §!1§:§8T§ = new §8T§(0,0,10,1500,5,150,§7C§);
      
      private static var §3" §:§8T§ = new §8T§(0,0,5,10,7,275,§=7§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §?8§:Number;
      
      private var §<!]§:Number;
      
      private var §=!o§:Number;
      
      private var §+!v§:Number;
      
      private var §[!G§:int;
      
      public function §8T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§?8§ = param3;
         this.§<!]§ = param4;
         this.§=!o§ = param5;
         this.§+!v§ = param6;
         this.§[!G§ = param7;
      }
      
      public static function §?!F§(param1:int, param2:Number, param3:Number) : §8T§
      {
         var _loc4_:§8T§ = null;
         switch(param1)
         {
            case §3!D§:
               _loc4_ = §"!e§;
               break;
            case §7C§:
               _loc4_ = §!1§;
               break;
            case §!%§:
               _loc4_ = §#!l§;
               break;
            case §=7§:
               _loc4_ = §3" §;
               break;
            default:
               _loc4_ = §"!k§;
         }
         return new §8T§(param2,param3,_loc4_.§%P§,_loc4_.push,_loc4_.§5o§,_loc4_.damage,param1);
      }
      
      public function get §%P§() : Number
      {
         return this.§?8§;
      }
      
      public function get push() : Number
      {
         return this.§<!]§;
      }
      
      public function get §5o§() : Number
      {
         return this.§=!o§;
      }
      
      public function get damage() : Number
      {
         return this.§+!v§;
      }
      
      public function get type() : int
      {
         return this.§[!G§;
      }
   }
}
