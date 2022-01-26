package §_-7F§
{
   import §_-ec§.§_-GK§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-A4§ extends Sprite
   {
       
      
      private var §_-v6§:Sprite;
      
      private var §_-p2§:Number;
      
      private var §_-fM§:Number;
      
      public function §_-A4§(param1:Number)
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
         this.§_-v6§ = this.§_-Lr§(_loc3_);
         addChild(this.§_-v6§);
         this.§_-v6§.x = -this.§_-v6§.width / 2;
         this.§_-v6§.y = -this.§_-v6§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§_-v6§);
         this.§_-v6§ = null;
      }
      
      public function §_-Lr§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-GK§.§_-dR§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §_-B1§() : Number
      {
         return this.§_-p2§;
      }
      
      public function set §_-B1§(param1:Number) : void
      {
         this.§_-p2§ = param1;
      }
      
      public function get §_-5V§() : Number
      {
         return this.§_-fM§;
      }
      
      public function set §_-5V§(param1:Number) : void
      {
         this.§_-fM§ = param1;
      }
   }
}
