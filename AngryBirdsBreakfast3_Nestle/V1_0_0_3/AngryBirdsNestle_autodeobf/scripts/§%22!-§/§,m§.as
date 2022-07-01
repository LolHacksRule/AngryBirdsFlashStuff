package §"!-§
{
   import §@"1§.§"h§;
   
   public class §,m§
   {
      
      public static const §33§:int = 0;
      
      public static const §@+§:int = 1;
      
      public static const §?!7§:int = 2;
      
      public static const §=?§:int = 3;
      
      public static const §&!&§:int = 4;
      
      public static const §38§:int = 5;
      
      public static const §#k§:int = 10;
      
      private static var DEFAULT:§,m§ = new §,m§(0,0,10,500,7.5,600,§33§);
      
      private static var §3!6§:§,m§ = new §,m§(0,0,10,500,7.5,600,§@+§);
      
      private static var §"i§:§,m§ = new §,m§(0,0,15,2000,5,300,§=?§);
      
      private static var §^x§:§,m§ = new §,m§(0,0,8,1500,0,0,§38§);
      
      private static var TNT:§,m§ = new §,m§(0,0,10,1500,5,150,§?!7§);
      
      private static var set:§,m§ = new §,m§(0,0,5,10,7,275,§&!&§);
       
      
      private var §%!H§:Number;
      
      private var §^<§:Number;
      
      private var §3Y§:Number;
      
      private var §!y§:Number;
      
      private var §-!u§:Number;
      
      private var §^!r§:Number;
      
      private var §`u§:int;
      
      private var §8!3§:int = -1;
      
      public function §,m§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§%!H§ = param1;
         this.§^<§ = param2;
         this.§3Y§ = param3;
         this.§!y§ = param4;
         this.§-!u§ = param5;
         this.§^!r§ = param6;
         this.§`u§ = param7;
         this.§8!3§ = param8;
      }
      
      public static function §92§(param1:int, param2:Number, param3:Number) : §,m§
      {
         var _loc4_:§,m§ = null;
         switch(param1)
         {
            case §@+§:
               _loc4_ = §3!6§;
               break;
            case §?!7§:
               _loc4_ = TNT;
               break;
            case §=?§:
               _loc4_ = §"i§;
               break;
            case §&!&§:
               _loc4_ = set;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §,m§(param2,param3,_loc4_.§"N§,_loc4_.push,_loc4_.§&!b§,_loc4_.damage,param1);
      }
      
      public static function § !R§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §,m§
      {
         return new §,m§(param1,param2,param3,param4 * §"h§.§4<§,param5,param6,§#k§);
      }
      
      public function get x() : Number
      {
         return this.§%!H§;
      }
      
      public function get y() : Number
      {
         return this.§^<§;
      }
      
      public function get §"N§() : Number
      {
         return this.§3Y§;
      }
      
      public function get push() : Number
      {
         return this.§!y§;
      }
      
      public function get §&!b§() : Number
      {
         return this.§-!u§;
      }
      
      public function get damage() : Number
      {
         return this.§^!r§;
      }
      
      public function get type() : int
      {
         return this.§`u§;
      }
      
      public function get §,g§() : int
      {
         return this.§8!3§;
      }
   }
}
