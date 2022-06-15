package §;!=§
{
   import §#g§.§8§;
   
   public class §-!J§
   {
      
      public static const §@U§:int = 0;
      
      public static const §]#V§:int = 1;
      
      public static const §%x§:int = 2;
      
      public static const §'"$§:int = 3;
      
      public static const §^!B§:int = 4;
      
      public static const §[K§:int = 5;
      
      public static const §-!7§:int = 10;
      
      private static var DEFAULT:§-!J§ = new §-!J§(0,0,10,500,7.5,600,§@U§);
      
      private static var §9!i§:§-!J§ = new §-!J§(0,0,10,500,7.5,600,§]#V§);
      
      private static var §&#l§:§-!J§ = new §-!J§(0,0,15,2000,5,300,§'"$§);
      
      private static var §[#I§:§-!J§ = new §-!J§(0,0,8,2250,0,0,§[K§);
      
      private static var TNT:§-!J§ = new §-!J§(0,0,10,1500,5,150,§%x§);
      
      private static var § "x§:§-!J§ = new §-!J§(0,0,5,10,7,275,§^!B§);
       
      
      private var §&$'§:Number;
      
      private var §<#-§:Number;
      
      private var §=?§:Number;
      
      private var §^!I§:Number;
      
      private var §##z§:Number;
      
      private var §8#1§:Number;
      
      private var §2"G§:int;
      
      private var § l§:int = -1;
      
      private var §7#X§:Boolean = true;
      
      public function §-!J§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1, param9:Boolean = true)
      {
         super();
         this.§&$'§ = param1;
         this.§<#-§ = param2;
         this.§=?§ = param3;
         this.§^!I§ = param4;
         this.§##z§ = param5;
         this.§8#1§ = param6;
         this.§2"G§ = param7;
         this.§ l§ = param8;
         this.§7#X§ = param9;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : §-!J§
      {
         var _loc5_:§-!J§ = null;
         switch(param1)
         {
            case §]#V§:
               _loc5_ = §9!i§;
               break;
            case §%x§:
               _loc5_ = TNT;
               break;
            case §'"$§:
               _loc5_ = §&#l§;
               break;
            case §^!B§:
               _loc5_ = § "x§;
               break;
            case §[K§:
               _loc5_ = §[#I§;
               break;
            default:
               _loc5_ = DEFAULT;
         }
         return new §-!J§(param2,param3,_loc5_.§2!E§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
      
      public static function §`#F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true) : §-!J§
      {
         return new §-!J§(param1,param2,param3,param4 * §8#3§.§2K§,param5,param6,§-!7§,param7,param8);
      }
      
      public function get x() : Number
      {
         return this.§&$'§;
      }
      
      public function get y() : Number
      {
         return this.§<#-§;
      }
      
      public function get §2!E§() : Number
      {
         return this.§=?§;
      }
      
      public function get push() : Number
      {
         return this.§^!I§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§##z§;
      }
      
      public function get damage() : Number
      {
         return this.§8#1§;
      }
      
      public function get type() : int
      {
         return this.§2"G§;
      }
      
      public function get §'";§() : int
      {
         return this.§ l§;
      }
      
      public function get §!!T§() : Boolean
      {
         return this.§7#X§;
      }
   }
}
