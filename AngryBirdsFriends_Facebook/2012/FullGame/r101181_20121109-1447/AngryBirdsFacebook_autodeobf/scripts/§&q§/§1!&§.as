package §&q§
{
   import §8!v§.§"m§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1!&§ extends Sprite
   {
       
      
      private var §,!I§:Sprite;
      
      private var §1L§:Number;
      
      private var §=N§:Number;
      
      private var §0!v§:§"m§;
      
      public function §1!&§(param1:Number)
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
         this.§,!I§ = this.§,!^§(_loc3_);
         addChild(this.§,!I§);
         this.mouseEnabled = false;
         this.§,!I§.x = -this.§,!I§.width / 2;
         this.§,!I§.y = -this.§,!I§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§0!v§)
         {
            this.§0!v§.stop();
            this.§0!v§ = null;
         }
         removeChild(this.§,!I§);
         this.§,!I§ = null;
      }
      
      public function §,!^§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §8B§.§6"C§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §5X§(param1:§"m§) : void
      {
         this.§0!v§ = param1;
      }
      
      public function get §5X§() : §"m§
      {
         return this.§0!v§;
      }
      
      public function get §#Z§() : Number
      {
         return this.§1L§;
      }
      
      public function set §#Z§(param1:Number) : void
      {
         this.§1L§ = param1;
      }
      
      public function get §1!y§() : Number
      {
         return this.§=N§;
      }
      
      public function set §1!y§(param1:Number) : void
      {
         this.§=N§ = param1;
      }
   }
}
