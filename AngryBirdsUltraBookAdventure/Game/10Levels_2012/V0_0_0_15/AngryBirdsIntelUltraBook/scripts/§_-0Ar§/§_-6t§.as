package §_-0Ar§
{
   import §_-0AB§.§_-dd§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-6t§ extends Sprite
   {
       
      
      private var §_-sh§:Sprite;
      
      private var §_-mM§:Number;
      
      private var §_-yT§:Number;
      
      private var §_-wi§:§_-dd§;
      
      public function §_-6t§(param1:Number)
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
         this.§_-sh§ = this.§_-lg§(_loc3_);
         addChild(this.§_-sh§);
         this.mouseEnabled = false;
         this.§_-sh§.x = -this.§_-sh§.width / 2;
         this.§_-sh§.y = -this.§_-sh§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§_-wi§)
         {
            this.§_-wi§.stop();
            this.§_-wi§ = null;
         }
         removeChild(this.§_-sh§);
         this.§_-sh§ = null;
      }
      
      public function §_-lg§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §_-Fc§.§_-YE§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §_-fU§(param1:§_-dd§) : void
      {
         this.§_-wi§ = param1;
      }
      
      public function get §_-fU§() : §_-dd§
      {
         return this.§_-wi§;
      }
      
      public function get §_-Zo§() : Number
      {
         return this.§_-mM§;
      }
      
      public function set §_-Zo§(param1:Number) : void
      {
         this.§_-mM§ = param1;
      }
      
      public function get §_-Vp§() : Number
      {
         return this.§_-yT§;
      }
      
      public function set §_-Vp§(param1:Number) : void
      {
         this.§_-yT§ = param1;
      }
   }
}
