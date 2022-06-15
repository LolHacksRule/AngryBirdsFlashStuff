package §`!G§
{
   public class §6!M§
   {
      
      public static const §2a§:int = 0;
      
      public static const §#!M§:int = 1;
      
      public static const §+"7§:int = 2;
      
      public static const §8"L§:int = 3;
      
      public static const §&!U§:int = 4;
      
      public static const §var§:int = 5;
      
      private static var §8L§:§6!M§ = new §6!M§(0,0,10,500,7.5,600,§2a§);
      
      private static var §^!p§:§6!M§ = new §6!M§(0,0,10,500,7.5,600,§#!M§);
      
      private static var §,!x§:§6!M§ = new §6!M§(0,0,15,1750,5,300,§8"L§);
      
      private static var §[!F§:§6!M§ = new §6!M§(0,0,8,1500,0,0,§var§);
      
      private static var §0b§:§6!M§ = new §6!M§(0,0,10,1500,5,150,§+"7§);
      
      private static var §3G§:§6!M§ = new §6!M§(0,0,5,10,7,275,§&!U§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §!!r§:Number;
      
      private var §'U§:Number;
      
      private var § '§:Number;
      
      private var §>!$§:Number;
      
      private var §'!'§:int;
      
      private var §,W§:Vector.<§[!8§>;
      
      public function §6!M§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§[!8§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§!!r§ = param3;
         this.§'U§ = param4;
         this.§ '§ = param5;
         this.§>!$§ = param6;
         this.§'!'§ = param7;
         this.§,W§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§[!8§> = null) : §6!M§
      {
         var _loc5_:§6!M§ = null;
         switch(param1)
         {
            case §#!M§:
               _loc5_ = §^!p§;
               break;
            case §+"7§:
               _loc5_ = §0b§;
               break;
            case §8"L§:
               _loc5_ = §,!x§;
               break;
            case §var§:
               _loc5_ = §[!F§;
               break;
            case §&!U§:
               _loc5_ = §3G§;
               break;
            default:
               _loc5_ = §8L§;
         }
         return new §6!M§(param2,param3,_loc5_.§0p§,_loc5_.push,_loc5_.§7!m§,_loc5_.damage,param1,param4);
      }
      
      public function get §0p§() : Number
      {
         return this.§!!r§;
      }
      
      public function get push() : Number
      {
         return this.§'U§;
      }
      
      public function get §7!m§() : Number
      {
         return this.§ '§;
      }
      
      public function get damage() : Number
      {
         return this.§>!$§;
      }
      
      public function get type() : int
      {
         return this.§'!'§;
      }
      
      public function get §'b§() : Vector.<§[!8§>
      {
         return this.§,W§;
      }
   }
}
