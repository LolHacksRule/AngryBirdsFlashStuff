package §9!y§
{
   import §0Z§.§+I§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §+'§ extends Sprite
   {
      
      public static const §@!k§:String = "ParticleStar";
      
      public static const §<y§:String = "ParticlePig";
       
      
      protected var §#!0§:Sprite;
      
      protected var §]O§:Number;
      
      protected var §>a§:Number;
      
      protected var §2,§:§+I§;
      
      public function §+'§(param1:String)
      {
         super();
         this.§#!0§ = this.§+t§(param1);
         addChild(this.§#!0§);
         this.mouseEnabled = false;
         this.§#!0§.x = -this.§#!0§.width / 2;
         this.§#!0§.y = -this.§#!0§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§2,§)
         {
            this.§2,§.stop();
            this.§2,§ = null;
         }
         removeChild(this.§#!0§);
         this.§#!0§ = null;
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
