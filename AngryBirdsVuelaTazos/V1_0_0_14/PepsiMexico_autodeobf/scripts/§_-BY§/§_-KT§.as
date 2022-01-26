package §_-BY§
{
   import §_-W7§.§_-jT§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-KT§ extends Sprite
   {
       
      
      private var §_-1d§:Sprite;
      
      private var §_-TK§:Number;
      
      private var §_-qP§:Number;
      
      public function §_-KT§(param1:Number)
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
         this.§_-1d§ = this.§_-Uu§(_loc3_);
         addChild(this.§_-1d§);
         this.§_-1d§.x = -this.§_-1d§.width / 2;
         this.§_-1d§.y = -this.§_-1d§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§_-1d§);
         this.§_-1d§ = null;
      }
      
      public function §_-Uu§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-jT§.§_-kv§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §_-wy§() : Number
      {
         return this.§_-TK§;
      }
      
      public function set §_-wy§(param1:Number) : void
      {
         this.§_-TK§ = param1;
      }
      
      public function get §set §() : Number
      {
         return this.§_-qP§;
      }
      
      public function set §set §(param1:Number) : void
      {
         this.§_-qP§ = param1;
      }
   }
}
