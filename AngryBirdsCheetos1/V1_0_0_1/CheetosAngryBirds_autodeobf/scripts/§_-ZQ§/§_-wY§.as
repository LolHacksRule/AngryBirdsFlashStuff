package §_-ZQ§
{
   import §_-3-§.§_-ki§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-wY§ extends Sprite
   {
       
      
      private var §_-0n§:Sprite;
      
      private var §_-b9§:Number;
      
      private var §_-Gp§:Number;
      
      public function §_-wY§(param1:Number)
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
         this.§_-0n§ = this.§_-mE§(_loc3_);
         addChild(this.§_-0n§);
         this.§_-0n§.x = -this.§_-0n§.width / 2;
         this.§_-0n§.y = -this.§_-0n§.height / 2;
      }
      
      public function clean() : void
      {
         removeChild(this.§_-0n§);
         this.§_-0n§ = null;
      }
      
      public function §_-mE§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-ki§.§_-pB§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function get §_-lD§() : Number
      {
         return this.§_-b9§;
      }
      
      public function set §_-lD§(param1:Number) : void
      {
         this.§_-b9§ = param1;
      }
      
      public function get §_-84§() : Number
      {
         return this.§_-Gp§;
      }
      
      public function set §_-84§(param1:Number) : void
      {
         this.§_-Gp§ = param1;
      }
   }
}
