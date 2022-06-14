package §9"%§
{
   public class §^!x§
   {
      
      public static const §1!n§:int = 0;
      
      public static const §7"A§:int = 1;
      
      public static const §`y§:int = 2;
      
      public static const §;!§:int = 3;
      
      public static const §8!"§:int = 4;
      
      public static const §`§:int = 5;
      
      private static var §-"9§:§^!x§ = new §^!x§(0,0,10,500,7.5,600,§1!n§);
      
      private static var §!"3§:§^!x§ = new §^!x§(0,0,10,500,7.5,600,§7"A§);
      
      private static var §2!@§:§^!x§ = new §^!x§(0,0,15,1750,5,300,§;!§);
      
      private static var §6k§:§^!x§ = new §^!x§(0,0,8,1500,0,0,§`§);
      
      private static var §#"!§:§^!x§ = new §^!x§(0,0,10,1500,5,150,§`y§);
      
      private static var §[;§:§^!x§ = new §^!x§(0,0,5,10,7,275,§8!"§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §@!n§:Number;
      
      private var §#H§:Number;
      
      private var §<!§:Number;
      
      private var §6!2§:Number;
      
      private var §%8§:int;
      
      private var §5=§:Vector.<§&!r§>;
      
      public function §^!x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§&!r§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§@!n§ = param3;
         this.§#H§ = param4;
         this.§<!§ = param5;
         this.§6!2§ = param6;
         this.§%8§ = param7;
         this.§5=§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§&!r§> = null) : §^!x§
      {
         var _loc5_:§^!x§ = null;
         switch(param1)
         {
            case §7"A§:
               _loc5_ = §!"3§;
               break;
            case §`y§:
               _loc5_ = §#"!§;
               break;
            case §;!§:
               _loc5_ = §2!@§;
               break;
            case §`§:
               _loc5_ = §6k§;
               break;
            case §8!"§:
               _loc5_ = §[;§;
               break;
            default:
               _loc5_ = §-"9§;
         }
         return new §^!x§(param2,param3,_loc5_.§2!q§,_loc5_.push,_loc5_.§[!F§,_loc5_.damage,param1,param4);
      }
      
      public function get §2!q§() : Number
      {
         return this.§@!n§;
      }
      
      public function get push() : Number
      {
         return this.§#H§;
      }
      
      public function get §[!F§() : Number
      {
         return this.§<!§;
      }
      
      public function get damage() : Number
      {
         return this.§6!2§;
      }
      
      public function get type() : int
      {
         return this.§%8§;
      }
      
      public function get §<"F§() : Vector.<§&!r§>
      {
         return this.§5=§;
      }
   }
}
