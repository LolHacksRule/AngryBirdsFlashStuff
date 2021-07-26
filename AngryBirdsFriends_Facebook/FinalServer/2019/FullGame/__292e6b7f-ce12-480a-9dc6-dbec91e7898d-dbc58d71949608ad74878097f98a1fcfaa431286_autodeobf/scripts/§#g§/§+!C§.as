package §#g§
{
   import § !N§.§2m§;
   import § !N§.§]!#§;
   import §!"b§.b2DistanceJoint;
   import §!"b§.b2MouseJoint;
   import §+!Y§.§3!B§;
   import §+!Y§.§="S§;
   import §+!Y§.§[@§;
   import §,#,§.§=#o§;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §-#]§.Texture;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §4§.§`3§;
   import §6#h§.§'!t§;
   import §7"T§.§#"^§;
   import §7"T§.§4!L§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §7"o§.§>"r§;
   import §7#$§.§?# §;
   import §8#K§.§&2§;
   import §9T§.§ "T§;
   import §9T§.§!#;§;
   import §;!=§.§ !2§;
   import §;!=§.§ !i§;
   import §;!=§.§&"^§;
   import §;!=§.§>"G§;
   import §;!=§.§?!F§;
   import §>#q§.§^!"§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   
   public class §+!C§ extends §^"R§
   {
      
      public static const §&"#§:int = 777;
      
      protected static const §,"<§:uint = 7602176;
      
      protected static var §%$=§:Texture;
      
      public static var §3#&§:int = 8;
      
      public static var §@!s§:int = 5;
      
      public static var §4"o§:int = 1;
      
      public static var §]!=§:Number = 1;
      
      public static var §83§:Number = 180;
      
      public static var dynamic:Number = 70;
      
      public static var §!#@§:Number = 0;
      
      public static var §["t§:Number = 0;
       
      
      private var §%"8§:Point;
      
      private var §3"d§:§!#o§;
      
      private var §%$B§:Vector.<§!#o§>;
      
      private var §>!W§:§!#o§;
      
      private var §5f§:§!#o§;
      
      private var §9!0§:Boolean;
      
      private var §3!&§:DisplayObject;
      
      private var §%!o§:DisplayObject;
      
      private var §=U§:Number;
      
      private var §`"#§:§3!B§;
      
      private var § "E§:Boolean = false;
      
      private var §!$!§:Boolean = false;
      
      private var §4R§:§>"G§;
      
      private var §>"%§:§ !2§;
      
      private var §3#'§:§ !2§;
      
      private var §&!!§:b2MouseJoint;
      
      private var §!!Q§:§]!#§;
      
      private var §0#o§:Vector.<§>"G§>;
      
      private var §3!f§:Boolean;
      
      private var §<"1§:Boolean;
      
      private var §1!v§:int = 5;
      
      private var §&"1§:int = 8;
      
      private var §;H§:int = 85;
      
      private var §'P§:int = 98;
      
      private var §^! §:Point;
      
      private var §7$1§:Number;
      
      private var §[H§:Number;
      
      private var §4#r§:Number;
      
      public function §+!C§(param1:§8#3§, param2:§?# §, param3:Sprite)
      {
         this.§0#o§ = new Vector.<§>"G§>();
         super(param1,param2,param3);
         this.§"!5§(§[@§.§[#P§(§="S§.§2!c§()),true);
         this.§,#a§ = false;
         if(mBirds.length > 1)
         {
            this.§%"8§ = new Point(mBirds[1].originalX,mBirds[1].originalY - (1.8 - mBirds[1].radius));
         }
         else if(mBirds.length > 0)
         {
            this.§%"8§ = new Point(mBirds[0].originalX,mBirds[0].originalY - (1.8 - mBirds[0].radius));
         }
         else
         {
            this.§%"8§ = new Point(x,y + 7);
         }
      }
      
      public function get §,#a§() : Boolean
      {
         return this.§!$!§;
      }
      
      public function set §,#a§(param1:Boolean) : void
      {
         this.§!$!§ = param1;
      }
      
      public function get §9U§() : Boolean
      {
         return this.§ "E§;
      }
      
      public function set §9U§(param1:Boolean) : void
      {
         var _loc2_:§7b§ = null;
         if(this.§ "E§ == param1)
         {
            return;
         }
         this.§ "E§ = param1;
         if(this.§ "E§)
         {
            _loc2_ = this.getSlingshotAnimation();
            while(§&"h§.numChildren > 0)
            {
               §&"h§.removeChildAt(0);
            }
            §#$@§ = _loc2_.getFrame(0,§#$@§);
            §7#w§ = _loc2_.getFrame(1,§7#w§);
            §&"h§.addChild(§#$@§);
            §&"h§.addChild(§;#h§);
            §&"h§.addChild(§`" §);
            §&"h§.addChild(§-$6§);
            §&"h§.addChild(§8!%§);
            §&"h§.addChild(§7#w§);
            §+#9§ = true;
            this.§,#a§ = false;
         }
      }
      
      override protected function getSlingshotAnimation() : §7b§
      {
         if(this.§ "E§)
         {
            return §9!E§.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         if(this.§`"#§)
         {
            return §9!E§.animationManager.getAnimation(this.§`"#§.§6#'§);
         }
         return super.getSlingshotAnimation();
      }
      
      public function §"!5§(param1:§3!B§, param2:Boolean, param3:Boolean = false) : void
      {
         var _loc4_:§?'§ = null;
         if(!param2 && (this.§`"#§ && this.§`"#§.§8t§ == param1.§8t§))
         {
            return;
         }
         this.§`"#§ = param1;
         if(!param2)
         {
            §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§ "P§,[this.§`"#§.§8t§],true);
         }
         for each(_loc4_ in mBirds)
         {
            _loc4_.§+"s§ = this.§`"#§;
         }
         §9!E§.camera.setAction(!!param3 ? int(§`3§.§`#[§) : int(§`3§.§@>§));
         var _loc5_:§7b§ = §9!E§.animationManager.getAnimation(this.§`"#§.§6#'§);
         §#$@§ = _loc5_.getFrame(0,§#$@§);
         §7#w§ = _loc5_.getFrame(1,§7#w§);
         this.§9!m§(this.§,#a§);
         §#$@§.visible = §7#w§.visible = true;
         this.§7#h§();
         if(this.§`"#§ == §[@§.§;"c§)
         {
            this.§^!2§();
         }
         if((§,!M§ as §!P§).§]!_§)
         {
            (§,!M§ as §!P§).§]!_§.§<#D§();
         }
         if(!param2)
         {
            this.§5'§(this.§`"#§.§&"o§,this.§`"#§.particleName,this.§`"#§.§3_§);
            if(!§]$?§.isPaused)
            {
               § b§.playSound(this.§`"#§.soundName,"ChannelPowerups");
            }
         }
         if(this.§9!0§)
         {
            this.§`"?§();
         }
         this.updateAnimations(0);
      }
      
      private function §^!2§() : void
      {
         var _loc3_:§>"G§ = null;
         var _loc5_:§ !2§ = null;
         var _loc6_:§2m§ = null;
         var _loc7_:§]!#§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:§2m§ = null;
         var _loc11_:§]!#§ = null;
         var _loc12_:§2m§ = null;
         var _loc13_:§]!#§ = null;
         var _loc14_:§2m§ = null;
         var _loc15_:§]!#§ = null;
         §7#w§.visible = false;
         §#$@§.visible = false;
         §#$@§.width = 1;
         §#$@§.height = 220;
         var _loc1_:Array = [0.275,2.5,4.5,6.3,7.5,9.5];
         var _loc2_:int = -1;
         var _loc4_:int = 1;
         while(_loc4_ <= 6)
         {
            (_loc5_ = §9!E§.levelObjects.addObject("SLING_SHOT_TREE_PART_" + _loc4_,§&$'§,7.5 + §<#-§ - _loc1_[_loc4_ - 1],0,§ !i§.ID_NEXT_FREE,false,false,false) as § !2§).getBody().GetDefinition().linearDamping = 7;
            _loc5_.getBody().GetDefinition().angularDamping = 0.1;
            _loc5_.getBody().SetAwake(true);
            this.§0#o§.push(_loc5_);
            if(_loc2_ == -1)
            {
               _loc2_ = _loc5_.id;
               _loc3_ = _loc5_;
            }
            else
            {
               if(_loc4_ == 5)
               {
                  this.§>"%§ = _loc5_;
               }
               if(_loc4_ == 6)
               {
                  this.§3#'§ = _loc5_;
                  (_loc6_ = new §2m§(§2m§.§'v§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0))).breakable = false;
                  _loc6_.coordinateType = 2;
                  _loc6_.§]!7§ = true;
                  _loc7_ = (§9!E§.levelObjects as §&"^§).§'#k§(_loc6_);
               }
               else
               {
                  _loc8_ = -0.3 * Math.PI;
                  _loc9_ = 0.3 * Math.PI;
                  (_loc10_ = new §2m§(§2m§.§@!I§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0),false,true,_loc8_,_loc9_,false)).coordinateType = 2;
                  _loc10_.breakable = false;
                  _loc10_.§]!7§ = true;
                  _loc11_ = (§9!E§.levelObjects as §&"^§).§'#k§(_loc10_);
                  (_loc12_ = new §2m§(§2m§.§^$$§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x + 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc12_.frequency = §83§ * 0.1;
                  _loc12_.dampingRatio = dynamic * 0.1;
                  _loc12_.breakable = false;
                  _loc12_.§]!7§ = true;
                  _loc13_ = (§9!E§.levelObjects as §&"^§).§'#k§(_loc12_);
                  (_loc14_ = new §2m§(§2m§.§^$$§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x - 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc14_.frequency = §83§ * 0.1;
                  _loc14_.dampingRatio = dynamic * 0.1;
                  _loc14_.breakable = false;
                  _loc14_.§]!7§ = true;
                  _loc15_ = (§9!E§.levelObjects as §&"^§).§'#k§(_loc14_);
               }
               _loc2_ = _loc5_.id;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         _loc2_ = _loc5_.id;
         _loc3_ = _loc5_;
      }
      
      private function §>!>§() : void
      {
         this.§4R§ = §9!E§.levelObjects.addObject("POWERUP_TREESLING_FAKEBIRD",this.§>"%§.getBody().GetPosition().x,this.§>"%§.getBody().GetPosition().y,0,§ !i§.ID_NEXT_FREE,false,false,false) as §>"G§;
         this.§4R§.getBody().GetDefinition().linearDamping = 7;
         this.§4R§.getBody().GetDefinition().angularDamping = 0.1;
         this.§4R§.getBody().SetAwake(true);
      }
      
      private function §7#h§() : void
      {
         var _loc1_:§>"G§ = null;
         this.§3!f§ = false;
         this.§4R§ = null;
         this.§>"%§ = null;
         this.§&!!§ = null;
         this.§!!Q§ = null;
         for each(_loc1_ in this.§0#o§)
         {
            if(§9!E§.levelObjects)
            {
               §9!E§.levelObjects.removeObject(_loc1_);
            }
         }
         this.§0#o§.length = 0;
      }
      
      private function §="k§() : void
      {
         this.§>!>§();
         var _loc1_:§2m§ = new §2m§(§2m§.§^$$§,this.§4R§.id,this.§>"%§.id,new Point(0,0),new Point(0,0),false);
         _loc1_.coordinateType = 2;
         _loc1_.frequency = §!#@§;
         _loc1_.dampingRatio = §["t§;
         _loc1_.breakable = false;
         _loc1_.§]!7§ = true;
         var _loc2_:§]!#§ = (§9!E§.levelObjects as §&"^§).§'#k§(_loc1_);
         var _loc3_:§2m§ = new §2m§(§2m§.§;#W§,this.§>"%§.id,this.§4R§.id,new Point(0,0),new Point(0,0));
         _loc3_.breakable = false;
         _loc3_.§]!7§ = true;
         this.§!!Q§ = (§9!E§.levelObjects as §&"^§).§'#k§(_loc3_);
         this.§&!!§ = this.§!!Q§.§?#§ as b2MouseJoint;
         this.§4R§.getBody().SetAwake(true);
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:b2Vec2 = null;
         if((§,!M§ as §!P§).§]!_§)
         {
            if(mDragging)
            {
               if((§,!M§ as §!P§).§]!_§.§?![§)
               {
                  mDragging = false;
                  §'W§ = false;
                  §>"3§();
               }
            }
         }
         super.update(param1,param2);
         var _loc3_:§1#0§ = null;
         if(mSlingShotState == §;D§ && !this.§3!f§ && !this.§4R§ && this.§>"%§ && this.§>"%§.getBody())
         {
            this.§3!f§ = true;
            this.§<"1§ = false;
            this.§="k§();
         }
         else if(mSlingShotState == §%#I§ && !this.§<"1§)
         {
            this.§<"1§ = true;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         if(this.§4R§ && mBirds.length > 0 && mSlingShotState == §;D§)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            if(_loc3_)
            {
               _loc4_ = 0.5 * _loc3_.radius * Math.cos(this.§>"%§.§3"W§());
               _loc5_ = 0.5 * _loc3_.radius * Math.sin(this.§>"%§.§3"W§());
            }
            if(this.§&!!§)
            {
               if(mDragging)
               {
                  _loc6_ = (§]$?§.§;r§ as §'!t§).§'"N§();
                  _loc6_ = §9!E§.screenToBox2D(_loc6_.x,_loc6_.y);
                  _loc7_ = new b2Vec2(§]#L§ - mBirds[mNextBirdIndex].radius * Math.cos(§+"P§ / (180 / Math.PI)),§ o§ + mBirds[mNextBirdIndex].radius * Math.sin(§+"P§ / (180 / Math.PI)));
                  this.§&!!§.§>"b§(new b2Vec2(this.§4R§.getBody().GetPosition().x,this.§4R§.getBody().GetPosition().y));
                  this.§4R§.getBody().SetPosition(_loc7_);
               }
               else
               {
                  this.§4!8§();
               }
            }
         }
         if(mSlingShotState == §;D§ && _loc3_ && this.§>"%§ && this.§>"%§.getBody() && this.§3!f§)
         {
         }
         if(this.§`"#§ == §[@§.§;"c§)
         {
            §;$C§.y = §<#-§ / §8#3§.§2K§ + 60;
         }
      }
      
      public function §5$A§() : void
      {
         this.§9!m§(true);
         this.§["@§(§7#E§.§'"l§);
         this.§5'§("POWERUP_SLINGSHOT_LIGHTNING",null,0);
         if(this.§9!0§)
         {
            this.§`"?§();
         }
      }
      
      public function §["@§(param1:Number) : void
      {
         var _loc2_:§1#0§ = null;
         for each(_loc2_ in mBirds)
         {
            if(_loc2_.name == "BIRD_GREEN")
            {
               _loc2_.§8#T§ = param1 * §1#0§.§!!E§();
            }
            else
            {
               _loc2_.§8#T§ = param1;
            }
         }
      }
      
      protected function §9!m§(param1:Boolean = false) : void
      {
         var _loc2_:§7b§ = null;
         if(this.§`"#§)
         {
            §8#6§(this.§`"#§.§""o§,this.§`"#§.§""o§,true);
         }
         else
         {
            §8#6§();
         }
         §[+§ = !!param1 ? Number(§7#E§.§,"1§) : Number(§7#E§.§4!k§);
         this.§,#a§ = param1;
         while(§&"h§.numChildren > 0)
         {
            §&"h§.removeChildAt(0);
         }
         if(this.§`"#§ != §[@§.§;"c§)
         {
            §4!@§ = new Sprite();
            §4!@§.addChild(§#$@§);
            §4!@§.addChild(§;#h§);
            §;$C§ = new Sprite();
            §;$C§.addChild(§5T§);
            §;$C§.addChild(§8!%§);
            §;$C§.addChild(§7#w§);
         }
         if(param1)
         {
            _loc2_ = §9!E§.animationManager.getAnimation("SLING_SHOT_KINGSLING");
            §;$C§.addChild(_loc2_.getFrame(0));
         }
         §3#6§();
         §+#9§ = true;
      }
      
      override protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:int = 0;
         super.updateAnimations(param1);
         if(this.§%$B§)
         {
            _loc2_ = this.§%$B§.length - 1;
            while(_loc2_ >= 0)
            {
               if(!this.§1#H§(this.§%$B§[_loc2_],param1))
               {
                  this.§%$B§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         this.§1#H§(this.§3"d§,param1);
         this.§1#H§(this.§>!W§,param1);
         this.§1#H§(this.§5f§,param1);
         this.§8N§();
      }
      
      override public function useMightyEagle() : §1#0§
      {
         var _loc1_:§1#0§ = super.useMightyEagle();
         (_loc1_ as §?'§).§+"s§ = this.§`"#§;
         return _loc1_;
      }
      
      override protected function initializeSlingshotObject(param1:§&2§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §1#0§
      {
         return new §?'§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §1#0§
      {
         var _loc6_:§1#0§ = super.addSlingshotObject(param1,param2,param3,param4,param5);
         if(this.§,#a§)
         {
            this.§["@§(§7#E§.§'"l§);
         }
         if(§9!E§ is §!P§)
         {
            (§9!E§ as §!P§).initializeSlingshotObject(_loc6_);
         }
         return _loc6_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§,#a§)
         {
            § b§.playSound("super_shot");
         }
         else if(this.§`"#§.§&!T§)
         {
            § b§.playSound(this.§`"#§.§&!T§);
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      public function §>#+§() : Boolean
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc1_:Number = §&$'§ / §8#3§.§2K§;
         var _loc2_:Number = §<#-§ / §8#3§.§2K§;
         var _loc3_:int = 20 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc11_ = Math.random() * (Math.PI * 2);
            _loc12_ = 0.5 * 10 + 10 * (Math.random() * 0.5);
            §,!M§.particles.addParticle(§=,§.§^#Y§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,§&$'§,§<#-§,1250,"",§=,§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc12_ * Math.cos(_loc11_) * 1,-_loc12_ * Math.sin(_loc11_) * 1,5,_loc12_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         var _loc7_:§?'§ = null;
         if(mBirds.length > 0)
         {
            _loc7_ = mBirds[mNextBirdIndex] as §?'§;
            mBirds.splice(mNextBirdIndex,1);
         }
         var _loc8_:§1#0§ = this.addBirdStraightIntoSlingshot("BIRD_WINGMAN",§&$'§ + 0.7,§<#-§ + 0.1,0);
         if(this.§`"#§)
         {
            (_loc8_ as §?'§).§+"s§ = this.§`"#§;
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
         § b§.playSound("wingman_appears_slingshot","ChannelPowerups",0,1);
         (§,!M§ as §!P§).§]!_§.§,!o§ = true;
         var _loc10_:§>"r§;
         (_loc10_ = §]$?§.§2#§.particles as §>"r§).§!"=§(§&$'§,§<#-§);
         §+#9§ = true;
         if(_loc7_ && _loc7_.§=!'§)
         {
            return true;
         }
         return false;
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc2_:§1#0§ = null;
         var _loc1_:Number = super.getLaunchSpeed();
         if(mBirds.length > 0)
         {
            _loc2_ = mBirds[mNextBirdIndex];
         }
         if(_loc2_ && _loc2_.§8#T§ > 0)
         {
            _loc1_ = _loc1_ / _loc2_.§3$9§ * _loc2_.§8#T§;
         }
         return _loc1_;
      }
      
      public function §&#k§(param1:Number, param2:§!#;§) : §1#0§
      {
         var _loc3_:§1#0§ = null;
         var _loc4_:§!#;§ = null;
         if(mBirds.length > 0)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            for each(_loc4_ in § "T§.§"!K§)
            {
               if(_loc4_ == param2)
               {
                  _loc3_.§?"'§ = _loc4_.§&3§(_loc3_.name.toUpperCase());
                  _loc3_.§0#1§ = _loc4_.§%`§(_loc3_.name.toUpperCase());
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
      
      public function §`"?§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:§4!L§ = null;
         this.§9!0§ = true;
         this.§3!&§ = this.§3!&§ || §9!E§.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0,this.§3!&§);
         this.§%!o§ = this.§%!o§ || §9!E§.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0,this.§%!o§);
         if(!this.§9U§)
         {
            this.§3!&§.x = (§&$'§ - 2) / §8#3§.§2K§;
            this.§3!&§.y = (§<#-§ - 3) / §8#3§.§2K§;
         }
         this.§%!o§.x = this.§3!&§.x - 12;
         this.§%!o§.y = this.§3!&§.y - 42;
         this.§%!o§.pivotX = -50;
         this.§%!o§.pivotY = -32;
         if(this.§`"#§ != §[@§.§;"c§)
         {
            §&"h§.addChild(this.§%!o§);
            §&"h§.addChild(this.§3!&§);
            this.§=U§ = Math.PI - §+"P§ * (Math.PI / 180);
            _loc1_ = this.§3!&§.x * §8#3§.§2K§;
            _loc2_ = this.§3!&§.y * §8#3§.§2K§;
            this.§^"X§(_loc1_,_loc2_);
         }
         else
         {
            _loc3_ = §#"^§.§+!,§.getTexture("SLINGSCOPE_TREE_PART_6");
            this.§3#'§.sprite.removeChildAt(0);
            this.§3#'§.sprite.addChild(_loc3_.§="'§());
            this.§^"X§(this.§3#'§.x * §8#3§.§2K§,this.§3#'§.y * §8#3§.§2K§ - 1);
         }
         §+#9§ = true;
      }
      
      private function §8N§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§9!0§)
         {
            _loc1_ = §+"P§ * (Math.PI / 180) - this.§=U§;
            if(Math.abs(_loc1_) < 0.5 * (Math.PI / 180))
            {
               this.§=U§ = §+"P§ * (Math.PI / 180);
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
               this.§=U§ += _loc1_ / 20;
            }
            this.§%!o§.rotation = Math.PI - this.§=U§;
            §+#9§ = true;
         }
      }
      
      private function §5'§(param1:String, param2:String, param3:int) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc6_:Number = §#$@§.width;
         var _loc7_:Number = §#$@§.height;
         var _loc8_:Number = §&$'§ / §8#3§.§2K§ + _loc6_ / 2 + -15;
         var _loc9_:Number = §<#-§ / §8#3§.§2K§ + _loc7_ + -13;
         if(!this.§%$B§)
         {
            this.§%$B§ = new Vector.<§!#o§>();
         }
         this.§%$B§.push(new §!#o§(param1,§&"h§,§,!M§,_loc8_,_loc9_,50));
         §+#9§ = true;
         if(param2 && param3 > 0)
         {
            _loc10_ = 10 + Math.random() * 5;
            _loc11_ = 10;
            _loc12_ = 0;
            while(_loc12_ < _loc10_)
            {
               _loc13_ = 360 / _loc10_ * (_loc12_ + 1);
               _loc14_ = param2 + int(Math.random() * param3 + 1);
               §9!E§.particles.addSimpleParticle(_loc14_,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,§9!E§.slingshot.x,§9!E§.slingshot.y + Math.random() * 6,700 + Math.random() * 500,"",§=,§.§5! §,_loc11_ * Math.cos(_loc13_),-_loc11_ * Math.sin(_loc13_),15,Math.random() * 60,0.5 + Math.random() * 1);
               _loc12_++;
            }
         }
      }
      
      public function §^"X§(param1:Number, param2:Number) : void
      {
         param1 /= §8#3§.§2K§;
         param2 /= §8#3§.§2K§;
         if(this.§3"d§)
         {
            this.§3"d§.reset();
            this.§3"d§.setPosition(param1,param2);
         }
         else
         {
            this.§3"d§ = new §!#o§("BLAST_EFFECT",§&"h§,§9!E§,param1,param2,50);
            this.§3"d§.§2i§(true);
         }
         §+#9§ = true;
      }
      
      public function §9"@§(param1:Number, param2:Number) : void
      {
         param1 /= §8#3§.§2K§;
         param2 /= §8#3§.§2K§;
         if(this.§>!W§)
         {
            this.§>!W§.reset();
            this.§>!W§.setPosition(param1,param2);
         }
         else
         {
            this.§>!W§ = new §!#o§("POWERUP_POWERPOTION_ACTIVATION",§&"h§,§9!E§,param1,param2,50);
            this.§>!W§.§2i§(true);
         }
         §+#9§ = true;
      }
      
      public function §,$=§(param1:Number, param2:Number) : void
      {
         param1 /= §8#3§.§2K§;
         param2 /= §8#3§.§2K§;
         if(this.§5f§)
         {
            this.§5f§.reset();
            this.§5f§.setPosition(param1,param2);
         }
         else
         {
            this.§5f§ = new §!#o§("POWERUP_BOOMBOX_ACTIVATION",§&"h§,§9!E§,param1,param2,50);
            this.§5f§.§2i§(true);
         }
         §+#9§ = true;
      }
      
      private function §1#H§(param1:§!#o§, param2:Number) : Boolean
      {
         if(param1 && param1.update(param2))
         {
            §+#9§ = true;
            return true;
         }
         return false;
      }
      
      override protected function shootBird() : void
      {
         if(this.§`"#§ == §[@§.§;"c§)
         {
            this.§4!8§();
         }
         super.shootBird();
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         if(this.§`"#§ == §[@§.§;"c§)
         {
            this.§^! § = getPosition();
            this.§7$1§ = this.getLaunchSpeed();
            this.§[H§ = §>"8§();
            this.§4#r§ = §+"P§;
            this.§0!8§();
         }
      }
      
      private function §4!8§() : void
      {
         this.§3!f§ = false;
         if(this.§4R§)
         {
            §9!E§.levelObjects.removeObject(this.§4R§);
            this.§4R§ = null;
         }
      }
      
      private function §0!8§() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§1#0§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:String = null;
         var _loc16_:§?!F§ = null;
         var _loc1_:Number = this.§[H§ * (this.§'P§ - this.§;H§) / 100;
         var _loc2_:Number = this.§[H§ * this.§;H§ / 100;
         var _loc3_:int = 1;
         while(_loc3_ <= this.§1!v§)
         {
            _loc4_ = this.§^! §.x;
            _loc5_ = this.§^! §.y;
            _loc7_ = (_loc6_ = mBirds[mNextBirdIndex]).radius + 0.1;
            _loc8_ = this.§4#r§;
            _loc9_ = _loc7_ * Math.cos(_loc8_ * (Math.PI / 180));
            _loc10_ = _loc7_ * Math.sin(_loc8_ * (Math.PI / 180));
            _loc4_ += _loc9_;
            _loc5_ -= _loc10_;
            _loc11_ = _loc2_ + Math.random() * _loc1_;
            _loc12_ = this.§4#r§ + ((this.§&"1§ >> 1) - this.§&"1§ / this.§1!v§ * _loc3_);
            _loc13_ = -this.§7$1§ * _loc11_ * Math.cos(_loc12_ / (180 / Math.PI));
            _loc14_ = this.§7$1§ * _loc11_ * Math.sin(_loc12_ / (180 / Math.PI));
            _loc15_ = §?!F§.§7!l§();
            (_loc16_ = (§9!E§.levelObjects as §&"^§).addObject(_loc15_,_loc4_,_loc5_,this.§4#r§,§ !i§.ID_NEXT_FREE,false,false,false,1) as §?!F§).§0"y§(new b2Vec2(_loc13_,_loc14_),false,true);
            _loc3_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§7#h§();
         super.dispose();
      }
      
      public function get §4$@§() : §3!B§
      {
         return this.§`"#§;
      }
      
      public function §4!5§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>"G§ = null;
         var _loc4_:b2DistanceJoint = null;
         §83§ = param1;
         dynamic = param2;
         for each(_loc3_ in this.§0#o§)
         {
            if(_loc3_.getBody().GetJointList() && _loc3_.getBody().GetJointList().joint && _loc3_.getBody().GetJointList().joint is b2DistanceJoint)
            {
               (_loc4_ = b2DistanceJoint(_loc3_.getBody().GetJointList().joint)).§;$%§(param1);
               _loc4_.§8o§(param2);
            }
         }
      }
      
      public function get §^!p§() : §>"G§
      {
         return this.§4R§;
      }
      
      public function get §+#2§() : § !2§
      {
         return this.§>"%§;
      }
      
      override protected function playStretchSound() : void
      {
         § b§.playSound(this.§`"#§.§[#B§);
      }
      
      override public function setSlingShotState(param1:int) : void
      {
         if(mSlingShotState == §&"#§ && param1 == §`#A§)
         {
            return;
         }
         super.setSlingShotState(param1);
      }
      
      override public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §1#0§
      {
         var _loc5_:§1#0§ = super.addBirdStraightIntoSlingshot(param1,param2,param3,param4);
         if(this.§`"#§)
         {
            (_loc5_ as §?'§).§+"s§ = this.§`"#§;
         }
         return _loc5_;
      }
      
      public function §>`§() : Point
      {
         return this.§%"8§;
      }
      
      override public function sortBirds() : void
      {
         super.sortBirds();
         var _loc1_:int = 0;
         while(_loc1_ < mBirds.length)
         {
            if(mBirds[_loc1_].name == "BIRD_WINGMAN")
            {
               §`" §.setChildIndex(mBirds[_loc1_].sprite,0);
               break;
            }
            _loc1_++;
         }
      }
   }
}
