package §;z§
{
   public class §4!#§
   {
      
      public static const §>!>§:int = 0;
      
      public static const §^f§:int = 1;
      
      public static const §->§:int = 2;
      
      public static const §[!A§:int = 3;
      
      public static const §]!-§:int = 4;
      
      private static var §@!]§:§4!#§ = new §4!#§(0,0,10,500,7.5,600,§>!>§);
      
      private static var §=A§:§4!#§ = new §4!#§(0,0,10,500,7.5,600,§^f§);
      
      private static var §>E§:§4!#§ = new §4!#§(0,0,15,1750,5,300,§[!A§);
      
      private static var TNT:§4!#§ = new §4!#§(0,0,10,1500,5,150,§->§);
      
      private static var §[Z§:§4!#§ = new §4!#§(0,0,5,10,7,275,§]!-§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §,[§:Number;
      
      private var §-!'§:Number;
      
      private var §=!'§:Number;
      
      private var §5]§:Number;
      
      private var §%!J§:int;
      
      public function §4!#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§,[§ = param3;
         this.§-!'§ = param4;
         this.§=!'§ = param5;
         this.§5]§ = param6;
         this.§%!J§ = param7;
      }
      
      public static function §<x§(param1:int, param2:Number, param3:Number) : §4!#§
      {
         var _loc4_:§4!#§ = null;
         switch(param1)
         {
            case §^f§:
               _loc4_ = §=A§;
               break;
            case §->§:
               _loc4_ = TNT;
               break;
            case §[!A§:
               _loc4_ = §>E§;
               break;
            case §]!-§:
               _loc4_ = §[Z§;
               break;
            default:
               _loc4_ = §@!]§;
         }
         return new §4!#§(param2,param3,_loc4_.§8!>§,_loc4_.push,_loc4_.§1;§,_loc4_.damage,param1);
      }
      
      public function get §8!>§() : Number
      {
         return this.§,[§;
      }
      
      public function get push() : Number
      {
         return this.§-!'§;
      }
      
      public function get §1;§() : Number
      {
         return this.§=!'§;
      }
      
      public function get damage() : Number
      {
         return this.§5]§;
      }
      
      public function get type() : int
      {
         return this.§%!J§;
      }
   }
}
