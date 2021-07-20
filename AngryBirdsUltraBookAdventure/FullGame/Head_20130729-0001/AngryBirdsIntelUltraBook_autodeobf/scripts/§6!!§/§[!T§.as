package §6!!§
{
   public class §[!T§
   {
      
      public static const §8!#§:int = 0;
      
      public static const §;a§:int = 1;
      
      public static const §9j§:int = 2;
      
      public static const §4G§:int = 3;
      
      public static const §7!c§:int = 4;
      
      private static var DEFAULT:§[!T§ = new §[!T§(0,0,10,500,7.5,600,§8!#§);
      
      private static var §-!K§:§[!T§ = new §[!T§(0,0,10,500,7.5,600,§;a§);
      
      private static var §6e§:§[!T§ = new §[!T§(0,0,15,1750,5,300,§4G§);
      
      private static var §6!h§:§[!T§ = new §[!T§(0,0,10,1500,5,150,§9j§);
      
      private static var §9d§:§[!T§ = new §[!T§(0,0,5,10,7,275,§7!c§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §1!G§:Number;
      
      private var §<f§:Number;
      
      private var §!!"§:Number;
      
      private var §!f§:Number;
      
      private var §?!%§:int;
      
      public function §[!T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§1!G§ = param3;
         this.§<f§ = param4;
         this.§!!"§ = param5;
         this.§!f§ = param6;
         this.§?!%§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §[!T§
      {
         var _loc4_:§[!T§ = null;
         switch(param1)
         {
            case §;a§:
               _loc4_ = §-!K§;
               break;
            case §9j§:
               _loc4_ = §6!h§;
               break;
            case §4G§:
               _loc4_ = §6e§;
               break;
            case §7!c§:
               _loc4_ = §9d§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §[!T§(param2,param3,_loc4_.pushRadius,_loc4_.push,_loc4_.damageRadius,_loc4_.damage,param1);
      }
      
      public function get pushRadius() : Number
      {
         return this.§1!G§;
      }
      
      public function get push() : Number
      {
         return this.§<f§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§!!"§;
      }
      
      public function get damage() : Number
      {
         return this.§!f§;
      }
      
      public function get type() : int
      {
         return this.§?!%§;
      }
   }
}
