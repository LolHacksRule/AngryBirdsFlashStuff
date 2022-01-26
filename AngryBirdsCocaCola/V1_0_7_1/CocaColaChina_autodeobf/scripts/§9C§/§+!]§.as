package §9C§
{
   public class §+!]§
   {
      
      public static const §1!T§:int = 0;
      
      public static const §,-§:int = 1;
      
      public static const §"L§:int = 2;
      
      public static const §5x§:int = 3;
      
      public static const §-l§:int = 4;
      
      private static var §-#§:§+!]§ = new §+!]§(0,0,10,500,7.5,600,§1!T§);
      
      private static var §#<§:§+!]§ = new §+!]§(0,0,10,500,7.5,600,§,-§);
      
      private static var §@!A§:§+!]§ = new §+!]§(0,0,15,1750,5,300,§5x§);
      
      private static var §]?§:§+!]§ = new §+!]§(0,0,10,1500,5,150,§"L§);
      
      private static var §>!S§:§+!]§ = new §+!]§(0,0,5,10,7,275,§-l§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var § !M§:Number;
      
      private var §+f§:Number;
      
      private var §>s§:Number;
      
      private var §,A§:Number;
      
      private var §%!5§:int;
      
      public function §+!]§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§ !M§ = param3;
         this.§+f§ = param4;
         this.§>s§ = param5;
         this.§,A§ = param6;
         this.§%!5§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §+!]§
      {
         var _loc4_:§+!]§ = null;
         switch(param1)
         {
            case §,-§:
               _loc4_ = §#<§;
               break;
            case §"L§:
               _loc4_ = §]?§;
               break;
            case §5x§:
               _loc4_ = §@!A§;
               break;
            case §-l§:
               _loc4_ = §>!S§;
               break;
            default:
               _loc4_ = §-#§;
         }
         return new §+!]§(param2,param3,_loc4_.§&F§,_loc4_.push,_loc4_.§3'§,_loc4_.damage,param1);
      }
      
      public function get §&F§() : Number
      {
         return this.§ !M§;
      }
      
      public function get push() : Number
      {
         return this.§+f§;
      }
      
      public function get §3'§() : Number
      {
         return this.§>s§;
      }
      
      public function get damage() : Number
      {
         return this.§,A§;
      }
      
      public function get type() : int
      {
         return this.§%!5§;
      }
   }
}
