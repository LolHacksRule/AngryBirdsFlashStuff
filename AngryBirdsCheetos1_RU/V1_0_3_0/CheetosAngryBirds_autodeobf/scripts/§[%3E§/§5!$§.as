package §[>§
{
   public class §5!$§
   {
      
      public static const §[!$§:int = 0;
      
      public static const § T§:int = 1;
      
      public static const §+!C§:int = 2;
      
      public static const §,W§:int = 3;
      
      public static const §4E§:int = 4;
      
      private static var §3b§:§5!$§ = new §5!$§(0,0,10,500,7.5,600,§[!$§);
      
      private static var §8T§:§5!$§ = new §5!$§(0,0,10,500,7.5,600,§ T§);
      
      private static var §9m§:§5!$§ = new §5!$§(0,0,15,1750,5,300,§,W§);
      
      private static var TNT:§5!$§ = new §5!$§(0,0,10,1500,5,150,§+!C§);
      
      private static var §+l§:§5!$§ = new §5!$§(0,0,5,10,7,275,§4E§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §;!+§:Number;
      
      private var §>]§:Number;
      
      private var §@S§:Number;
      
      private var §super§:Number;
      
      private var §%@§:int;
      
      public function §5!$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§;!+§ = param3;
         this.§>]§ = param4;
         this.§@S§ = param5;
         this.§super§ = param6;
         this.§%@§ = param7;
      }
      
      public static function §9v§(param1:int, param2:Number, param3:Number) : §5!$§
      {
         var _loc4_:§5!$§ = null;
         switch(param1)
         {
            case § T§:
               _loc4_ = §8T§;
               break;
            case §+!C§:
               _loc4_ = TNT;
               break;
            case §,W§:
               _loc4_ = §9m§;
               break;
            case §4E§:
               _loc4_ = §+l§;
               break;
            default:
               _loc4_ = §3b§;
         }
         return new §5!$§(param2,param3,_loc4_.§-!,§,_loc4_.push,_loc4_.§?_§,_loc4_.damage,param1);
      }
      
      public function get §-!,§() : Number
      {
         return this.§;!+§;
      }
      
      public function get push() : Number
      {
         return this.§>]§;
      }
      
      public function get §?_§() : Number
      {
         return this.§@S§;
      }
      
      public function get damage() : Number
      {
         return this.§super§;
      }
      
      public function get type() : int
      {
         return this.§%@§;
      }
   }
}
