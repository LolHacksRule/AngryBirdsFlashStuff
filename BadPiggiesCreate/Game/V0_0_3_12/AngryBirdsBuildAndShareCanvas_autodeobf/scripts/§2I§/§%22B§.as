package §2I§
{
   import §0Z§.§+I§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §"B§ extends Sprite
   {
       
      
      private var §`!t§:Sprite;
      
      private var §]O§:Number;
      
      private var §>a§:Number;
      
      private var §2,§:§+I§;
      
      public function §"B§(param1:Number)
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
         this.§`!t§ = this.§+t§(_loc3_);
         addChild(this.§`!t§);
         this.mouseEnabled = false;
         this.§`!t§.x = -this.§`!t§.width / 2;
         this.§`!t§.y = -this.§`!t§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§2,§)
         {
            this.§2,§.stop();
            this.§2,§ = null;
         }
         removeChild(this.§`!t§);
         this.§`!t§ = null;
      }
      
      public function §+t§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §!"'§.§%!Q§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set § !h§(param1:§+I§) : void
      {
         this.§2,§ = param1;
      }
      
      public function get § !h§() : §+I§
      {
         return this.§2,§;
      }
      
      public function get §8y§() : Number
      {
         return this.§]O§;
      }
      
      public function set §8y§(param1:Number) : void
      {
         this.§]O§ = param1;
      }
      
      public function get § 1§() : Number
      {
         return this.§>a§;
      }
      
      public function set § 1§(param1:Number) : void
      {
         this.§>a§ = param1;
      }
   }
}
