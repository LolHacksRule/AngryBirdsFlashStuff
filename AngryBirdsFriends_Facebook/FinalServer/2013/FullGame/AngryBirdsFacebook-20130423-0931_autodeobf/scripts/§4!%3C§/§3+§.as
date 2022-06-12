package §4!<§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.§ "E§;
   import §'!6§.§5T§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §-p§.§4!`§;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §<5§.Texture;
   import §<T§.§4!N§;
   import §@!"§.§?l§;
   import §`!G§.§2"L§;
   import com.rovio.assets.§?q§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §3+§ extends §&=§
   {
      
      protected static const §+"5§:uint = 7602176;
      
      protected static var §#!!§:Texture;
       
      
      protected var §9!6§:§ "E§;
      
      protected var §4![§:§ "E§;
      
      private var §2"F§:§1!"§;
      
      private var §7B§:§1!"§;
      
      private var §+u§:§1!"§;
      
      private var §2D§:int = 0;
      
      private var § !r§:Boolean;
      
      private var §^@§:§ "E§;
      
      private var §1"0§:§ "E§;
      
      private var §""0§:Number;
      
      private var §["N§:Boolean = false;
      
      public function §3+§(param1:§'!S§, param2:§0"T§, param3:§'!6§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function get §""M§() : Boolean
      {
         return this.§["N§;
      }
      
      public function set §""M§(param1:Boolean) : void
      {
         var _loc2_:§4!N§ = null;
         var _loc3_:Texture = null;
         var _loc4_:Texture = null;
         if(this.§["N§ == param1)
         {
            return;
         }
         this.§["N§ = param1;
         if(this.§["N§)
         {
            _loc2_ = this.getSlingshotAnimation();
            _loc3_ = _loc2_.getFrame(0).texture;
            _loc4_ = _loc2_.getFrame(1).texture;
            while(§?!T§.numChildren > 0)
            {
               §?!T§.removeChildAt(0);
            }
            §7]§ = new § "E§(_loc3_);
            §"%§ = new § "E§(_loc4_);
            §?!T§.addChild(§7]§);
            §?!T§.addChild(§8h§);
            §?!T§.addChild(§7!g§);
            §?!T§.addChild(§&"2§);
            §?!T§.addChild(§@"N§);
            §?!T§.addChild(§"%§);
            §+C§ = true;
            §0I§ = false;
         }
      }
      
      override protected function getSlingshotAnimation() : §4!N§
      {
         if(this.§["N§)
         {
            return mLevelMain.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         return super.getSlingshotAnimation();
      }
      
      public function §"T§() : void
      {
         if(this.§9!6§ || this.§4![§)
         {
            this.§[!5§(true);
            return;
         }
         var _loc1_:§4!N§ = mLevelMain.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§9!6§ = new § "E§(_loc2_);
         this.§4![§ = new § "E§(_loc3_);
         this.§[!5§(true);
         this.§ B§(§^!Z§.§-"'§);
         this.§-C§();
         if(this.§ !r§)
         {
            this.§6"G§();
         }
      }
      
      public function § B§(param1:Number) : void
      {
         var _loc2_:§ !X§ = null;
         for each(_loc2_ in §9!L§)
         {
            _loc2_.§5J§ = param1;
         }
      }
      
      protected function §[!5§(param1:Boolean = false) : void
      {
         if(§0I§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§@!?§();
         }
         else
         {
            §14§();
         }
         §]"4§ = !!param1 ? Number(§^!Z§.§?!s§) : Number(§^!Z§.§1=§);
         §0I§ = param1;
         while(§?!T§.numChildren > 0)
         {
            §?!T§.removeChildAt(0);
         }
         §?!T§.addChild(!!param1 ? this.§9!6§ : §7]§);
         §?!T§.addChild(§8h§);
         §?!T§.addChild(§7!g§);
         §?!T§.addChild(§&"2§);
         §?!T§.addChild(§@"N§);
         §?!T§.addChild(!!param1 ? this.§4![§ : §"%§);
         §+C§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         this.§2"=§(this.§7B§,param1);
         this.§2"=§(this.§2"F§,param1);
         this.§2"=§(this.§+u§,param1);
         this.§?! §();
         if(§0I§)
         {
            this.§9!6§.x = §4!K§ / §'!S§.§2"<§ - 8 - 8;
            this.§9!6§.y = §7!#§ / §'!S§.§2"<§ - 30 - 10;
            this.§4![§.x = §4!K§ / §'!S§.§2"<§ - 38 - 4;
            this.§4![§.y = §7!#§ / §'!S§.§2"<§ - 37 - 6;
         }
         else if(!this.§["N§)
         {
         }
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : § !X§
      {
         var _loc5_:§]D§ = null;
         _loc5_ = new §]D§(this,new §'!6§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §9!L§.push(_loc5_);
         }
         else
         {
            §9!L§.splice(param4,0,_loc5_);
         }
         ++§5"U§;
         §7!g§.addChild(_loc5_.sprite);
         if(§0I§)
         {
            this.§ B§(§^!Z§.§-"'§);
         }
         return _loc5_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(§0I§)
         {
            §@"M§.§3"C§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§ !X§ = null;
         _loc2_ = §9!L§[§<"§];
         var _loc3_:Number = §;!8§ / §]"4§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§&=§.BIRD_LAUNCH_FORCE_GREEN) : Number(§&=§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§5J§ > 0)
            {
               return _loc2_.§5J§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §;!q§(param1:Number) : § !X§
      {
         var _loc2_:§ !X§ = null;
         _loc2_ = §9!L§[§<"§];
         if(_loc2_.§+"-§ < 1)
         {
            _loc2_.§+"-§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §@!?§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§#!!§)
         {
            _loc2_ = new §?q§.§ q§("MovieClip_SlingHolder")();
            setTint(_loc2_,§+"5§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §#!!§ = mLevelMain.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §&"2§ = new §'!6§.Sprite();
         var _loc1_:§ "E§ = new § "E§(§#!!§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §&"2§.addChild(_loc1_);
         §8h§ = new §'!6§.Sprite();
         §?"#§ = new §5T§(2,2,§+"5§);
         §8h§.addChild(§?"#§);
         §@"N§ = new §'!6§.Sprite();
         §"&§ = new §5T§(2,2,§+"5§);
         §@"N§.addChild(§"&§);
      }
      
      public function §6"G§() : void
      {
         this.§ !r§ = true;
         this.§^@§ = this.§^@§ || new § "E§(mLevelMain.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0).texture);
         this.§1"0§ = this.§1"0§ || new § "E§(mLevelMain.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0).texture);
         if(!this.§""M§)
         {
            this.§^@§.x = (§4!K§ - 3.5) / §'!S§.§2"<§;
            this.§^@§.y = (§7!#§ - 5.75) / §'!S§.§2"<§;
         }
         this.§1"0§.x = this.§^@§.x + 0.95 / §'!S§.§2"<§;
         this.§1"0§.y = this.§^@§.y + 0.6 / §'!S§.§2"<§;
         this.§1"0§.pivotX = -50;
         this.§1"0§.pivotY = -32;
         §?!T§.addChild(this.§1"0§);
         §?!T§.addChild(this.§^@§);
         §+C§ = true;
         this.§""0§ = (180 - §[h§) / (180 / Math.PI);
         var _loc1_:Number = this.§^@§.x * §'!S§.§2"<§;
         var _loc2_:Number = this.§^@§.y * §'!S§.§2"<§;
         this.§=a§(_loc1_,_loc2_);
         §2"L§.§"x§(_loc1_,_loc2_,20,10,10);
      }
      
      private function §?! §() : void
      {
         var _loc1_:Number = NaN;
         if(this.§ !r§)
         {
            _loc1_ = §[h§ - this.§""0§;
            if(Math.abs(_loc1_) < 0.5)
            {
               this.§""0§ = §[h§;
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
               this.§""0§ += _loc1_ / 20;
            }
            this.§1"0§.rotation = (180 - this.§""0§) / (180 / Math.PI);
            §+C§ = true;
         }
      }
      
      private function §-C§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.§7B§)
         {
            this.§7B§.reset();
         }
         else
         {
            _loc1_ = -15;
            _loc2_ = -13;
            _loc3_ = !!§0I§ ? Number(this.§9!6§.width) : Number(§7]§.width);
            _loc4_ = !!§0I§ ? Number(this.§9!6§.height) : Number(§7]§.height);
            _loc5_ = §4!K§ / §'!S§.§2"<§ + _loc3_ / 2 + _loc1_;
            _loc6_ = §7!#§ / §'!S§.§2"<§ + _loc4_ + _loc2_;
            this.§7B§ = new §1!"§("POWERUP_SLINGSHOT_LIGHTNING",§?!T§,§3![§,_loc5_,_loc6_,50);
         }
         §+C§ = true;
      }
      
      public function §=a§(param1:Number, param2:Number) : void
      {
         param1 /= §'!S§.§2"<§;
         param2 /= §'!S§.§2"<§;
         if(this.§2"F§)
         {
            this.§2"F§.reset();
            this.§2"F§.setPosition(param1,param2);
         }
         else
         {
            this.§2"F§ = new §1!"§("BLAST_EFFECT",§?!T§,mLevelMain,param1,param2,50);
            this.§2"F§.§%"-§(true);
         }
         §+C§ = true;
      }
      
      public function §&"F§() : Boolean
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc1_:Number = §4!K§ / §'!S§.§2"<§;
         var _loc2_:Number = §7!#§ / §'!S§.§2"<§;
         var _loc3_:int = 20 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc10_ = Math.random() * (Math.PI * 2);
            _loc11_ = 0.5 * 10 + 10 * (Math.random() * 0.5);
            §?l§.§'h§.particles.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,§4!K§,§7!#§,1250,"",§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc11_ * Math.cos(_loc10_) * 1,-_loc11_ * Math.sin(_loc10_) * 1,5,_loc11_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         var _loc7_:§]D§ = null;
         if(§9!L§.length > 0)
         {
            _loc7_ = §9!L§[§<"§] as §]D§;
            §9!L§.splice(§<"§,1);
         }
         var _loc8_:§ !X§ = §?l§.§'h§.slingshot.§<-§("BIRD_WINGMAN",§4!K§ + 0.7,§7!#§ + 0.1,0);
         §@"M§.§3"C§("Bird_Wingman_Appear","ChannelWingman");
         (§?l§.§'h§.getController() as §4!`§).§=!q§();
         (§?l§.§'h§ as §%6§).§+"3§.§0-§ = true;
         var _loc9_:§="@§;
         (_loc9_ = §?l§.§'h§.particles as §="@§).§?7§(§4!K§,§7!#§);
         §+C§ = true;
         if(_loc7_ && _loc7_.§;"F§)
         {
            _loc7_ = null;
            return true;
         }
         _loc7_ = null;
         return false;
      }
      
      private function §2"=§(param1:§1!"§, param2:Number) : void
      {
         if(param1 && param1.update(param2))
         {
            §+C§ = true;
         }
      }
   }
}
