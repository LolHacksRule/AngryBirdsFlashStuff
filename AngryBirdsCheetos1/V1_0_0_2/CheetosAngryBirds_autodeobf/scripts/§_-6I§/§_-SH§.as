package §_-6I§
{
   import §_-Eq§.§_-q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-SH§ extends Sprite
   {
       
      
      private var §_-SI§:Sprite;
      
      private var §_-L§:Number;
      
      private var §_-wL§:Number;
      
      public function §_-SH§(param1:Number)
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
         this.§_-SI§ = this.§_-E5§(_loc3_);
         addChild(this.§_-SI§);
         this.§_-SI§.x = -this.§_-SI§.width / 2;
         this.§_-SI§.y = -this.§_-SI§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§_-SI§);
         this.§_-SI§ = null;
      }
      
      public function §_-E5§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-q§.§_-Ti§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §_-Vu§() : Number
      {
         return this.§_-L§;
      }
      
      public function set §_-Vu§(param1:Number) : void
      {
         this.§_-L§ = param1;
      }
      
      public function get §_-s7§() : Number
      {
         return this.§_-wL§;
      }
      
      public function set §_-s7§(param1:Number) : void
      {
         this.§_-wL§ = param1;
      }
   }
}
