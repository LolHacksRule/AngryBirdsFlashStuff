package §'d§
{
   import §"f§.§@4§;
   import §7!k§.§%!_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §63§ extends Sprite
   {
       
      
      private var §'U§:Sprite;
      
      private var §3,§:Number;
      
      private var §?x§:Number;
      
      private var §<!J§:§@4§;
      
      public function §63§(param1:Number)
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
         this.§'U§ = this.§5g§(_loc3_);
         addChild(this.§'U§);
         this.mouseEnabled = false;
         this.§'U§.x = -this.§'U§.width / 2;
         this.§'U§.y = -this.§'U§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§<!J§)
         {
            this.§<!J§.stop();
            this.§<!J§ = null;
         }
         removeChild(this.§'U§);
         this.§'U§ = null;
      }
      
      public function §5g§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §%!_§.§1$§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §2!F§(param1:§@4§) : void
      {
         this.§<!J§ = param1;
      }
      
      public function get §2!F§() : §@4§
      {
         return this.§<!J§;
      }
      
      public function get §;!K§() : Number
      {
         return this.§3,§;
      }
      
      public function set §;!K§(param1:Number) : void
      {
         this.§3,§ = param1;
      }
      
      public function get §%h§() : Number
      {
         return this.§?x§;
      }
      
      public function set §%h§(param1:Number) : void
      {
         this.§?x§ = param1;
      }
   }
}
