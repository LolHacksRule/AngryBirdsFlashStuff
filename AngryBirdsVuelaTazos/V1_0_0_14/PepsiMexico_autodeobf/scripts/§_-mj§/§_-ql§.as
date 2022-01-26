package §_-mj§
{
   public class §_-ql§
   {
      
      public static const §_-Pv§:int = 0;
      
      public static const §_-zH§:int = 1;
      
      public static const §_-4c§:int = 2;
      
      public static const §_-mU§:int = 3;
      
      public static const §_-ER§:int = 4;
      
      private static var §_-hs§:§_-ql§ = new §_-ql§(0,0,10,500,7.5,600,§_-Pv§);
      
      private static var §_-By§:§_-ql§ = new §_-ql§(0,0,10,500,7.5,600,§_-zH§);
      
      private static var §_-Uj§:§_-ql§ = new §_-ql§(0,0,15,1750,5,300,§_-mU§);
      
      private static var TNT:§_-ql§ = new §_-ql§(0,0,10,1500,5,150,§_-4c§);
      
      private static var §_-rG§:§_-ql§ = new §_-ql§(0,0,5,10,8,400,§_-ER§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-bj§:Number;
      
      private var §_-Qo§:Number;
      
      private var §_-q-§:Number;
      
      private var §_-3a§:Number;
      
      private var §_-yc§:int;
      
      public function §_-ql§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§_-bj§ = param3;
         this.§_-Qo§ = param4;
         this.§_-q-§ = param5;
         this.§_-3a§ = param6;
         this.§_-yc§ = param7;
      }
      
      public static function §_-cd§(param1:int, param2:Number, param3:Number) : §_-ql§
      {
         var _loc4_:§_-ql§ = null;
         switch(param1)
         {
            case §_-zH§:
               _loc4_ = §_-By§;
               break;
            case §_-4c§:
               _loc4_ = TNT;
               break;
            case §_-mU§:
               _loc4_ = §_-Uj§;
               break;
            case §_-ER§:
               _loc4_ = §_-rG§;
               break;
            default:
               _loc4_ = §_-hs§;
         }
         return new §_-ql§(param2,param3,_loc4_.§_-Sj§,_loc4_.push,_loc4_.§_-dq§,_loc4_.damage,param1);
      }
      
      public function get §_-Sj§() : Number
      {
         return this.§_-bj§;
      }
      
      public function get push() : Number
      {
         return this.§_-Qo§;
      }
      
      public function get §_-dq§() : Number
      {
         return this.§_-q-§;
      }
      
      public function get damage() : Number
      {
         return this.§_-3a§;
      }
      
      public function get type() : int
      {
         return this.§_-yc§;
      }
   }
}
