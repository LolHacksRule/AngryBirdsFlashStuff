package §>!'§
{
   public class §'T§
   {
      
      public static const §0v§:int = 0;
      
      public static const §8&§:int = 1;
      
      public static const §]!A§:int = 2;
      
      public static const §'&§:int = 3;
      
      public static const §!!R§:int = 4;
      
      private static var §2x§:§'T§ = new §'T§(0,0,10,500,7.5,600,§0v§);
      
      private static var §&!"§:§'T§ = new §'T§(0,0,10,500,7.5,600,§8&§);
      
      private static var §]P§:§'T§ = new §'T§(0,0,15,1750,5,300,§'&§);
      
      private static var §,!E§:§'T§ = new §'T§(0,0,10,1500,5,150,§]!A§);
      
      private static var §?!;§:§'T§ = new §'T§(0,0,5,10,7,275,§!!R§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §+!?§:Number;
      
      private var §"N§:Number;
      
      private var §08§:Number;
      
      private var §"u§:Number;
      
      private var §&"§:int;
      
      public function §'T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§+!?§ = param3;
         this.§"N§ = param4;
         this.§08§ = param5;
         this.§"u§ = param6;
         this.§&"§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §'T§
      {
         var _loc4_:§'T§ = null;
         switch(param1)
         {
            case §8&§:
               _loc4_ = §&!"§;
               break;
            case §]!A§:
               _loc4_ = §,!E§;
               break;
            case §'&§:
               _loc4_ = §]P§;
               break;
            case §!!R§:
               _loc4_ = §?!;§;
               break;
            default:
               _loc4_ = §2x§;
         }
         return new §'T§(param2,param3,_loc4_.§>!d§,_loc4_.push,_loc4_.§while§,_loc4_.damage,param1);
      }
      
      public function get §>!d§() : Number
      {
         return this.§+!?§;
      }
      
      public function get push() : Number
      {
         return this.§"N§;
      }
      
      public function get §while§() : Number
      {
         return this.§08§;
      }
      
      public function get damage() : Number
      {
         return this.§"u§;
      }
      
      public function get type() : int
      {
         return this.§&"§;
      }
   }
}
