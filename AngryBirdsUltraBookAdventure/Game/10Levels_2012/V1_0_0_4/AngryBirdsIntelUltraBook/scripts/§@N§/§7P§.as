package §@N§
{
   import §"R§.§ !Q§;
   import §'!9§.§%!g§;
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §,!5§.§0;§;
   import §,!5§.§7!,§;
   import §,!5§.§>!A§;
   import §,!5§.§^g§;
   import §-w§.§1!;§;
   import §0!N§.§=+§;
   import §^!+§.Texture;
   import com.rovio.assets.§%!G§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §7P§ extends §>!A§
   {
      
      protected static const §81§:uint = 7602176;
      
      protected static var §2!5§:Texture;
       
      
      protected var §1y§:§?!U§;
      
      protected var §]a§:§?!U§;
      
      protected var §%-§:Boolean = false;
      
      public function §7P§(param1:§^g§, param2:§=+§, param3:§'!9§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §^m§() : void
      {
         this.§[Y§(false);
      }
      
      public function §]v§() : void
      {
         if(this.§1y§ || this.§]a§)
         {
            this.§[Y§(true);
            return;
         }
         var _loc1_:§1!;§ = §?l§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§1y§ = new §?!U§(_loc2_);
         this.§]a§ = new §?!U§(_loc3_);
         this.§[Y§(true);
         this.§79§(§0;§.§super§);
      }
      
      public function §79§(param1:Number) : void
      {
         var _loc2_:§7!,§ = null;
         for each(_loc2_ in §?$§)
         {
            _loc2_.§5!6§ = param1;
         }
      }
      
      override protected function getSlingshotAnimation() : §1!;§
      {
         return §?l§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §[Y§(param1:Boolean = false) : void
      {
         if(this.§%-§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§3A§();
         }
         else
         {
            §+! §();
         }
         §5!G§ = !!param1 ? Number(§0;§.§25§) : Number(§0;§.§#!A§);
         this.§%-§ = param1;
         while(§8X§.numChildren > 0)
         {
            §8X§.removeChildAt(0);
         }
         §8X§.addChild(!!param1 ? this.§1y§ : § !,§);
         §8X§.addChild(§0!d§);
         §8X§.addChild(§42§);
         §8X§.addChild(§'c§);
         §8X§.addChild(§&!5§);
         §8X§.addChild(!!param1 ? this.§]a§ : §6!@§);
         § !4§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§%-§)
         {
            this.§1y§.x = §,G§ / §^g§.§^!S§ - 8 - 8;
            this.§1y§.y = §78§ / §^g§.§^!S§ - 30 - 10;
            this.§]a§.x = §,G§ / §^g§.§^!S§ - 38 - 4;
            this.§]a§.y = §78§ / §^g§.§^!S§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§%-§)
         {
            § !Q§.playSound("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§7!,§ = null;
         _loc2_ = §?$§[§;&§];
         var _loc3_:Number = §>!]§ / §5!G§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§>!A§.BIRD_LAUNCH_FORCE_GREEN) : Number(§>!A§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§5!6§ > 0)
            {
               return _loc2_.§5!6§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §+!u§(param1:Number) : §7!,§
      {
         var _loc2_:§7!,§ = null;
         _loc2_ = §?$§[§;&§];
         if(_loc2_.§%! § < 1)
         {
            _loc2_.§%! § = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §3A§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§2!5§)
         {
            _loc2_ = new §%!G§.§^!B§("MovieClip_SlingHolder")();
            setTint(_loc2_,§81§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §2!5§ = §?l§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §'c§ = new §'!9§.Sprite();
         var _loc1_:§?!U§ = new §?!U§(§2!5§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §'c§.addChild(_loc1_);
         §0!d§ = new §'!9§.Sprite();
         §8!u§ = new §%!g§(2,2,§81§);
         §0!d§.addChild(§8!u§);
         §&!5§ = new §'!9§.Sprite();
         §,i§ = new §%!g§(2,2,§81§);
         §&!5§.addChild(§,i§);
      }
   }
}
