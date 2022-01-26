package §]!D§
{
   public class §"$§
   {
      
      public static const §9!9§:int = 0;
      
      public static const §^#§:int = 1;
      
      public static const §+R§:int = 2;
      
      public static const §[!M§:int = 3;
      
      public static const §;!C§:int = 4;
      
      private static var §6!H§:§"$§ = new §"$§(0,0,10,500,7.5,600,§9!9§);
      
      private static var §04§:§"$§ = new §"$§(0,0,10,500,7.5,600,§^#§);
      
      private static var § !§:§"$§ = new §"$§(0,0,15,1750,5,300,§[!M§);
      
      private static var TNT:§"$§ = new §"$§(0,0,10,1500,5,150,§+R§);
      
      private static var § ,§:§"$§ = new §"$§(0,0,5,10,7,275,§;!C§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §"3§:Number;
      
      private var §9e§:Number;
      
      private var §@%§:Number;
      
      private var §-!U§:Number;
      
      private var §#!S§:int;
      
      public function §"$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§"3§ = param3;
         this.§9e§ = param4;
         this.§@%§ = param5;
         this.§-!U§ = param6;
         this.§#!S§ = param7;
      }
      
      public static function §3!F§(param1:int, param2:Number, param3:Number) : §"$§
      {
         var _loc4_:§"$§ = null;
         switch(param1)
         {
            case §^#§:
               _loc4_ = §04§;
               break;
            case §+R§:
               _loc4_ = TNT;
               break;
            case §[!M§:
               _loc4_ = § !§;
               break;
            case §;!C§:
               _loc4_ = § ,§;
               break;
            default:
               _loc4_ = §6!H§;
         }
         return new §"$§(param2,param3,_loc4_.§ !D§,_loc4_.push,_loc4_.§,!4§,_loc4_.damage,param1);
      }
      
      public function get § !D§() : Number
      {
         return this.§"3§;
      }
      
      public function get push() : Number
      {
         return this.§9e§;
      }
      
      public function get §,!4§() : Number
      {
         return this.§@%§;
      }
      
      public function get damage() : Number
      {
         return this.§-!U§;
      }
      
      public function get type() : int
      {
         return this.§#!S§;
      }
   }
}
