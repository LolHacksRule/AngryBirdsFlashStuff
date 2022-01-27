package §5"D§
{
   import §3R§.§1!R§;
   
   public class §09§
   {
      
      public static const §8>§:int = 0;
      
      public static const §5!2§:int = 1;
      
      public static const §@!D§:int = 2;
      
      public static const §@! §:int = 3;
      
      public static const §=!0§:int = 4;
      
      public static const §,"@§:int = 10;
      
      private static var §-! §:§09§ = new §09§(0,0,10,500,7.5,600,§8>§);
      
      private static var §]i§:§09§ = new §09§(0,0,10,500,7.5,600,§5!2§);
      
      private static var §,<§:§09§ = new §09§(0,0,15,1750,5,300,§@! §);
      
      private static var TNT:§09§ = new §09§(0,0,10,1500,5,150,§@!D§);
      
      private static var §6!Z§:§09§ = new §09§(0,0,5,10,7,275,§=!0§);
       
      
      private var §1!`§:Number;
      
      private var §<2§:Number;
      
      private var §`!&§:Number;
      
      private var §!!§:Number;
      
      private var §5J§:Number;
      
      private var §4=§:Number;
      
      private var § !b§:int;
      
      public function §09§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.§1!`§ = param1;
         this.§<2§ = param2;
         this.§`!&§ = param3;
         this.§!!§ = param4;
         this.§5J§ = param5;
         this.§4=§ = param6;
         this.§ !b§ = param7;
      }
      
      public static function §<!s§(param1:int, param2:Number, param3:Number) : §09§
      {
         var _loc4_:§09§ = null;
         switch(param1)
         {
            case §5!2§:
               _loc4_ = §]i§;
               break;
            case §@!D§:
               _loc4_ = TNT;
               break;
            case §@! §:
               _loc4_ = §,<§;
               break;
            case §=!0§:
               _loc4_ = §6!Z§;
               break;
            default:
               _loc4_ = §-! §;
         }
         return new §09§(param2,param3,_loc4_.§="A§,_loc4_.push,_loc4_.§7"6§,_loc4_.damage,param1);
      }
      
      public static function §=k§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §09§
      {
         return new §09§(param1,param2,param3,param4 * §1!R§.§00§,param5,param6,§,"@§);
      }
      
      public function get x() : Number
      {
         return this.§1!`§;
      }
      
      public function get y() : Number
      {
         return this.§<2§;
      }
      
      public function get §="A§() : Number
      {
         return this.§`!&§;
      }
      
      public function get push() : Number
      {
         return this.§!!§;
      }
      
      public function get §7"6§() : Number
      {
         return this.§5J§;
      }
      
      public function get damage() : Number
      {
         return this.§4=§;
      }
      
      public function get type() : int
      {
         return this.§ !b§;
      }
   }
}
