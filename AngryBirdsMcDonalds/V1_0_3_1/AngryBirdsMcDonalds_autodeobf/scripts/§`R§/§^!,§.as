package §`R§
{
   import § !%§.§>f§;
   import § 1§.§=§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §&c§.§2!]§;
   import §&c§.DisplayObject;
   import §&c§.Sprite;
   import §3!@§.§ s§;
   import §3!@§.§'!0§;
   import §3!@§.§49§;
   import §3!@§.§^!c§;
   import §?!g§.§ !d§;
   import com.rovio.ui.setTint;
   import §finally§.§@z§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §^!,§ extends §49§
   {
      
      protected static const §;!J§:uint = 7602176;
      
      protected static var §1&§:Texture;
       
      
      protected var §0C§:§%!a§;
      
      protected var §+!j§:§%!a§;
      
      protected var §-!o§:Boolean = false;
      
      public function §^!,§(param1:§8#§, param2:§@z§, param3:§&c§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §&!7§() : void
      {
         this.§'x§(false);
      }
      
      public function §=0§() : void
      {
         if(this.§0C§ || this.§+!j§)
         {
            this.§'x§(true);
            return;
         }
         var _loc1_:§>f§ = mLevelMain.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§0C§ = new §%!a§(_loc2_);
         this.§+!j§ = new §%!a§(_loc3_);
         this.§'x§(true);
         this.§&%§(§'!0§.§%!'§);
      }
      
      public function §&%§(param1:Number) : void
      {
         var _loc2_:§^!c§ = null;
         for each(_loc2_ in §0n§)
         {
            _loc2_.§'N§ = param1;
         }
      }
      
      protected function §'x§(param1:Boolean = false) : void
      {
         if(this.§-!o§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§,G§();
         }
         else
         {
            §<&§();
         }
         native = !!param1 ? Number(§'!0§.§3R§) : Number(§'!0§.§-D§);
         this.§-!o§ = param1;
         while(§7U§.numChildren > 0)
         {
            §7U§.removeChildAt(0);
         }
         §7U§.addChild(!!param1 ? this.§0C§ : §&<§);
         §7U§.addChild(§7f§);
         §7U§.addChild(§!E§);
         §7U§.addChild(§1?§);
         §7U§.addChild(§9!c§);
         §7U§.addChild(!!param1 ? this.§+!j§ : §9'§);
         §"A§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§-!o§)
         {
            this.§0C§.x = § !^§ / § s§.§<!h§ - 8 - 8;
            this.§0C§.y = §0p§ / § s§.§<!h§ - 30 - 10;
            this.§+!j§.x = § !^§ / § s§.§<!h§ - 38 - 4;
            this.§+!j§.y = §0p§ / § s§.§<!h§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§-!o§)
         {
            § !d§.§-h§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§^!c§ = null;
         _loc2_ = §0n§[§%2§];
         var _loc3_:Number = §2K§ / native;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§49§.BIRD_LAUNCH_FORCE_GREEN) : Number(§49§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§'N§ > 0)
            {
               return _loc2_.§'N§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §^!W§(param1:Number) : §^!c§
      {
         var _loc2_:§^!c§ = null;
         _loc2_ = §0n§[§%2§];
         if(_loc2_.§'!@§ < 1)
         {
            _loc2_.§'!@§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §,G§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§1&§)
         {
            _loc2_ = new §=§.§>!f§("MovieClip_SlingHolder")();
            setTint(_loc2_,§;!J§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §1&§ = mLevelMain.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §1?§ = new §&c§.Sprite();
         var _loc1_:§%!a§ = new §%!a§(§1&§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §1?§.addChild(_loc1_);
         §7f§ = new §&c§.Sprite();
         §1!j§ = new §2!]§(2,2,§;!J§);
         §7f§.addChild(§1!j§);
         §9!c§ = new §&c§.Sprite();
         §8!8§ = new §2!]§(2,2,§;!J§);
         §9!c§.addChild(§8!8§);
      }
   }
}
