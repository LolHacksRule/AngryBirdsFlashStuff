package §_-Sp§
{
   public class §_-Dn§
   {
      
      public static const §_-tR§:int = 0;
      
      public static const §_-Cx§:int = 1;
      
      public static const §_-A1§:int = 2;
      
      public static const §_-4F§:int = 3;
      
      public static const §_-ko§:int = 4;
      
      private static var §_-Yo§:§_-Dn§ = new §_-Dn§(0,0,10,500,7.5,600);
      
      private static var §_-P4§:§_-Dn§ = new §_-Dn§(0,0,10,500,7.5,600);
      
      private static var §_-GE§:§_-Dn§ = new §_-Dn§(0,0,15,1750,5,300);
      
      private static var TNT:§_-Dn§ = new §_-Dn§(0,0,10,1500,5,150);
      
      private static var §_-ST§:§_-Dn§ = new §_-Dn§(0,0,7,250,4,150);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-Y0§:Number;
      
      private var §_-ou§:Number;
      
      private var §_-k7§:Number;
      
      private var §_-L1§:Number;
      
      public function §_-Dn§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-Y0§ = param3;
         this.§_-ou§ = param4;
         this.§_-k7§ = param5;
         this.§_-L1§ = param6;
      }
      
      public static function §_-Al§(param1:int, param2:Number, param3:Number) : §_-Dn§
      {
         var _loc4_:§_-Dn§ = null;
         switch(param1)
         {
            case §_-Cx§:
               _loc4_ = §_-P4§;
               break;
            case §_-A1§:
               _loc4_ = TNT;
               break;
            case §_-4F§:
               _loc4_ = §_-GE§;
               break;
            case §_-ko§:
               _loc4_ = §_-ST§;
               break;
            default:
               _loc4_ = §_-Yo§;
         }
         return new §_-Dn§(param2,param3,_loc4_.§_-nK§,_loc4_.push,_loc4_.§_-RI§,_loc4_.§_-Zd§);
      }
      
      public function get §_-nK§() : Number
      {
         return this.§_-Y0§;
      }
      
      public function get push() : Number
      {
         return this.§_-ou§;
      }
      
      public function get §_-RI§() : Number
      {
         return this.§_-k7§;
      }
      
      public function get §_-Zd§() : Number
      {
         return this.§_-L1§;
      }
   }
}
