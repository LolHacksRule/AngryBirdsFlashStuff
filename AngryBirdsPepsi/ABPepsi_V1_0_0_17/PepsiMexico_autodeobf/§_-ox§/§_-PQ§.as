package §_-ox§
{
   import §_-0S§.§_-z1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-PQ§ extends Sprite
   {
       
      
      private var §_-0M§:Sprite;
      
      private var §_-D2§:Number;
      
      private var §_-2r§:Number;
      
      public function §_-PQ§(param1:Number)
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
         this.§_-0M§ = this.§_-A8§(_loc3_);
         addChild(this.§_-0M§);
         this.§_-0M§.x = -this.§_-0M§.width / 2;
         this.§_-0M§.y = -this.§_-0M§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§_-0M§);
         this.§_-0M§ = null;
      }
      
      public function §_-A8§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-z1§.§_-tn§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §_-Nd§() : Number
      {
         return this.§_-D2§;
      }
      
      public function set §_-Nd§(param1:Number) : void
      {
         this.§_-D2§ = param1;
      }
      
      public function get §_-zG§() : Number
      {
         return this.§_-2r§;
      }
      
      public function set §_-zG§(param1:Number) : void
      {
         this.§_-2r§ = param1;
      }
   }
}
