package §#!P§
{
   public class §@N§
   {
      
      public static const §'P§:int = 0;
      
      public static const §<d§:int = 1;
      
      public static const §@e§:int = 2;
      
      public static const §&g§:int = 3;
      
      public static const §?! §:int = 4;
      
      private static var §^M§:§@N§ = new §@N§(0,0,10,500,7.5,600,§'P§);
      
      private static var §]!$§:§@N§ = new §@N§(0,0,10,500,7.5,600,§<d§);
      
      private static var §14§:§@N§ = new §@N§(0,0,15,1750,5,300,§&g§);
      
      private static var TNT:§@N§ = new §@N§(0,0,10,1500,5,150,§@e§);
      
      private static var §]!2§:§@N§ = new §@N§(0,0,5,10,7,275,§?! §);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §4!>§:Number;
      
      private var §@!,§:Number;
      
      private var §8a§:Number;
      
      private var §^N§:Number;
      
      private var §&1§:int;
      
      public function §@N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§4!>§ = param3;
         this.§@!,§ = param4;
         this.§8a§ = param5;
         this.§^N§ = param6;
         this.§&1§ = param7;
      }
      
      public static function §%J§(param1:int, param2:Number, param3:Number) : §@N§
      {
         var _loc4_:§@N§ = null;
         switch(param1)
         {
            case §<d§:
               _loc4_ = §]!$§;
               break;
            case §@e§:
               _loc4_ = TNT;
               break;
            case §&g§:
               _loc4_ = §14§;
               break;
            case §?! §:
               _loc4_ = §]!2§;
               break;
            default:
               _loc4_ = §^M§;
         }
         return new §@N§(param2,param3,_loc4_.§4g§,_loc4_.push,_loc4_.§ s§,_loc4_.damage,param1);
      }
      
      public function get §4g§() : Number
      {
         return this.§4!>§;
      }
      
      public function get push() : Number
      {
         return this.§@!,§;
      }
      
      public function get § s§() : Number
      {
         return this.§8a§;
      }
      
      public function get damage() : Number
      {
         return this.§^N§;
      }
      
      public function get type() : int
      {
         return this.§&1§;
      }
   }
}
