package §=b§
{
   public class §9#§
   {
      
      public static const §;S§:int = 0;
      
      public static const §@!2§:int = 1;
      
      public static const §?!d§:int = 2;
      
      public static const §,!>§:int = 3;
      
      public static const §!Y§:int = 4;
      
      private static var §1W§:§9#§ = new §9#§(0,0,10,500,7.5,600,§;S§);
      
      private static var §9m§:§9#§ = new §9#§(0,0,10,500,7.5,600,§@!2§);
      
      private static var §`$§:§9#§ = new §9#§(0,0,15,1750,5,300,§,!>§);
      
      private static var §3!$§:§9#§ = new §9#§(0,0,10,1500,5,150,§?!d§);
      
      private static var §@!r§:§9#§ = new §9#§(0,0,5,10,7,275,§!Y§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §1!e§:Number;
      
      private var §6V§:Number;
      
      private var §4!4§:Number;
      
      private var §8!,§:Number;
      
      private var §4g§:int;
      
      public function §9#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§1!e§ = param3;
         this.§6V§ = param4;
         this.§4!4§ = param5;
         this.§8!,§ = param6;
         this.§4g§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §9#§
      {
         var _loc4_:§9#§ = null;
         switch(param1)
         {
            case §@!2§:
               _loc4_ = §9m§;
               break;
            case §?!d§:
               _loc4_ = §3!$§;
               break;
            case §,!>§:
               _loc4_ = §`$§;
               break;
            case §!Y§:
               _loc4_ = §@!r§;
               break;
            default:
               _loc4_ = §1W§;
         }
         return new §9#§(param2,param3,_loc4_.§1!H§,_loc4_.push,_loc4_.§,7§,_loc4_.damage,param1);
      }
      
      public function get §1!H§() : Number
      {
         return this.§1!e§;
      }
      
      public function get push() : Number
      {
         return this.§6V§;
      }
      
      public function get §,7§() : Number
      {
         return this.§4!4§;
      }
      
      public function get damage() : Number
      {
         return this.§8!,§;
      }
      
      public function get type() : int
      {
         return this.§4g§;
      }
   }
}
