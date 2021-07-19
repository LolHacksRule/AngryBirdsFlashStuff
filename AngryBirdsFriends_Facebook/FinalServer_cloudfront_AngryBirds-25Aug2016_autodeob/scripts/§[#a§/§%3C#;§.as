package §[#a§
{
   import §52§.§#!,§;
   
   public class §<#;§
   {
      
      public static const §@"B§:int = 0;
      
      public static const §%$&§:int = 1;
      
      public static const §`Q§:int = 2;
      
      public static const §,"%§:int = 3;
      
      public static const §1#E§:int = 4;
      
      public static const §;#]§:int = 5;
      
      public static const §?#x§:int = 10;
      
      private static var DEFAULT:§<#;§ = new §<#;§(0,0,10,500,7.5,600,§@"B§);
      
      private static var §9"b§:§<#;§ = new §<#;§(0,0,10,500,7.5,600,§%$&§);
      
      private static var §6!#§:§<#;§ = new §<#;§(0,0,15,2000,5,300,§,"%§);
      
      private static var §5#]§:§<#;§ = new §<#;§(0,0,8,2250,0,0,§;#]§);
      
      private static var TNT:§<#;§ = new §<#;§(0,0,10,1500,5,150,§`Q§);
      
      private static var §0<§:§<#;§ = new §<#;§(0,0,5,10,7,275,§1#E§);
       
      
      private var §+!5§:Number;
      
      private var §'! §:Number;
      
      private var §`$3§:Number;
      
      private var §2!>§:Number;
      
      private var §3#F§:Number;
      
      private var §&!0§:Number;
      
      private var §+#w§:int;
      
      private var §,z§:int = -1;
      
      private var §[#Z§:Boolean = true;
      
      public function §<#;§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1, param9:Boolean = true)
      {
         super();
         this.§+!5§ = param1;
         this.§'! § = param2;
         this.§`$3§ = param3;
         this.§2!>§ = param4;
         this.§3#F§ = param5;
         this.§&!0§ = param6;
         this.§+#w§ = param7;
         this.§,z§ = param8;
         this.§[#Z§ = param9;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : §<#;§
      {
         var _loc5_:§<#;§ = null;
         switch(param1)
         {
            case §%$&§:
               _loc5_ = §9"b§;
               break;
            case §`Q§:
               _loc5_ = TNT;
               break;
            case §,"%§:
               _loc5_ = §6!#§;
               break;
            case §1#E§:
               _loc5_ = §0<§;
               break;
            case §;#]§:
               _loc5_ = §5#]§;
               break;
            default:
               _loc5_ = DEFAULT;
         }
         return new §<#;§(param2,param3,_loc5_.§""S§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
      
      public static function §&"T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true) : §<#;§
      {
         return new §<#;§(param1,param2,param3,param4 * §#!,§.§?$#§,param5,param6,§?#x§,param7,param8);
      }
      
      public function get x() : Number
      {
         return this.§+!5§;
      }
      
      public function get y() : Number
      {
         return this.§'! §;
      }
      
      public function get §""S§() : Number
      {
         return this.§`$3§;
      }
      
      public function get push() : Number
      {
         return this.§2!>§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§3#F§;
      }
      
      public function get damage() : Number
      {
         return this.§&!0§;
      }
      
      public function get type() : int
      {
         return this.§+#w§;
      }
      
      public function get §!"U§() : int
      {
         return this.§,z§;
      }
      
      public function get §]§() : Boolean
      {
         return this.§[#Z§;
      }
   }
}
