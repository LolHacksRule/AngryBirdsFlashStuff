package §-!!§
{
   import § !D§.§'"u§;
   
   public class §]" §
   {
      
      public static const §4"R§:int = 0;
      
      public static const §+#o§:int = 1;
      
      public static const §0"x§:int = 2;
      
      public static const §-#v§:int = 3;
      
      public static const §&!h§:int = 4;
      
      public static const §9'§:int = 5;
      
      public static const §^Y§:int = 10;
      
      private static var DEFAULT:§]" § = new §]" §(0,0,10,500,7.5,600,§4"R§);
      
      private static var §`@§:§]" § = new §]" §(0,0,10,500,7.5,600,§+#o§);
      
      private static var §[# §:§]" § = new §]" §(0,0,15,2000,5,300,§-#v§);
      
      private static var §5#z§:§]" § = new §]" §(0,0,8,2250,0,0,§9'§);
      
      private static var TNT:§]" § = new §]" §(0,0,10,1500,5,150,§0"x§);
      
      private static var §=#g§:§]" § = new §]" §(0,0,5,10,7,275,§&!h§);
       
      
      private var §-##§:Number;
      
      private var §0#[§:Number;
      
      private var §0Z§:Number;
      
      private var §<#?§:Number;
      
      private var §]!!§:Number;
      
      private var §"$9§:Number;
      
      private var §=$?§:int;
      
      private var §^o§:int = -1;
      
      private var §9!J§:Boolean = true;
      
      public function §]" §(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1, param9:Boolean = true)
      {
         super();
         this.§-##§ = param1;
         this.§0#[§ = param2;
         this.§0Z§ = param3;
         this.§<#?§ = param4;
         this.§]!!§ = param5;
         this.§"$9§ = param6;
         this.§=$?§ = param7;
         this.§^o§ = param8;
         this.§9!J§ = param9;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : §]" §
      {
         var _loc5_:§]" § = null;
         switch(param1)
         {
            case §+#o§:
               _loc5_ = §`@§;
               break;
            case §0"x§:
               _loc5_ = TNT;
               break;
            case §-#v§:
               _loc5_ = §[# §;
               break;
            case §&!h§:
               _loc5_ = §=#g§;
               break;
            case §9'§:
               _loc5_ = §5#z§;
               break;
            default:
               _loc5_ = DEFAULT;
         }
         return new §]" §(param2,param3,_loc5_.§&$7§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
      
      public static function §%#d§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true) : §]" §
      {
         return new §]" §(param1,param2,param3,param4 * §'"u§.§'#e§,param5,param6,§^Y§,param7,param8);
      }
      
      public function get x() : Number
      {
         return this.§-##§;
      }
      
      public function get y() : Number
      {
         return this.§0#[§;
      }
      
      public function get §&$7§() : Number
      {
         return this.§0Z§;
      }
      
      public function get push() : Number
      {
         return this.§<#?§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§]!!§;
      }
      
      public function get damage() : Number
      {
         return this.§"$9§;
      }
      
      public function get type() : int
      {
         return this.§=$?§;
      }
      
      public function get §3#[§() : int
      {
         return this.§^o§;
      }
      
      public function get §`"a§() : Boolean
      {
         return this.§9!J§;
      }
   }
}
