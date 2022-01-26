package §_-l§
{
   import §_-vA§.§_-XO§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-bF§ extends Sprite
   {
       
      
      private var §_-2w§:Sprite;
      
      private var §_-44§:Number;
      
      private var §_-fJ§:Number;
      
      public function §_-bF§(param1:Number)
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
         this.§_-2w§ = this.§_-gn§(_loc3_);
         addChild(this.§_-2w§);
         this.§_-2w§.x = -this.§_-2w§.width / 2;
         this.§_-2w§.y = -this.§_-2w§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§_-2w§);
         this.§_-2w§ = null;
      }
      
      public function §_-gn§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-XO§.§_-O3§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §_-ru§() : Number
      {
         return this.§_-44§;
      }
      
      public function set §_-ru§(param1:Number) : void
      {
         this.§_-44§ = param1;
      }
      
      public function get §_-K5§() : Number
      {
         return this.§_-fJ§;
      }
      
      public function set §_-K5§(param1:Number) : void
      {
         this.§_-fJ§ = param1;
      }
   }
}
