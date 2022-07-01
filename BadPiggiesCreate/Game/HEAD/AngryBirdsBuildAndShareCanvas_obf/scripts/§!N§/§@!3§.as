package §!N§
{
   import §'V§.§=!r§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §@!3§ extends Sprite
   {
      
      public static const §]=§:String = "ParticleStar";
      
      public static const §?H§:String = "ParticlePig";
       
      
      protected var §4?§:Sprite;
      
      protected var §8+§:Number;
      
      protected var §&g§:Number;
      
      protected var §,!c§:§=!r§;
      
      public function §@!3§(param1:String)
      {
         super();
         this.§4?§ = this.§,2§(param1);
         addChild(this.§4?§);
         this.mouseEnabled = false;
         this.§4?§.x = -this.§4?§.width / 2;
         this.§4?§.y = -this.§4?§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§,!c§)
         {
            this.§,!c§.stop();
            this.§,!c§ = null;
         }
         removeChild(this.§4?§);
         this.§4?§ = null;
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
