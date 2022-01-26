package §9_§
{
   public class §7]§
   {
      
      public static const §4!4§:int = 0;
      
      public static const §#!7§:int = 1;
      
      public static const §'l§:int = 2;
      
      public static const §`!$§:int = 3;
      
      public static const §1!!§:int = 4;
      
      private static var §1<§:§7]§ = new §7]§(0,0,10,500,7.5,600,§4!4§);
      
      private static var §5!7§:§7]§ = new §7]§(0,0,10,500,7.5,600,§#!7§);
      
      private static var §-P§:§7]§ = new §7]§(0,0,15,1750,5,300,§`!$§);
      
      private static var §;x§:§7]§ = new §7]§(0,0,10,1500,5,150,§'l§);
      
      private static var §#!A§:§7]§ = new §7]§(0,0,5,10,7,275,§1!!§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §^a§:Number;
      
      private var §!9§:Number;
      
      private var §#!§:Number;
      
      private var § d§:Number;
      
      private var §@!B§:int;
      
      public function §7]§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§^a§ = param3;
         this.§!9§ = param4;
         this.§#!§ = param5;
         this.§ d§ = param6;
         this.§@!B§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7]§
      {
         var _loc4_:§7]§ = null;
         switch(param1)
         {
            case §#!7§:
               _loc4_ = §5!7§;
               break;
            case §'l§:
               _loc4_ = §;x§;
               break;
            case §`!$§:
               _loc4_ = §-P§;
               break;
            case §1!!§:
               _loc4_ = §#!A§;
               break;
            default:
               _loc4_ = §1<§;
         }
         return new §7]§(param2,param3,_loc4_.§-q§,_loc4_.push,_loc4_.§`K§,_loc4_.damage,param1);
      }
      
      public function get §-q§() : Number
      {
         return this.§^a§;
      }
      
      public function get push() : Number
      {
         return this.§!9§;
      }
      
      public function get §`K§() : Number
      {
         return this.§#!§;
      }
      
      public function get damage() : Number
      {
         return this.§ d§;
      }
      
      public function get type() : int
      {
         return this.§@!B§;
      }
   }
}
