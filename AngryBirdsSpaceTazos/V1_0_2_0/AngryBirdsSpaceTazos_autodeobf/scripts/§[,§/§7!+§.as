package §[,§
{
   import §?!<§.§'!1§;
   
   public class §7!+§
   {
      
      public static const §+!i§:int = 0;
      
      public static const §]Z§:int = 1;
      
      public static const §`"2§:int = 2;
      
      public static const §""G§:int = 3;
      
      public static const §!O§:int = 4;
      
      public static const §>4§:int = 10;
      
      private static var §0!n§:§7!+§ = new §7!+§(0,0,10,500,7.5,600,§+!i§);
      
      private static var §7!'§:§7!+§ = new §7!+§(0,0,10,500,7.5,600,§]Z§);
      
      private static var §"!R§:§7!+§ = new §7!+§(0,0,15,1750,5,300,§""G§);
      
      private static var TNT:§7!+§ = new §7!+§(0,0,10,1500,5,150,§`"2§);
      
      private static var §1!W§:§7!+§ = new §7!+§(0,0,5,10,7,275,§!O§);
       
      
      private var §>!J§:Number;
      
      private var §;`§:Number;
      
      private var §7!_§:Number;
      
      private var §@b§:Number;
      
      private var §3R§:Number;
      
      private var §=K§:Number;
      
      private var §-!e§:int;
      
      public function §7!+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.§>!J§ = param1;
         this.§;`§ = param2;
         this.§7!_§ = param3;
         this.§@b§ = param4;
         this.§3R§ = param5;
         this.§=K§ = param6;
         this.§-!e§ = param7;
      }
      
      public static function §'!^§(param1:int, param2:Number, param3:Number) : §7!+§
      {
         var _loc4_:§7!+§ = null;
         switch(param1)
         {
            case §]Z§:
               _loc4_ = §7!'§;
               break;
            case §`"2§:
               _loc4_ = TNT;
               break;
            case §""G§:
               _loc4_ = §"!R§;
               break;
            case §!O§:
               _loc4_ = §1!W§;
               break;
            default:
               _loc4_ = §0!n§;
         }
         return new §7!+§(param2,param3,_loc4_.§<v§,_loc4_.push,_loc4_.§-D§,_loc4_.damage,param1);
      }
      
      public static function §,T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §7!+§
      {
         return new §7!+§(param1,param2,param3,param4 * §'!1§.§<!@§,param5,param6,§>4§);
      }
      
      public function get x() : Number
      {
         return this.§>!J§;
      }
      
      public function get y() : Number
      {
         return this.§;`§;
      }
      
      public function get §<v§() : Number
      {
         return this.§7!_§;
      }
      
      public function get push() : Number
      {
         return this.§@b§;
      }
      
      public function get §-D§() : Number
      {
         return this.§3R§;
      }
      
      public function get damage() : Number
      {
         return this.§=K§;
      }
      
      public function get type() : int
      {
         return this.§-!e§;
      }
   }
}
