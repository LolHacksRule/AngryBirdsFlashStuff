package §3j§
{
   import §&!9§.Texture;
   import §-!F§.§`+§;
   import §0@§.§"%§;
   import §0@§.§1]§;
   import §0@§.DisplayObject;
   import §0@§.Sprite;
   import §55§.§"!P§;
   import §55§.§7!B§;
   import §55§.§7!k§;
   import §55§.§>![§;
   import §7! §.§;!7§;
   import §<l§.§@0§;
   import §]^§.§7G§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §;9§ extends §"!P§
   {
      
      protected static const §=_§:uint = 7602176;
      
      protected static var §"w§:Texture;
       
      
      protected var §#&§:§1]§;
      
      protected var §8!U§:§1]§;
      
      protected var §9^§:Boolean = false;
      
      public function §;9§(param1:§[8§, param2:§`+§, param3:§0@§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §+<§() : void
      {
         this.§2=§(false);
      }
      
      public function §&F§() : void
      {
         if(this.§#&§ || this.§8!U§)
         {
            this.§2=§(true);
            return;
         }
         var _loc1_:§;!7§ = mLevelMain.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§#&§ = new §1]§(_loc2_);
         this.§8!U§ = new §1]§(_loc3_);
         this.§2=§(true);
         this.§&W§(§7!k§.§]!%§);
      }
      
      public function §&W§(param1:Number) : void
      {
         var _loc2_:§7!B§ = null;
         for each(_loc2_ in §!!e§)
         {
            _loc2_.§6!j§ = param1;
         }
      }
      
      protected function §2=§(param1:Boolean = false) : void
      {
         if(this.§9^§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§,h§();
         }
         else
         {
            §?U§();
         }
         §=m§ = !!param1 ? Number(§7!k§.§;!f§) : Number(§7!k§.§3V§);
         this.§9^§ = param1;
         while(§#Y§.numChildren > 0)
         {
            §#Y§.removeChildAt(0);
         }
         §#Y§.addChild(!!param1 ? this.§#&§ : §'n§);
         §#Y§.addChild(§9b§);
         §#Y§.addChild(§>t§);
         §#Y§.addChild(§?-§);
         §#Y§.addChild(§7!W§);
         §#Y§.addChild(!!param1 ? this.§8!U§ : §!!f§);
         §1!`§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§9^§)
         {
            this.§#&§.x = §=!=§ / §>![§.§%!k§ - 8 - 8;
            this.§#&§.y = §[!;§ / §>![§.§%!k§ - 30 - 10;
            this.§8!U§.x = §=!=§ / §>![§.§%!k§ - 38 - 4;
            this.§8!U§.y = §[!;§ / §>![§.§%!k§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§9^§)
         {
            §7G§.§4W§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§7!B§ = null;
         _loc2_ = §!!e§[§3w§];
         var _loc3_:Number = §@!6§ / §=m§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§"!P§.BIRD_LAUNCH_FORCE_GREEN) : Number(§"!P§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§6!j§ > 0)
            {
               return _loc2_.§6!j§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §9!%§(param1:Number) : §7!B§
      {
         var _loc2_:§7!B§ = null;
         _loc2_ = §!!e§[§3w§];
         if(_loc2_.§80§ < 1)
         {
            _loc2_.§80§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §,h§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§"w§)
         {
            _loc2_ = new §@0§.§5+§("MovieClip_SlingHolder")();
            setTint(_loc2_,§=_§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §"w§ = mLevelMain.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §?-§ = new §0@§.Sprite();
         var _loc1_:§1]§ = new §1]§(§"w§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §?-§.addChild(_loc1_);
         §9b§ = new §0@§.Sprite();
         §&;§ = new §"%§(2,2,§=_§);
         §9b§.addChild(§&;§);
         §7!W§ = new §0@§.Sprite();
         §=w§ = new §"%§(2,2,§=_§);
         §7!W§.addChild(§=w§);
      }
   }
}
