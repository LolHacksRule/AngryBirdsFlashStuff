package §-!&§
{
   public class §%0§
   {
      
      public static const §7Z§:int = 0;
      
      public static const §?N§:int = 1;
      
      public static const §9!'§:int = 2;
      
      public static const §-W§:int = 3;
      
      public static const §%!=§:int = 4;
      
      private static var §4O§:§%0§ = new §%0§(0,0,10,500,7.5,600,§7Z§);
      
      private static var § _§:§%0§ = new §%0§(0,0,10,500,7.5,600,§?N§);
      
      private static var §!c§:§%0§ = new §%0§(0,0,15,1750,5,300,§-W§);
      
      private static var §,s§:§%0§ = new §%0§(0,0,10,1500,5,150,§9!'§);
      
      private static var §-V§:§%0§ = new §%0§(0,0,5,10,7,275,§%!=§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §#u§:Number;
      
      private var §]B§:Number;
      
      private var §default§:Number;
      
      private var §`!L§:Number;
      
      private var §6!'§:int;
      
      public function §%0§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§#u§ = param3;
         this.§]B§ = param4;
         this.§default§ = param5;
         this.§`!L§ = param6;
         this.§6!'§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §%0§
      {
         var _loc4_:§%0§ = null;
         switch(param1)
         {
            case §?N§:
               _loc4_ = § _§;
               break;
            case §9!'§:
               _loc4_ = §,s§;
               break;
            case §-W§:
               _loc4_ = §!c§;
               break;
            case §%!=§:
               _loc4_ = §-V§;
               break;
            default:
               _loc4_ = §4O§;
         }
         return new §%0§(param2,param3,_loc4_.§>!Q§,_loc4_.push,_loc4_.§7!F§,_loc4_.damage,param1);
      }
      
      public function get §>!Q§() : Number
      {
         return this.§#u§;
      }
      
      public function get push() : Number
      {
         return this.§]B§;
      }
      
      public function get §7!F§() : Number
      {
         return this.§default§;
      }
      
      public function get damage() : Number
      {
         return this.§`!L§;
      }
      
      public function get type() : int
      {
         return this.§6!'§;
      }
   }
}
