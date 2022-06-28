package §#!O§
{
   import §2_§.§'u§;
   import §2_§.§,L§;
   import §2_§.§8![§;
   import §2_§.§>-§;
   import §3!G§.§ y§;
   import §4>§.Texture;
   import §5!c§.§9'§;
   import §7!B§.§-§;
   import §7!B§.§;R§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §^!Y§.§4!f§;
   import com.rovio.assets.§`!t§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §9!8§ extends §8![§
   {
      
      protected static const §?§:uint = 7602176;
      
      protected static var §5!7§:Texture;
       
      
      protected var §]!r§:§-§;
      
      protected var §%!4§:§-§;
      
      protected var §<!-§:Boolean = false;
      
      public function §9!8§(param1:§'u§, param2:§ y§, param3:§7!B§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §7!?§() : void
      {
         this.§[4§(false);
      }
      
      public function §`i§() : void
      {
         if(this.§]!r§ || this.§%!4§)
         {
            this.§[4§(true);
            return;
         }
         var _loc1_:§4!f§ = §#!3§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§]!r§ = new §-§(_loc2_);
         this.§%!4§ = new §-§(_loc3_);
         this.§[4§(true);
         this.§+H§(§,L§.§ G§);
      }
      
      public function §+H§(param1:Number) : void
      {
         var _loc2_:§>-§ = null;
         for each(_loc2_ in §]!^§)
         {
            _loc2_.§@N§ = param1;
         }
      }
      
      override protected function getSlingshotAnimation() : §4!f§
      {
         return §#!3§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §[4§(param1:Boolean = false) : void
      {
         if(this.§<!-§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§ H§();
         }
         else
         {
            §0!]§();
         }
         §!!P§ = !!param1 ? Number(§,L§.§0!7§) : Number(§,L§.§,!Z§);
         this.§<!-§ = param1;
         while(§2O§.numChildren > 0)
         {
            §2O§.removeChildAt(0);
         }
         §2O§.addChild(!!param1 ? this.§]!r§ : §]R§);
         §2O§.addChild(§6R§);
         §2O§.addChild(§=!D§);
         §2O§.addChild(§!!_§);
         §2O§.addChild(§5L§);
         §2O§.addChild(!!param1 ? this.§%!4§ : § V§);
         §9r§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§<!-§)
         {
            this.§]!r§.x = §#!u§ / §'u§.§18§ - 8 - 8;
            this.§]!r§.y = §<h§ / §'u§.§18§ - 30 - 10;
            this.§%!4§.x = §#!u§ / §'u§.§18§ - 38 - 4;
            this.§%!4§.y = §<h§ / §'u§.§18§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§<!-§)
         {
            §9'§.playSound("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§>-§ = null;
         _loc2_ = §]!^§[§8!?§];
         var _loc3_:Number = §[&§ / §!!P§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§8![§.BIRD_LAUNCH_FORCE_GREEN) : Number(§8![§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§@N§ > 0)
            {
               return _loc2_.§@N§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §%w§(param1:Number) : §>-§
      {
         var _loc2_:§>-§ = null;
         _loc2_ = §]!^§[§8!?§];
         if(_loc2_.§8f§ < 1)
         {
            _loc2_.§8f§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function § H§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§5!7§)
         {
            _loc2_ = new §`!t§.§=J§("MovieClip_SlingHolder")();
            setTint(_loc2_,§?§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §5!7§ = §#!3§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §!!_§ = new §7!B§.Sprite();
         var _loc1_:§-§ = new §-§(§5!7§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §!!_§.addChild(_loc1_);
         §6R§ = new §7!B§.Sprite();
         §'j§ = new §;R§(2,2,§?§);
         §6R§.addChild(§'j§);
         §5L§ = new §7!B§.Sprite();
         §`3§ = new §;R§(2,2,§?§);
         §5L§.addChild(§`3§);
      }
   }
}
