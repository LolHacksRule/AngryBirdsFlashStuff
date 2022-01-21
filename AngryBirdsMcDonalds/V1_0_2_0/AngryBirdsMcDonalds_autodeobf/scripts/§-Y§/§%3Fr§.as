package §-Y§
{
   import § !m§.§6h§;
   import §",§.Texture;
   import §'a§.§0!f§;
   import §'a§.§0U§;
   import §'a§.§^N§;
   import §'a§.§use §;
   import §+-§.§,K§;
   import §5!l§.§8!_§;
   import §5x§.§2!K§;
   import §5x§.§3"§;
   import §5x§.DisplayObject;
   import §5x§.Sprite;
   import §7!d§.§'!5§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §?r§ extends §0U§
   {
      
      protected static const §<§:uint = 7602176;
      
      protected static var §,!B§:Texture;
       
      
      protected var §?8§:§2!K§;
      
      protected var §[!a§:§2!K§;
      
      protected var §9!R§:Boolean = false;
      
      public function §?r§(param1:§-!V§, param2:§,K§, param3:§5x§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §<G§() : void
      {
         this.§&!8§(false);
      }
      
      public function §<Z§() : void
      {
         if(this.§?8§ || this.§[!a§)
         {
            this.§&!8§(true);
            return;
         }
         var _loc1_:§8!_§ = mLevelMain.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§?8§ = new §2!K§(_loc2_);
         this.§[!a§ = new §2!K§(_loc3_);
         this.§&!8§(true);
         this.§0V§(§^N§.§]#§);
      }
      
      public function §0V§(param1:Number) : void
      {
         var _loc2_:§use § = null;
         for each(_loc2_ in §^!@§)
         {
            _loc2_.§7!#§ = param1;
         }
      }
      
      protected function §&!8§(param1:Boolean = false) : void
      {
         if(this.§9!R§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§]v§();
         }
         else
         {
            §;S§();
         }
         §7v§ = !!param1 ? Number(§^N§.§0!B§) : Number(§^N§.§,#§);
         this.§9!R§ = param1;
         while(§`n§.numChildren > 0)
         {
            §`n§.removeChildAt(0);
         }
         §`n§.addChild(!!param1 ? this.§?8§ : §%R§);
         §`n§.addChild(§3[§);
         §`n§.addChild(§+%§);
         §`n§.addChild(§^!T§);
         §`n§.addChild(§=!0§);
         §`n§.addChild(!!param1 ? this.§[!a§ : §3e§);
         §2!^§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§9!R§)
         {
            this.§?8§.x = § +§ / §0!f§.§<C§ - 8 - 8;
            this.§?8§.y = §'Z§ / §0!f§.§<C§ - 30 - 10;
            this.§[!a§.x = § +§ / §0!f§.§<C§ - 38 - 4;
            this.§[!a§.y = §'Z§ / §0!f§.§<C§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§9!R§)
         {
            §6h§.§-a§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§use § = null;
         _loc2_ = §^!@§[§`!5§];
         var _loc3_:Number = §3<§ / §7v§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§0U§.BIRD_LAUNCH_FORCE_GREEN) : Number(§0U§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§7!#§ > 0)
            {
               return _loc2_.§7!#§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §<&§(param1:Number) : §use §
      {
         var _loc2_:§use § = null;
         _loc2_ = §^!@§[§`!5§];
         if(_loc2_.§`?§ < 1)
         {
            _loc2_.§`?§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §]v§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§,!B§)
         {
            _loc2_ = new §'!5§.§-!P§("MovieClip_SlingHolder")();
            setTint(_loc2_,§<§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §,!B§ = mLevelMain.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §^!T§ = new §5x§.Sprite();
         var _loc1_:§2!K§ = new §2!K§(§,!B§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §^!T§.addChild(_loc1_);
         §3[§ = new §5x§.Sprite();
         §?!+§ = new §3"§(2,2,§<§);
         §3[§.addChild(§?!+§);
         §=!0§ = new §5x§.Sprite();
         §#r§ = new §3"§(2,2,§<§);
         §=!0§.addChild(§#r§);
      }
   }
}
