package §8!G§
{
   import §!!§.§>4§;
   import §!!9§.Texture;
   import §+&§.§ R§;
   import §+&§.§-!7§;
   import §+&§.§3D§;
   import §+&§.§`o§;
   import §,6§.§^!>§;
   import §1!T§.§6!H§;
   import §9E§.§1!w§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import com.rovio.assets.§9!N§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §2!7§ extends § R§
   {
      
      protected static const §<!<§:uint = 7602176;
      
      protected static var §^N§:Texture;
       
      
      protected var §&!k§:§;!U§;
      
      protected var §&!Z§:§;!U§;
      
      protected var §4!d§:Boolean = false;
      
      public function §2!7§(param1:§-!7§, param2:§>4§, param3:§9E§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §=0§() : void
      {
         this.§ X§(false);
      }
      
      public function §2n§() : void
      {
         if(this.§&!k§ || this.§&!Z§)
         {
            this.§ X§(true);
            return;
         }
         var _loc1_:§^!>§ = §+!X§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§&!k§ = new §;!U§(_loc2_);
         this.§&!Z§ = new §;!U§(_loc3_);
         this.§ X§(true);
         this.§<6§(§3D§.§<!f§);
      }
      
      public function §<6§(param1:Number) : void
      {
         var _loc2_:§`o§ = null;
         for each(_loc2_ in §9q§)
         {
            _loc2_.§-[§ = param1;
         }
      }
      
      override protected function getSlingshotAnimation() : §^!>§
      {
         return §+!X§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function § X§(param1:Boolean = false) : void
      {
         if(this.§4!d§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§8!§();
         }
         else
         {
            §=m§();
         }
         §&;§ = !!param1 ? Number(§3D§.§6i§) : Number(§3D§.§@!?§);
         this.§4!d§ = param1;
         while(§8!9§.numChildren > 0)
         {
            §8!9§.removeChildAt(0);
         }
         §8!9§.addChild(!!param1 ? this.§&!k§ : §6§);
         §8!9§.addChild(§2G§);
         §8!9§.addChild(§>e§);
         §8!9§.addChild(§-!Z§);
         §8!9§.addChild(§ !t§);
         §8!9§.addChild(!!param1 ? this.§&!Z§ : §14§);
         §88§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§4!d§)
         {
            this.§&!k§.x = §;!@§ / §-!7§.§8!r§ - 8 - 8;
            this.§&!k§.y = §3L§ / §-!7§.§8!r§ - 30 - 10;
            this.§&!Z§.x = §;!@§ / §-!7§.§8!r§ - 38 - 4;
            this.§&!Z§.y = §3L§ / §-!7§.§8!r§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§4!d§)
         {
            §6!H§.playSound("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§`o§ = null;
         _loc2_ = §9q§[§>$§];
         var _loc3_:Number = §,S§ / §&;§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§ R§.BIRD_LAUNCH_FORCE_GREEN) : Number(§ R§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§-[§ > 0)
            {
               return _loc2_.§-[§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §?[§(param1:Number) : §`o§
      {
         var _loc2_:§`o§ = null;
         _loc2_ = §9q§[§>$§];
         if(_loc2_.§1'§ < 1)
         {
            _loc2_.§1'§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §8!§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§^N§)
         {
            _loc2_ = new §9!N§.§0!k§("MovieClip_SlingHolder")();
            setTint(_loc2_,§<!<§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §^N§ = §+!X§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §-!Z§ = new §9E§.Sprite();
         var _loc1_:§;!U§ = new §;!U§(§^N§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §-!Z§.addChild(_loc1_);
         §2G§ = new §9E§.Sprite();
         §,T§ = new §1!w§(2,2,§<!<§);
         §2G§.addChild(§,T§);
         § !t§ = new §9E§.Sprite();
         §9+§ = new §1!w§(2,2,§<!<§);
         § !t§.addChild(§9+§);
      }
   }
}
