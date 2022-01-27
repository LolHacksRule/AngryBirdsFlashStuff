package §!r§
{
   import §"§.§;!E§;
   
   public class §3c§
   {
      
      public static const §1"C§:int = 0;
      
      public static const §4f§:int = 1;
      
      public static const §2!G§:int = 2;
      
      public static const §=3§:int = 3;
      
      public static const §&i§:int = 4;
      
      public static const §-A§:int = 5;
      
      public static const §[=§:int = 10;
      
      private static var DEFAULT:§3c§ = new §3c§(0,0,10,500,7.5,600,§1"C§);
      
      private static var §;!P§:§3c§ = new §3c§(0,0,10,500,7.5,600,§4f§);
      
      private static var §<i§:§3c§ = new §3c§(0,0,15,2000,5,300,§=3§);
      
      private static var §?I§:§3c§ = new §3c§(0,0,8,1500,0,0,§-A§);
      
      private static var TNT:§3c§ = new §3c§(0,0,10,1500,5,150,§2!G§);
      
      private static var §;Q§:§3c§ = new §3c§(0,0,5,10,7,275,§&i§);
       
      
      private var §0U§:Number;
      
      private var §3"[§:Number;
      
      private var §0!V§:Number;
      
      private var §4"v§:Number;
      
      private var §%"-§:Number;
      
      private var §["v§:Number;
      
      private var §=B§:int;
      
      private var §9Z§:int = -1;
      
      public function §3c§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§0U§ = param1;
         this.§3"[§ = param2;
         this.§0!V§ = param3;
         this.§4"v§ = param4;
         this.§%"-§ = param5;
         this.§["v§ = param6;
         this.§=B§ = param7;
         this.§9Z§ = param8;
      }
      
      public static function §#"S§(param1:int, param2:Number, param3:Number) : §3c§
      {
         var _loc4_:§3c§ = null;
         switch(param1)
         {
            case §4f§:
               _loc4_ = §;!P§;
               break;
            case §2!G§:
               _loc4_ = TNT;
               break;
            case §=3§:
               _loc4_ = §<i§;
               break;
            case §&i§:
               _loc4_ = §;Q§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §3c§(param2,param3,_loc4_.§9"^§,_loc4_.push,_loc4_.§super§,_loc4_.damage,param1);
      }
      
      public static function §!!S§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §3c§
      {
         return new §3c§(param1,param2,param3,param4 * §;!E§.§0"?§,param5,param6,§[=§);
      }
      
      public function get x() : Number
      {
         return this.§0U§;
      }
      
      public function get y() : Number
      {
         return this.§3"[§;
      }
      
      public function get §9"^§() : Number
      {
         return this.§0!V§;
      }
      
      public function get push() : Number
      {
         return this.§4"v§;
      }
      
      public function get §super§() : Number
      {
         return this.§%"-§;
      }
      
      public function get damage() : Number
      {
         return this.§["v§;
      }
      
      public function get type() : int
      {
         return this.§=B§;
      }
      
      public function get §=n§() : int
      {
         return this.§9Z§;
      }
   }
}
