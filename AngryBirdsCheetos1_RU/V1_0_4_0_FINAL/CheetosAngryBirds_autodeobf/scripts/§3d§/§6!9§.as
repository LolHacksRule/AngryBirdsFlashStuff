package §3d§
{
   public class §6!9§
   {
      
      public static const §8!@§:int = 0;
      
      public static const § !?§:int = 1;
      
      public static const §3!#§:int = 2;
      
      public static const §&!<§:int = 3;
      
      public static const §4$§:int = 4;
      
      public static const §%!]§:int = 5;
      
      private static var dynamic:§6!9§ = new §6!9§(0,0,10,500,7.5,600,§8!@§);
      
      private static var §-!U§:§6!9§ = new §6!9§(0,0,10,500,7.5,600,§ !?§);
      
      private static var §%y§:§6!9§ = new §6!9§(0,0,15,1750,5,300,§&!<§);
      
      private static var §<u§:§6!9§ = new §6!9§(0,0,§>!V§.§0n§,1500,0,0,§%!]§);
      
      private static var TNT:§6!9§ = new §6!9§(0,0,10,1500,5,150,§3!#§);
      
      private static var §,!#§:§6!9§ = new §6!9§(0,0,5,10,7,275,§4$§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §<F§:Number;
      
      private var §3J§:Number;
      
      private var §-Z§:Number;
      
      private var §9§:Number;
      
      private var §9!@§:int;
      
      private var §]g§:Vector.<§20§>;
      
      public function §6!9§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§20§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§<F§ = param3;
         this.§3J§ = param4;
         this.§-Z§ = param5;
         this.§9§ = param6;
         this.§9!@§ = param7;
         this.§]g§ = param8;
      }
      
      public static function §"K§(param1:int, param2:Number, param3:Number, param4:Vector.<§20§> = null) : §6!9§
      {
         var _loc5_:§6!9§ = null;
         switch(param1)
         {
            case § !?§:
               _loc5_ = §-!U§;
               break;
            case §3!#§:
               _loc5_ = TNT;
               break;
            case §&!<§:
               _loc5_ = §%y§;
               break;
            case §%!]§:
               _loc5_ = §<u§;
               break;
            case §4$§:
               _loc5_ = §,!#§;
               break;
            default:
               _loc5_ = dynamic;
         }
         return new §6!9§(param2,param3,_loc5_.§"!F§,_loc5_.push,_loc5_.§"J§,_loc5_.damage,param1,param4);
      }
      
      public function get §"!F§() : Number
      {
         return this.§<F§;
      }
      
      public function get push() : Number
      {
         return this.§3J§;
      }
      
      public function get §"J§() : Number
      {
         return this.§-Z§;
      }
      
      public function get damage() : Number
      {
         return this.§9§;
      }
      
      public function get type() : int
      {
         return this.§9!@§;
      }
      
      public function get §-v§() : Vector.<§20§>
      {
         return this.§]g§;
      }
   }
}
