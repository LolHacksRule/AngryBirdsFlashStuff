package §2U§
{
   import §+N§.§]G§;
   import com.rovio.assets.§-!1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §9!$§ extends Sprite
   {
       
      
      private var §5$§:Sprite;
      
      private var §=^§:Number;
      
      private var §@Z§:Number;
      
      private var §8c§:§]G§;
      
      public function §9!$§(param1:Number)
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
         this.§5$§ = this.native(_loc3_);
         addChild(this.§5$§);
         this.mouseEnabled = false;
         this.§5$§.x = -this.§5$§.width / 2;
         this.§5$§.y = -this.§5$§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§8c§)
         {
            this.§8c§.stop();
            this.§8c§ = null;
         }
         removeChild(this.§5$§);
         this.§5$§ = null;
      }
      
      public function native(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §-!1§.§-T§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §1g§(param1:§]G§) : void
      {
         this.§8c§ = param1;
      }
      
      public function get §1g§() : §]G§
      {
         return this.§8c§;
      }
      
      public function get §;!9§() : Number
      {
         return this.§=^§;
      }
      
      public function set §;!9§(param1:Number) : void
      {
         this.§=^§ = param1;
      }
      
      public function get §case§() : Number
      {
         return this.§@Z§;
      }
      
      public function set §case§(param1:Number) : void
      {
         this.§@Z§ = param1;
      }
   }
}
