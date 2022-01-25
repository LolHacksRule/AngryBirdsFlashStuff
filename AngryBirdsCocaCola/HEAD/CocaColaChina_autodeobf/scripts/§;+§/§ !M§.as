package §;+§
{
   public class § !M§
   {
      
      public static const §,-§:int = 0;
      
      public static const §"L§:int = 1;
      
      public static const §5x§:int = 2;
      
      public static const §-l§:int = 3;
      
      public static const §-#§:int = 4;
      
      private static var §#<§:§ !M§ = new § !M§(0,0,10,500,7.5,600,§,-§);
      
      private static var §@!A§:§ !M§ = new § !M§(0,0,10,500,7.5,600,§"L§);
      
      private static var §]?§:§ !M§ = new § !M§(0,0,15,1750,5,300,§-l§);
      
      private static var §>!S§:§ !M§ = new § !M§(0,0,10,1500,5,150,§5x§);
      
      private static var §6E§:§ !M§ = new § !M§(0,0,5,10,7,275,§-#§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §+f§:Number;
      
      private var §>s§:Number;
      
      private var §,A§:Number;
      
      private var §&F§:Number;
      
      private var §!4§:int;
      
      public function § !M§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§+f§ = param3;
         this.§>s§ = param4;
         this.§,A§ = param5;
         this.§&F§ = param6;
         this.§!4§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : § !M§
      {
         var _loc4_:§ !M§ = null;
         switch(param1)
         {
            case §"L§:
               _loc4_ = §@!A§;
               break;
            case §5x§:
               _loc4_ = §>!S§;
               break;
            case §-l§:
               _loc4_ = §]?§;
               break;
            case §-#§:
               _loc4_ = §6E§;
               break;
            default:
               _loc4_ = §#<§;
         }
         return new § !M§(param2,param3,_loc4_.§3'§,_loc4_.push,_loc4_.§1!T§,_loc4_.damage,param1);
      }
      
      public function get §3'§() : Number
      {
         return this.§+f§;
      }
      
      public function get push() : Number
      {
         return this.§>s§;
      }
      
      public function get §1!T§() : Number
      {
         return this.§,A§;
      }
      
      public function get damage() : Number
      {
         return this.§&F§;
      }
      
      public function get type() : int
      {
         return this.§!4§;
      }
   }
}
