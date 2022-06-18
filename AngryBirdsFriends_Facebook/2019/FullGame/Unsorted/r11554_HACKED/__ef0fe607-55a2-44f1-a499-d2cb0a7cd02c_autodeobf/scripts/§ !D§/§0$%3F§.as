package § !D§
{
   import § O§.§&# §;
   import § O§.§6f§;
   import § O§.§7!S§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §!L§.§<"s§;
   import §""'§.Texture;
   import §"$=§.§=$&§;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §%A§.§]#e§;
   import §%_§.§;l§;
   import §'#g§.§&"Y§;
   import §-!!§.§7S§;
   import §-!!§.§8"J§;
   import §-!!§.§>m§;
   import §-!!§.§@#f§;
   import §-!!§.§`h§;
   import §-#R§.§0!w§;
   import §-#R§.§4"p§;
   import §0"=§.b2DistanceJoint;
   import §0"=§.b2MouseJoint;
   import §9$+§.§%L§;
   import §9$+§.§5t§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §]"'§.§@"%§;
   import §^"[§.§4!8§;
   import §^"[§.§=#;§;
   import §^"[§.§^!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §0$?§ extends §"b§
   {
      
      public static const §?P§:int = 777;
      
      protected static const §%#[§:uint = 7602176;
      
      protected static var §#"w§:Texture;
      
      public static var §`$?§:int = 8;
      
      public static var §-#H§:int = 5;
      
      public static var §@!J§:int = 1;
      
      public static var §&"R§:Number = 1;
      
      public static var §4!Z§:Number = 180;
      
      public static var §3c§:Number = 70;
      
      public static var §<"D§:Number = 0;
      
      public static var §"0§:Number = 0;
       
      
      private var §=#"§:Point;
      
      private var §0"$§:§@#]§;
      
      private var §2"i§:Vector.<§@#]§>;
      
      private var §8#<§:§@#]§;
      
      private var §&#F§:§@#]§;
      
      private var §#!T§:Boolean;
      
      private var §7Y§:DisplayObject;
      
      private var §?#^§:DisplayObject;
      
      private var §#!`§:Number;
      
      private var §<#"§:§6f§;
      
      private var § #N§:Boolean = false;
      
      private var §-$2§:Boolean = false;
      
      private var §&"_§:§8"J§;
      
      private var §="F§:§>m§;
      
      private var §<$%§:§>m§;
      
      private var §%"V§:b2MouseJoint;
      
      private var § "F§:§%L§;
      
      private var §,9§:Vector.<§8"J§>;
      
      private var §4$9§:Boolean;
      
      private var §4! §:Boolean;
      
      private var §?$>§:int = 5;
      
      private var §3K§:int = 8;
      
      private var §7$$§:int = 85;
      
      private var §>$%§:int = 98;
      
      private var §8"a§:Point;
      
      private var §+!Q§:Number;
      
      private var §;#C§:Number;
      
      private var §9!"§:Number;
      
      public function §0$?§(param1:§'"u§, param2:§=$&§, param3:Sprite)
      {
         this.§,9§ = new Vector.<§8"J§>();
         super(param1,param2,param3);
         this.§4##§(§7!S§.§%$<§(§&# §.§!$0§()),true);
         this.§9#u§ = false;
         if(mBirds.length > 1)
         {
            this.§=#"§ = new Point(mBirds[1].originalX,mBirds[1].originalY - (1.8 - mBirds[1].radius));
         }
         else if(mBirds.length > 0)
         {
            this.§=#"§ = new Point(mBirds[0].originalX,mBirds[0].originalY - (1.8 - mBirds[0].radius));
         }
         else
         {
            this.§=#"§ = new Point(x,y + 7);
         }
      }
      
      public function get §9#u§() : Boolean
      {
         return this.§-$2§;
      }
      
      public function set §9#u§(param1:Boolean) : void
      {
         this.§-$2§ = param1;
      }
      
      public function get §,K§() : Boolean
      {
         return this.§ #N§;
      }
      
      public function set §,K§(param1:Boolean) : void
      {
         var _loc2_:§4!8§ = null;
         if(this.§ #N§ == param1)
         {
            return;
         }
         this.§ #N§ = param1;
         if(this.§ #N§)
         {
            _loc2_ = this.getSlingshotAnimation();
            while(§ U§.numChildren > 0)
            {
               § U§.removeChildAt(0);
            }
            §=3§ = _loc2_.getFrame(0,§=3§);
            §`!!§ = _loc2_.getFrame(1,§`!!§);
            § U§.addChild(§=3§);
            § U§.addChild(§^"q§);
            § U§.addChild(§-A§);
            § U§.addChild(§]"u§);
            § U§.addChild(§4!P§);
            § U§.addChild(§`!!§);
            §9$,§ = true;
            this.§9#u§ = false;
         }
      }
      
      override protected function getSlingshotAnimation() : §4!8§
      {
         if(this.§ #N§)
         {
            return §&!g§.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         if(this.§<#"§)
         {
            return §&!g§.animationManager.getAnimation(this.§<#"§.§=2§);
         }
         return super.getSlingshotAnimation();
      }
      
      public function §4##§(param1:§6f§, param2:Boolean, param3:Boolean = false) : void
      {
         if(!param2 && (this.§<#"§ && this.§<#"§.§]'§ == param1.§]'§))
         {
            return;
         }
         this.§<#"§ = param1;
         if(!param2)
         {
            §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§6#b§(§&"Y§.§0!2§,[this.§<#"§.§]'§],true);
         }
         var _loc6_:int = 0;
         var _loc7_:* = mBirds;
         while(§§hasnext(_loc7_,_loc6_))
         {
         }
         §&!g§.camera.setAction(!!param3 ? int(§;l§.§&y§) : int(§;l§.§1$C§));
         var _loc5_:§4!8§ = §&!g§.animationManager.getAnimation(this.§<#"§.§=2§);
         §=3§ = _loc5_.getFrame(0,§=3§);
         §`!!§ = _loc5_.getFrame(1,§`!!§);
         this.§!#9§(this.§9#u§);
         §=3§.visible = §`!!§.visible = true;
         this.§@!z§();
         if(this.§<#"§ == §7!S§.§&"z§)
         {
            this.§%l§();
         }
         if((§-a§ as §4B§).§##`§)
         {
            (§-a§ as §4B§).§##`§.§@!i§();
         }
         if(!param2)
         {
            this.§+#E§(this.§<#"§.§>#1§,this.§<#"§.particleName,this.§<#"§.§2"=§);
            if(!§%"T§.isPaused)
            {
               §[#%§.playSound(this.§<#"§.soundName,"ChannelPowerups");
            }
         }
         if(this.§#!T§)
         {
            this.§8H§();
         }
         this.updateAnimations(0);
      }
      
      private function §%l§() : void
      {
         var _loc5_:§>m§ = null;
         var _loc6_:§5t§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:§5t§ = null;
         var _loc12_:§5t§ = null;
         var _loc14_:§5t§ = null;
         §`!!§.visible = false;
         §=3§.visible = false;
         §=3§.width = 1;
         §=3§.height = 220;
         var _loc1_:Array = [0.275,2.5,4.5,6.3,7.5,9.5];
         var _loc2_:int = -1;
         var _loc4_:int = 1;
         while(_loc4_ <= 6)
         {
            (_loc5_ = §&!g§.levelObjects.addObject("SLING_SHOT_TREE_PART_" + _loc4_,§-##§,7.5 + §0#[§ - _loc1_[_loc4_ - 1],0,§7S§.ID_NEXT_FREE,false,false,false) as §>m§).getBody().GetDefinition().linearDamping = 7;
            _loc5_.getBody().GetDefinition().angularDamping = 0.1;
            _loc5_.getBody().SetAwake(true);
            this.§,9§.push(_loc5_);
            if(_loc2_ == -1)
            {
               _loc2_ = _loc5_.id;
               _loc5_;
            }
            else
            {
               if(_loc4_ == 5)
               {
                  this.§="F§ = _loc5_;
               }
               if(_loc4_ == 6)
               {
                  this.§<$%§ = _loc5_;
                  (_loc6_ = new §5t§(§5t§.§`O§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0))).breakable = false;
                  _loc6_.coordinateType = 2;
                  _loc6_.§"Q§ = true;
                  (§&!g§.levelObjects as §`h§).§7!§(_loc6_);
               }
               else
               {
                  _loc8_ = -0.3 * Math.PI;
                  _loc9_ = 0.3 * Math.PI;
                  (_loc10_ = new §5t§(§5t§.§0#i§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0),false,true,_loc8_,_loc9_,false)).coordinateType = 2;
                  _loc10_.breakable = false;
                  _loc10_.§"Q§ = true;
                  (§&!g§.levelObjects as §`h§).§7!§(_loc10_);
                  (_loc12_ = new §5t§(§5t§.§@?§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x + 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc12_.frequency = §4!Z§ * 0.1;
                  _loc12_.dampingRatio = §3c§ * 0.1;
                  _loc12_.breakable = false;
                  _loc12_.§"Q§ = true;
                  (§&!g§.levelObjects as §`h§).§7!§(_loc12_);
                  (_loc14_ = new §5t§(§5t§.§@?§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x - 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc14_.frequency = §4!Z§ * 0.1;
                  _loc14_.dampingRatio = §3c§ * 0.1;
                  _loc14_.breakable = false;
                  _loc14_.§"Q§ = true;
                  (§&!g§.levelObjects as §`h§).§7!§(_loc14_);
               }
               _loc2_ = _loc5_.id;
               _loc5_;
            }
            _loc4_++;
         }
         _loc2_ = _loc5_.id;
         _loc5_;
      }
      
      private function §!"n§() : void
      {
         this.§&"_§ = §&!g§.levelObjects.addObject("POWERUP_TREESLING_FAKEBIRD",this.§="F§.getBody().GetPosition().x,this.§="F§.getBody().GetPosition().y,0,§7S§.ID_NEXT_FREE,false,false,false) as §8"J§;
         this.§&"_§.getBody().GetDefinition().linearDamping = 7;
         this.§&"_§.getBody().GetDefinition().angularDamping = 0.1;
         this.§&"_§.getBody().SetAwake(true);
      }
      
      private function §@!z§() : void
      {
         var _loc1_:§8"J§ = null;
         this.§4$9§ = false;
         this.§&"_§ = null;
         this.§="F§ = null;
         this.§%"V§ = null;
         this.§ "F§ = null;
         for each(_loc1_ in this.§,9§)
         {
            if(§&!g§.levelObjects)
            {
               §&!g§.levelObjects.removeObject(_loc1_);
            }
         }
         this.§,9§.length = 0;
      }
      
      private function §@'§() : void
      {
         this.§!"n§();
         var _loc1_:§5t§ = new §5t§(§5t§.§@?§,this.§&"_§.id,this.§="F§.id,new Point(0,0),new Point(0,0),false);
         _loc1_.coordinateType = 2;
         _loc1_.frequency = §<"D§;
         _loc1_.dampingRatio = §"0§;
         _loc1_.breakable = false;
         _loc1_.§"Q§ = true;
         (§&!g§.levelObjects as §`h§).§7!§(_loc1_);
         var _loc3_:§5t§ = new §5t§(§5t§.§7"0§,this.§="F§.id,this.§&"_§.id,new Point(0,0),new Point(0,0));
         _loc3_.breakable = false;
         _loc3_.§"Q§ = true;
         this.§ "F§ = (§&!g§.levelObjects as §`h§).§7!§(_loc3_);
         this.§%"V§ = this.§ "F§.§8!E§ as b2MouseJoint;
         this.§&"_§.getBody().SetAwake(true);
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:b2Vec2 = null;
         if((§-a§ as §4B§).§##`§)
         {
            if(mDragging)
            {
               if((§-a§ as §4B§).§##`§.§]#o§)
               {
                  mDragging = false;
                  §"!u§ = false;
                  §!#v§();
               }
            }
         }
         super.update(param1,param2);
         var _loc3_:§;M§ = null;
         if(mSlingShotState == §"G§ && !this.§4$9§ && !this.§&"_§ && this.§="F§ && this.§="F§.getBody())
         {
            this.§4$9§ = true;
            this.§4! § = false;
            this.§@'§();
         }
         else if(mSlingShotState == §&"s§ && !this.§4! §)
         {
            this.§4! § = true;
         }
         if(this.§&"_§ && mBirds.length > 0 && mSlingShotState == §"G§)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            if(_loc3_)
            {
               Number(0.5 * _loc3_.radius * Math.cos(this.§="F§.§30§()));
               Number(0.5 * _loc3_.radius * Math.sin(this.§="F§.§30§()));
            }
            if(this.§%"V§)
            {
               if(mDragging)
               {
                  _loc6_ = (§%"T§.§+"M§ as §<"s§).§9#[§();
                  _loc6_ = §&!g§.screenToBox2D(_loc6_.x,_loc6_.y);
                  _loc7_ = new b2Vec2(§4#§ - mBirds[mNextBirdIndex].radius * Math.cos(§;f§ / (180 / Math.PI)),§0"n§ + mBirds[mNextBirdIndex].radius * Math.sin(§;f§ / (180 / Math.PI)));
                  this.§%"V§.§-"&§(new b2Vec2(this.§&"_§.getBody().GetPosition().x,this.§&"_§.getBody().GetPosition().y));
                  this.§&"_§.getBody().SetPosition(_loc7_);
               }
               else
               {
                  this.§"w§();
               }
            }
         }
         if(mSlingShotState == §"G§ && _loc3_ && this.§="F§ && this.§="F§.getBody() && this.§4$9§)
         {
         }
         if(this.§<#"§ == §7!S§.§&"z§)
         {
            §0!]§.y = §0#[§ / §'"u§.§'#e§ + 60;
         }
      }
      
      public function § "$§() : void
      {
         this.§!#9§(true);
         this.§#"R§(§;#W§.§2#;§);
         this.§+#E§("POWERUP_SLINGSHOT_LIGHTNING",null,0);
         if(this.§#!T§)
         {
            this.§8H§();
         }
      }
      
      public function §#"R§(param1:Number) : void
      {
         var _loc2_:§;M§ = null;
         for each(_loc2_ in mBirds)
         {
            if(_loc2_.name == "BIRD_GREEN")
            {
               _loc2_.§5$1§ = param1 * §;M§.§9"]§();
            }
            else
            {
               _loc2_.§5$1§ = param1;
            }
         }
      }
      
      protected function §!#9§(param1:Boolean = false) : void
      {
         var _loc2_:§4!8§ = null;
         if(this.§<#"§)
         {
            §7"W§(this.§<#"§.§3!+§,this.§<#"§.§3!+§,true);
         }
         else
         {
            §7"W§();
         }
         §+!;§ = !!param1 ? Number(§;#W§.§5#c§) : Number(§;#W§.§,#'§);
         this.§9#u§ = param1;
         while(§ U§.numChildren > 0)
         {
            § U§.removeChildAt(0);
         }
         if(this.§<#"§ != §7!S§.§&"z§)
         {
            §;P§ = new Sprite();
            §;P§.addChild(§=3§);
            §;P§.addChild(§^"q§);
            §0!]§ = new Sprite();
            §0!]§.addChild(§,#Q§);
            §0!]§.addChild(§4!P§);
            §0!]§.addChild(§`!!§);
         }
         if(param1)
         {
            _loc2_ = §&!g§.animationManager.getAnimation("SLING_SHOT_KINGSLING");
            §0!]§.addChild(_loc2_.getFrame(0));
         }
         §!M§();
         §9$,§ = true;
      }
      
      override protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:int = 0;
         super.updateAnimations(param1);
         if(this.§2"i§)
         {
            _loc2_ = this.§2"i§.length - 1;
            while(_loc2_ >= 0)
            {
               if(!this.§ #M§(this.§2"i§[_loc2_],param1))
               {
                  this.§2"i§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         this.§ #M§(this.§0"$§,param1);
         this.§ #M§(this.§8#<§,param1);
         this.§ #M§(this.§&#F§,param1);
         this.§#"n§();
      }
      
      override public function useMightyEagle() : §;M§
      {
         var _loc1_:§;M§ = super.useMightyEagle();
         (_loc1_ as § !§).§=#d§ = this.§<#"§;
         return _loc1_;
      }
      
      override protected function initializeSlingshotObject(param1:§,Y§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §;M§
      {
         return new § !§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §;M§
      {
         var _loc6_:§;M§ = super.addSlingshotObject(param1,param2,param3,param4,param5);
         if(this.§9#u§)
         {
            this.§#"R§(§;#W§.§2#;§);
         }
         if(§&!g§ is §4B§)
         {
            (§&!g§ as §4B§).initializeSlingshotObject(_loc6_);
         }
         return _loc6_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§9#u§)
         {
            §[#%§.playSound("super_shot");
         }
         else if(this.§<#"§.§4#l§)
         {
            §[#%§.playSound(this.§<#"§.§4#l§);
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      public function §+!k§() : Boolean
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         Number(§-##§ / §'"u§.§'#e§);
         Number(§0#[§ / §'"u§.§'#e§);
         var _loc3_:int = 20 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc11_ = Math.random() * (Math.PI * 2);
            _loc12_ = 0.5 * 10 + 10 * (Math.random() * 0.5);
            §-a§.particles.addParticle(§'Y§.§7!s§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,§-##§,§0#[§,1250,"",§'Y§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc12_ * Math.cos(_loc11_) * 1,-_loc12_ * Math.sin(_loc11_) * 1,5,_loc12_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         var _loc7_:§ !§ = null;
         if(mBirds.length > 0)
         {
            _loc7_ = mBirds[mNextBirdIndex] as § !§;
            mBirds.splice(mNextBirdIndex,1);
         }
         var _loc8_:§;M§ = this.addBirdStraightIntoSlingshot("BIRD_WINGMAN",§-##§ + 0.7,§0#[§ + 0.1,0);
         if(this.§<#"§)
         {
            (_loc8_ as § !§).§=#d§ = this.§<#"§;
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
         §[#%§.playSound("wingman_appears_slingshot","ChannelPowerups",0,1);
         (§-a§ as §4B§).§##`§.§3!v§ = true;
         (§%"T§.§;`§.particles as §]#e§).§>! §(§-##§,§0#[§);
         §9$,§ = true;
         if(_loc7_ && _loc7_.§^'§)
         {
            return true;
         }
         return false;
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc2_:§;M§ = null;
         var _loc1_:Number = super.getLaunchSpeed();
         if(mBirds.length > 0)
         {
            _loc2_ = mBirds[mNextBirdIndex];
         }
         if(_loc2_ && _loc2_.§5$1§ > 0)
         {
            _loc1_ = _loc1_ / _loc2_.§=@§ * _loc2_.§5$1§;
         }
         return _loc1_;
      }
      
      public function §+!]§(param1:Number, param2:§4"p§) : §;M§
      {
         var _loc3_:§;M§ = null;
         var _loc4_:§4"p§ = null;
         if(mBirds.length > 0)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            for each(_loc4_ in §0!w§.§'#v§)
            {
               if(_loc4_ == param2)
               {
                  _loc3_.§;"R§ = _loc4_.§0#-§(_loc3_.name.toUpperCase());
                  _loc3_.§1O§ = _loc4_.§+#p§(_loc3_.name.toUpperCase());
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
      
      public function §8H§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:§^!8§ = null;
         this.§#!T§ = true;
         this.§7Y§ = this.§7Y§ || §&!g§.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0,this.§7Y§);
         this.§?#^§ = this.§?#^§ || §&!g§.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0,this.§?#^§);
         if(!this.§,K§)
         {
            this.§7Y§.x = (§-##§ - 2) / §'"u§.§'#e§;
            this.§7Y§.y = (§0#[§ - 3) / §'"u§.§'#e§;
         }
         this.§?#^§.x = this.§7Y§.x - 12;
         this.§?#^§.y = this.§7Y§.y - 42;
         this.§?#^§.pivotX = -50;
         this.§?#^§.pivotY = -32;
         if(this.§<#"§ != §7!S§.§&"z§)
         {
            § U§.addChild(this.§?#^§);
            § U§.addChild(this.§7Y§);
            this.§#!`§ = Math.PI - §;f§ * (Math.PI / 180);
            _loc1_ = this.§7Y§.x * §'"u§.§'#e§;
            _loc2_ = this.§7Y§.y * §'"u§.§'#e§;
            this.§>!P§(_loc1_,_loc2_);
         }
         else
         {
            _loc3_ = §=#;§.§?q§.getTexture("SLINGSCOPE_TREE_PART_6");
            this.§<$%§.sprite.removeChildAt(0);
            this.§<$%§.sprite.addChild(_loc3_.§4!d§());
            this.§>!P§(this.§<$%§.x * §'"u§.§'#e§,this.§<$%§.y * §'"u§.§'#e§ - 1);
         }
         §9$,§ = true;
      }
      
      private function §#"n§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§#!T§)
         {
            _loc1_ = §;f§ * (Math.PI / 180) - this.§#!`§;
            if(Math.abs(_loc1_) < 0.5 * (Math.PI / 180))
            {
               this.§#!`§ = §;f§ * (Math.PI / 180);
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
               this.§#!`§ += _loc1_ / 20;
            }
            this.§?#^§.rotation = Math.PI - this.§#!`§;
            §9$,§ = true;
         }
      }
      
      private function §+#E§(param1:String, param2:String, param3:int) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc6_:Number = §=3§.width;
         var _loc7_:Number = §=3§.height;
         var _loc8_:Number = §-##§ / §'"u§.§'#e§ + _loc6_ / 2 + -15;
         var _loc9_:Number = §0#[§ / §'"u§.§'#e§ + _loc7_ + -13;
         if(!this.§2"i§)
         {
            this.§2"i§ = new Vector.<§@#]§>();
         }
         this.§2"i§.push(new §@#]§(param1,§ U§,§-a§,_loc8_,_loc9_,50));
         §9$,§ = true;
         if(param2 && param3 > 0)
         {
            _loc10_ = 10 + Math.random() * 5;
            _loc11_ = 10;
            _loc12_ = 0;
            while(_loc12_ < _loc10_)
            {
               _loc13_ = 360 / _loc10_ * (_loc12_ + 1);
               _loc14_ = param2 + int(Math.random() * param3 + 1);
               §&!g§.particles.addSimpleParticle(_loc14_,§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,§&!g§.slingshot.x,§&!g§.slingshot.y + Math.random() * 6,700 + Math.random() * 500,"",§'Y§.§5#q§,_loc11_ * Math.cos(_loc13_),-_loc11_ * Math.sin(_loc13_),15,Math.random() * 60,0.5 + Math.random() * 1);
               _loc12_++;
            }
         }
      }
      
      public function §>!P§(param1:Number, param2:Number) : void
      {
         param1 /= §'"u§.§'#e§;
         param2 /= §'"u§.§'#e§;
         if(this.§0"$§)
         {
            this.§0"$§.reset();
            this.§0"$§.setPosition(param1,param2);
         }
         else
         {
            this.§0"$§ = new §@#]§("BLAST_EFFECT",§ U§,§&!g§,param1,param2,50);
            this.§0"$§.§"#=§(true);
         }
         §9$,§ = true;
      }
      
      public function §&#b§(param1:Number, param2:Number) : void
      {
         param1 /= §'"u§.§'#e§;
         param2 /= §'"u§.§'#e§;
         if(this.§8#<§)
         {
            this.§8#<§.reset();
            this.§8#<§.setPosition(param1,param2);
         }
         else
         {
            this.§8#<§ = new §@#]§("POWERUP_POWERPOTION_ACTIVATION",§ U§,§&!g§,param1,param2,50);
            this.§8#<§.§"#=§(true);
         }
         §9$,§ = true;
      }
      
      public function §<#k§(param1:Number, param2:Number) : void
      {
         param1 /= §'"u§.§'#e§;
         param2 /= §'"u§.§'#e§;
         if(this.§&#F§)
         {
            this.§&#F§.reset();
            this.§&#F§.setPosition(param1,param2);
         }
         else
         {
            this.§&#F§ = new §@#]§("POWERUP_BOOMBOX_ACTIVATION",§ U§,§&!g§,param1,param2,50);
            this.§&#F§.§"#=§(true);
         }
         §9$,§ = true;
      }
      
      private function § #M§(param1:§@#]§, param2:Number) : Boolean
      {
         if(param1 && param1.update(param2))
         {
            §9$,§ = true;
            return true;
         }
         return false;
      }
      
      override protected function shootBird() : void
      {
         if(this.§<#"§ == §7!S§.§&"z§)
         {
            this.§"w§();
         }
         super.shootBird();
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         if(this.§<#"§ == §7!S§.§&"z§)
         {
            this.§8"a§ = getPosition();
            this.§+!Q§ = this.getLaunchSpeed();
            this.§;#C§ = §^x§();
            this.§9!"§ = §;f§;
            this.§%!q§();
         }
      }
      
      private function §"w§() : void
      {
         this.§4$9§ = false;
         if(this.§&"_§)
         {
            §&!g§.levelObjects.removeObject(this.§&"_§);
            this.§&"_§ = null;
         }
      }
      
      private function §%!q§() : void
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
         var _loc1_:Number = this.§;#C§ * (this.§>$%§ - this.§7$$§) / 100;
         var _loc2_:Number = this.§;#C§ * this.§7$$§ / 100;
         var _loc3_:int = 1;
         while(_loc3_ <= this.§?$>§)
         {
            _loc4_ = this.§8"a§.x;
            _loc5_ = this.§8"a§.y;
            _loc7_ = mBirds[mNextBirdIndex].radius + 0.1;
            _loc8_ = this.§9!"§;
            _loc9_ = _loc7_ * Math.cos(_loc8_ * (Math.PI / 180));
            _loc10_ = _loc7_ * Math.sin(_loc8_ * (Math.PI / 180));
            _loc4_ += _loc9_;
            _loc5_ -= _loc10_;
            _loc11_ = _loc2_ + Math.random() * _loc1_;
            _loc12_ = this.§9!"§ + ((this.§3K§ >> 1) - this.§3K§ / this.§?$>§ * _loc3_);
            _loc13_ = -this.§+!Q§ * _loc11_ * Math.cos(_loc12_ / (180 / Math.PI));
            _loc14_ = this.§+!Q§ * _loc11_ * Math.sin(_loc12_ / (180 / Math.PI));
            _loc15_ = §@#f§.§-!,§();
            ((§&!g§.levelObjects as §`h§).addObject(_loc15_,_loc4_,_loc5_,this.§9!"§,§7S§.ID_NEXT_FREE,false,false,false,1) as §@#f§).§ #+§(new b2Vec2(_loc13_,_loc14_),false,true);
            _loc3_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§@!z§();
         super.dispose();
      }
      
      public function get §5$A§() : §6f§
      {
         return this.§<#"§;
      }
      
      public function §<"Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:§8"J§ = null;
         var _loc4_:b2DistanceJoint = null;
         §4!Z§ = param1;
         §3c§ = param2;
         for each(_loc3_ in this.§,9§)
         {
            if(_loc3_.getBody().GetJointList() && _loc3_.getBody().GetJointList().joint && _loc3_.getBody().GetJointList().joint is b2DistanceJoint)
            {
               (_loc4_ = b2DistanceJoint(_loc3_.getBody().GetJointList().joint)).§7"1§(param1);
               _loc4_.§9!f§(param2);
            }
         }
      }
      
      public function get §=!i§() : §8"J§
      {
         return this.§&"_§;
      }
      
      public function get §]#E§() : §>m§
      {
         return this.§="F§;
      }
      
      override protected function playStretchSound() : void
      {
         §[#%§.playSound(this.§<#"§.§1"q§);
      }
      
      override public function setSlingShotState(param1:int) : void
      {
         if(mSlingShotState == §?P§ && param1 == §70§)
         {
            return;
         }
         super.setSlingShotState(param1);
      }
      
      override public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §;M§
      {
         var _loc5_:§;M§ = super.addBirdStraightIntoSlingshot(param1,param2,param3,param4);
         if(this.§<#"§)
         {
            (_loc5_ as § !§).§=#d§ = this.§<#"§;
         }
         return _loc5_;
      }
      
      public function §7!J§() : Point
      {
         return this.§=#"§;
      }
      
      override public function sortBirds() : void
      {
         super.sortBirds();
         var _loc1_:int = 0;
         while(_loc1_ < mBirds.length)
         {
            if(mBirds[_loc1_].name == "BIRD_WINGMAN")
            {
               §-A§.setChildIndex(mBirds[_loc1_].sprite,0);
               break;
            }
            _loc1_++;
         }
      }
   }
}
