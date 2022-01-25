package §4!O§
{
   public class §1!Q§
   {
      
      public static const §9!Q§:int = 0;
      
      public static const §6<§:int = 1;
      
      public static const §-!!§:int = 2;
      
      public static const §4!+§:int = 3;
      
      public static const §^R§:int = 4;
      
      private static var §1!c§:§1!Q§ = new §1!Q§(0,0,10,500,7.5,600,§9!Q§);
      
      private static var §1!C§:§1!Q§ = new §1!Q§(0,0,10,500,7.5,600,§6<§);
      
      private static var §-!0§:§1!Q§ = new §1!Q§(0,0,15,1750,5,300,§4!+§);
      
      private static var §2o§:§1!Q§ = new §1!Q§(0,0,10,1500,5,150,§-!!§);
      
      private static var §;!F§:§1!Q§ = new §1!Q§(0,0,5,10,7,275,§^R§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §!!B§:Number;
      
      private var get:Number;
      
      private var §,!A§:Number;
      
      private var §7C§:Number;
      
      private var §^;§:int;
      
      public function §1!Q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§!!B§ = param3;
         this.get = param4;
         this.§,!A§ = param5;
         this.§7C§ = param6;
         this.§^;§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §1!Q§
      {
         var _loc4_:§1!Q§ = null;
         switch(param1)
         {
            case §6<§:
               _loc4_ = §1!C§;
               break;
            case §-!!§:
               _loc4_ = §2o§;
               break;
            case §4!+§:
               _loc4_ = §-!0§;
               break;
            case §^R§:
               _loc4_ = §;!F§;
               break;
            default:
               _loc4_ = §1!c§;
         }
         return new §1!Q§(param2,param3,_loc4_.§8N§,_loc4_.push,_loc4_.§4?§,_loc4_.damage,param1);
      }
      
      public function get §8N§() : Number
      {
         return this.§!!B§;
      }
      
      public function get push() : Number
      {
         return this.get;
      }
      
      public function get §4?§() : Number
      {
         return this.§,!A§;
      }
      
      public function get damage() : Number
      {
         return this.§7C§;
      }
      
      public function get type() : int
      {
         return this.§^;§;
      }
   }
}
