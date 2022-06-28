package §4L§
{
   import §57§.§4!Z§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1,§ extends Sprite
   {
       
      
      private var §3!'§:Sprite;
      
      private var §->§:Number;
      
      private var §4@§:Number;
      
      private var §&!L§:§4!Z§;
      
      public function §1,§(param1:Number)
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
         this.§3!'§ = this.§-!2§(_loc3_);
         addChild(this.§3!'§);
         this.mouseEnabled = false;
         this.§3!'§.x = -this.§3!'§.width / 2;
         this.§3!'§.y = -this.§3!'§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§&!L§)
         {
            this.§&!L§.stop();
            this.§&!L§ = null;
         }
         removeChild(this.§3!'§);
         this.§3!'§ = null;
      }
      
      public function §-!2§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §%!G§.§^!B§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §3v§(param1:§4!Z§) : void
      {
         this.§&!L§ = param1;
      }
      
      public function get §3v§() : §4!Z§
      {
         return this.§&!L§;
      }
      
      public function get §8M§() : Number
      {
         return this.§->§;
      }
      
      public function set §8M§(param1:Number) : void
      {
         this.§->§ = param1;
      }
      
      public function get §>!^§() : Number
      {
         return this.§4@§;
      }
      
      public function set §>!^§(param1:Number) : void
      {
         this.§4@§ = param1;
      }
   }
}
