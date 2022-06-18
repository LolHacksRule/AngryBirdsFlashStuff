package §?u§
{
   import §?!%§.§ l§;
   import com.rovio.assets.§0v§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §=_§ extends Sprite
   {
       
      
      private var §<!0§:Sprite;
      
      private var §!!E§:Number;
      
      private var §!!?§:Number;
      
      private var §?!F§:§ l§;
      
      public function §=_§(param1:Number)
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
         this.§<!0§ = this.§3]§(_loc3_);
         addChild(this.§<!0§);
         this.mouseEnabled = false;
         this.§<!0§.x = -this.§<!0§.width / 2;
         this.§<!0§.y = -this.§<!0§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§?!F§)
         {
            this.§?!F§.stop();
            this.§?!F§ = null;
         }
         removeChild(this.§<!0§);
         this.§<!0§ = null;
      }
      
      public function §3]§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §0v§.§#w§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §12§(param1:§ l§) : void
      {
         this.§?!F§ = param1;
      }
      
      public function get §12§() : § l§
      {
         return this.§?!F§;
      }
      
      public function get §?!<§() : Number
      {
         return this.§!!E§;
      }
      
      public function set §?!<§(param1:Number) : void
      {
         this.§!!E§ = param1;
      }
      
      public function get §,a§() : Number
      {
         return this.§!!?§;
      }
      
      public function set §,a§(param1:Number) : void
      {
         this.§!!?§ = param1;
      }
   }
}
