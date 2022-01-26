package §"C§
{
   public class §]%§
   {
      
      public static const §"!R§:int = 0;
      
      public static const §@r§:int = 1;
      
      public static const §[!X§:int = 2;
      
      public static const §1w§:int = 3;
      
      public static const §,P§:int = 4;
      
      private static var §1!_§:§]%§ = new §]%§(0,0,10,500,7.5,600,§"!R§);
      
      private static var §&"§:§]%§ = new §]%§(0,0,10,500,7.5,600,§@r§);
      
      private static var §3x§:§]%§ = new §]%§(0,0,15,1750,5,300,§1w§);
      
      private static var TNT:§]%§ = new §]%§(0,0,10,1500,5,150,§[!X§);
      
      private static var §?!`§:§]%§ = new §]%§(0,0,5,10,7,275,§,P§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §?o§:Number;
      
      private var §#k§:Number;
      
      private var §;#§:Number;
      
      private var §%!F§:Number;
      
      private var §[!P§:int;
      
      public function §]%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§?o§ = param3;
         this.§#k§ = param4;
         this.§;#§ = param5;
         this.§%!F§ = param6;
         this.§[!P§ = param7;
      }
      
      public static function §9!Q§(param1:int, param2:Number, param3:Number) : §]%§
      {
         var _loc4_:§]%§ = null;
         switch(param1)
         {
            case §@r§:
               _loc4_ = §&"§;
               break;
            case §[!X§:
               _loc4_ = TNT;
               break;
            case §1w§:
               _loc4_ = §3x§;
               break;
            case §,P§:
               _loc4_ = §?!`§;
               break;
            default:
               _loc4_ = §1!_§;
         }
         return new §]%§(param2,param3,_loc4_.§&!N§,_loc4_.push,_loc4_.§[!O§,_loc4_.damage,param1);
      }
      
      public function get §&!N§() : Number
      {
         return this.§?o§;
      }
      
      public function get push() : Number
      {
         return this.§#k§;
      }
      
      public function get §[!O§() : Number
      {
         return this.§;#§;
      }
      
      public function get damage() : Number
      {
         return this.§%!F§;
      }
      
      public function get type() : int
      {
         return this.§[!P§;
      }
   }
}
