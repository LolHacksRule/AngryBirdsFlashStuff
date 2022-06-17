package §?$#§
{
   import § "v§.§4$4§;
   import §""4§.Texture;
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §%$0§.§0E§;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §-"e§.§!"=§;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import §0!>§.§;#$§;
   import §5v§.b2DistanceJoint;
   import §5v§.b2MouseJoint;
   import §6!R§.b2Vec2;
   import §9#M§.§%"=§;
   import §9#M§.§'!-§;
   import §9#M§.§,`§;
   import §<"I§.§1!^§;
   import §<"I§.§<$B§;
   import §>#Y§.§,#b§;
   import §?o§.§ ^§;
   import §@!_§.§ !G§;
   import §@"v§.§0$=§;
   import §@"v§.§6$D§;
   import §^0§.§##[§;
   import §^0§.§%"^§;
   import §^0§.§3!U§;
   import §^0§.§=Q§;
   import §^0§.§`W§;
   import §`$=§.§5$E§;
   import flash.geom.Point;
   
   public class §]"]§ extends §2!"§
   {
      
      public static const §""m§:int = 777;
      
      protected static const §-"l§:uint = 7602176;
      
      protected static var §3_§:Texture;
      
      public static var §`#C§:int = 8;
      
      public static var §>!v§:int = 5;
      
      public static var §5"2§:int = 1;
      
      public static var §^#s§:Number = 1;
      
      public static var §26§:Number = 180;
      
      public static var §@"I§:Number = 70;
      
      public static var §2#a§:Number = 0;
      
      public static var §!"m§:Number = 0;
       
      
      private var §!#t§:Point;
      
      private var §-#n§:§+#-§;
      
      private var §=$@§:Vector.<§+#-§>;
      
      private var §6"1§:§+#-§;
      
      private var §@$'§:§+#-§;
      
      private var §"$1§:Boolean;
      
      private var §!`§:DisplayObject;
      
      private var §-#%§:DisplayObject;
      
      private var §3$5§:Number;
      
      private var §[#p§:§^#i§;
      
      private var §%!K§:Boolean = false;
      
      private var §`!R§:Boolean = false;
      
      private var §@"y§:§=Q§;
      
      private var §9"0§:§`W§;
      
      private var §^$2§:§`W§;
      
      private var §-"k§:b2MouseJoint;
      
      private var §;!-§:§6$D§;
      
      private var §]#A§:Vector.<§=Q§>;
      
      private var §@#r§:Boolean;
      
      private var §="#§:Boolean;
      
      private var §5#-§:int = 5;
      
      private var §&$>§:int = 8;
      
      private var §4"9§:int = 85;
      
      private var §7U§:int = 98;
      
      private var §%#K§:Point;
      
      private var § X§:Number;
      
      private var §`!l§:Number;
      
      private var §@"D§:Number;
      
      public function §]"]§(param1:§<d§, param2:§ ^§, param3:Sprite)
      {
         this.§]#A§ = new Vector.<§=Q§>();
         super(param1,param2,param3);
         this.§;!d§(§[9§.§%"%§(§!"=§.§!$#§()),true);
         this.§+#,§ = false;
         if(mBirds.length > 1)
         {
            this.§!#t§ = new Point(mBirds[1].originalX,mBirds[1].originalY - (1.8 - mBirds[1].radius));
         }
         else if(mBirds.length > 0)
         {
            this.§!#t§ = new Point(mBirds[0].originalX,mBirds[0].originalY - (1.8 - mBirds[0].radius));
         }
         else
         {
            this.§!#t§ = new Point(x,y + 7);
         }
      }
      
      public function get §+#,§() : Boolean
      {
         return this.§`!R§;
      }
      
      public function set §+#,§(param1:Boolean) : void
      {
         this.§`!R§ = param1;
      }
      
      public function get §-#§() : Boolean
      {
         return this.§%!K§;
      }
      
      public function set §-#§(param1:Boolean) : void
      {
         var _loc2_:§,`§ = null;
         if(this.§%!K§ == param1)
         {
            return;
         }
         this.§%!K§ = param1;
         if(this.§%!K§)
         {
            _loc2_ = this.getSlingshotAnimation();
            while(§]#+§.numChildren > 0)
            {
               §]#+§.removeChildAt(0);
            }
            §0#"§ = _loc2_.getFrame(0,§0#"§);
            §+^§ = _loc2_.getFrame(1,§+^§);
            §]#+§.addChild(§0#"§);
            §]#+§.addChild(§7!w§);
            §]#+§.addChild(§[!M§);
            §]#+§.addChild(§,!h§);
            §]#+§.addChild(§[#"§);
            §]#+§.addChild(§+^§);
            §;!'§ = true;
            this.§+#,§ = false;
         }
      }
      
      override protected function getSlingshotAnimation() : §,`§
      {
         if(this.§%!K§)
         {
            return § 6§.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         if(this.§[#p§)
         {
            return § 6§.animationManager.getAnimation(this.§[#p§.§6!G§);
         }
         return super.getSlingshotAnimation();
      }
      
      public function §;!d§(param1:§^#i§, param2:Boolean, param3:Boolean = false) : void
      {
         if(!param2 && (this.§[#p§ && this.§[#p§.§=#@§ == param1.§=#@§))
         {
            return;
         }
         this.§[#p§ = param1;
         if(!param2)
         {
            §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§""C§(§ !G§.§!"J§,[this.§[#p§.§=#@§],true);
         }
         var _loc6_:int = 0;
         var _loc7_:* = mBirds;
         while(§§hasnext(_loc7_,_loc6_))
         {
         }
         § 6§.camera.setAction(!!param3 ? int(§5$E§.§[!I§) : int(§5$E§.§5L§));
         var _loc5_:§,`§ = § 6§.animationManager.getAnimation(this.§[#p§.§6!G§);
         §0#"§ = _loc5_.getFrame(0,§0#"§);
         §+^§ = _loc5_.getFrame(1,§+^§);
         this.§;$§(this.§+#,§);
         §0#"§.visible = §+^§.visible = true;
         this.§2,§();
         if(this.§[#p§ == §[9§.§%"<§)
         {
            this.§`x§();
         }
         if((§'"&§ as §^#j§).§'#>§)
         {
            (§'"&§ as §^#j§).§'#>§.§>#E§();
         }
         if(!param2)
         {
            this.§?""§(this.§[#p§.§6!S§,this.§[#p§.particleName,this.§[#p§.§^!y§);
            if(!§+!p§.isPaused)
            {
               §4$4§.playSound(this.§[#p§.soundName,"ChannelPowerups");
            }
         }
         if(this.§"$1§)
         {
            this.§;"x§();
         }
         this.updateAnimations(0);
      }
      
      private function §`x§() : void
      {
         var _loc5_:§`W§ = null;
         var _loc6_:§0$=§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:§0$=§ = null;
         var _loc12_:§0$=§ = null;
         var _loc14_:§0$=§ = null;
         §+^§.visible = false;
         §0#"§.visible = false;
         §0#"§.width = 1;
         §0#"§.height = 220;
         var _loc1_:Array = [0.275,2.5,4.5,6.3,7.5,9.5];
         var _loc2_:int = -1;
         var _loc4_:int = 1;
         while(_loc4_ <= 6)
         {
            (_loc5_ = § 6§.levelObjects.addObject("SLING_SHOT_TREE_PART_" + _loc4_,§0k§,7.5 + §@_§ - _loc1_[_loc4_ - 1],0,§%"^§.ID_NEXT_FREE,false,false,false) as §`W§).getBody().GetDefinition().linearDamping = 7;
            _loc5_.getBody().GetDefinition().angularDamping = 0.1;
            _loc5_.getBody().SetAwake(true);
            this.§]#A§.push(_loc5_);
            if(_loc2_ == -1)
            {
               _loc2_ = _loc5_.id;
               _loc5_;
            }
            else
            {
               if(_loc4_ == 5)
               {
                  this.§9"0§ = _loc5_;
               }
               if(_loc4_ == 6)
               {
                  this.§^$2§ = _loc5_;
                  (_loc6_ = new §0$=§(§0$=§.§="s§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0))).breakable = false;
                  _loc6_.coordinateType = 2;
                  _loc6_.§+;§ = true;
                  (§ 6§.levelObjects as §3!U§).§+"'§(_loc6_);
               }
               else
               {
                  _loc8_ = -0.3 * Math.PI;
                  _loc9_ = 0.3 * Math.PI;
                  (_loc10_ = new §0$=§(§0$=§.§%!A§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0),false,true,_loc8_,_loc9_,false)).coordinateType = 2;
                  _loc10_.breakable = false;
                  _loc10_.§+;§ = true;
                  (§ 6§.levelObjects as §3!U§).§+"'§(_loc10_);
                  (_loc12_ = new §0$=§(§0$=§.§`$5§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x + 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc12_.frequency = §26§ * 0.1;
                  _loc12_.dampingRatio = §@"I§ * 0.1;
                  _loc12_.breakable = false;
                  _loc12_.§+;§ = true;
                  (§ 6§.levelObjects as §3!U§).§+"'§(_loc12_);
                  (_loc14_ = new §0$=§(§0$=§.§`$5§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x - 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc14_.frequency = §26§ * 0.1;
                  _loc14_.dampingRatio = §@"I§ * 0.1;
                  _loc14_.breakable = false;
                  _loc14_.§+;§ = true;
                  (§ 6§.levelObjects as §3!U§).§+"'§(_loc14_);
               }
               _loc2_ = _loc5_.id;
               _loc5_;
            }
            _loc4_++;
         }
         _loc2_ = _loc5_.id;
         _loc5_;
      }
      
      private function §"$@§() : void
      {
         this.§@"y§ = § 6§.levelObjects.addObject("POWERUP_TREESLING_FAKEBIRD",this.§9"0§.getBody().GetPosition().x,this.§9"0§.getBody().GetPosition().y,0,§%"^§.ID_NEXT_FREE,false,false,false) as §=Q§;
         this.§@"y§.getBody().GetDefinition().linearDamping = 7;
         this.§@"y§.getBody().GetDefinition().angularDamping = 0.1;
         this.§@"y§.getBody().SetAwake(true);
      }
      
      private function §2,§() : void
      {
         var _loc1_:§=Q§ = null;
         this.§@#r§ = false;
         this.§@"y§ = null;
         this.§9"0§ = null;
         this.§-"k§ = null;
         this.§;!-§ = null;
         for each(_loc1_ in this.§]#A§)
         {
            if(§ 6§.levelObjects)
            {
               § 6§.levelObjects.removeObject(_loc1_);
            }
         }
         this.§]#A§.length = 0;
      }
      
      private function §;"G§() : void
      {
         this.§"$@§();
         var _loc1_:§0$=§ = new §0$=§(§0$=§.§`$5§,this.§@"y§.id,this.§9"0§.id,new Point(0,0),new Point(0,0),false);
         _loc1_.coordinateType = 2;
         _loc1_.frequency = §2#a§;
         _loc1_.dampingRatio = §!"m§;
         _loc1_.breakable = false;
         _loc1_.§+;§ = true;
         (§ 6§.levelObjects as §3!U§).§+"'§(_loc1_);
         var _loc3_:§0$=§ = new §0$=§(§0$=§.§7!^§,this.§9"0§.id,this.§@"y§.id,new Point(0,0),new Point(0,0));
         _loc3_.breakable = false;
         _loc3_.§+;§ = true;
         this.§;!-§ = (§ 6§.levelObjects as §3!U§).§+"'§(_loc3_);
         this.§-"k§ = this.§;!-§.§<!"§ as b2MouseJoint;
         this.§@"y§.getBody().SetAwake(true);
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:b2Vec2 = null;
         if((§'"&§ as §^#j§).§'#>§)
         {
            if(mDragging)
            {
               if((§'"&§ as §^#j§).§'#>§.§3!i§)
               {
                  mDragging = false;
                  §=";§ = false;
                  § "4§();
               }
            }
         }
         super.update(param1,param2);
         var _loc3_:§;![§ = null;
         if(mSlingShotState == §'[§ && !this.§@#r§ && !this.§@"y§ && this.§9"0§ && this.§9"0§.getBody())
         {
            this.§@#r§ = true;
            this.§="#§ = false;
            this.§;"G§();
         }
         else if(mSlingShotState == §#!9§ && !this.§="#§)
         {
            this.§="#§ = true;
         }
         if(this.§@"y§ && mBirds.length > 0 && mSlingShotState == §'[§)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            if(_loc3_)
            {
               Number(0.5 * _loc3_.radius * Math.cos(this.§9"0§.§<!C§()));
               Number(0.5 * _loc3_.radius * Math.sin(this.§9"0§.§<!C§()));
            }
            if(this.§-"k§)
            {
               if(mDragging)
               {
                  _loc6_ = (§+!p§.§-#W§ as §;#$§).§!"-§();
                  _loc6_ = § 6§.screenToBox2D(_loc6_.x,_loc6_.y);
                  _loc7_ = new b2Vec2(§>!"§ - mBirds[mNextBirdIndex].radius * Math.cos(§@"6§ / (180 / Math.PI)),§0!@§ + mBirds[mNextBirdIndex].radius * Math.sin(§@"6§ / (180 / Math.PI)));
                  this.§-"k§.§4#Q§(new b2Vec2(this.§@"y§.getBody().GetPosition().x,this.§@"y§.getBody().GetPosition().y));
                  this.§@"y§.getBody().SetPosition(_loc7_);
               }
               else
               {
                  this.§!#I§();
               }
            }
         }
         if(mSlingShotState == §'[§ && _loc3_ && this.§9"0§ && this.§9"0§.getBody() && this.§@#r§)
         {
         }
         if(this.§[#p§ == §[9§.§%"<§)
         {
            §&e§.y = §@_§ / §<d§.§6@§ + 60;
         }
      }
      
      public function §3"n§() : void
      {
         this.§;$§(true);
         this.§9"`§(§&$0§.§`P§);
         this.§?""§("POWERUP_SLINGSHOT_LIGHTNING",null,0);
         if(this.§"$1§)
         {
            this.§;"x§();
         }
      }
      
      public function §9"`§(param1:Number) : void
      {
         var _loc2_:§;![§ = null;
         for each(_loc2_ in mBirds)
         {
            if(_loc2_.name == "BIRD_GREEN")
            {
               _loc2_.§7g§ = param1 * §;![§.§%$D§();
            }
            else
            {
               _loc2_.§7g§ = param1;
            }
         }
      }
      
      protected function §;$§(param1:Boolean = false) : void
      {
         var _loc2_:§,`§ = null;
         if(this.§[#p§)
         {
            §,#$§(this.§[#p§.§0!m§,this.§[#p§.§0!m§,true);
         }
         else
         {
            §,#$§();
         }
         §`'§ = !!param1 ? Number(§&$0§.§="8§) : Number(§&$0§.§%n§);
         this.§+#,§ = param1;
         while(§]#+§.numChildren > 0)
         {
            §]#+§.removeChildAt(0);
         }
         if(this.§[#p§ != §[9§.§%"<§)
         {
            §<"G§ = new Sprite();
            §<"G§.addChild(§0#"§);
            §<"G§.addChild(§7!w§);
            §&e§ = new Sprite();
            §&e§.addChild(§-!E§);
            §&e§.addChild(§[#"§);
            §&e§.addChild(§+^§);
         }
         if(param1)
         {
            _loc2_ = § 6§.animationManager.getAnimation("SLING_SHOT_KINGSLING");
            §&e§.addChild(_loc2_.getFrame(0));
         }
         §+!j§();
         §;!'§ = true;
      }
      
      override protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:int = 0;
         super.updateAnimations(param1);
         if(this.§=$@§)
         {
            _loc2_ = this.§=$@§.length - 1;
            while(_loc2_ >= 0)
            {
               if(!this.§3"P§(this.§=$@§[_loc2_],param1))
               {
                  this.§=$@§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         this.§3"P§(this.§-#n§,param1);
         this.§3"P§(this.§6"1§,param1);
         this.§3"P§(this.§@$'§,param1);
         this.§7"J§();
      }
      
      override public function useMightyEagle() : §;![§
      {
         var _loc1_:§;![§ = super.useMightyEagle();
         (_loc1_ as §7!<§).§,'§ = this.§[#p§;
         return _loc1_;
      }
      
      override protected function initializeSlingshotObject(param1:§-"8§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §;![§
      {
         return new §7!<§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §;![§
      {
         var _loc6_:§;![§ = super.addSlingshotObject(param1,param2,param3,param4,param5);
         if(this.§+#,§)
         {
            this.§9"`§(§&$0§.§`P§);
         }
         if(§ 6§ is §^#j§)
         {
            (§ 6§ as §^#j§).initializeSlingshotObject(_loc6_);
         }
         return _loc6_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§+#,§)
         {
            §4$4§.playSound("super_shot");
         }
         else if(this.§[#p§.§2b§)
         {
            §4$4§.playSound(this.§[#p§.§2b§);
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      public function §9A§() : Boolean
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         Number(§0k§ / §<d§.§6@§);
         Number(§@_§ / §<d§.§6@§);
         var _loc3_:int = 20 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc11_ = Math.random() * (Math.PI * 2);
            _loc12_ = 0.5 * 10 + 10 * (Math.random() * 0.5);
            §'"&§.particles.addParticle(§`#I§.§5$"§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,§0k§,§@_§,1250,"",§`#I§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc12_ * Math.cos(_loc11_) * 1,-_loc12_ * Math.sin(_loc11_) * 1,5,_loc12_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         var _loc7_:§7!<§ = null;
         if(mBirds.length > 0)
         {
            _loc7_ = mBirds[mNextBirdIndex] as §7!<§;
            mBirds.splice(mNextBirdIndex,1);
         }
         var _loc8_:§;![§ = this.addBirdStraightIntoSlingshot("BIRD_WINGMAN",§0k§ + 0.7,§@_§ + 0.1,0);
         if(this.§[#p§)
         {
            (_loc8_ as §7!<§).§,'§ = this.§[#p§;
         }
         var _loc9_:int = 0;
         while(_loc9_ < mBirds.length)
         {
            if(mBirds[_loc9_] != _loc8_)
            {
               mBirds[_loc9_].animationsEnabled = true;
            }
            _loc9_++;
         }
         §4$4§.playSound("wingman_appears_slingshot","ChannelPowerups",0,1);
         (§'"&§ as §^#j§).§'#>§.§>!c§ = true;
         (§+!p§.§`?§.particles as §0E§).§^#0§(§0k§,§@_§);
         §;!'§ = true;
         if(_loc7_ && _loc7_.§;!u§)
         {
            return true;
         }
         return false;
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc2_:§;![§ = null;
         var _loc1_:Number = super.getLaunchSpeed();
         if(mBirds.length > 0)
         {
            _loc2_ = mBirds[mNextBirdIndex];
         }
         if(_loc2_ && _loc2_.§7g§ > 0)
         {
            _loc1_ = _loc1_ / _loc2_.§7z§ * _loc2_.§7g§;
         }
         return _loc1_;
      }
      
      public function §"$<§(param1:Number, param2:§1!^§) : §;![§
      {
         var _loc3_:§;![§ = null;
         var _loc4_:§1!^§ = null;
         if(mBirds.length > 0)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            for each(_loc4_ in §<$B§.§6#P§)
            {
               if(_loc4_ == param2)
               {
                  _loc3_.§&3§ = _loc4_.§<#X§(_loc3_.name.toUpperCase());
                  _loc3_.§!$&§ = _loc4_.§5#i§(_loc3_.name.toUpperCase());
                  break;
               }
            }
            _loc3_.scale = param1;
            _loc3_.sprite.scaleX = _loc3_.scale;
            _loc3_.sprite.scaleY = _loc3_.scale;
            return _loc3_;
         }
         return null;
      }
      
      public function §;"x§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:§'!-§ = null;
         this.§"$1§ = true;
         this.§!`§ = this.§!`§ || § 6§.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0,this.§!`§);
         this.§-#%§ = this.§-#%§ || § 6§.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0,this.§-#%§);
         if(!this.§-#§)
         {
            this.§!`§.x = (§0k§ - 2) / §<d§.§6@§;
            this.§!`§.y = (§@_§ - 3) / §<d§.§6@§;
         }
         this.§-#%§.x = this.§!`§.x - 12;
         this.§-#%§.y = this.§!`§.y - 42;
         this.§-#%§.pivotX = -50;
         this.§-#%§.pivotY = -32;
         if(this.§[#p§ != §[9§.§%"<§)
         {
            §]#+§.addChild(this.§-#%§);
            §]#+§.addChild(this.§!`§);
            this.§3$5§ = Math.PI - §@"6§ * (Math.PI / 180);
            _loc1_ = this.§!`§.x * §<d§.§6@§;
            _loc2_ = this.§!`§.y * §<d§.§6@§;
            this.§["&§(_loc1_,_loc2_);
         }
         else
         {
            _loc3_ = §%"=§.§3"1§.getTexture("SLINGSCOPE_TREE_PART_6");
            this.§^$2§.sprite.removeChildAt(0);
            this.§^$2§.sprite.addChild(_loc3_.§<!U§());
            this.§["&§(this.§^$2§.x * §<d§.§6@§,this.§^$2§.y * §<d§.§6@§ - 1);
         }
         §;!'§ = true;
      }
      
      private function §7"J§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§"$1§)
         {
            _loc1_ = §@"6§ * (Math.PI / 180) - this.§3$5§;
            if(Math.abs(_loc1_) < 0.5 * (Math.PI / 180))
            {
               this.§3$5§ = §@"6§ * (Math.PI / 180);
            }
            else
            {
               if(_loc1_ > Math.PI)
               {
                  _loc1_ -= Math.PI * 2;
               }
               if(_loc1_ < -Math.PI)
               {
                  _loc1_ += Math.PI * 2;
               }
               this.§3$5§ += _loc1_ / 20;
            }
            this.§-#%§.rotation = Math.PI - this.§3$5§;
            §;!'§ = true;
         }
      }
      
      private function §?""§(param1:String, param2:String, param3:int) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc6_:Number = §0#"§.width;
         var _loc7_:Number = §0#"§.height;
         var _loc8_:Number = §0k§ / §<d§.§6@§ + _loc6_ / 2 + -15;
         var _loc9_:Number = §@_§ / §<d§.§6@§ + _loc7_ + -13;
         if(!this.§=$@§)
         {
            this.§=$@§ = new Vector.<§+#-§>();
         }
         this.§=$@§.push(new §+#-§(param1,§]#+§,§'"&§,_loc8_,_loc9_,50));
         §;!'§ = true;
         if(param2 && param3 > 0)
         {
            _loc10_ = 10 + Math.random() * 5;
            _loc11_ = 10;
            _loc12_ = 0;
            while(_loc12_ < _loc10_)
            {
               _loc13_ = 360 / _loc10_ * (_loc12_ + 1);
               _loc14_ = param2 + int(Math.random() * param3 + 1);
               § 6§.particles.addSimpleParticle(_loc14_,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,§ 6§.slingshot.x,§ 6§.slingshot.y + Math.random() * 6,700 + Math.random() * 500,"",§`#I§.§"#N§,_loc11_ * Math.cos(_loc13_),-_loc11_ * Math.sin(_loc13_),15,Math.random() * 60,0.5 + Math.random() * 1);
               _loc12_++;
            }
         }
      }
      
      public function §["&§(param1:Number, param2:Number) : void
      {
         param1 /= §<d§.§6@§;
         param2 /= §<d§.§6@§;
         if(this.§-#n§)
         {
            this.§-#n§.reset();
            this.§-#n§.setPosition(param1,param2);
         }
         else
         {
            this.§-#n§ = new §+#-§("BLAST_EFFECT",§]#+§,§ 6§,param1,param2,50);
            this.§-#n§.§&#6§(true);
         }
         §;!'§ = true;
      }
      
      public function §6$,§(param1:Number, param2:Number) : void
      {
         param1 /= §<d§.§6@§;
         param2 /= §<d§.§6@§;
         if(this.§6"1§)
         {
            this.§6"1§.reset();
            this.§6"1§.setPosition(param1,param2);
         }
         else
         {
            this.§6"1§ = new §+#-§("POWERUP_POWERPOTION_ACTIVATION",§]#+§,§ 6§,param1,param2,50);
            this.§6"1§.§&#6§(true);
         }
         §;!'§ = true;
      }
      
      public function §9"+§(param1:Number, param2:Number) : void
      {
         param1 /= §<d§.§6@§;
         param2 /= §<d§.§6@§;
         if(this.§@$'§)
         {
            this.§@$'§.reset();
            this.§@$'§.setPosition(param1,param2);
         }
         else
         {
            this.§@$'§ = new §+#-§("POWERUP_BOOMBOX_ACTIVATION",§]#+§,§ 6§,param1,param2,50);
            this.§@$'§.§&#6§(true);
         }
         §;!'§ = true;
      }
      
      private function §3"P§(param1:§+#-§, param2:Number) : Boolean
      {
         if(param1 && param1.update(param2))
         {
            §;!'§ = true;
            return true;
         }
         return false;
      }
      
      override protected function shootBird() : void
      {
         if(this.§[#p§ == §[9§.§%"<§)
         {
            this.§!#I§();
         }
         super.shootBird();
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         if(this.§[#p§ == §[9§.§%"<§)
         {
            this.§%#K§ = getPosition();
            this.§ X§ = this.getLaunchSpeed();
            this.§`!l§ = §<";§();
            this.§@"D§ = §@"6§;
            this.§do§();
         }
      }
      
      private function §!#I§() : void
      {
         this.§@#r§ = false;
         if(this.§@"y§)
         {
            § 6§.levelObjects.removeObject(this.§@"y§);
            this.§@"y§ = null;
         }
      }
      
      private function §do§() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:String = null;
         var _loc1_:Number = this.§`!l§ * (this.§7U§ - this.§4"9§) / 100;
         var _loc2_:Number = this.§`!l§ * this.§4"9§ / 100;
         var _loc3_:int = 1;
         while(_loc3_ <= this.§5#-§)
         {
            _loc4_ = this.§%#K§.x;
            _loc5_ = this.§%#K§.y;
            _loc7_ = mBirds[mNextBirdIndex].radius + 0.1;
            _loc8_ = this.§@"D§;
            _loc9_ = _loc7_ * Math.cos(_loc8_ * (Math.PI / 180));
            _loc10_ = _loc7_ * Math.sin(_loc8_ * (Math.PI / 180));
            _loc4_ += _loc9_;
            _loc5_ -= _loc10_;
            _loc11_ = _loc2_ + Math.random() * _loc1_;
            _loc12_ = this.§@"D§ + ((this.§&$>§ >> 1) - this.§&$>§ / this.§5#-§ * _loc3_);
            _loc13_ = -this.§ X§ * _loc11_ * Math.cos(_loc12_ / (180 / Math.PI));
            _loc14_ = this.§ X§ * _loc11_ * Math.sin(_loc12_ / (180 / Math.PI));
            _loc15_ = §##[§.§4#S§();
            ((§ 6§.levelObjects as §3!U§).addObject(_loc15_,_loc4_,_loc5_,this.§@"D§,§%"^§.ID_NEXT_FREE,false,false,false,1) as §##[§).§+!!§(new b2Vec2(_loc13_,_loc14_),false,true);
            _loc3_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§2,§();
         super.dispose();
      }
      
      public function get §#"'§() : §^#i§
      {
         return this.§[#p§;
      }
      
      public function §`!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:§=Q§ = null;
         var _loc4_:b2DistanceJoint = null;
         §26§ = param1;
         §@"I§ = param2;
         for each(_loc3_ in this.§]#A§)
         {
            if(_loc3_.getBody().GetJointList() && _loc3_.getBody().GetJointList().joint && _loc3_.getBody().GetJointList().joint is b2DistanceJoint)
            {
               (_loc4_ = b2DistanceJoint(_loc3_.getBody().GetJointList().joint)).§#",§(param1);
               _loc4_.§4#+§(param2);
            }
         }
      }
      
      public function get §`# §() : §=Q§
      {
         return this.§@"y§;
      }
      
      public function get §4U§() : §`W§
      {
         return this.§9"0§;
      }
      
      override protected function playStretchSound() : void
      {
         §4$4§.playSound(this.§[#p§.§7!6§);
      }
      
      override public function setSlingShotState(param1:int) : void
      {
         if(mSlingShotState == §""m§ && param1 == §1#%§)
         {
            return;
         }
         super.setSlingShotState(param1);
      }
      
      override public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §;![§
      {
         var _loc5_:§;![§ = super.addBirdStraightIntoSlingshot(param1,param2,param3,param4);
         if(this.§[#p§)
         {
            (_loc5_ as §7!<§).§,'§ = this.§[#p§;
         }
         return _loc5_;
      }
      
      public function §3!y§() : Point
      {
         return this.§!#t§;
      }
      
      override public function sortBirds() : void
      {
         super.sortBirds();
         var _loc1_:int = 0;
         while(_loc1_ < mBirds.length)
         {
            if(mBirds[_loc1_].name == "BIRD_WINGMAN")
            {
               §[!M§.setChildIndex(mBirds[_loc1_].sprite,0);
               break;
            }
            _loc1_++;
         }
      }
   }
}
