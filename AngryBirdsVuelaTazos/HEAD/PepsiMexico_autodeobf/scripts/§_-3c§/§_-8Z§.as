package §_-3c§
{
   import §_-9k§.§_-X7§;
   import §_-cJ§.§_-WM§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-8Z§ extends Sprite
   {
       
      
      private var §_-Kb§:Sprite;
      
      private var §_-D6§:Number;
      
      private var §_-e8§:Number;
      
      private var §_-i-§:§_-WM§;
      
      public function §_-8Z§(param1:Number)
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
         this.§_-Kb§ = this.§_-p5§(_loc3_);
         addChild(this.§_-Kb§);
         this.mouseEnabled = false;
         this.§_-Kb§.x = -this.§_-Kb§.width / 2;
         this.§_-Kb§.y = -this.§_-Kb§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§_-i-§)
         {
            this.§_-i-§.stop();
            this.§_-i-§ = null;
         }
         removeChild(this.§_-Kb§);
         this.§_-Kb§ = null;
      }
      
      public function §_-p5§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-X7§.§_-IA§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §_-RP§(param1:§_-WM§) : void
      {
         this.§_-i-§ = param1;
      }
      
      public function get §_-RP§() : §_-WM§
      {
         return this.§_-i-§;
      }
      
      public function get §_-ul§() : Number
      {
         return this.§_-D6§;
      }
      
      public function set §_-ul§(param1:Number) : void
      {
         this.§_-D6§ = param1;
      }
      
      public function get §_-w1§() : Number
      {
         return this.§_-e8§;
      }
      
      public function set §_-w1§(param1:Number) : void
      {
         this.§_-e8§ = param1;
      }
   }
}
