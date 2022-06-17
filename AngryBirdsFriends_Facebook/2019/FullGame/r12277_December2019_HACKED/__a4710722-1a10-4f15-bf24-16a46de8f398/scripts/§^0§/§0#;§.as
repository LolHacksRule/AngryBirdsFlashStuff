package §^0§
{
   import §?$#§.§<d§;
   
   public class §0#;§
   {
      
      public static const §!"t§:int = 0;
      
      public static const §`"9§:int = 1;
      
      public static const §]$ §:int = 2;
      
      public static const § do§:int = 3;
      
      public static const §`"`§:int = 4;
      
      public static const §>8§:int = 5;
      
      public static const §>!M§:int = 10;
      
      private static var DEFAULT:§0#;§ = new §0#;§(0,0,10,500,7.5,600,§!"t§);
      
      private static var §!#A§:§0#;§ = new §0#;§(0,0,10,500,7.5,600,§`"9§);
      
      private static var §]"l§:§0#;§ = new §0#;§(0,0,15,2000,5,300,§ do§);
      
      private static var §<"S§:§0#;§ = new §0#;§(0,0,8,2250,0,0,§>8§);
      
      private static var TNT:§0#;§ = new §0#;§(0,0,10,1500,5,150,§]$ §);
      
      private static var §74§:§0#;§ = new §0#;§(0,0,5,10,7,275,§`"`§);
       
      
      private var §0k§:Number;
      
      private var §@_§:Number;
      
      private var §+#`§:Number;
      
      private var §;"Y§:Number;
      
      private var §!#r§:Number;
      
      private var §[!u§:Number;
      
      private var §4!$§:int;
      
      private var §[#@§:int = -1;
      
      private var §2"C§:Boolean = true;
      
      public function §0#;§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1, param9:Boolean = true)
      {
         super();
         this.§0k§ = param1;
         this.§@_§ = param2;
         this.§+#`§ = param3;
         this.§;"Y§ = param4;
         this.§!#r§ = param5;
         this.§[!u§ = param6;
         this.§4!$§ = param7;
         this.§[#@§ = param8;
         this.§2"C§ = param9;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : §0#;§
      {
         var _loc5_:§0#;§ = null;
         switch(param1)
         {
            case §`"9§:
               _loc5_ = §!#A§;
               break;
            case §]$ §:
               _loc5_ = TNT;
               break;
            case § do§:
               _loc5_ = §]"l§;
               break;
            case §`"`§:
               _loc5_ = §74§;
               break;
            case §>8§:
               _loc5_ = §<"S§;
               break;
            default:
               _loc5_ = DEFAULT;
         }
         return new §0#;§(param2,param3,_loc5_.§ "E§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
      
      public static function §?=§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true) : §0#;§
      {
         return new §0#;§(param1,param2,param3,param4 * §<d§.§6@§,param5,param6,§>!M§,param7,param8);
      }
      
      public function get x() : Number
      {
         return this.§0k§;
      }
      
      public function get y() : Number
      {
         return this.§@_§;
      }
      
      public function get § "E§() : Number
      {
         return this.§+#`§;
      }
      
      public function get push() : Number
      {
         return this.§;"Y§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§!#r§;
      }
      
      public function get damage() : Number
      {
         return this.§[!u§;
      }
      
      public function get type() : int
      {
         return this.§4!$§;
      }
      
      public function get §[#]§() : int
      {
         return this.§[#@§;
      }
      
      public function get §!#Z§() : Boolean
      {
         return this.§2"C§;
      }
   }
}
