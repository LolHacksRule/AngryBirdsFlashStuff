package §]![§
{
   public class §1! §
   {
      
      public static const §?!i§:int = 0;
      
      public static const §8!8§:int = 1;
      
      public static const §3!$§:int = 2;
      
      public static const §2!w§:int = 3;
      
      public static const §0I§:int = 4;
      
      private static var §?l§:§1! § = new §1! §(0,0,10,500,7.5,600,§?!i§);
      
      private static var §%!P§:§1! § = new §1! §(0,0,10,500,7.5,600,§8!8§);
      
      private static var §else §:§1! § = new §1! §(0,0,15,1750,5,300,§2!w§);
      
      private static var §'o§:§1! § = new §1! §(0,0,10,1500,5,150,§3!$§);
      
      private static var §&!W§:§1! § = new §1! §(0,0,5,10,7,275,§0I§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §'!@§:Number;
      
      private var §-!N§:Number;
      
      private var §#!w§:Number;
      
      private var §>!k§:Number;
      
      private var §2§:int;
      
      public function §1! §(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§'!@§ = param3;
         this.§-!N§ = param4;
         this.§#!w§ = param5;
         this.§>!k§ = param6;
         this.§2§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §1! §
      {
         var _loc4_:§1! § = null;
         switch(param1)
         {
            case §8!8§:
               _loc4_ = §%!P§;
               break;
            case §3!$§:
               _loc4_ = §'o§;
               break;
            case §2!w§:
               _loc4_ = §else §;
               break;
            case §0I§:
               _loc4_ = §&!W§;
               break;
            default:
               _loc4_ = §?l§;
         }
         return new §1! §(param2,param3,_loc4_.§]!E§,_loc4_.push,_loc4_.§`!>§,_loc4_.damage,param1);
      }
      
      public function get §]!E§() : Number
      {
         return this.§'!@§;
      }
      
      public function get push() : Number
      {
         return this.§-!N§;
      }
      
      public function get §`!>§() : Number
      {
         return this.§#!w§;
      }
      
      public function get damage() : Number
      {
         return this.§>!k§;
      }
      
      public function get type() : int
      {
         return this.§2§;
      }
   }
}
