package §6!3§
{
   import §>2§.§!6§;
   
   public class §>#x§
   {
      
      public static const §,"E§:int = 0;
      
      public static const §1$,§:int = 1;
      
      public static const §]" §:int = 2;
      
      public static const §,"p§:int = 3;
      
      public static const §5!3§:int = 4;
      
      public static const §0#6§:int = 5;
      
      public static const §`#$§:int = 10;
      
      private static var DEFAULT:§>#x§ = new §>#x§(0,0,10,500,7.5,600,§,"E§);
      
      private static var §[#z§:§>#x§ = new §>#x§(0,0,10,500,7.5,600,§1$,§);
      
      private static var §]!K§:§>#x§ = new §>#x§(0,0,15,2000,5,300,§,"p§);
      
      private static var §%"X§:§>#x§ = new §>#x§(0,0,8,2250,0,0,§0#6§);
      
      private static var TNT:§>#x§ = new §>#x§(0,0,10,1500,5,150,§]" §);
      
      private static var §9P§:§>#x§ = new §>#x§(0,0,5,10,7,275,§5!3§);
       
      
      private var §["d§:Number;
      
      private var §%#z§:Number;
      
      private var §2@§:Number;
      
      private var §2i§:Number;
      
      private var §^#§:Number;
      
      private var §4##§:Number;
      
      private var §@4§:int;
      
      private var §%"T§:int = -1;
      
      private var §6!O§:Boolean = true;
      
      public function §>#x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1, param9:Boolean = true)
      {
         super();
         this.§["d§ = param1;
         this.§%#z§ = param2;
         this.§2@§ = param3;
         this.§2i§ = param4;
         this.§^#§ = param5;
         this.§4##§ = param6;
         this.§@4§ = param7;
         this.§%"T§ = param8;
         this.§6!O§ = param9;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : §>#x§
      {
         var _loc5_:§>#x§ = null;
         switch(param1)
         {
            case §1$,§:
               _loc5_ = §[#z§;
               break;
            case §]" §:
               _loc5_ = TNT;
               break;
            case §,"p§:
               _loc5_ = §]!K§;
               break;
            case §5!3§:
               _loc5_ = §9P§;
               break;
            case §0#6§:
               _loc5_ = §%"X§;
               break;
            default:
               _loc5_ = DEFAULT;
         }
         return new §>#x§(param2,param3,_loc5_.§;C§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
      
      public static function §^!x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true) : §>#x§
      {
         return new §>#x§(param1,param2,param3,param4 * §!6§.§[#v§,param5,param6,§`#$§,param7,param8);
      }
      
      public function get x() : Number
      {
         return this.§["d§;
      }
      
      public function get y() : Number
      {
         return this.§%#z§;
      }
      
      public function get §;C§() : Number
      {
         return this.§2@§;
      }
      
      public function get push() : Number
      {
         return this.§2i§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§^#§;
      }
      
      public function get damage() : Number
      {
         return this.§4##§;
      }
      
      public function get type() : int
      {
         return this.§@4§;
      }
      
      public function get §3#n§() : int
      {
         return this.§%"T§;
      }
      
      public function get §@A§() : Boolean
      {
         return this.§6!O§;
      }
   }
}
