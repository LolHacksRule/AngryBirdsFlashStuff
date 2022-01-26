package §finally§
{
   public class §=%§
   {
      
      public static const §-!5§:int = 0;
      
      public static const §&!;§:int = 1;
      
      public static const §7c§:int = 2;
      
      public static const §"L§:int = 3;
      
      public static const §>2§:int = 4;
      
      private static var §&T§:§=%§ = new §=%§(0,0,10,500,7.5,600,§-!5§);
      
      private static var §5!,§:§=%§ = new §=%§(0,0,10,500,7.5,600,§&!;§);
      
      private static var §3^§:§=%§ = new §=%§(0,0,15,1750,5,300,§"L§);
      
      private static var §@!7§:§=%§ = new §=%§(0,0,10,1500,5,150,§7c§);
      
      private static var §;d§:§=%§ = new §=%§(0,0,5,10,7,275,§>2§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §!! §:Number;
      
      private var §"!5§:Number;
      
      private var §^!B§:Number;
      
      private var §^<§:Number;
      
      private var §>F§:int;
      
      public function §=%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§!! § = param3;
         this.§"!5§ = param4;
         this.§^!B§ = param5;
         this.§^<§ = param6;
         this.§>F§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §=%§
      {
         var _loc4_:§=%§ = null;
         switch(param1)
         {
            case §&!;§:
               _loc4_ = §5!,§;
               break;
            case §7c§:
               _loc4_ = §@!7§;
               break;
            case §"L§:
               _loc4_ = §3^§;
               break;
            case §>2§:
               _loc4_ = §;d§;
               break;
            default:
               _loc4_ = §&T§;
         }
         return new §=%§(param2,param3,_loc4_.§=!8§,_loc4_.push,_loc4_.§>q§,_loc4_.damage,param1);
      }
      
      public function get §=!8§() : Number
      {
         return this.§!! §;
      }
      
      public function get push() : Number
      {
         return this.§"!5§;
      }
      
      public function get §>q§() : Number
      {
         return this.§^!B§;
      }
      
      public function get damage() : Number
      {
         return this.§^<§;
      }
      
      public function get type() : int
      {
         return this.§>F§;
      }
   }
}
