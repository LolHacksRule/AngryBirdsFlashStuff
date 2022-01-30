package §%!&§
{
   public class §2!%§
   {
      
      public static const §-!O§:int = 0;
      
      public static const §0r§:int = 1;
      
      public static const §-"+§:int = 2;
      
      public static const § !,§:int = 3;
      
      public static const §"!D§:int = 4;
      
      private static var §3!7§:§2!%§ = new §2!%§(0,0,10,500,7.5,600,§-!O§);
      
      private static var §@a§:§2!%§ = new §2!%§(0,0,10,500,7.5,600,§0r§);
      
      private static var §9!@§:§2!%§ = new §2!%§(0,0,15,1750,5,300,§ !,§);
      
      private static var §#!E§:§2!%§ = new §2!%§(0,0,10,1500,5,150,§-"+§);
      
      private static var §`"#§:§2!%§ = new §2!%§(0,0,5,10,7,275,§"!D§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §3!k§:Number;
      
      private var §;!]§:Number;
      
      private var §;"&§:Number;
      
      private var §3!q§:Number;
      
      private var §'N§:int;
      
      public function §2!%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§3!k§ = param3;
         this.§;!]§ = param4;
         this.§;"&§ = param5;
         this.§3!q§ = param6;
         this.§'N§ = param7;
      }
      
      public static function §'9§(param1:int, param2:Number, param3:Number) : §2!%§
      {
         var _loc4_:§2!%§ = null;
         switch(param1)
         {
            case §0r§:
               _loc4_ = §@a§;
               break;
            case §-"+§:
               _loc4_ = §#!E§;
               break;
            case § !,§:
               _loc4_ = §9!@§;
               break;
            case §"!D§:
               _loc4_ = §`"#§;
               break;
            default:
               _loc4_ = §3!7§;
         }
         return new §2!%§(param2,param3,_loc4_.§#o§,_loc4_.push,_loc4_.§^^§,_loc4_.damage,param1);
      }
      
      public function get §#o§() : Number
      {
         return this.§3!k§;
      }
      
      public function get push() : Number
      {
         return this.§;!]§;
      }
      
      public function get §^^§() : Number
      {
         return this.§;"&§;
      }
      
      public function get damage() : Number
      {
         return this.§3!q§;
      }
      
      public function get type() : int
      {
         return this.§'N§;
      }
   }
}
