package §>X§
{
   import §&"'§.§3^§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;!&§ extends Sprite
   {
      
      public static const §9G§:String = "ParticleStar";
      
      public static const §3!O§:String = "ParticlePig";
       
      
      protected var §7c§:Sprite;
      
      protected var §1!6§:Number;
      
      protected var §[!]§:Number;
      
      protected var §8!g§:§3^§;
      
      public function §;!&§(param1:String)
      {
         super();
         this.§7c§ = this.§8"'§(param1);
         addChild(this.§7c§);
         this.mouseEnabled = false;
         this.§7c§.x = -this.§7c§.width / 2;
         this.§7c§.y = -this.§7c§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§8!g§)
         {
            this.§8!g§.stop();
            this.§8!g§ = null;
         }
         removeChild(this.§7c§);
         this.§7c§ = null;
      }
      
      public function §8"'§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §>!]§.§1!8§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §#!T§(param1:§3^§) : void
      {
         this.§8!g§ = param1;
      }
      
      public function get §#!T§() : §3^§
      {
         return this.§8!g§;
      }
      
      public function get §6U§() : Number
      {
         return this.§1!6§;
      }
      
      public function set §6U§(param1:Number) : void
      {
         this.§1!6§ = param1;
      }
      
      public function get §0!0§() : Number
      {
         return this.§[!]§;
      }
      
      public function set §0!0§(param1:Number) : void
      {
         this.§[!]§ = param1;
      }
   }
}
