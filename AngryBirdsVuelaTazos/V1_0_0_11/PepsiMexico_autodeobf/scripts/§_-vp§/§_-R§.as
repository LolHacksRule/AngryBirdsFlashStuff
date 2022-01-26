package §_-vp§
{
   import §_-p7§.§_-WY§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-R§ extends Sprite
   {
       
      
      private var §_-tL§:Sprite;
      
      private var §_-SQ§:Number;
      
      private var §_-h8§:Number;
      
      public function §_-R§(param1:Number)
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
         this.§_-tL§ = this.§_-ZK§(_loc3_);
         addChild(this.§_-tL§);
         this.§_-tL§.x = -this.§_-tL§.width / 2;
         this.§_-tL§.y = -this.§_-tL§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§_-tL§);
         this.§_-tL§ = null;
      }
      
      public function §_-ZK§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-WY§.§_-fs§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §_-Az§() : Number
      {
         return this.§_-SQ§;
      }
      
      public function set §_-Az§(param1:Number) : void
      {
         this.§_-SQ§ = param1;
      }
      
      public function get §_-56§() : Number
      {
         return this.§_-h8§;
      }
      
      public function set §_-56§(param1:Number) : void
      {
         this.§_-h8§ = param1;
      }
   }
}
