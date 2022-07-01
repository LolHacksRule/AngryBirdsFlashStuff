package §&!P§
{
   public class §=!Y§
   {
      
      public static const §6>§:int = 0;
      
      public static const §9"5§:int = 1;
      
      public static const §<!q§:int = 2;
      
      public static const §;+§:int = 3;
      
      public static const §4!y§:int = 4;
      
      public static const §?!>§:int = 5;
      
      private static var §2!]§:§=!Y§ = new §=!Y§(0,0,10,500,7.5,600,§6>§);
      
      private static var dynamic:§=!Y§ = new §=!Y§(0,0,10,500,7.5,600,§9"5§);
      
      private static var §2Q§:§=!Y§ = new §=!Y§(0,0,15,1750,5,300,§;+§);
      
      private static var §0!C§:§=!Y§ = new §=!Y§(0,0,8,1500,0,0,§?!>§);
      
      private static var § H§:§=!Y§ = new §=!Y§(0,0,10,1500,5,150,§<!q§);
      
      private static var §`"<§:§=!Y§ = new §=!Y§(0,0,5,10,7,275,§4!y§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §7+§:Number;
      
      private var §<">§:Number;
      
      private var §^%§:Number;
      
      private var §true §:Number;
      
      private var §%!G§:int;
      
      private var §>V§:Vector.<§``§>;
      
      public function §=!Y§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§``§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§7+§ = param3;
         this.§<">§ = param4;
         this.§^%§ = param5;
         this.§true § = param6;
         this.§%!G§ = param7;
         this.§>V§ = param8;
      }
      
      public static function §`!W§(param1:int, param2:Number, param3:Number, param4:Vector.<§``§> = null) : §=!Y§
      {
         var _loc5_:§=!Y§ = null;
         switch(param1)
         {
            case §9"5§:
               _loc5_ = dynamic;
               break;
            case §<!q§:
               _loc5_ = § H§;
               break;
            case §;+§:
               _loc5_ = §2Q§;
               break;
            case §?!>§:
               _loc5_ = §0!C§;
               break;
            case §4!y§:
               _loc5_ = §`"<§;
               break;
            default:
               _loc5_ = §2!]§;
         }
         return new §=!Y§(param2,param3,_loc5_.§@z§,_loc5_.push,_loc5_.§-a§,_loc5_.damage,param1,param4);
      }
      
      public function get §@z§() : Number
      {
         return this.§7+§;
      }
      
      public function get push() : Number
      {
         return this.§<">§;
      }
      
      public function get §-a§() : Number
      {
         return this.§^%§;
      }
      
      public function get damage() : Number
      {
         return this.§true §;
      }
      
      public function get type() : int
      {
         return this.§%!G§;
      }
      
      public function get §+j§() : Vector.<§``§>
      {
         return this.§>V§;
      }
   }
}
