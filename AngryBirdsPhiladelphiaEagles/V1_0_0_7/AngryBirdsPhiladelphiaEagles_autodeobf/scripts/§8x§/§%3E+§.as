package §8x§
{
   public class §>+§
   {
      
      public static const §`1§:int = 0;
      
      public static const §]y§:int = 1;
      
      public static const §default§:int = 2;
      
      public static const §2!K§:int = 3;
      
      public static const §@C§:int = 4;
      
      private static var §4[§:§>+§ = new §>+§(0,0,10,500,7.5,600,§`1§);
      
      private static var §7P§:§>+§ = new §>+§(0,0,10,500,7.5,600,§]y§);
      
      private static var §`!M§:§>+§ = new §>+§(0,0,15,1750,5,300,§2!K§);
      
      private static var §`u§:§>+§ = new §>+§(0,0,10,1500,5,150,§default§);
      
      private static var §#z§:§>+§ = new §>+§(0,0,5,10,7,275,§@C§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §`j§:Number;
      
      private var §!O§:Number;
      
      private var §>M§:Number;
      
      private var §1j§:Number;
      
      private var §5L§:int;
      
      public function §>+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§`j§ = param3;
         this.§!O§ = param4;
         this.§>M§ = param5;
         this.§1j§ = param6;
         this.§5L§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §>+§
      {
         var _loc4_:§>+§ = null;
         switch(param1)
         {
            case §]y§:
               _loc4_ = §7P§;
               break;
            case §default§:
               _loc4_ = §`u§;
               break;
            case §2!K§:
               _loc4_ = §`!M§;
               break;
            case §@C§:
               _loc4_ = §#z§;
               break;
            default:
               _loc4_ = §4[§;
         }
         return new §>+§(param2,param3,_loc4_.§?d§,_loc4_.push,_loc4_.§9g§,_loc4_.damage,param1);
      }
      
      public function get §?d§() : Number
      {
         return this.§`j§;
      }
      
      public function get push() : Number
      {
         return this.§!O§;
      }
      
      public function get §9g§() : Number
      {
         return this.§>M§;
      }
      
      public function get damage() : Number
      {
         return this.§1j§;
      }
      
      public function get type() : int
      {
         return this.§5L§;
      }
   }
}
