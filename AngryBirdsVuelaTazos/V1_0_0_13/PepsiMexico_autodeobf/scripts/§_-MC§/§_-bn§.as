package §_-MC§
{
   import §_-Ay§.§_-nw§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-bn§ extends Sprite
   {
       
      
      private var §_-3A§:Sprite;
      
      private var §_-cp§:Number;
      
      private var §_-fE§:Number;
      
      public function §_-bn§(param1:Number)
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
         this.§_-3A§ = this.§_-HB§(_loc3_);
         addChild(this.§_-3A§);
         this.§_-3A§.x = -this.§_-3A§.width / 2;
         this.§_-3A§.y = -this.§_-3A§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§_-3A§);
         this.§_-3A§ = null;
      }
      
      public function §_-HB§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-nw§.§_-Xm§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §_-9o§() : Number
      {
         return this.§_-cp§;
      }
      
      public function set §_-9o§(param1:Number) : void
      {
         this.§_-cp§ = param1;
      }
      
      public function get §_-rU§() : Number
      {
         return this.§_-fE§;
      }
      
      public function set §_-rU§(param1:Number) : void
      {
         this.§_-fE§ = param1;
      }
   }
}
