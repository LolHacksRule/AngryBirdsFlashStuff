package §@!"§
{
   import §@V§.§#=§;
   
   public class §=q§
   {
      
      public static const §'!A§:int = 0;
      
      public static const §'!`§:int = 1;
      
      public static const §^2§:int = 2;
      
      public static const §?[§:int = 3;
      
      public static const §0!r§:int = 4;
      
      public static const §2Y§:int = 5;
      
      public static const §'`§:int = 10;
      
      private static var DEFAULT:§=q§ = new §=q§(0,0,10,500,7.5,600,§'!A§);
      
      private static var §&§:§=q§ = new §=q§(0,0,10,500,7.5,600,§'!`§);
      
      private static var §[B§:§=q§ = new §=q§(0,0,15,2000,5,300,§?[§);
      
      private static var §2!]§:§=q§ = new §=q§(0,0,8,1500,0,0,§2Y§);
      
      private static var TNT:§=q§ = new §=q§(0,0,10,1500,5,150,§^2§);
      
      private static var §`H§:§=q§ = new §=q§(0,0,5,10,7,275,§0!r§);
       
      
      private var §]!B§:Number;
      
      private var §9=§:Number;
      
      private var §set §:Number;
      
      private var §2""§:Number;
      
      private var §-!K§:Number;
      
      private var §4!+§:Number;
      
      private var §#!-§:int;
      
      private var §@$§:int = -1;
      
      public function §=q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§]!B§ = param1;
         this.§9=§ = param2;
         this.§set § = param3;
         this.§2""§ = param4;
         this.§-!K§ = param5;
         this.§4!+§ = param6;
         this.§#!-§ = param7;
         this.§@$§ = param8;
      }
      
      public static function §7",§(param1:int, param2:Number, param3:Number) : §=q§
      {
         var _loc4_:§=q§ = null;
         switch(param1)
         {
            case §'!`§:
               _loc4_ = §&§;
               break;
            case §^2§:
               _loc4_ = TNT;
               break;
            case §?[§:
               _loc4_ = §[B§;
               break;
            case §0!r§:
               _loc4_ = §`H§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §=q§(param2,param3,_loc4_.§#!m§,_loc4_.push,_loc4_.§,!+§,_loc4_.damage,param1);
      }
      
      public static function §4!A§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §=q§
      {
         return new §=q§(param1,param2,param3,param4 * §#=§.§^!2§,param5,param6,§'`§);
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function get §#!m§() : Number
      {
         return this.§set §;
      }
      
      public function get push() : Number
      {
         return this.§2""§;
      }
      
      public function get §,!+§() : Number
      {
         return this.§-!K§;
      }
      
      public function get damage() : Number
      {
         return this.§4!+§;
      }
      
      public function get type() : int
      {
         return this.§#!-§;
      }
      
      public function get §>"4§() : int
      {
         return this.§@$§;
      }
   }
}
