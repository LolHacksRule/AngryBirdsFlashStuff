package §_-YK§
{
   import §_-2B§.§_-wA§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-k7§ extends Sprite
   {
       
      
      private var §_-tD§:Sprite;
      
      private var §_-cN§:Number;
      
      private var §_-wR§:Number;
      
      public function §_-k7§(param1:Number)
      {
         var _loc3_:String = null;
         super();
         var _loc2_:int = Math.random() * 7;
         switch(_loc2_)
         {
            case 0:
               _loc3_ = "P_STAR_4";
               break;
            case 1:
               _loc3_ = "P_STAR_3";
               break;
            case 2:
               _loc3_ = "P_STAR_2";
               break;
            case 3:
               _loc3_ = "P_STAR_1";
               break;
            case 4:
               _loc3_ = "P_SMOKE_3";
               break;
            case 5:
               _loc3_ = "P_SMOKE_2";
               break;
            case 6:
               _loc3_ = "P_SMOKE_1";
         }
         this.§_-tD§ = this.§_-MM§(_loc3_);
         addChild(this.§_-tD§);
         this.§_-tD§.x = -this.§_-tD§.width / 2;
         this.§_-tD§.y = -this.§_-tD§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§_-tD§);
         this.§_-tD§ = null;
      }
      
      public function §_-MM§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-wA§.§_-Mh§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §_-j7§() : Number
      {
         return this.§_-cN§;
      }
      
      public function set §_-j7§(param1:Number) : void
      {
         this.§_-cN§ = param1;
      }
      
      public function get §_-rl§() : Number
      {
         return this.§_-wR§;
      }
      
      public function set §_-rl§(param1:Number) : void
      {
         this.§_-wR§ = param1;
      }
   }
}
