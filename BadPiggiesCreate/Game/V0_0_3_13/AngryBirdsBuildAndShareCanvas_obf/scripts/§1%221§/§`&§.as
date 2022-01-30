package §1"1§
{
   import §catch§.§-!m§;
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`&§ extends Sprite
   {
      
      public static const §&d§:String = "ParticleStar";
      
      public static const §0"7§:String = "ParticlePig";
       
      
      protected var §-!h§:Sprite;
      
      protected var §2"!§:Number;
      
      protected var §4-§:Number;
      
      protected var §^m§:§-!m§;
      
      public function §`&§(param1:String)
      {
         super();
         this.§-!h§ = this.§]!C§(param1);
         addChild(this.§-!h§);
         this.mouseEnabled = false;
         this.§-!h§.x = -this.§-!h§.width / 2;
         this.§-!h§.y = -this.§-!h§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§^m§)
         {
            this.§^m§.stop();
            this.§^m§ = null;
         }
         removeChild(this.§-!h§);
         this.§-!h§ = null;
      }
      
      public function §]!C§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §=#§.§1v§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §1<§(param1:§-!m§) : void
      {
         this.§^m§ = param1;
      }
      
      public function get §1<§() : §-!m§
      {
         return this.§^m§;
      }
      
      public function get §8o§() : Number
      {
         return this.§2"!§;
      }
      
      public function set §8o§(param1:Number) : void
      {
         this.§2"!§ = param1;
      }
      
      public function get §+§() : Number
      {
         return this.§4-§;
      }
      
      public function set §+§(param1:Number) : void
      {
         this.§4-§ = param1;
      }
   }
}
