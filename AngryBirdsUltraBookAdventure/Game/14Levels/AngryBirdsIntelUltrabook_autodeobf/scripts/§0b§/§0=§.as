package §0b§
{
   import §"!i§.§"!'§;
   import §40§.§1!g§;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §40§.§<!P§;
   import §=`§.§%!L§;
   import §?]§.Texture;
   import §[!b§.§-!Q§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   import com.rovio.assets.§,!j§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §0=§ extends §1!g§
   {
      
      protected static const §;!e§:uint = 7602176;
      
      protected static var §^G§:Texture;
       
      
      protected var §=!U§:§"<§;
      
      protected var §,T§:§"<§;
      
      public function §0=§(param1:§5G§, param2:§"!'§, param3:§`g§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §&!V§() : void
      {
         this.§-+§(false);
      }
      
      public function §4!@§() : void
      {
         if(this.§=!U§ || this.§,T§)
         {
            this.§-+§(true);
            return;
         }
         var _loc1_:§%!L§ = §#!U§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§=!U§ = new §"<§(_loc2_);
         this.§,T§ = new §"<§(_loc3_);
         this.§-+§(true);
         this.§0!K§(§2!y§.§9!K§);
      }
      
      public function §0!K§(param1:Number) : void
      {
         var _loc2_:§<!P§ = null;
         for each(_loc2_ in § Y§)
         {
            _loc2_.§+_§ = param1;
         }
      }
      
      override protected function getSlingshotAnimation() : §%!L§
      {
         return §#!U§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §-+§(param1:Boolean = false) : void
      {
         if(§ w§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§1A§();
         }
         else
         {
            §[w§();
         }
         §-m§ = !!param1 ? Number(§2!y§.§=]§) : Number(§2!y§.§5L§);
         § w§ = param1;
         while(§]2§.numChildren > 0)
         {
            §]2§.removeChildAt(0);
         }
         §]2§.addChild(!!param1 ? this.§=!U§ : §^!0§);
         §]2§.addChild(§<g§);
         §]2§.addChild(§;!j§);
         §]2§.addChild(§8r§);
         §]2§.addChild(§=d§);
         §]2§.addChild(!!param1 ? this.§,T§ : §3""§);
         §4q§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(§ w§)
         {
            this.§=!U§.x = §#!!§ / §5G§.§6+§ - 8 - 8;
            this.§=!U§.y = §!!3§ / §5G§.§6+§ - 30 - 10;
            this.§,T§.x = §#!!§ / §5G§.§6+§ - 38 - 4;
            this.§,T§.y = §!!3§ / §5G§.§6+§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(§ w§)
         {
            §-!Q§.§#3§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§<!P§ = null;
         _loc2_ = § Y§[§1]§];
         var _loc3_:Number = §0!g§ / §-m§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§1!g§.BIRD_LAUNCH_FORCE_GREEN) : Number(§1!g§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§+_§ > 0)
            {
               return _loc2_.§+_§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §5!k§(param1:Number) : §<!P§
      {
         var _loc2_:§<!P§ = null;
         _loc2_ = § Y§[§1]§];
         if(_loc2_.§'T§ < 1)
         {
            _loc2_.§'T§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §1A§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§^G§)
         {
            _loc2_ = new §,!j§.§!!N§("MovieClip_SlingHolder")();
            setTint(_loc2_,§;!e§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §^G§ = §#!U§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §8r§ = new §`g§.Sprite();
         var _loc1_:§"<§ = new §"<§(§^G§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §8r§.addChild(_loc1_);
         §<g§ = new §`g§.Sprite();
         §4!O§ = new § O§(2,2,§;!e§);
         §<g§.addChild(§4!O§);
         §=d§ = new §`g§.Sprite();
         §@I§ = new § O§(2,2,§;!e§);
         §=d§.addChild(§@I§);
      }
   }
}
