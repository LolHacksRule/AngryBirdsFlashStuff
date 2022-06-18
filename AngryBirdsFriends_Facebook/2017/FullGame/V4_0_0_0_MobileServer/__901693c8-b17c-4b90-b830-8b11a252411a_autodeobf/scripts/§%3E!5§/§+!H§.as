package §>!5§
{
   import §+!C§.§!!S§;
   
   public class §+!H§
   {
      
      public static const §-!K§:int = 0;
      
      public static const §;$9§:int = 1;
      
      public static const §@u§:int = 2;
      
      public static const §,"X§:int = 3;
      
      public static const §0$,§:int = 4;
      
      public static const §;!t§:int = 5;
      
      public static const §0!@§:int = 10;
      
      private static var DEFAULT:§+!H§ = new §+!H§(0,0,10,500,7.5,600,§-!K§);
      
      private static var §,a§:§+!H§ = new §+!H§(0,0,10,500,7.5,600,§;$9§);
      
      private static var §>#[§:§+!H§ = new §+!H§(0,0,15,2000,5,300,§,"X§);
      
      private static var §6#^§:§+!H§ = new §+!H§(0,0,8,2250,0,0,§;!t§);
      
      private static var TNT:§+!H§ = new §+!H§(0,0,10,1500,5,150,§@u§);
      
      private static var §3"H§:§+!H§ = new §+!H§(0,0,5,10,7,275,§0$,§);
       
      
      private var §?!l§:Number;
      
      private var §`"T§:Number;
      
      private var §+#d§:Number;
      
      private var § #G§:Number;
      
      private var §72§:Number;
      
      private var §<"]§:Number;
      
      private var §7#n§:int;
      
      private var §=$3§:int = -1;
      
      private var §;#?§:Boolean = true;
      
      public function §+!H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1, param9:Boolean = true)
      {
         super();
         this.§?!l§ = param1;
         this.§`"T§ = param2;
         this.§+#d§ = param3;
         this.§ #G§ = param4;
         this.§72§ = param5;
         this.§<"]§ = param6;
         this.§7#n§ = param7;
         this.§=$3§ = param8;
         this.§;#?§ = param9;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : §+!H§
      {
         var _loc5_:§+!H§ = null;
         switch(param1)
         {
            case §;$9§:
               _loc5_ = §,a§;
               break;
            case §@u§:
               _loc5_ = TNT;
               break;
            case §,"X§:
               _loc5_ = §>#[§;
               break;
            case §0$,§:
               _loc5_ = §3"H§;
               break;
            case §;!t§:
               _loc5_ = §6#^§;
               break;
            default:
               _loc5_ = DEFAULT;
         }
         return new §+!H§(param2,param3,_loc5_.§0"P§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
      
      public static function §[!M§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true) : §+!H§
      {
         return new §+!H§(param1,param2,param3,param4 * §!!S§.§,"3§,param5,param6,§0!@§,param7,param8);
      }
      
      public function get x() : Number
      {
         return this.§?!l§;
      }
      
      public function get y() : Number
      {
         return this.§`"T§;
      }
      
      public function get §0"P§() : Number
      {
         return this.§+#d§;
      }
      
      public function get push() : Number
      {
         return this.§ #G§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§72§;
      }
      
      public function get damage() : Number
      {
         return this.§<"]§;
      }
      
      public function get type() : int
      {
         return this.§7#n§;
      }
      
      public function get §3#;§() : int
      {
         return this.§=$3§;
      }
      
      public function get §`#i§() : Boolean
      {
         return this.§;#?§;
      }
   }
}
