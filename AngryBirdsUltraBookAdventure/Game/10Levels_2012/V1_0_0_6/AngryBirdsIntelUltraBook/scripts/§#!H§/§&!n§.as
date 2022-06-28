package §#!H§
{
   import §2!H§.§!q§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §&!n§ extends Sprite
   {
       
      
      private var §?[§:Sprite;
      
      private var §3!J§:Number;
      
      private var §6!=§:Number;
      
      private var §4T§:§!q§;
      
      public function §&!n§(param1:Number)
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
         this.§?[§ = this.§#!4§(_loc3_);
         addChild(this.§?[§);
         this.mouseEnabled = false;
         this.§?[§.x = -this.§?[§.width / 2;
         this.§?[§.y = -this.§?[§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§4T§)
         {
            this.§4T§.stop();
            this.§4T§ = null;
         }
         removeChild(this.§?[§);
         this.§?[§ = null;
      }
      
      public function §#!4§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §`!t§.§=J§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §>P§(param1:§!q§) : void
      {
         this.§4T§ = param1;
      }
      
      public function get §>P§() : §!q§
      {
         return this.§4T§;
      }
      
      public function get §8E§() : Number
      {
         return this.§3!J§;
      }
      
      public function set §8E§(param1:Number) : void
      {
         this.§3!J§ = param1;
      }
      
      public function get §3F§() : Number
      {
         return this.§6!=§;
      }
      
      public function set §3F§(param1:Number) : void
      {
         this.§6!=§ = param1;
      }
   }
}
