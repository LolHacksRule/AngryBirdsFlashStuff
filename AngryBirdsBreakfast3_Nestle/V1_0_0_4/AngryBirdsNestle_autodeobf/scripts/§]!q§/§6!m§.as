package §]!q§
{
   import §0I§.§!!p§;
   
   public class §6!m§
   {
      
      public static const §%",§:int = 0;
      
      public static const §;!9§:int = 1;
      
      public static const override:int = 2;
      
      public static const §7!L§:int = 3;
      
      public static const §if §:int = 4;
      
      public static const §%!@§:int = 5;
      
      public static const §>!6§:int = 10;
      
      private static var DEFAULT:§6!m§ = new §6!m§(0,0,10,500,7.5,600,§%",§);
      
      private static var § !Z§:§6!m§ = new §6!m§(0,0,10,500,7.5,600,§;!9§);
      
      private static var §3s§:§6!m§ = new §6!m§(0,0,15,2000,5,300,§7!L§);
      
      private static var §?!F§:§6!m§ = new §6!m§(0,0,8,1500,0,0,§%!@§);
      
      private static var TNT:§6!m§ = new §6!m§(0,0,10,1500,5,150,override);
      
      private static var §^!2§:§6!m§ = new §6!m§(0,0,5,10,7,275,§if §);
       
      
      private var §0!'§:Number;
      
      private var §#<§:Number;
      
      private var §";§:Number;
      
      private var §8B§:Number;
      
      private var §6!g§:Number;
      
      private var §]m§:Number;
      
      private var §1!p§:int;
      
      private var §]t§:int = -1;
      
      public function §6!m§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§0!'§ = param1;
         this.§#<§ = param2;
         this.§";§ = param3;
         this.§8B§ = param4;
         this.§6!g§ = param5;
         this.§]m§ = param6;
         this.§1!p§ = param7;
         this.§]t§ = param8;
      }
      
      public static function final(param1:int, param2:Number, param3:Number) : §6!m§
      {
         var _loc4_:§6!m§ = null;
         switch(param1)
         {
            case §;!9§:
               _loc4_ = § !Z§;
               break;
            case override:
               _loc4_ = TNT;
               break;
            case §7!L§:
               _loc4_ = §3s§;
               break;
            case §if §:
               _loc4_ = §^!2§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §6!m§(param2,param3,_loc4_.§&I§,_loc4_.push,_loc4_.§8t§,_loc4_.damage,param1);
      }
      
      public static function §;!6§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §6!m§
      {
         return new §6!m§(param1,param2,param3,param4 * §!!p§.§6L§,param5,param6,§>!6§);
      }
      
      public function get x() : Number
      {
         return this.§0!'§;
      }
      
      public function get y() : Number
      {
         return this.§#<§;
      }
      
      public function get §&I§() : Number
      {
         return this.§";§;
      }
      
      public function get push() : Number
      {
         return this.§8B§;
      }
      
      public function get §8t§() : Number
      {
         return this.§6!g§;
      }
      
      public function get damage() : Number
      {
         return this.§]m§;
      }
      
      public function get type() : int
      {
         return this.§1!p§;
      }
      
      public function get §#6§() : int
      {
         return this.§]t§;
      }
   }
}
