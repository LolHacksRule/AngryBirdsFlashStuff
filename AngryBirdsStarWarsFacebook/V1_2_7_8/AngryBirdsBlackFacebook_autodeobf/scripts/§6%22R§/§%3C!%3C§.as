package §6"R§
{
   import §5!q§.§3"X§;
   
   public class §<!<§
   {
      
      public static const §2#"§:int = 0;
      
      public static const §2"_§:int = 1;
      
      public static const §,b§:int = 2;
      
      public static const §1!`§:int = 3;
      
      public static const §+"S§:int = 4;
      
      public static const §>#'§:int = 5;
      
      public static const §+D§:int = 10;
      
      private static var DEFAULT:§<!<§ = new §<!<§(0,0,10,500,7.5,600,§2#"§);
      
      private static var §,!J§:§<!<§ = new §<!<§(0,0,10,500,7.5,600,§2"_§);
      
      private static var §4!#§:§<!<§ = new §<!<§(0,0,15,2000,5,300,§1!`§);
      
      private static var §`"C§:§<!<§ = new §<!<§(0,0,8,1500,0,0,§>#'§);
      
      private static var TNT:§<!<§ = new §<!<§(0,0,10,1500,5,150,§,b§);
      
      private static var §`j§:§<!<§ = new §<!<§(0,0,5,10,7,275,§+"S§);
       
      
      private var §]!_§:Number;
      
      private var §#j§:Number;
      
      private var §7V§:Number;
      
      private var §!"6§:Number;
      
      private var §9"s§:Number;
      
      private var §&"h§:Number;
      
      private var §]m§:int;
      
      private var §;0§:int = -1;
      
      public function §<!<§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super();
         this.§]!_§ = param1;
         this.§#j§ = param2;
         this.§7V§ = param3;
         this.§!"6§ = param4;
         this.§9"s§ = param5;
         this.§&"h§ = param6;
         this.§]m§ = param7;
         this.§;0§ = param8;
      }
      
      public static function §"3§(param1:int, param2:Number, param3:Number) : §<!<§
      {
         var _loc4_:§<!<§ = null;
         switch(param1)
         {
            case §2"_§:
               _loc4_ = §,!J§;
               break;
            case §,b§:
               _loc4_ = TNT;
               break;
            case §1!`§:
               _loc4_ = §4!#§;
               break;
            case §+"S§:
               _loc4_ = §`j§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §<!<§(param2,param3,_loc4_.§#!E§,_loc4_.push,_loc4_.§%v§,_loc4_.damage,param1);
      }
      
      public static function §^!8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §<!<§
      {
         return new §<!<§(param1,param2,param3,param4 * §3"X§.§;"l§,param5,param6,§+D§);
      }
      
      public function get x() : Number
      {
         return this.§]!_§;
      }
      
      public function get y() : Number
      {
         return this.§#j§;
      }
      
      public function get §#!E§() : Number
      {
         return this.§7V§;
      }
      
      public function get push() : Number
      {
         return this.§!"6§;
      }
      
      public function get §%v§() : Number
      {
         return this.§9"s§;
      }
      
      public function get damage() : Number
      {
         return this.§&"h§;
      }
      
      public function get type() : int
      {
         return this.§]m§;
      }
      
      public function get §3"i§() : int
      {
         return this.§;0§;
      }
   }
}
