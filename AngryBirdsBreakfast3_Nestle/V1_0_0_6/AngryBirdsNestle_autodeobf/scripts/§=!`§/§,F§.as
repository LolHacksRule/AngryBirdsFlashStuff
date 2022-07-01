package §=!`§
{
   import §]k§.§<S§;
   
   public class §,F§
   {
      
      public static const §7!,§:int = 0;
      
      public static const §6!k§:int = 1;
      
      public static const §'$§:int = 2;
      
      public static const §+!q§:int = 3;
      
      public static const §1&§:int = 4;
      
      public static const §2!0§:int = 5;
      
      public static const §return§:int = 10;
      
      private static var DEFAULT:§,F§ = new §,F§(0,0,10,500,7.5,600,§7!,§);
      
      private static var §+>§:§,F§ = new §,F§(0,0,10,500,7.5,600,§6!k§);
      
      private static var §#!c§:§,F§ = new §,F§(0,0,15,2000,5,300,§+!q§);
      
      private static var §77§:§,F§ = new §,F§(0,0,8,1500,0,0,§2!0§);
      
      private static var TNT:§,F§ = new §,F§(0,0,10,1500,5,150,§'$§);
      
      private static var §<!6§:§,F§ = new §,F§(0,0,5,10,7,275,§1&§);
       
      
      private var §@S§:Number;
      
      private var §#B§:Number;
      
      private var §&!J§:Number;
      
      private var §]!;§:Number;
      
      private var §=!2§:Number;
      
      private var §8$§:Number;
      
      private var §]" §:int;
      
      private var §!!h§:int = -1;
      
      public function §,F§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§@S§ = param1;
         this.§#B§ = param2;
         this.§&!J§ = param3;
         this.§]!;§ = param4;
         this.§=!2§ = param5;
         this.§8$§ = param6;
         this.§]" § = param7;
         this.§!!h§ = param8;
      }
      
      public static function §0!V§(param1:int, param2:Number, param3:Number) : §,F§
      {
         var _loc4_:§,F§ = null;
         switch(param1)
         {
            case §6!k§:
               _loc4_ = §+>§;
               break;
            case §'$§:
               _loc4_ = TNT;
               break;
            case §+!q§:
               _loc4_ = §#!c§;
               break;
            case §1&§:
               _loc4_ = §<!6§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §,F§(param2,param3,_loc4_.§"!m§,_loc4_.push,_loc4_.§,!d§,_loc4_.damage,param1);
      }
      
      public static function §'8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §,F§
      {
         return new §,F§(param1,param2,param3,param4 * §<S§.§;!Q§,param5,param6,§return§);
      }
      
      public function get x() : Number
      {
         return this.§@S§;
      }
      
      public function get y() : Number
      {
         return this.§#B§;
      }
      
      public function get §"!m§() : Number
      {
         return this.§&!J§;
      }
      
      public function get push() : Number
      {
         return this.§]!;§;
      }
      
      public function get §,!d§() : Number
      {
         return this.§=!2§;
      }
      
      public function get damage() : Number
      {
         return this.§8$§;
      }
      
      public function get type() : int
      {
         return this.§]" §;
      }
      
      public function get §#!5§() : int
      {
         return this.§!!h§;
      }
   }
}
