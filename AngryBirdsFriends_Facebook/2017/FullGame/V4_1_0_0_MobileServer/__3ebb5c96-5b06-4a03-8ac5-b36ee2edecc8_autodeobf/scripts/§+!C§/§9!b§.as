package §+!C§
{
   import §!@§.§,!z§;
   import §%!9§.b2Vec2;
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §&"J§.§`]§;
   import §-"+§.Texture;
   import §1#W§.§!#&§;
   import §3!U§.b2DistanceJoint;
   import §3!U§.b2MouseJoint;
   import §6"r§.§!#A§;
   import §6$"§.§ #F§;
   import §6$"§.§4#s§;
   import §7!j§.§'#'§;
   import §7!j§.§'0§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §9$<§.§-t§;
   import §;P§.§-#b§;
   import §;P§.§super§;
   import §=#C§.§1"r§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import §>!5§.§ ",§;
   import §>!5§.§0W§;
   import §>!5§.§6#-§;
   import §>!5§.§<j§;
   import §>!5§.§^"9§;
   import §@#§.§]#B§;
   import §["-§.§;#>§;
   import §^$1§.§2"^§;
   import §^$1§.§6#J§;
   import §^$1§.§7"6§;
   import flash.geom.Point;
   
   public class §9!b§ extends §]#b§
   {
      
      public static const §`D§:int = 777;
      
      protected static const §^w§:uint = 7602176;
      
      protected static var §#"=§:Texture;
      
      public static var §2#`§:int = 8;
      
      public static var §2!D§:int = 5;
      
      public static var §9#y§:int = 1;
      
      public static var §=,§:Number = 1;
      
      public static var §2#m§:Number = 180;
      
      public static var §`!b§:Number = 70;
      
      public static var §!X§:Number = 0;
      
      public static var §`#2§:Number = 0;
       
      
      private var §%!i§:§ "#§;
      
      private var §6$-§:Vector.<§ "#§>;
      
      private var §7#,§:§ "#§;
      
      private var §@#N§:Boolean;
      
      private var §2#p§:DisplayObject;
      
      private var §""]§:DisplayObject;
      
      private var §?K§:Number;
      
      private var §6$+§:§6!u§;
      
      private var §5!b§:Boolean = false;
      
      private var §="Z§:Boolean = false;
      
      private var §+$$§:§^"9§;
      
      private var §-#0§:§0W§;
      
      private var §@"`§:§0W§;
      
      private var §##z§:b2MouseJoint;
      
      private var §""c§:§4#s§;
      
      private var §9"v§:Vector.<§^"9§>;
      
      private var §%#R§:Boolean;
      
      private var §-#1§:Boolean;
      
      private var §4! §:int = 5;
      
      private var §["j§:int = 8;
      
      private var §##U§:int = 85;
      
      private var §"#P§:int = 98;
      
      private var §3"Q§:Point;
      
      private var §["f§:Number;
      
      private var §"#3§:Number;
      
      private var §7!D§:Number;
      
      public function §9!b§(param1:§!!S§, param2:§]#B§, param3:Sprite)
      {
         this.§9"v§ = new Vector.<§^"9§>();
         super(param1,param2,param3);
         this.§ 7§(§7"G§.§-o§(§1"r§.§,#8§()),true);
         this.§<#p§ = false;
      }
      
      public function get §<#p§() : Boolean
      {
         return this.§="Z§;
      }
      
      public function set §<#p§(param1:Boolean) : void
      {
         this.§="Z§ = param1;
      }
      
      public function get §4u§() : Boolean
      {
         return this.§5!b§;
      }
      
      public function set §4u§(param1:Boolean) : void
      {
         var _loc2_:§8#B§ = null;
         if(this.§5!b§ == param1)
         {
            return;
         }
         this.§5!b§ = param1;
         if(this.§5!b§)
         {
            _loc2_ = this.getSlingshotAnimation();
            while(§'$&§.numChildren > 0)
            {
               §'$&§.removeChildAt(0);
            }
            §3"L§ = _loc2_.getFrame(0,§3"L§);
            §8!n§ = _loc2_.getFrame(1,§8!n§);
            §'$&§.addChild(§3"L§);
            §'$&§.addChild(§-"l§);
            §'$&§.addChild(§]§);
            §'$&§.addChild(§;#l§);
            §'$&§.addChild(§9e§);
            §'$&§.addChild(§8!n§);
            §["S§ = true;
            this.§<#p§ = false;
         }
      }
      
      override protected function getSlingshotAnimation() : §8#B§
      {
         if(this.§5!b§)
         {
            return §`=§.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         if(this.§6$+§)
         {
            return §`=§.animationManager.getAnimation(this.§6$+§.§&!9§);
         }
         return super.getSlingshotAnimation();
      }
      
      public function § 7§(param1:§6!u§, param2:Boolean, param3:Boolean = false) : void
      {
         var _loc4_:§@#]§ = null;
         if(!param2 && (this.§6$+§ && this.§6$+§.§?"9§ == param1.§?"9§))
         {
            return;
         }
         this.§6$+§ = param1;
         if(!param2)
         {
            §`]§(AngryBirdsBase.singleton.dataModel).§ in§.§?!;§(§,!z§.§]#t§,[this.§6$+§.§?"9§],true);
         }
         for each(_loc4_ in mBirds)
         {
            _loc4_.§0"4§ = this.§6$+§;
         }
         §`=§.camera.setAction(!!param3 ? int(§-t§.§-"e§) : int(§-t§.§ v§));
         var _loc5_:§8#B§ = §`=§.animationManager.getAnimation(this.§6$+§.§&!9§);
         §3"L§ = _loc5_.getFrame(0,§3"L§);
         §8!n§ = _loc5_.getFrame(1,§8!n§);
         this.§'"!§(this.§<#p§);
         §3"L§.visible = §8!n§.visible = true;
         this.§0#Q§();
         if(this.§6$+§ == §7"G§.§1d§)
         {
            this.§@"n§();
         }
         if((§"!!§ as §#!L§).§1"-§)
         {
            (§"!!§ as §#!L§).§1"-§.§%%§();
         }
         if(!param2)
         {
            this.§&"5§(this.§6$+§.§]$!§,this.§6$+§.§'"<§,this.§6$+§.§2&§);
            if(!§!#A§.isPaused)
            {
               §!#&§.playSound(this.§6$+§.soundName,"ChannelPowerups");
            }
         }
         if(this.§@#N§)
         {
            this.§7#2§();
         }
         this.updateAnimations(0);
      }
      
      private function §@"n§() : void
      {
         var _loc3_:§^"9§ = null;
         var _loc5_:§0W§ = null;
         var _loc6_:§ #F§ = null;
         var _loc7_:§4#s§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:§ #F§ = null;
         var _loc11_:§4#s§ = null;
         var _loc12_:§ #F§ = null;
         var _loc13_:§4#s§ = null;
         var _loc14_:§ #F§ = null;
         var _loc15_:§4#s§ = null;
         §8!n§.visible = false;
         §3"L§.visible = false;
         §3"L§.width = 1;
         §3"L§.height = 220;
         var _loc1_:Array = [0.275,2.5,4.5,6.3,7.5,9.5];
         var _loc2_:int = -1;
         var _loc4_:int = 1;
         while(_loc4_ <= 6)
         {
            (_loc5_ = §`=§.levelObjects.addObject("SLING_SHOT_TREE_PART_" + _loc4_,§?!l§,7.5 + §`"T§ - _loc1_[_loc4_ - 1],0,§6#-§.ID_NEXT_FREE,false,false,false) as §0W§).getBody().GetDefinition().linearDamping = 7;
            _loc5_.getBody().GetDefinition().angularDamping = 0.1;
            _loc5_.getBody().SetAwake(true);
            this.§9"v§.push(_loc5_);
            if(_loc2_ == -1)
            {
               _loc2_ = _loc5_.id;
               _loc3_ = _loc5_;
            }
            else
            {
               if(_loc4_ == 5)
               {
                  this.§-#0§ = _loc5_;
               }
               if(_loc4_ == 6)
               {
                  this.§@"`§ = _loc5_;
                  (_loc6_ = new § #F§(§ #F§.§]P§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0))).breakable = false;
                  _loc6_.coordinateType = 2;
                  _loc7_ = (§`=§.levelObjects as §<j§).§`8§(_loc6_);
               }
               else
               {
                  _loc8_ = -0.3 * Math.PI;
                  _loc9_ = 0.3 * Math.PI;
                  (_loc10_ = new § #F§(§ #F§.§+!I§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0),false,true,_loc8_,_loc9_,false)).coordinateType = 2;
                  _loc10_.breakable = false;
                  _loc11_ = (§`=§.levelObjects as §<j§).§`8§(_loc10_);
                  (_loc12_ = new § #F§(§ #F§.§0M§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x + 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc12_.frequency = §2#m§ * 0.1;
                  _loc12_.dampingRatio = §`!b§ * 0.1;
                  _loc12_.breakable = false;
                  _loc13_ = (§`=§.levelObjects as §<j§).§`8§(_loc12_);
                  (_loc14_ = new § #F§(§ #F§.§0M§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x - 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc14_.frequency = §2#m§ * 0.1;
                  _loc14_.dampingRatio = §`!b§ * 0.1;
                  _loc14_.breakable = false;
                  _loc15_ = (§`=§.levelObjects as §<j§).§`8§(_loc14_);
               }
               _loc2_ = _loc5_.id;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         _loc2_ = _loc5_.id;
         _loc3_ = _loc5_;
      }
      
      private function §"$4§() : void
      {
         this.§+$$§ = §`=§.levelObjects.addObject("POWERUP_TREESLING_FAKEBIRD",this.§-#0§.getBody().GetPosition().x,this.§-#0§.getBody().GetPosition().y,0,§6#-§.ID_NEXT_FREE,false,false,false) as §^"9§;
         this.§+$$§.getBody().GetDefinition().linearDamping = 7;
         this.§+$$§.getBody().GetDefinition().angularDamping = 0.1;
         this.§+$$§.getBody().SetAwake(true);
      }
      
      private function §0#Q§() : void
      {
         var _loc1_:§^"9§ = null;
         this.§%#R§ = false;
         this.§+$$§ = null;
         this.§-#0§ = null;
         this.§##z§ = null;
         this.§""c§ = null;
         for each(_loc1_ in this.§9"v§)
         {
            if(§`=§.levelObjects)
            {
               §`=§.levelObjects.removeObject(_loc1_);
            }
         }
         this.§9"v§.length = 0;
      }
      
      private function §3"O§() : void
      {
         this.§"$4§();
         var _loc1_:§ #F§ = new § #F§(§ #F§.§0M§,this.§+$$§.id,this.§-#0§.id,new Point(0,0),new Point(0,0),false);
         _loc1_.coordinateType = 2;
         _loc1_.frequency = §!X§;
         _loc1_.dampingRatio = §`#2§;
         _loc1_.breakable = false;
         var _loc2_:§4#s§ = (§`=§.levelObjects as §<j§).§`8§(_loc1_);
         var _loc3_:§ #F§ = new § #F§(§ #F§.§@f§,this.§-#0§.id,this.§+$$§.id,new Point(0,0),new Point(0,0));
         _loc3_.breakable = false;
         this.§""c§ = (§`=§.levelObjects as §<j§).§`8§(_loc3_);
         this.§##z§ = this.§""c§.§^;§ as b2MouseJoint;
         this.§+$$§.getBody().SetAwake(true);
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:b2Vec2 = null;
         if((§"!!§ as §#!L§).§1"-§)
         {
            if(mDragging)
            {
               if((§"!!§ as §#!L§).§1"-§.§1!Y§)
               {
                  mDragging = false;
                  §'!w§ = false;
                  §9">§();
               }
            }
         }
         super.update(param1,param2);
         var _loc3_:§@"@§ = null;
         if(mSlingShotState == §^#,§ && !this.§%#R§ && !this.§+$$§ && this.§-#0§ && this.§-#0§.getBody())
         {
            this.§%#R§ = true;
            this.§-#1§ = false;
            this.§3"O§();
         }
         else if(mSlingShotState == §9-§ && !this.§-#1§)
         {
            this.§-#1§ = true;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         if(this.§+$$§ && mBirds.length > 0 && mSlingShotState == §^#,§)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            if(_loc3_)
            {
               _loc4_ = 0.5 * _loc3_.radius * Math.cos(this.§-#0§.§%D§());
               _loc5_ = 0.5 * _loc3_.radius * Math.sin(this.§-#0§.§%D§());
            }
            if(this.§##z§)
            {
               if(mDragging)
               {
                  _loc6_ = (§!#A§.§=![§ as §;#>§).§=0§();
                  _loc6_ = §`=§.screenToBox2D(_loc6_.x,_loc6_.y);
                  _loc7_ = new b2Vec2(§!$$§ - mBirds[mNextBirdIndex].radius * Math.cos(§@!t§ / (180 / Math.PI)),§7!R§ + mBirds[mNextBirdIndex].radius * Math.sin(§@!t§ / (180 / Math.PI)));
                  this.§##z§.§2h§(new b2Vec2(this.§+$$§.getBody().GetPosition().x,this.§+$$§.getBody().GetPosition().y));
                  this.§+$$§.getBody().SetPosition(_loc7_);
               }
               else
               {
                  this.§!"0§();
               }
            }
         }
         if(mSlingShotState == §^#,§ && _loc3_ && this.§-#0§ && this.§-#0§.getBody() && this.§%#R§)
         {
         }
         if(this.§6$+§ == §7"G§.§1d§)
         {
            §`#p§.y = §`"T§ / §!!S§.§,"3§ + 60;
         }
      }
      
      public function §2";§() : void
      {
         this.§'"!§(true);
         this.§8#s§(§1!$§.§<#L§);
         this.§&"5§("POWERUP_SLINGSHOT_LIGHTNING",null,0);
         if(this.§@#N§)
         {
            this.§7#2§();
         }
      }
      
      public function §8#s§(param1:Number) : void
      {
         var _loc2_:§@"@§ = null;
         for each(_loc2_ in mBirds)
         {
            _loc2_.§%"n§ = param1;
         }
      }
      
      protected function §'"!§(param1:Boolean = false) : void
      {
         var _loc2_:§8#B§ = null;
         if(this.§6$+§)
         {
            §?!v§(this.§6$+§.§8o§,this.§6$+§.§8o§,true);
         }
         else
         {
            §?!v§();
         }
         §1$0§ = !!param1 ? Number(§1!$§.§?"K§) : Number(§1!$§.§4#L§);
         this.§<#p§ = param1;
         while(§'$&§.numChildren > 0)
         {
            §'$&§.removeChildAt(0);
         }
         if(this.§6$+§ != §7"G§.§1d§)
         {
            §?#T§ = new Sprite();
            §?#T§.addChild(§3"L§);
            §?#T§.addChild(§-"l§);
            §`#p§ = new Sprite();
            §`#p§.addChild(§""X§);
            §`#p§.addChild(§9e§);
            §`#p§.addChild(§8!n§);
         }
         if(param1)
         {
            _loc2_ = §`=§.animationManager.getAnimation("SLING_SHOT_KINGSLING");
            §`#p§.addChild(_loc2_.getFrame(0));
         }
         §2"g§();
         §["S§ = true;
      }
      
      override protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:int = 0;
         super.updateAnimations(param1);
         if(this.§6$-§)
         {
            _loc2_ = this.§6$-§.length - 1;
            while(_loc2_ >= 0)
            {
               if(!this.§`C§(this.§6$-§[_loc2_],param1))
               {
                  this.§6$-§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         this.§`C§(this.§%!i§,param1);
         this.§`C§(this.§7#,§,param1);
         this.§4!&§();
      }
      
      override public function useMightyEagle() : §@"@§
      {
         var _loc1_:§@"@§ = super.useMightyEagle();
         (_loc1_ as §@#]§).§0"4§ = this.§6$+§;
         return _loc1_;
      }
      
      override protected function initializeSlingshotObject(param1:§!"v§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §@"@§
      {
         return new §@#]§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §@"@§
      {
         var _loc6_:§@"@§ = super.addSlingshotObject(param1,param2,param3,param4,param5);
         if(this.§<#p§)
         {
            this.§8#s§(§1!$§.§<#L§);
         }
         if(§`=§ is §#!L§)
         {
            (§`=§ as §#!L§).initializeSlingshotObject(_loc6_);
         }
         return _loc6_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§<#p§)
         {
            §!#&§.playSound("super_shot");
         }
         else if(this.§6$+§.§%i§)
         {
            §!#&§.playSound(this.§6$+§.§%i§);
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      public function §`Z§() : Boolean
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc1_:Number = §?!l§ / §!!S§.§,"3§;
         var _loc2_:Number = §`"T§ / §!!S§.§,"3§;
         var _loc3_:int = 20 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc11_ = Math.random() * (Math.PI * 2);
            _loc12_ = 0.5 * 10 + 10 * (Math.random() * 0.5);
            §"!!§.particles.addParticle(§2"^§.§?w§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,§?!l§,§`"T§,1250,"",§2"^§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc12_ * Math.cos(_loc11_) * 1,-_loc12_ * Math.sin(_loc11_) * 1,5,_loc12_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         var _loc7_:§@#]§ = null;
         if(mBirds.length > 0)
         {
            _loc7_ = mBirds[mNextBirdIndex] as §@#]§;
            mBirds.splice(mNextBirdIndex,1);
         }
         var _loc8_:§@"@§ = addBirdStraightIntoSlingshot("BIRD_WINGMAN",§?!l§ + 0.7,§`"T§ + 0.1,0);
         if(this.§6$+§)
         {
            (_loc8_ as §@#]§).§0"4§ = this.§6$+§;
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
         §!#&§.playSound("wingman_appears_slingshot","ChannelPowerups",0,1);
         (§"!!§ as §#!L§).§1"-§.§#"i§ = true;
         var _loc10_:§6#J§;
         (_loc10_ = §!#A§.§#F§.particles as §6#J§).§@"y§(§?!l§,§`"T§);
         §["S§ = true;
         if(_loc7_ && _loc7_.§8#o§)
         {
            return true;
         }
         return false;
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc2_:§@"@§ = null;
         var _loc1_:Number = super.getLaunchSpeed();
         if(mBirds.length > 0)
         {
            _loc2_ = mBirds[mNextBirdIndex];
         }
         if(_loc2_ && _loc2_.§%"n§ > 0)
         {
            _loc1_ = _loc1_ / _loc2_.§6i§ * _loc2_.§%"n§;
         }
         return _loc1_;
      }
      
      public function §=s§(param1:Number, param2:§-#b§) : §@"@§
      {
         var _loc3_:§@"@§ = null;
         var _loc4_:§-#b§ = null;
         if(mBirds.length > 0)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            for each(_loc4_ in §super§.§[#>§)
            {
               if(_loc4_ == param2)
               {
                  _loc3_.§^!&§ = _loc4_.§;$$§(_loc3_.name.toUpperCase());
                  _loc3_.§=$-§ = _loc4_.§&!b§(_loc3_.name.toUpperCase());
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
      
      public function §7#2§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:§'#'§ = null;
         this.§@#N§ = true;
         this.§2#p§ = this.§2#p§ || §`=§.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0,this.§2#p§);
         this.§""]§ = this.§""]§ || §`=§.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0,this.§""]§);
         if(!this.§4u§)
         {
            this.§2#p§.x = (§?!l§ - 2) / §!!S§.§,"3§;
            this.§2#p§.y = (§`"T§ - 3) / §!!S§.§,"3§;
         }
         this.§""]§.x = this.§2#p§.x - 12;
         this.§""]§.y = this.§2#p§.y - 42;
         this.§""]§.pivotX = -50;
         this.§""]§.pivotY = -32;
         if(this.§6$+§ != §7"G§.§1d§)
         {
            §'$&§.addChild(this.§""]§);
            §'$&§.addChild(this.§2#p§);
            this.§?K§ = Math.PI - §@!t§ * (Math.PI / 180);
            _loc1_ = this.§2#p§.x * §!!S§.§,"3§;
            _loc2_ = this.§2#p§.y * §!!S§.§,"3§;
            this.§5"[§(_loc1_,_loc2_);
         }
         else
         {
            _loc3_ = §'0§.§ "D§.getTexture("SLINGSCOPE_TREE_PART_6");
            this.§@"`§.sprite.removeChildAt(0);
            this.§@"`§.sprite.addChild(_loc3_.§6"#§());
            this.§5"[§(this.§@"`§.x * §!!S§.§,"3§,this.§@"`§.y * §!!S§.§,"3§ - 1);
         }
         §["S§ = true;
      }
      
      private function §4!&§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§@#N§)
         {
            _loc1_ = §@!t§ * (Math.PI / 180) - this.§?K§;
            if(Math.abs(_loc1_) < 0.5 * (Math.PI / 180))
            {
               this.§?K§ = §@!t§ * (Math.PI / 180);
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
               this.§?K§ += _loc1_ / 20;
            }
            this.§""]§.rotation = Math.PI - this.§?K§;
            §["S§ = true;
         }
      }
      
      private function §&"5§(param1:String, param2:String, param3:int) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc6_:Number = §3"L§.width;
         var _loc7_:Number = §3"L§.height;
         var _loc8_:Number = §?!l§ / §!!S§.§,"3§ + _loc6_ / 2 + -15;
         var _loc9_:Number = §`"T§ / §!!S§.§,"3§ + _loc7_ + -13;
         if(!this.§6$-§)
         {
            this.§6$-§ = new Vector.<§ "#§>();
         }
         this.§6$-§.push(new § "#§(param1,§'$&§,§"!!§,_loc8_,_loc9_,50));
         §["S§ = true;
         if(param2 && param3 > 0)
         {
            _loc10_ = 10 + Math.random() * 5;
            _loc11_ = 10;
            _loc12_ = 0;
            while(_loc12_ < _loc10_)
            {
               _loc13_ = 360 / _loc10_ * (_loc12_ + 1);
               _loc14_ = param2 + int(Math.random() * param3 + 1);
               §`=§.particles.addSimpleParticle(_loc14_,§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,§`=§.slingshot.x,§`=§.slingshot.y + Math.random() * 6,700 + Math.random() * 500,"",§2"^§.§9!P§,_loc11_ * Math.cos(_loc13_),-_loc11_ * Math.sin(_loc13_),15,Math.random() * 60,0.5 + Math.random() * 1);
               _loc12_++;
            }
         }
      }
      
      public function §5"[§(param1:Number, param2:Number) : void
      {
         param1 /= §!!S§.§,"3§;
         param2 /= §!!S§.§,"3§;
         if(this.§%!i§)
         {
            this.§%!i§.reset();
            this.§%!i§.setPosition(param1,param2);
         }
         else
         {
            this.§%!i§ = new § "#§("BLAST_EFFECT",§'$&§,§`=§,param1,param2,50);
            this.§%!i§.§,z§(true);
         }
         §["S§ = true;
      }
      
      public function §2#L§(param1:Number, param2:Number) : void
      {
         param1 /= §!!S§.§,"3§;
         param2 /= §!!S§.§,"3§;
         if(this.§7#,§)
         {
            this.§7#,§.reset();
            this.§7#,§.setPosition(param1,param2);
         }
         else
         {
            this.§7#,§ = new § "#§("POWERUP_POWERPOTION_ACTIVATION",§'$&§,§`=§,param1,param2,50);
            this.§7#,§.§,z§(true);
         }
         §["S§ = true;
      }
      
      private function §`C§(param1:§ "#§, param2:Number) : Boolean
      {
         if(param1 && param1.update(param2))
         {
            §["S§ = true;
            return true;
         }
         return false;
      }
      
      override protected function shootBird() : void
      {
         if(this.§6$+§ == §7"G§.§1d§)
         {
            this.§!"0§();
         }
         super.shootBird();
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         if(this.§6$+§ == §7"G§.§1d§)
         {
            this.§3"Q§ = getPosition();
            this.§["f§ = this.getLaunchSpeed();
            this.§"#3§ = §[#4§();
            this.§7!D§ = §@!t§;
            this.§>"A§();
         }
      }
      
      private function §!"0§() : void
      {
         this.§%#R§ = false;
         if(this.§+$$§)
         {
            §`=§.levelObjects.removeObject(this.§+$$§);
            this.§+$$§ = null;
         }
      }
      
      private function §>"A§() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§@"@§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:String = null;
         var _loc16_:§ ",§ = null;
         var _loc1_:Number = this.§"#3§ * (this.§"#P§ - this.§##U§) / 100;
         var _loc2_:Number = this.§"#3§ * this.§##U§ / 100;
         var _loc3_:int = 1;
         while(_loc3_ <= this.§4! §)
         {
            _loc4_ = this.§3"Q§.x;
            _loc5_ = this.§3"Q§.y;
            _loc7_ = (_loc6_ = mBirds[mNextBirdIndex]).radius + 0.1;
            _loc8_ = this.§7!D§;
            _loc9_ = _loc7_ * Math.cos(_loc8_ * (Math.PI / 180));
            _loc10_ = _loc7_ * Math.sin(_loc8_ * (Math.PI / 180));
            _loc4_ += _loc9_;
            _loc5_ -= _loc10_;
            _loc11_ = _loc2_ + Math.random() * _loc1_;
            _loc12_ = this.§7!D§ + ((this.§["j§ >> 1) - this.§["j§ / this.§4! § * _loc3_);
            _loc13_ = -this.§["f§ * _loc11_ * Math.cos(_loc12_ / (180 / Math.PI));
            _loc14_ = this.§["f§ * _loc11_ * Math.sin(_loc12_ / (180 / Math.PI));
            _loc15_ = § ",§.§!!Y§();
            (_loc16_ = (§`=§.levelObjects as §<j§).addObject(_loc15_,_loc4_,_loc5_,this.§7!D§,§6#-§.ID_NEXT_FREE,false,false,false,1) as § ",§).§!!b§(new b2Vec2(_loc13_,_loc14_),false,true);
            _loc3_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§0#Q§();
         super.dispose();
      }
      
      public function get §^"=§() : §6!u§
      {
         return this.§6$+§;
      }
      
      public function §4$4§(param1:Number, param2:Number) : void
      {
         var _loc3_:§^"9§ = null;
         var _loc4_:b2DistanceJoint = null;
         §2#m§ = param1;
         §`!b§ = param2;
         for each(_loc3_ in this.§9"v§)
         {
            if(_loc3_.getBody().GetJointList() && _loc3_.getBody().GetJointList().joint && _loc3_.getBody().GetJointList().joint is b2DistanceJoint)
            {
               (_loc4_ = b2DistanceJoint(_loc3_.getBody().GetJointList().joint)).§]s§(param1);
               _loc4_.§'#3§(param2);
            }
         }
      }
      
      public function get § #Z§() : §^"9§
      {
         return this.§+$$§;
      }
      
      public function get §;j§() : §0W§
      {
         return this.§-#0§;
      }
      
      override protected function playStretchSound() : void
      {
         §!#&§.playSound(this.§6$+§.§@V§);
      }
      
      override public function setSlingShotState(param1:int) : void
      {
         if(mSlingShotState == §`D§ && param1 == §,$9§)
         {
            return;
         }
         super.setSlingShotState(param1);
      }
   }
}
