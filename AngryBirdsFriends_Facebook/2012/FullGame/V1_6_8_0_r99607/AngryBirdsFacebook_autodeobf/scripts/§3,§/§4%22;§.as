package §3,§
{
   import §1k§.§%4§;
   import §<L§.Texture;
   import §?"<§.§"d§;
   import §[!z§.§!"=§;
   import §]&§.§-§;
   import §]&§.DisplayObject;
   import §]&§.Sprite;
   import §]&§.§[T§;
   import com.rovio.assets.§#!J§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §4";§ extends §,!;§
   {
      
      protected static const §4"§:uint = 7602176;
      
      protected static var §&"C§:Texture;
       
      
      protected var §]!s§:§-§;
      
      protected var §-!j§:§-§;
      
      protected var §[W§:Boolean = false;
      
      public function §4";§(param1:§[!;§, param2:§!"=§, param3:§]&§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function §<!O§() : void
      {
         this.§^!$§(false);
      }
      
      public function § V§() : void
      {
         if(this.§]!s§ || this.§-!j§)
         {
            this.§^!$§(true);
            return;
         }
         var _loc1_:§"d§ = §0!J§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§]!s§ = new §-§(_loc2_);
         this.§-!j§ = new §-§(_loc3_);
         this.§^!$§(true);
         this.§&Z§(§`a§.§<5§);
      }
      
      public function §&Z§(param1:Number) : void
      {
         var _loc2_:§-!K§ = null;
         for each(_loc2_ in §&!L§)
         {
            _loc2_.§6!8§ = param1;
         }
      }
      
      protected function §^!$§(param1:Boolean = false) : void
      {
         if(this.§[W§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§`">§();
         }
         else
         {
            §'!f§();
         }
         §]!L§ = !!param1 ? Number(§`a§.§["$§) : Number(§`a§.§="2§);
         this.§[W§ = param1;
         while(§3!b§.numChildren > 0)
         {
            §3!b§.removeChildAt(0);
         }
         §3!b§.addChild(!!param1 ? this.§]!s§ : §&!f§);
         §3!b§.addChild(§7_§);
         §3!b§.addChild(§8"-§);
         §3!b§.addChild(§"!g§);
         §3!b§.addChild(§]z§);
         §3!b§.addChild(!!param1 ? this.§-!j§ : §2!D§);
         §[!_§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(this.§[W§)
         {
            this.§]!s§.x = §>U§ / §[!;§.§4!O§ - 8 - 8;
            this.§]!s§.y = §>!c§ / §[!;§.§4!O§ - 30 - 10;
            this.§-!j§.x = §>U§ / §[!;§.§4!O§ - 38 - 4;
            this.§-!j§.y = §>!c§ / §[!;§.§4!O§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§[W§)
         {
            §%4§.§>f§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§-!K§ = null;
         _loc2_ = §&!L§[§1g§];
         var _loc3_:Number = §5!]§ / §]!L§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§,!;§.BIRD_LAUNCH_FORCE_GREEN) : Number(§,!;§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§6!8§ > 0)
            {
               return _loc2_.§6!8§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §1"1§(param1:Number) : §-!K§
      {
         var _loc2_:§-!K§ = null;
         _loc2_ = §&!L§[§1g§];
         if(_loc2_.§>B§ < 1)
         {
            _loc2_.§>B§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §`">§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§&"C§)
         {
            _loc2_ = new §#!J§.§1!Y§("MovieClip_SlingHolder")();
            setTint(_loc2_,§4"§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §&"C§ = §0!J§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §"!g§ = new §]&§.Sprite();
         var _loc1_:§-§ = new §-§(§&"C§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §"!g§.addChild(_loc1_);
         §7_§ = new §]&§.Sprite();
         §1!J§ = new §[T§(2,2,§4"§);
         §7_§.addChild(§1!J§);
         §]z§ = new §]&§.Sprite();
         §>!G§ = new §[T§(2,2,§4"§);
         §]z§.addChild(§>!G§);
      }
   }
}
