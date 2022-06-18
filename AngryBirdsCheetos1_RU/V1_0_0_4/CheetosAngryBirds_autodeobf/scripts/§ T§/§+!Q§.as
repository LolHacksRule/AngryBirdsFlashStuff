package § T§
{
   public class §+!Q§
   {
      
      public static const §=x§:int = 0;
      
      public static const §-;§:int = 1;
      
      public static const §";§:int = 2;
      
      public static const §]m§:int = 3;
      
      public static const §#!_§:int = 4;
      
      private static var §>"§:§+!Q§ = new §+!Q§(0,0,10,500,7.5,600,§=x§);
      
      private static var §^A§:§+!Q§ = new §+!Q§(0,0,10,500,7.5,600,§-;§);
      
      private static var §-_§:§+!Q§ = new §+!Q§(0,0,15,1750,5,300,§]m§);
      
      private static var TNT:§+!Q§ = new §+!Q§(0,0,10,1500,5,150,§";§);
      
      private static var §4!%§:§+!Q§ = new §+!Q§(0,0,5,10,7,275,§#!_§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §8R§:Number;
      
      private var §^!1§:Number;
      
      private var §-=§:Number;
      
      private var §9J§:Number;
      
      private var §-]§:int;
      
      public function §+!Q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§8R§ = param3;
         this.§^!1§ = param4;
         this.§-=§ = param5;
         this.§9J§ = param6;
         this.§-]§ = param7;
      }
      
      public static function §;-§(param1:int, param2:Number, param3:Number) : §+!Q§
      {
         var _loc4_:§+!Q§ = null;
         switch(param1)
         {
            case §-;§:
               _loc4_ = §^A§;
               break;
            case §";§:
               _loc4_ = TNT;
               break;
            case §]m§:
               _loc4_ = §-_§;
               break;
            case §#!_§:
               _loc4_ = §4!%§;
               break;
            default:
               _loc4_ = §>"§;
         }
         return new §+!Q§(param2,param3,_loc4_.§&!J§,_loc4_.push,_loc4_.§ @§,_loc4_.damage,param1);
      }
      
      public function get §&!J§() : Number
      {
         return this.§8R§;
      }
      
      public function get push() : Number
      {
         return this.§^!1§;
      }
      
      public function get § @§() : Number
      {
         return this.§-=§;
      }
      
      public function get damage() : Number
      {
         return this.§9J§;
      }
      
      public function get type() : int
      {
         return this.§-]§;
      }
   }
}
