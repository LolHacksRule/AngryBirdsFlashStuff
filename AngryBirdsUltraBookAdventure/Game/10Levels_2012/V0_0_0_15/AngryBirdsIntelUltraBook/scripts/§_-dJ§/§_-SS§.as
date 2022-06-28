package §_-dJ§
{
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-J§;
   import §_-Ga§.§_-bm§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-E0§;
   import §_-TG§.§_-L8§;
   import §_-TG§.§_-pR§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-uY§.§_-2p§;
   import §_-z4§.Texture;
   import com.rovio.assets.§_-Fc§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §_-SS§ extends §_-E0§
   {
      
      protected static const §_-8g§:uint = 7602176;
      
      protected static var §_-x3§:Texture;
       
      
      protected var §_-BZ§:§_-09b§;
      
      protected var §_-MR§:§_-09b§;
      
      protected var §_-Gd§:Boolean = false;
      
      public function §_-SS§(param1:§_-00u§, param2:§_-bm§, param3:§_-uY§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §_-ie§() : void
      {
         this.§_-P8§(false);
      }
      
      public function §_-05R§() : void
      {
         if(this.§_-BZ§ || this.§_-MR§)
         {
            this.§_-P8§(true);
            return;
         }
         var _loc1_:§_-J§ = §_-6A§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§_-BZ§ = new §_-09b§(_loc2_);
         this.§_-MR§ = new §_-09b§(_loc3_);
         this.§_-P8§(true);
         this.§_-qT§(§_-L8§.§_-3C§);
      }
      
      public function §_-qT§(param1:Number) : void
      {
         var _loc2_:§_-pR§ = null;
         for each(_loc2_ in §_-j9§)
         {
            _loc2_.§_-PV§ = param1;
         }
      }
      
      override protected function getSlingshotAnimation() : §_-J§
      {
         return §_-6A§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §_-P8§(param1:Boolean = false) : void
      {
         if(this.§_-Gd§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-L4§();
         }
         else
         {
            §_-yR§();
         }
         §_-Fn§ = !!param1 ? Number(§_-L8§.§_-04j§) : Number(§_-L8§.§_-Cr§);
         this.§_-Gd§ = param1;
         while(§_-FQ§.numChildren > 0)
         {
            §_-FQ§.removeChildAt(0);
         }
         §_-FQ§.addChild(!!param1 ? this.§_-BZ§ : §_-hP§);
         §_-FQ§.addChild(§_-0A8§);
         §_-FQ§.addChild(§_-wx§);
         §_-FQ§.addChild(§_-O-§);
         §_-FQ§.addChild(§_-0B6§);
         §_-FQ§.addChild(!!param1 ? this.§_-MR§ : §_-0Bj§);
         §_-0Dz§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§_-Gd§)
         {
            this.§_-BZ§.x = §_-c§ / §_-00u§.§_-lY§ - 8 - 8;
            this.§_-BZ§.y = §_-l1§ / §_-00u§.§_-lY§ - 30 - 10;
            this.§_-MR§.x = §_-c§ / §_-00u§.§_-lY§ - 38 - 4;
            this.§_-MR§.y = §_-l1§ / §_-00u§.§_-lY§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§_-Gd§)
         {
            §_-pX§.playSound("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§_-pR§ = null;
         _loc2_ = §_-j9§[§_-eE§];
         var _loc3_:Number = §_-7P§ / §_-Fn§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-E0§.BIRD_LAUNCH_FORCE_GREEN) : Number(§_-E0§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§_-PV§ > 0)
            {
               return _loc2_.§_-PV§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §_-E6§(param1:Number) : §_-pR§
      {
         var _loc2_:§_-pR§ = null;
         _loc2_ = §_-j9§[§_-eE§];
         if(_loc2_.§_-IX§ < 1)
         {
            _loc2_.§_-IX§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §_-L4§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§_-x3§)
         {
            _loc2_ = new §_-Fc§.§_-YE§("MovieClip_SlingHolder")();
            setTint(_loc2_,§_-8g§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §_-x3§ = §_-6A§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §_-O-§ = new §_-uY§.Sprite();
         var _loc1_:§_-09b§ = new §_-09b§(§_-x3§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §_-O-§.addChild(_loc1_);
         §_-0A8§ = new §_-uY§.Sprite();
         §_-08a§ = new §_-2p§(2,2,§_-8g§);
         §_-0A8§.addChild(§_-08a§);
         §_-0B6§ = new §_-uY§.Sprite();
         §_-03K§ = new §_-2p§(2,2,§_-8g§);
         §_-0B6§.addChild(§_-03K§);
      }
   }
}
