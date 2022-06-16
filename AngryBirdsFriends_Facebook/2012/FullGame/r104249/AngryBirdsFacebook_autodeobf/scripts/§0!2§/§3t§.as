package §0!2§
{
   import §#S§.§-$§;
   import §3!#§.§!!k§;
   import §>s§.§+m§;
   import §?7§.Texture;
   import §]!v§.§'!=§;
   import §]!v§.§+!`§;
   import §]!v§.DisplayObject;
   import §]!v§.Sprite;
   import §`!n§.§#!s§;
   import com.rovio.assets.§>"5§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §3t§ extends §,!W§
   {
      
      protected static const §-!;§:uint = 7602176;
      
      protected static var §@";§:Texture;
       
      
      protected var §[!y§:§'!=§;
      
      protected var §=!;§:§'!=§;
      
      private var §%!X§:§2"0§;
      
      private var §]!w§:§2"0§;
      
      private var §,"'§:Boolean;
      
      private var §&z§:§'!=§;
      
      private var §>!5§:§'!=§;
      
      private var §^"#§:Number;
      
      private var §"" §:Boolean = false;
      
      public function §3t§(param1:§5"L§, param2:§#!s§, param3:§]!v§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function get §;u§() : Boolean
      {
         return this.§"" §;
      }
      
      public function set §;u§(param1:Boolean) : void
      {
         var _loc2_:§-$§ = null;
         var _loc3_:Texture = null;
         var _loc4_:Texture = null;
         if(this.§"" § == param1)
         {
            return;
         }
         this.§"" § = param1;
         if(this.§"" §)
         {
            _loc2_ = this.getSlingshotAnimation();
            _loc3_ = _loc2_.getFrame(0).texture;
            _loc4_ = _loc2_.getFrame(1).texture;
            while(§`b§.numChildren > 0)
            {
               §`b§.removeChildAt(0);
            }
            §3d§ = new §'!=§(_loc3_);
            §[C§ = new §'!=§(_loc4_);
            §`b§.addChild(§3d§);
            §`b§.addChild(§8"J§);
            §`b§.addChild(§for§);
            §`b§.addChild(§1"A§);
            §`b§.addChild(§!!8§);
            §`b§.addChild(§[C§);
            §%"F§ = true;
            §"@§ = false;
         }
      }
      
      override protected function getSlingshotAnimation() : §-$§
      {
         if(this.§"" §)
         {
            return §^!"§.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         return super.getSlingshotAnimation();
      }
      
      public function §3p§() : void
      {
         if(this.§[!y§ || this.§=!;§)
         {
            this.§7"6§(true);
            return;
         }
         var _loc1_:§-$§ = §^!"§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§[!y§ = new §'!=§(_loc2_);
         this.§=!;§ = new §'!=§(_loc3_);
         this.§7"6§(true);
         this.§6K§(§3`§.§10§);
         this.§%!n§();
         if(this.§,"'§)
         {
            this.§"D§();
         }
      }
      
      public function §6K§(param1:Number) : void
      {
         var _loc2_:§;M§ = null;
         for each(_loc2_ in §1"&§)
         {
            _loc2_.§`!w§ = param1;
         }
      }
      
      protected function §7"6§(param1:Boolean = false) : void
      {
         if(§"@§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§`!^§();
         }
         else
         {
            §6g§();
         }
         §[p§ = !!param1 ? Number(§3`§.§#",§) : Number(§3`§.§0M§);
         §"@§ = param1;
         while(§`b§.numChildren > 0)
         {
            §`b§.removeChildAt(0);
         }
         §`b§.addChild(!!param1 ? this.§[!y§ : §3d§);
         §`b§.addChild(§8"J§);
         §`b§.addChild(§for§);
         §`b§.addChild(§1"A§);
         §`b§.addChild(§!!8§);
         §`b§.addChild(!!param1 ? this.§=!;§ : §[C§);
         §%"F§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         this.§[H§(this.§]!w§,param1);
         this.§[H§(this.§%!X§,param1);
         this.§;!H§();
         if(§"@§)
         {
            this.§[!y§.x = §"""§ / §5"L§.§@>§ - 8 - 8;
            this.§[!y§.y = §5!J§ / §5"L§.§@>§ - 30 - 10;
            this.§=!;§.x = §"""§ / §5"L§.§@>§ - 38 - 4;
            this.§=!;§.y = §5!J§ / §5"L§.§@>§ - 37 - 6;
         }
         else if(!this.§"" §)
         {
         }
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §;M§
      {
         var _loc5_:§2"=§ = null;
         _loc5_ = new §2"=§(this,new §]!v§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §1"&§.push(_loc5_);
         }
         else
         {
            §1"&§.splice(param4,0,_loc5_);
         }
         §for§.addChild(_loc5_.sprite);
         if(§"@§)
         {
            this.§6K§(§3`§.§10§);
         }
         return _loc5_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(§"@§)
         {
            §+m§.§]!N§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§;M§ = null;
         _loc2_ = §1"&§[§24§];
         var _loc3_:Number = § "<§ / §[p§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§,!W§.BIRD_LAUNCH_FORCE_GREEN) : Number(§,!W§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§`!w§ > 0)
            {
               return _loc2_.§`!w§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §#"F§(param1:Number) : §;M§
      {
         var _loc2_:§;M§ = null;
         _loc2_ = §1"&§[§24§];
         if(_loc2_.§="A§ < 1)
         {
            _loc2_.§="A§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §`!^§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§@";§)
         {
            _loc2_ = new §>"5§.§6s§("MovieClip_SlingHolder")();
            setTint(_loc2_,§-!;§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §@";§ = §^!"§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §1"A§ = new §]!v§.Sprite();
         var _loc1_:§'!=§ = new §'!=§(§@";§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §1"A§.addChild(_loc1_);
         §8"J§ = new §]!v§.Sprite();
         §#"=§ = new §+!`§(2,2,§-!;§);
         §8"J§.addChild(§#"=§);
         §!!8§ = new §]!v§.Sprite();
         §<!U§ = new §+!`§(2,2,§-!;§);
         §!!8§.addChild(§<!U§);
      }
      
      public function §"D§() : void
      {
         this.§,"'§ = true;
         this.§&z§ = this.§&z§ || new §'!=§(§^!"§.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0).texture);
         this.§>!5§ = this.§>!5§ || new §'!=§(§^!"§.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0).texture);
         if(!this.§;u§)
         {
            this.§&z§.x = (§"""§ - 3.5) / §5"L§.§@>§;
            this.§&z§.y = (§5!J§ - 5.75) / §5"L§.§@>§;
         }
         this.§>!5§.x = this.§&z§.x + 0.95 / §5"L§.§@>§;
         this.§>!5§.y = this.§&z§.y + 0.6 / §5"L§.§@>§;
         this.§>!5§.pivotX = -50;
         this.§>!5§.pivotY = -32;
         §`b§.addChild(this.§>!5§);
         §`b§.addChild(this.§&z§);
         §%"F§ = true;
         this.§^"#§ = (180 - §!"@§) / (180 / Math.PI);
         var _loc1_:Number = this.§&z§.x * §5"L§.§@>§;
         var _loc2_:Number = this.§&z§.y * §5"L§.§@>§;
         this.§`!u§(_loc1_,_loc2_);
         §!!k§.§^!%§(_loc1_,_loc2_,20,10,10);
      }
      
      private function §;!H§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§,"'§)
         {
            _loc1_ = §!"@§ - this.§^"#§;
            if(Math.abs(_loc1_) < 0.5)
            {
               this.§^"#§ = §!"@§;
            }
            else
            {
               if(_loc1_ > 180)
               {
                  _loc1_ -= 360;
               }
               if(_loc1_ < -180)
               {
                  _loc1_ += 360;
               }
               this.§^"#§ += _loc1_ / 20;
            }
            this.§>!5§.rotation = (180 - this.§^"#§) / (180 / Math.PI);
            §%"F§ = true;
         }
      }
      
      private function §%!n§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§]!w§)
         {
            this.§]!w§.reset();
         }
         else
         {
            _loc1_ = -15;
            _loc2_ = -13;
            _loc3_ = !!§"@§ ? Number(this.§[!y§.width) : Number(§3d§.width);
            _loc4_ = !!§"@§ ? Number(this.§[!y§.height) : Number(§3d§.height);
            _loc5_ = §"""§ / §5"L§.§@>§ + _loc3_ / 2 + _loc1_;
            _loc6_ = §5!J§ / §5"L§.§@>§ + _loc4_ + _loc2_;
            this.§]!w§ = new §2"0§("POWERUP_SLINGSHOT_LIGHTNING",§`b§,§]!M§,_loc5_,_loc6_,50);
         }
         §%"F§ = true;
      }
      
      public function §`!u§(param1:Number, param2:Number) : void
      {
         param1 /= §5"L§.§@>§;
         param2 /= §5"L§.§@>§;
         if(this.§%!X§)
         {
            this.§%!X§.reset();
            this.§%!X§.setPosition(param1,param2);
         }
         else
         {
            this.§%!X§ = new §2"0§("BLAST_EFFECT",§`b§,§^!"§,param1,param2,50);
            this.§%!X§.§[N§(true);
         }
         §%"F§ = true;
      }
      
      private function §[H§(param1:§2"0§, param2:Number) : void
      {
         if(param1 && param1.update(param2))
         {
            §%"F§ = true;
         }
      }
   }
}
