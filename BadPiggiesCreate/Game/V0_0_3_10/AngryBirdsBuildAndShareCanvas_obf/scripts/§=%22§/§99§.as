package §="§
{
   public class §99§
   {
      
      public static const §5"+§:int = 0;
      
      public static const §0!C§:int = 1;
      
      public static const §>!j§:int = 2;
      
      public static const §?!§:int = 3;
      
      public static const §-!q§:int = 4;
      
      private static var §9J§:§99§ = new §99§(0,0,10,500,7.5,600,§5"+§);
      
      private static var §=A§:§99§ = new §99§(0,0,10,500,7.5,600,§0!C§);
      
      private static var §^!E§:§99§ = new §99§(0,0,15,1750,5,300,§?!§);
      
      private static var §8!"§:§99§ = new §99§(0,0,10,1500,5,150,§>!j§);
      
      private static var §3!U§:§99§ = new §99§(0,0,5,10,7,275,§-!q§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §36§:Number;
      
      private var §+!F§:Number;
      
      private var §-!b§:Number;
      
      private var §[3§:Number;
      
      private var §5!d§:int;
      
      public function §99§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§36§ = param3;
         this.§+!F§ = param4;
         this.§-!b§ = param5;
         this.§[3§ = param6;
         this.§5!d§ = param7;
      }
      
      public static function §2"6§(param1:int, param2:Number, param3:Number) : §99§
      {
         var _loc4_:§99§ = null;
         switch(param1)
         {
            case §0!C§:
               _loc4_ = §=A§;
               break;
            case §>!j§:
               _loc4_ = §8!"§;
               break;
            case §?!§:
               _loc4_ = §^!E§;
               break;
            case §-!q§:
               _loc4_ = §3!U§;
               break;
            default:
               _loc4_ = §9J§;
         }
         return new §99§(param2,param3,_loc4_.§[j§,_loc4_.push,_loc4_.§ !A§,_loc4_.damage,param1);
      }
      
      public function get §[j§() : Number
      {
         return this.§36§;
      }
      
      public function get push() : Number
      {
         return this.§+!F§;
      }
      
      public function get § !A§() : Number
      {
         return this.§-!b§;
      }
      
      public function get damage() : Number
      {
         return this.§[3§;
      }
      
      public function get type() : int
      {
         return this.§5!d§;
      }
   }
}
