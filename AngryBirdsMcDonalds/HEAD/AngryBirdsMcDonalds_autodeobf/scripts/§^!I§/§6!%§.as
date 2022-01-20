package §^!I§
{
   import § !J§.§%M§;
   import § !J§.§,![§;
   import § !J§.§5u§;
   import § !J§.§`+§;
   import §&7§.Texture;
   import §,4§.§0B§;
   import §9`§.§+!D§;
   import §;'§.§6d§;
   import §[!4§.§-#§;
   import §`!n§.§ !i§;
   import §`!n§.§+i§;
   import §`!n§.DisplayObject;
   import §`!n§.Sprite;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §6!%§ extends §`+§
   {
      
      protected static const §'!o§:uint = 7602176;
      
      protected static var §2N§:Texture;
       
      
      protected var §>R§:§+i§;
      
      protected var §06§:§+i§;
      
      public function §6!%§(param1:§"r§, param2:§0B§, param3:§`!n§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §<!P§() : void
      {
         this.§5§(false);
      }
      
      public function §"#§() : void
      {
         if(this.§>R§ || this.§06§)
         {
            this.§5§(true);
            return;
         }
         var _loc1_:§+!D§ = mLevelMain.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§>R§ = new §+i§(_loc2_);
         this.§06§ = new §+i§(_loc3_);
         this.§5§(true);
         this.§`!N§(§,![§.§"i§);
      }
      
      public function §`!N§(param1:Number) : void
      {
         var _loc2_:§5u§ = null;
         for each(_loc2_ in §<!f§)
         {
            _loc2_.§5h§ = param1;
         }
      }
      
      protected function §5§(param1:Boolean = false) : void
      {
         if(§[4§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§'!E§();
         }
         else
         {
            §<!B§();
         }
         §]z§ = !!param1 ? Number(§,![§.§ j§) : Number(§,![§.§[+§);
         §[4§ = param1;
         while(§]!M§.numChildren > 0)
         {
            §]!M§.removeChildAt(0);
         }
         §]!M§.addChild(!!param1 ? this.§>R§ : §0]§);
         §]!M§.addChild(§1F§);
         §]!M§.addChild(§[U§);
         §]!M§.addChild(§8!!§);
         §]!M§.addChild(§=!^§);
         §]!M§.addChild(!!param1 ? this.§06§ : §!H§);
         §'0§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(§[4§)
         {
            this.§>R§.x = §=y§ / §%M§.§'!Y§ - 8 - 8;
            this.§>R§.y = §#J§ / §%M§.§'!Y§ - 30 - 10;
            this.§06§.x = §=y§ / §%M§.§'!Y§ - 38 - 4;
            this.§06§.y = §#J§ / §%M§.§'!Y§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(§[4§)
         {
            §-#§.§4h§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§5u§ = null;
         _loc2_ = §<!f§[§0!6§];
         var _loc3_:Number = §-!o§ / §]z§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§`+§.BIRD_LAUNCH_FORCE_GREEN) : Number(§`+§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§5h§ > 0)
            {
               return _loc2_.§5h§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §+?§(param1:Number) : §5u§
      {
         var _loc2_:§5u§ = null;
         _loc2_ = §<!f§[§0!6§];
         if(_loc2_.§,!p§ < 1)
         {
            _loc2_.§,!p§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §'!E§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§2N§)
         {
            _loc2_ = new §6d§.§=!Y§("MovieClip_SlingHolder")();
            setTint(_loc2_,§'!o§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §2N§ = mLevelMain.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §8!!§ = new §`!n§.Sprite();
         var _loc1_:§+i§ = new §+i§(§2N§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §8!!§.addChild(_loc1_);
         §1F§ = new §`!n§.Sprite();
         §1y§ = new § !i§(2,2,§'!o§);
         §1F§.addChild(§1y§);
         §=!^§ = new §`!n§.Sprite();
         §0!3§ = new § !i§(2,2,§'!o§);
         §=!^§.addChild(§0!3§);
      }
   }
}
