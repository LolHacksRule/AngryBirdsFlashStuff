package §&c§
{
   public class §'$§
   {
      
      public static const §4z§:int = 0;
      
      public static const §6;§:int = 1;
      
      public static const dynamic:int = 2;
      
      public static const §[x§:int = 3;
      
      public static const §7! §:int = 4;
      
      private static var §,!8§:§'$§ = new §'$§(0,0,10,500,7.5,600,§4z§);
      
      private static var §@R§:§'$§ = new §'$§(0,0,10,500,7.5,600,§6;§);
      
      private static var §&L§:§'$§ = new §'$§(0,0,15,1750,5,300,§[x§);
      
      private static var §=-§:§'$§ = new §'$§(0,0,10,1500,5,150,dynamic);
      
      private static var §6q§:§'$§ = new §'$§(0,0,5,10,7,275,§7! §);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §-r§:Number;
      
      private var §8!2§:Number;
      
      private var §;Z§:Number;
      
      private var final:Number;
      
      private var §0!5§:int;
      
      public function §'$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§-r§ = param3;
         this.§8!2§ = param4;
         this.§;Z§ = param5;
         this.final = param6;
         this.§0!5§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §'$§
      {
         var _loc4_:§'$§ = null;
         switch(param1)
         {
            case §6;§:
               _loc4_ = §@R§;
               break;
            case dynamic:
               _loc4_ = §=-§;
               break;
            case §[x§:
               _loc4_ = §&L§;
               break;
            case §7! §:
               _loc4_ = §6q§;
               break;
            default:
               _loc4_ = §,!8§;
         }
         return new §'$§(param2,param3,_loc4_.§'p§,_loc4_.push,_loc4_.§8X§,_loc4_.damage,param1);
      }
      
      public function get §'p§() : Number
      {
         return this.§-r§;
      }
      
      public function get push() : Number
      {
         return this.§8!2§;
      }
      
      public function get §8X§() : Number
      {
         return this.§;Z§;
      }
      
      public function get damage() : Number
      {
         return this.final;
      }
      
      public function get type() : int
      {
         return this.§0!5§;
      }
   }
}
