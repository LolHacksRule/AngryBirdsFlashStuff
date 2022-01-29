package §8§#8
{
   import §@0§.§%!q§;
   
   public class §2#%§
   {
      
      public static const §`"F§:int = 0;
      
      public static const §=#U§:int = 1;
      
      public static const §2#8§:int = 2;
      
      public static const §+"H§:int = 3;
      
      public static const §@@§:int = 4;
      
      public static const §>!Y§:int = 5;
      
      public static const §[H§:int = 10;
      
      private static var DEFAULT:§2#%§ = new §2#%§(0,0,10,500,7.5,600,§`"F§);
      
      private static var §["c§:§2#%§ = new §2#%§(0,0,10,500,7.5,600,§=#U§);
      
      private static var §7!h§:§2#%§ = new §2#%§(0,0,15,2000,5,300,§+"H§);
      
      private static var §]#9§:§2#%§ = new §2#%§(0,0,8,2250,0,0,§>!Y§);
      
      private static var TNT:§2#%§ = new §2#%§(0,0,10,1500,5,150,§2#8§);
      
      private static var §1"O§:§2#%§ = new §2#%§(0,0,5,10,7,275,§@@§);
       
      
      private var §8u§:Number;
      
      private var §!#§:Number;
      
      private var §!!>§:Number;
      
      private var §,"1§:Number;
      
      private var §""6§:Number;
      
      private var §>#7§:Number;
      
      private var §"#7§:int;
      
      private var §^"s§:int = -1;
      
      private var §+7§:Boolean = true;
      
      public function §2#%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1, param9:Boolean = true)
      {
         super();
         this.§8u§ = param1;
         this.§!#§ = param2;
         this.§!!>§ = param3;
         this.§,"1§ = param4;
         this.§""6§ = param5;
         this.§>#7§ = param6;
         this.§"#7§ = param7;
         this.§^"s§ = param8;
         this.§+7§ = param9;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : §2#%§
      {
         var _loc5_:§2#%§ = null;
         switch(param1)
         {
            case §=#U§:
               _loc5_ = §["c§;
               break;
            case §2#8§:
               _loc5_ = TNT;
               break;
            case §+"H§:
               _loc5_ = §7!h§;
               break;
            case §@@§:
               _loc5_ = §1"O§;
               break;
            case §>!Y§:
               _loc5_ = §]#9§;
               break;
            default:
               _loc5_ = DEFAULT;
         }
         return new §2#%§(param2,param3,_loc5_.§7"-§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
      
      public static function §@"z§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true) : §2#%§
      {
         return new §2#%§(param1,param2,param3,param4 * §%!q§.§6q§,param5,param6,§[H§,param7,param8);
      }
      
      public function get x() : Number
      {
         return this.§8u§;
      }
      
      public function get y() : Number
      {
         return this.§!#§;
      }
      
      public function get §7"-§() : Number
      {
         return this.§!!>§;
      }
      
      public function get push() : Number
      {
         return this.§,"1§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§""6§;
      }
      
      public function get damage() : Number
      {
         return this.§>#7§;
      }
      
      public function get type() : int
      {
         return this.§"#7§;
      }
      
      public function get §6n§() : int
      {
         return this.§^"s§;
      }
      
      public function get §## §() : Boolean
      {
         return this.§+7§;
      }
   }
}
