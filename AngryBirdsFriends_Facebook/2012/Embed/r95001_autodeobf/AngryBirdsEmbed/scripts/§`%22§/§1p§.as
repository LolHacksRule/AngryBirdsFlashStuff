package §`"§
{
   public class §1p§
   {
      
      public static const §8!,§:int = 0;
      
      public static const §5t§:int = 1;
      
      public static const §6W§:int = 2;
      
      public static const §1[§:int = 3;
      
      public static const § X§:int = 4;
      
      private static var §-q§:§1p§ = new §1p§(0,0,10,500,7.5,600,§8!,§);
      
      private static var §5!2§:§1p§ = new §1p§(0,0,10,500,7.5,600,§5t§);
      
      private static var §,[§:§1p§ = new §1p§(0,0,15,1750,5,300,§1[§);
      
      private static var §1o§:§1p§ = new §1p§(0,0,10,1500,5,150,§6W§);
      
      private static var §2!'§:§1p§ = new §1p§(0,0,5,10,7,275,§ X§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §?!7§:Number;
      
      private var §3!,§:Number;
      
      private var §8$§:Number;
      
      private var §9W§:Number;
      
      private var §[!0§:int;
      
      public function §1p§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§?!7§ = param3;
         this.§3!,§ = param4;
         this.§8$§ = param5;
         this.§9W§ = param6;
         this.§[!0§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §1p§
      {
         var _loc4_:§1p§ = null;
         switch(param1)
         {
            case §5t§:
               _loc4_ = §5!2§;
               break;
            case §6W§:
               _loc4_ = §1o§;
               break;
            case §1[§:
               _loc4_ = §,[§;
               break;
            case § X§:
               _loc4_ = §2!'§;
               break;
            default:
               _loc4_ = §-q§;
         }
         return new §1p§(param2,param3,_loc4_.§0j§,_loc4_.push,_loc4_.§[Z§,_loc4_.damage,param1);
      }
      
      public function get §0j§() : Number
      {
         return this.§?!7§;
      }
      
      public function get push() : Number
      {
         return this.§3!,§;
      }
      
      public function get §[Z§() : Number
      {
         return this.§8$§;
      }
      
      public function get damage() : Number
      {
         return this.§9W§;
      }
      
      public function get type() : int
      {
         return this.§[!0§;
      }
   }
}
