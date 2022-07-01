package § ""§
{
   public class §]x§
   {
      
      public static const §&!w§:int = 0;
      
      public static const §?!q§:int = 1;
      
      public static const §3p§:int = 2;
      
      public static const §6!g§:int = 3;
      
      public static const §+!u§:int = 4;
      
      private static var §<",§:§]x§ = new §]x§(0,0,10,500,7.5,600,§&!w§);
      
      private static var §'w§:§]x§ = new §]x§(0,0,10,500,7.5,600,§?!q§);
      
      private static var §,!j§:§]x§ = new §]x§(0,0,15,1750,5,300,§6!g§);
      
      private static var §4E§:§]x§ = new §]x§(0,0,10,1500,5,150,§3p§);
      
      private static var §>!g§:§]x§ = new §]x§(0,0,5,10,7,275,§+!u§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §!N§:Number;
      
      private var §3"7§:Number;
      
      private var §#5§:Number;
      
      private var §>-§:Number;
      
      private var §;!<§:int;
      
      public function §]x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§!N§ = param3;
         this.§3"7§ = param4;
         this.§#5§ = param5;
         this.§>-§ = param6;
         this.§;!<§ = param7;
      }
      
      public static function §'U§(param1:int, param2:Number, param3:Number) : §]x§
      {
         var _loc4_:§]x§ = null;
         switch(param1)
         {
            case §?!q§:
               _loc4_ = §'w§;
               break;
            case §3p§:
               _loc4_ = §4E§;
               break;
            case §6!g§:
               _loc4_ = §,!j§;
               break;
            case §+!u§:
               _loc4_ = §>!g§;
               break;
            default:
               _loc4_ = §<",§;
         }
         return new §]x§(param2,param3,_loc4_.§5!5§,_loc4_.push,_loc4_.§if§,_loc4_.damage,param1);
      }
      
      public function get §5!5§() : Number
      {
         return this.§!N§;
      }
      
      public function get push() : Number
      {
         return this.§3"7§;
      }
      
      public function get §if§() : Number
      {
         return this.§#5§;
      }
      
      public function get damage() : Number
      {
         return this.§>-§;
      }
      
      public function get type() : int
      {
         return this.§;!<§;
      }
   }
}
