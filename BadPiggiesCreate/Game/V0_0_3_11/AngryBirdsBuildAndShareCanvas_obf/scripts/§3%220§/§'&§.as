package §3"0§
{
   import §?h§.§8!K§;
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'&§ extends Sprite
   {
      
      public static const §>o§:String = "ParticleStar";
      
      public static const §=V§:String = "ParticlePig";
       
      
      protected var §]S§:Sprite;
      
      protected var §65§:Number;
      
      protected var §<!R§:Number;
      
      protected var §#",§:§8!K§;
      
      public function §'&§(param1:String)
      {
         super();
         this.§]S§ = this.§,!k§(param1);
         addChild(this.§]S§);
         this.mouseEnabled = false;
         this.§]S§.x = -this.§]S§.width / 2;
         this.§]S§.y = -this.§]S§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§#",§)
         {
            this.§#",§.stop();
            this.§#",§ = null;
         }
         removeChild(this.§]S§);
         this.§]S§ = null;
      }
      
      public function §,!k§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §]!S§.§?! §(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §%!a§(param1:§8!K§) : void
      {
         this.§#",§ = param1;
      }
      
      public function get §%!a§() : §8!K§
      {
         return this.§#",§;
      }
      
      public function get §,§() : Number
      {
         return this.§65§;
      }
      
      public function set §,§(param1:Number) : void
      {
         this.§65§ = param1;
      }
      
      public function get §'j§() : Number
      {
         return this.§<!R§;
      }
      
      public function set §'j§(param1:Number) : void
      {
         this.§<!R§ = param1;
      }
   }
}
