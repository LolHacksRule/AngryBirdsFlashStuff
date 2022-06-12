package §3!O§
{
   import §>!J§.§^!#§;
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §3"4§ extends Sprite
   {
      
      public static const §0!?§:String = "ParticleStar";
      
      public static const §=!P§:String = "ParticlePig";
       
      
      protected var §4"&§:Sprite;
      
      protected var §&M§:Number;
      
      protected var §6?§:Number;
      
      protected var §2y§:§^!#§;
      
      public function §3"4§(param1:String)
      {
         super();
         this.§4"&§ = this.§?p§(param1);
         addChild(this.§4"&§);
         this.mouseEnabled = false;
         this.§4"&§.x = -this.§4"&§.width / 2;
         this.§4"&§.y = -this.§4"&§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§2y§)
         {
            this.§2y§.stop();
            this.§2y§ = null;
         }
         removeChild(this.§4"&§);
         this.§4"&§ = null;
      }
      
      public function §?p§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §8!q§.§2^§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §9l§(param1:§^!#§) : void
      {
         this.§2y§ = param1;
      }
      
      public function get §9l§() : §^!#§
      {
         return this.§2y§;
      }
      
      public function get §=G§() : Number
      {
         return this.§&M§;
      }
      
      public function set §=G§(param1:Number) : void
      {
         this.§&M§ = param1;
      }
      
      public function get §@f§() : Number
      {
         return this.§6?§;
      }
      
      public function set §@f§(param1:Number) : void
      {
         this.§6?§ = param1;
      }
   }
}
