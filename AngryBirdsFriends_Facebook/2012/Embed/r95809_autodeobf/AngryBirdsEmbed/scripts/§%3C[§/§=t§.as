package §<[§
{
   public class §=t§
   {
      
      public static const §8v§:int = 0;
      
      public static const §[w§:int = 1;
      
      public static const §%`§:int = 2;
      
      public static const §@K§:int = 3;
      
      public static const §=A§:int = 4;
      
      private static var §9c§:§=t§ = new §=t§(0,0,10,500,7.5,600,§8v§);
      
      private static var §39§:§=t§ = new §=t§(0,0,10,500,7.5,600,§[w§);
      
      private static var §`;§:§=t§ = new §=t§(0,0,15,1750,5,300,§@K§);
      
      private static var §1!'§:§=t§ = new §=t§(0,0,10,1500,5,150,§%`§);
      
      private static var §#@§:§=t§ = new §=t§(0,0,5,10,7,275,§=A§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §5U§:Number;
      
      private var §8k§:Number;
      
      private var §?!"§:Number;
      
      private var §,!;§:Number;
      
      private var §@M§:int;
      
      public function §=t§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§5U§ = param3;
         this.§8k§ = param4;
         this.§?!"§ = param5;
         this.§,!;§ = param6;
         this.§@M§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §=t§
      {
         var _loc4_:§=t§ = null;
         switch(param1)
         {
            case §[w§:
               _loc4_ = §39§;
               break;
            case §%`§:
               _loc4_ = §1!'§;
               break;
            case §@K§:
               _loc4_ = §`;§;
               break;
            case §=A§:
               _loc4_ = §#@§;
               break;
            default:
               _loc4_ = §9c§;
         }
         return new §=t§(param2,param3,_loc4_.§2!#§,_loc4_.push,_loc4_.§6^§,_loc4_.damage,param1);
      }
      
      public function get §2!#§() : Number
      {
         return this.§5U§;
      }
      
      public function get push() : Number
      {
         return this.§8k§;
      }
      
      public function get §6^§() : Number
      {
         return this.§?!"§;
      }
      
      public function get damage() : Number
      {
         return this.§,!;§;
      }
      
      public function get type() : int
      {
         return this.§@M§;
      }
   }
}
