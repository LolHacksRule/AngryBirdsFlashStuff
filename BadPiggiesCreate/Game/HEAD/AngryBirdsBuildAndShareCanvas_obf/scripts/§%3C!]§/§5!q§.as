package §<!]§
{
   import §'V§.§=!r§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5!q§ extends Sprite
   {
       
      
      private var §=!0§:Sprite;
      
      private var §8+§:Number;
      
      private var §&g§:Number;
      
      private var §,!c§:§=!r§;
      
      public function §5!q§(param1:Number)
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
         this.§=!0§ = this.§,2§(_loc3_);
         addChild(this.§=!0§);
         this.mouseEnabled = false;
         this.§=!0§.x = -this.§=!0§.width / 2;
         this.§=!0§.y = -this.§=!0§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§,!c§)
         {
            this.§,!c§.stop();
            this.§,!c§ = null;
         }
         removeChild(this.§=!0§);
         this.§=!0§ = null;
      }
      
      public function §,2§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §69§.§ 0§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §1I§(param1:§=!r§) : void
      {
         this.§,!c§ = param1;
      }
      
      public function get §1I§() : §=!r§
      {
         return this.§,!c§;
      }
      
      public function get §?X§() : Number
      {
         return this.§8+§;
      }
      
      public function set §?X§(param1:Number) : void
      {
         this.§8+§ = param1;
      }
      
      public function get §"b§() : Number
      {
         return this.§&g§;
      }
      
      public function set §"b§(param1:Number) : void
      {
         this.§&g§ = param1;
      }
   }
}
