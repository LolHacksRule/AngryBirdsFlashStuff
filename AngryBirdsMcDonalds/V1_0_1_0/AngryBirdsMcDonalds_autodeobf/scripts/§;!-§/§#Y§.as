package §;!-§
{
   import §#Z§.§?R§;
   import §&[§.§'!$§;
   import §-!#§.§5!6§;
   import §2!g§.§2c§;
   import §2!g§.§<7§;
   import §2!g§.DisplayObject;
   import §2!g§.Sprite;
   import §@!b§.§%!'§;
   import §@!b§.§0]§;
   import §@!b§.§@!k§;
   import §@!b§.§^j§;
   import §@j§.Texture;
   import §`!d§.§0%§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §#Y§ extends §%!'§
   {
      
      protected static const §9#§:uint = 7602176;
      
      protected static var §,y§:Texture;
       
      
      protected var §2a§:§<7§;
      
      protected var §9!R§:§<7§;
      
      protected var §'7§:Boolean = false;
      
      public function §#Y§(param1:§++§, param2:§0%§, param3:§2!g§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §3!<§() : void
      {
         this.§6!^§(false);
      }
      
      public function §=G§() : void
      {
         if(this.§2a§ || this.§9!R§)
         {
            this.§6!^§(true);
            return;
         }
         var _loc1_:§'!$§ = mLevelMain.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§2a§ = new §<7§(_loc2_);
         this.§9!R§ = new §<7§(_loc3_);
         this.§6!^§(true);
         this.§%!`§(§0]§.§`!0§);
      }
      
      public function §%!`§(param1:Number) : void
      {
         var _loc2_:§^j§ = null;
         for each(_loc2_ in § N§)
         {
            _loc2_.§+O§ = param1;
         }
      }
      
      protected function §6!^§(param1:Boolean = false) : void
      {
         if(this.§'7§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§=!e§();
         }
         else
         {
            §0![§();
         }
         §2!R§ = !!param1 ? Number(§0]§.§#0§) : Number(§0]§.§;+§);
         this.§'7§ = param1;
         while(§[8§.numChildren > 0)
         {
            §[8§.removeChildAt(0);
         }
         §[8§.addChild(!!param1 ? this.§2a§ : §@G§);
         §[8§.addChild(§2!T§);
         §[8§.addChild(§"h§);
         §[8§.addChild(§>[§);
         §[8§.addChild(§-,§);
         §[8§.addChild(!!param1 ? this.§9!R§ : §,?§);
         §=!k§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§'7§)
         {
            this.§2a§.x = §;b§ / §@!k§.§2!J§ - 8 - 8;
            this.§2a§.y = §[!5§ / §@!k§.§2!J§ - 30 - 10;
            this.§9!R§.x = §;b§ / §@!k§.§2!J§ - 38 - 4;
            this.§9!R§.y = §[!5§ / §@!k§.§2!J§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§'7§)
         {
            §5!6§.§8!G§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§^j§ = null;
         _loc2_ = § N§[§7!2§];
         var _loc3_:Number = §use§ / §2!R§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§%!'§.BIRD_LAUNCH_FORCE_GREEN) : Number(§%!'§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§+O§ > 0)
            {
               return _loc2_.§+O§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §07§(param1:Number) : §^j§
      {
         var _loc2_:§^j§ = null;
         _loc2_ = § N§[§7!2§];
         if(_loc2_.§6x§ < 1)
         {
            _loc2_.§6x§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §=!e§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§,y§)
         {
            _loc2_ = new §?R§.§>e§("MovieClip_SlingHolder")();
            setTint(_loc2_,§9#§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §,y§ = mLevelMain.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §>[§ = new §2!g§.Sprite();
         var _loc1_:§<7§ = new §<7§(§,y§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §>[§.addChild(_loc1_);
         §2!T§ = new §2!g§.Sprite();
         §&x§ = new §2c§(2,2,§9#§);
         §2!T§.addChild(§&x§);
         §-,§ = new §2!g§.Sprite();
         §]!'§ = new §2c§(2,2,§9#§);
         §-,§.addChild(§]!'§);
      }
   }
}
