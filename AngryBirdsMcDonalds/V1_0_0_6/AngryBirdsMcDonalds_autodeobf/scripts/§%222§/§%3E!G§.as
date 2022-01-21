package §"2§
{
   import § !^§.Texture;
   import §&!!§.§[!]§;
   import §2![§.§7Q§;
   import §2![§.DisplayObject;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import §7!k§.§%!_§;
   import §7_§.§]![§;
   import §<L§.§!!G§;
   import §<L§.§&E§;
   import §<L§.§6H§;
   import §<L§.§7!4§;
   import §^!K§.§ !$§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §>!G§ extends §7!4§
   {
      
      protected static const §+8§:uint = 7602176;
      
      protected static var §'g§:Texture;
       
      
      protected var §=!"§:§[!U§;
      
      protected var §0!Q§:§[!U§;
      
      protected var §3O§:Boolean = false;
      
      public function §>!G§(param1:§9-§, param2:§]![§, param3:§2![§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §,!U§() : void
      {
         this.§4j§(false);
      }
      
      public function §set §() : void
      {
         if(this.§=!"§ || this.§0!Q§)
         {
            this.§4j§(true);
            return;
         }
         var _loc1_:§[!]§ = mLevelMain.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§=!"§ = new §[!U§(_loc2_);
         this.§0!Q§ = new §[!U§(_loc3_);
         this.§4j§(true);
         this.§^'§(§6H§.§2P§);
      }
      
      public function §^'§(param1:Number) : void
      {
         var _loc2_:§&E§ = null;
         for each(_loc2_ in § &§)
         {
            _loc2_.§0!-§ = param1;
         }
      }
      
      protected function §4j§(param1:Boolean = false) : void
      {
         if(this.§3O§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§39§();
         }
         else
         {
            §+Z§();
         }
         §=O§ = !!param1 ? Number(§6H§.§2o§) : Number(§6H§.§>S§);
         this.§3O§ = param1;
         while(§%!l§.numChildren > 0)
         {
            §%!l§.removeChildAt(0);
         }
         §%!l§.addChild(!!param1 ? this.§=!"§ : §;,§);
         §%!l§.addChild(§2m§);
         §%!l§.addChild(§implements§);
         §%!l§.addChild(§]!V§);
         §%!l§.addChild(§?!9§);
         §%!l§.addChild(!!param1 ? this.§0!Q§ : §<b§);
         § o§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§3O§)
         {
            this.§=!"§.x = §+p§ / §!!G§.§ !E§ - 8 - 8;
            this.§=!"§.y = §,,§ / §!!G§.§ !E§ - 30 - 10;
            this.§0!Q§.x = §+p§ / §!!G§.§ !E§ - 38 - 4;
            this.§0!Q§.y = §,,§ / §!!G§.§ !E§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§3O§)
         {
            § !$§.§-N§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§&E§ = null;
         _loc2_ = § &§[§'J§];
         var _loc3_:Number = §9!Q§ / §=O§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§7!4§.BIRD_LAUNCH_FORCE_GREEN) : Number(§7!4§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§0!-§ > 0)
            {
               return _loc2_.§0!-§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §"!N§(param1:Number) : §&E§
      {
         var _loc2_:§&E§ = null;
         _loc2_ = § &§[§'J§];
         if(_loc2_.§8!&§ < 1)
         {
            _loc2_.§8!&§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §39§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§'g§)
         {
            _loc2_ = new §%!_§.§1$§("MovieClip_SlingHolder")();
            setTint(_loc2_,§+8§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §'g§ = mLevelMain.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §]!V§ = new §2![§.Sprite();
         var _loc1_:§[!U§ = new §[!U§(§'g§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §]!V§.addChild(_loc1_);
         §2m§ = new §2![§.Sprite();
         §2W§ = new §7Q§(2,2,§+8§);
         §2m§.addChild(§2W§);
         §?!9§ = new §2![§.Sprite();
         §"-§ = new §7Q§(2,2,§+8§);
         §?!9§.addChild(§"-§);
      }
   }
}
