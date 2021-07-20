package §!+§
{
   public class §%!=§
   {
      
      public static const §5#§:int = 0;
      
      public static const §`z§:int = 1;
      
      public static const §-q§:int = 2;
      
      public static const §!!$§:int = 3;
      
      public static const §>!'§:int = 4;
      
      private static var §&0§:§%!=§ = new §%!=§(0,0,10,500,7.5,600,§5#§);
      
      private static var §&6§:§%!=§ = new §%!=§(0,0,10,500,7.5,600,§`z§);
      
      private static var §3!@§:§%!=§ = new §%!=§(0,0,15,1750,5,300,§!!$§);
      
      private static var §?<§:§%!=§ = new §%!=§(0,0,10,1500,5,150,§-q§);
      
      private static var §^T§:§%!=§ = new §%!=§(0,0,5,10,7,275,§>!'§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §0!-§:Number;
      
      private var §[P§:Number;
      
      private var §#!!§:Number;
      
      private var §9!G§:Number;
      
      private var §1i§:int;
      
      public function §%!=§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§0!-§ = param3;
         this.§[P§ = param4;
         this.§#!!§ = param5;
         this.§9!G§ = param6;
         this.§1i§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §%!=§
      {
         var _loc4_:§%!=§ = null;
         switch(param1)
         {
            case §`z§:
               _loc4_ = §&6§;
               break;
            case §-q§:
               _loc4_ = §?<§;
               break;
            case §!!$§:
               _loc4_ = §3!@§;
               break;
            case §>!'§:
               _loc4_ = §^T§;
               break;
            default:
               _loc4_ = §&0§;
         }
         return new §%!=§(param2,param3,_loc4_.§?>§,_loc4_.push,_loc4_.§'b§,_loc4_.damage,param1);
      }
      
      public function get §?>§() : Number
      {
         return this.§0!-§;
      }
      
      public function get push() : Number
      {
         return this.§[P§;
      }
      
      public function get §'b§() : Number
      {
         return this.§#!!§;
      }
      
      public function get damage() : Number
      {
         return this.§9!G§;
      }
      
      public function get type() : int
      {
         return this.§1i§;
      }
   }
}
