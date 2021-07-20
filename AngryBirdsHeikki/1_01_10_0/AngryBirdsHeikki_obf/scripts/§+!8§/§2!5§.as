package §+!8§
{
   public class §2!5§
   {
      
      public static const §9!`§:int = 0;
      
      public static const §=!O§:int = 1;
      
      public static const §,!0§:int = 2;
      
      public static const §"9§:int = 3;
      
      public static const §9n§:int = 4;
      
      private static var §2!P§:§2!5§ = new §2!5§(0,0,10,500,7.5,600,§9!`§);
      
      private static var §<;§:§2!5§ = new §2!5§(0,0,10,500,7.5,600,§=!O§);
      
      private static var §>!]§:§2!5§ = new §2!5§(0,0,15,1750,5,300,§"9§);
      
      private static var §2q§:§2!5§ = new §2!5§(0,0,10,1500,5,150,§,!0§);
      
      private static var §!S§:§2!5§ = new §2!5§(0,0,5,10,7,275,§9n§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §9!N§:Number;
      
      private var §1R§:Number;
      
      private var §^!Z§:Number;
      
      private var §`&§:Number;
      
      private var §>A§:int;
      
      public function §2!5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§9!N§ = param3;
         this.§1R§ = param4;
         this.§^!Z§ = param5;
         this.§`&§ = param6;
         this.§>A§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §2!5§
      {
         var _loc4_:§2!5§ = null;
         switch(param1)
         {
            case §=!O§:
               _loc4_ = §<;§;
               break;
            case §,!0§:
               _loc4_ = §2q§;
               break;
            case §"9§:
               _loc4_ = §>!]§;
               break;
            case §9n§:
               _loc4_ = §!S§;
               break;
            default:
               _loc4_ = §2!P§;
         }
         return new §2!5§(param2,param3,_loc4_.§%!B§,_loc4_.push,_loc4_.§]!E§,_loc4_.damage,param1);
      }
      
      public function get §%!B§() : Number
      {
         return this.§9!N§;
      }
      
      public function get push() : Number
      {
         return this.§1R§;
      }
      
      public function get §]!E§() : Number
      {
         return this.§^!Z§;
      }
      
      public function get damage() : Number
      {
         return this.§`&§;
      }
      
      public function get type() : int
      {
         return this.§>A§;
      }
   }
}
