package §@0§
{
   import § ! §.b2DistanceJoint;
   import § ! §.b2MouseJoint;
   import § "%§.b2Vec2;
   import §!'§.§7#c§;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §%!P§.§4#u§;
   import §&$!§.§##a§;
   import §&$!§.§%#k§;
   import §1"N§.§4#G§;
   import §2G§.§#"8§;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §4"R§.§7"]§;
   import §8"L§.§4U§;
   import §8§.§!#L§;
   import §8§.§2">§;
   import §8§.§4!y§;
   import §8§.§6$"§;
   import §8§.§;Y§;
   import §9$;§.Texture;
   import §;#D§.§3#U§;
   import §;$3§.§>f§;
   import §=#G§.§6"v§;
   import §>M§.§#H§;
   import §>M§.§3!1§;
   import §@!M§.§!"p§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import §`"8§.§34§;
   import §`"8§.§`"X§;
   import flash.geom.Point;
   
   public class §9"^§ extends § !o§
   {
      
      public static const §"!a§:int = 777;
      
      protected static const §"$?§:uint = 7602176;
      
      protected static var §7!n§:Texture;
      
      public static var §6"i§:int = 8;
      
      public static var §=#$§:int = 5;
      
      public static var §=!h§:int = 1;
      
      public static var §^!>§:Number = 1;
      
      public static var §1"G§:Number = 180;
      
      public static var § "7§:Number = 70;
      
      public static var §=W§:Number = 0;
      
      public static var §6!B§:Number = 0;
       
      
      private var §6o§:Point;
      
      private var §`!l§:§@"Z§;
      
      private var §-$>§:Vector.<§@"Z§>;
      
      private var §[6§:§@"Z§;
      
      private var §6#$§:§@"Z§;
      
      private var §'"l§:Boolean;
      
      private var §3o§:DisplayObject;
      
      private var §?e§:DisplayObject;
      
      private var §0$+§:Number;
      
      private var §9"%§:§'#v§;
      
      private var §-!r§:Boolean = false;
      
      private var §`!9§:Boolean = false;
      
      private var §9"J§:§4!y§;
      
      private var §&#_§:§6$"§;
      
      private var §]!M§:§6$"§;
      
      private var §>"6§:b2MouseJoint;
      
      private var §;#G§:§#H§;
      
      private var §0"Y§:Vector.<§4!y§>;
      
      private var §0!_§:Boolean;
      
      private var §+b§:Boolean;
      
      private var § !l§:int = 5;
      
      private var §%Y§:int = 8;
      
      private var §-"r§:int = 85;
      
      private var §4!#§:int = 98;
      
      private var §6P§:Point;
      
      private var §^'§:Number;
      
      private var §9s§:Number;
      
      private var §;g§:Number;
      
      public function §9"^§(param1:§%!q§, param2:§>f§, param3:Sprite)
      {
         this.§0"Y§ = new Vector.<§4!y§>();
         super(param1,param2,param3);
         this.§6E§(§4"c§.§2;§(§7"]§.§<,§()),true);
         this.§ #"§ = false;
         if(mBirds.length > 1)
         {
            this.§6o§ = new Point(mBirds[1].originalX,mBirds[1].originalY - (1.8 - mBirds[1].radius));
         }
         else if(mBirds.length > 0)
         {
            this.§6o§ = new Point(mBirds[0].originalX,mBirds[0].originalY - (1.8 - mBirds[0].radius));
         }
         else
         {
            this.§6o§ = new Point(x,y + 7);
         }
      }
      
      public function get § #"§() : Boolean
      {
         return this.§`!9§;
      }
      
      public function set § #"§(param1:Boolean) : void
      {
         this.§`!9§ = param1;
      }
      
      public function get §'!^§() : Boolean
      {
         return this.§-!r§;
      }
      
      public function set §'!^§(param1:Boolean) : void
      {
         var _loc2_:§0$2§ = null;
         if(this.§-!r§ == param1)
         {
            return;
         }
         this.§-!r§ = param1;
         if(this.§-!r§)
         {
            _loc2_ = this.getSlingshotAnimation();
            while(§4"D§.numChildren > 0)
            {
               §4"D§.removeChildAt(0);
            }
            §-#O§ = _loc2_.getFrame(0,§-#O§);
            §8!;§ = _loc2_.getFrame(1,§8!;§);
            §4"D§.addChild(§-#O§);
            §4"D§.addChild(§7!U§);
            §4"D§.addChild(§0"C§);
            §4"D§.addChild(§-#K§);
            §4"D§.addChild(§%"k§);
            §4"D§.addChild(§8!;§);
            §+!0§ = true;
            this.§ #"§ = false;
         }
      }
      
      override protected function getSlingshotAnimation() : §0$2§
      {
         if(this.§-!r§)
         {
            return §=#N§.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         if(this.§9"%§)
         {
            return §=#N§.animationManager.getAnimation(this.§9"%§.§'"P§);
         }
         return super.getSlingshotAnimation();
      }
      
      public function §6E§(param1:§'#v§, param2:Boolean, param3:Boolean = false) : void
      {
         var _loc4_:§6"+§ = null;
         if(!param2 && (this.§9"%§ && this.§9"%§.§5"g§ == param1.§5"g§))
         {
            return;
         }
         this.§9"%§ = param1;
         if(!param2)
         {
            §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§^$&§,[this.§9"%§.§5"g§],true);
         }
         for each(_loc4_ in mBirds)
         {
            _loc4_.§+"C§ = this.§9"%§;
         }
         §=#N§.camera.setAction(!!param3 ? int(§4#u§.§]#"§) : int(§4#u§.§?!G§));
         var _loc5_:§0$2§ = §=#N§.animationManager.getAnimation(this.§9"%§.§'"P§);
         §-#O§ = _loc5_.getFrame(0,§-#O§);
         §8!;§ = _loc5_.getFrame(1,§8!;§);
         this.§5#[§(this.§ #"§);
         §-#O§.visible = §8!;§.visible = true;
         this.§^"Q§();
         if(this.§9"%§ == §4"c§.§]#q§)
         {
            this.§1b§();
         }
         if((§'"`§ as §2$2§).§2"P§)
         {
            (§'"`§ as §2$2§).§2"P§.§#^§();
         }
         if(!param2)
         {
            this.§^"J§(this.§9"%§.§<""§,this.§9"%§.§>"S§,this.§9"%§.§%!§);
            if(!§3#U§.isPaused)
            {
               §!"p§.playSound(this.§9"%§.soundName,"ChannelPowerups");
            }
         }
         if(this.§'"l§)
         {
            this.§ ]§();
         }
         this.updateAnimations(0);
      }
      
      private function §1b§() : void
      {
         var _loc3_:§4!y§ = null;
         var _loc5_:§6$"§ = null;
         var _loc6_:§3!1§ = null;
         var _loc7_:§#H§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:§3!1§ = null;
         var _loc11_:§#H§ = null;
         var _loc12_:§3!1§ = null;
         var _loc13_:§#H§ = null;
         var _loc14_:§3!1§ = null;
         var _loc15_:§#H§ = null;
         §8!;§.visible = false;
         §-#O§.visible = false;
         §-#O§.width = 1;
         §-#O§.height = 220;
         var _loc1_:Array = [0.275,2.5,4.5,6.3,7.5,9.5];
         var _loc2_:int = -1;
         var _loc4_:int = 1;
         while(_loc4_ <= 6)
         {
            (_loc5_ = §=#N§.levelObjects.addObject("SLING_SHOT_TREE_PART_" + _loc4_,§8u§,7.5 + §!#§ - _loc1_[_loc4_ - 1],0,§!#L§.ID_NEXT_FREE,false,false,false) as §6$"§).getBody().GetDefinition().linearDamping = 7;
            _loc5_.getBody().GetDefinition().angularDamping = 0.1;
            _loc5_.getBody().SetAwake(true);
            this.§0"Y§.push(_loc5_);
            if(_loc2_ == -1)
            {
               _loc2_ = _loc5_.id;
               _loc3_ = _loc5_;
            }
            else
            {
               if(_loc4_ == 5)
               {
                  this.§&#_§ = _loc5_;
               }
               if(_loc4_ == 6)
               {
                  this.§]!M§ = _loc5_;
                  (_loc6_ = new §3!1§(§3!1§.§=#3§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0))).breakable = false;
                  _loc6_.coordinateType = 2;
                  _loc6_.§2'§ = true;
                  _loc7_ = (§=#N§.levelObjects as §;Y§).§1$!§(_loc6_);
               }
               else
               {
                  _loc8_ = -0.3 * Math.PI;
                  _loc9_ = 0.3 * Math.PI;
                  (_loc10_ = new §3!1§(§3!1§.§8#z§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0),false,true,_loc8_,_loc9_,false)).coordinateType = 2;
                  _loc10_.breakable = false;
                  _loc10_.§2'§ = true;
                  _loc11_ = (§=#N§.levelObjects as §;Y§).§1$!§(_loc10_);
                  (_loc12_ = new §3!1§(§3!1§.§1#L§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x + 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc12_.frequency = §1"G§ * 0.1;
                  _loc12_.dampingRatio = § "7§ * 0.1;
                  _loc12_.breakable = false;
                  _loc12_.§2'§ = true;
                  _loc13_ = (§=#N§.levelObjects as §;Y§).§1$!§(_loc12_);
                  (_loc14_ = new §3!1§(§3!1§.§1#L§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x - 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc14_.frequency = §1"G§ * 0.1;
                  _loc14_.dampingRatio = § "7§ * 0.1;
                  _loc14_.breakable = false;
                  _loc14_.§2'§ = true;
                  _loc15_ = (§=#N§.levelObjects as §;Y§).§1$!§(_loc14_);
               }
               _loc2_ = _loc5_.id;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         _loc2_ = _loc5_.id;
         _loc3_ = _loc5_;
      }
      
      private function §&!R§() : void
      {
         this.§9"J§ = §=#N§.levelObjects.addObject("POWERUP_TREESLING_FAKEBIRD",this.§&#_§.getBody().GetPosition().x,this.§&#_§.getBody().GetPosition().y,0,§!#L§.ID_NEXT_FREE,false,false,false) as §4!y§;
         this.§9"J§.getBody().GetDefinition().linearDamping = 7;
         this.§9"J§.getBody().GetDefinition().angularDamping = 0.1;
         this.§9"J§.getBody().SetAwake(true);
      }
      
      private function §^"Q§() : void
      {
         var _loc1_:§4!y§ = null;
         this.§0!_§ = false;
         this.§9"J§ = null;
         this.§&#_§ = null;
         this.§>"6§ = null;
         this.§;#G§ = null;
         for each(_loc1_ in this.§0"Y§)
         {
            if(§=#N§.levelObjects)
            {
               §=#N§.levelObjects.removeObject(_loc1_);
            }
         }
         this.§0"Y§.length = 0;
      }
      
      private function §0!U§() : void
      {
         this.§&!R§();
         var _loc1_:§3!1§ = new §3!1§(§3!1§.§1#L§,this.§9"J§.id,this.§&#_§.id,new Point(0,0),new Point(0,0),false);
         _loc1_.coordinateType = 2;
         _loc1_.frequency = §=W§;
         _loc1_.dampingRatio = §6!B§;
         _loc1_.breakable = false;
         _loc1_.§2'§ = true;
         var _loc2_:§#H§ = (§=#N§.levelObjects as §;Y§).§1$!§(_loc1_);
         var _loc3_:§3!1§ = new §3!1§(§3!1§.§1$5§,this.§&#_§.id,this.§9"J§.id,new Point(0,0),new Point(0,0));
         _loc3_.breakable = false;
         _loc3_.§2'§ = true;
         this.§;#G§ = (§=#N§.levelObjects as §;Y§).§1$!§(_loc3_);
         this.§>"6§ = this.§;#G§.§%#Z§ as b2MouseJoint;
         this.§9"J§.getBody().SetAwake(true);
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:b2Vec2 = null;
         if((§'"`§ as §2$2§).§2"P§)
         {
            if(mDragging)
            {
               if((§'"`§ as §2$2§).§2"P§.§^#X§)
               {
                  mDragging = false;
                  §7#p§ = false;
                  §[##§();
               }
            }
         }
         super.update(param1,param2);
         var _loc3_:§4!_§ = null;
         if(mSlingShotState == §3#2§ && !this.§0!_§ && !this.§9"J§ && this.§&#_§ && this.§&#_§.getBody())
         {
            this.§0!_§ = true;
            this.§+b§ = false;
            this.§0!U§();
         }
         else if(mSlingShotState == §6#G§ && !this.§+b§)
         {
            this.§+b§ = true;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         if(this.§9"J§ && mBirds.length > 0 && mSlingShotState == §3#2§)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            if(_loc3_)
            {
               _loc4_ = 0.5 * _loc3_.radius * Math.cos(this.§&#_§.§`$"§());
               _loc5_ = 0.5 * _loc3_.radius * Math.sin(this.§&#_§.§`$"§());
            }
            if(this.§>"6§)
            {
               if(mDragging)
               {
                  _loc6_ = (§3#U§.§8I§ as §6"v§).§-"c§();
                  _loc6_ = §=#N§.screenToBox2D(_loc6_.x,_loc6_.y);
                  _loc7_ = new b2Vec2(§`#x§ - mBirds[mNextBirdIndex].radius * Math.cos(§%"e§ / (180 / Math.PI)),§"#'§ + mBirds[mNextBirdIndex].radius * Math.sin(§%"e§ / (180 / Math.PI)));
                  this.§>"6§.§=#V§(new b2Vec2(this.§9"J§.getBody().GetPosition().x,this.§9"J§.getBody().GetPosition().y));
                  this.§9"J§.getBody().SetPosition(_loc7_);
               }
               else
               {
                  this.§8"-§();
               }
            }
         }
         if(mSlingShotState == §3#2§ && _loc3_ && this.§&#_§ && this.§&#_§.getBody() && this.§0!_§)
         {
         }
         if(this.§9"%§ == §4"c§.§]#q§)
         {
            §?"k§.y = §!#§ / §%!q§.§6q§ + 60;
         }
      }
      
      public function §,#A§() : void
      {
         this.§5#[§(true);
         this.§@$9§(§1#7§.§4$3§);
         this.§^"J§("POWERUP_SLINGSHOT_LIGHTNING",null,0);
         if(this.§'"l§)
         {
            this.§ ]§();
         }
      }
      
      public function §@$9§(param1:Number) : void
      {
         var _loc2_:§4!_§ = null;
         for each(_loc2_ in mBirds)
         {
            if(_loc2_.name == "BIRD_GREEN")
            {
               _loc2_.§'"]§ = param1 * §4!_§.§]"D§();
            }
            else
            {
               _loc2_.§'"]§ = param1;
            }
         }
      }
      
      protected function §5#[§(param1:Boolean = false) : void
      {
         var _loc2_:§0$2§ = null;
         if(this.§9"%§)
         {
            §1$=§(this.§9"%§.§^_§,this.§9"%§.§^_§,true);
         }
         else
         {
            §1$=§();
         }
         §4#]§ = !!param1 ? Number(§1#7§.§[o§) : Number(§1#7§.§%!T§);
         this.§ #"§ = param1;
         while(§4"D§.numChildren > 0)
         {
            §4"D§.removeChildAt(0);
         }
         if(this.§9"%§ != §4"c§.§]#q§)
         {
            §]$#§ = new Sprite();
            §]$#§.addChild(§-#O§);
            §]$#§.addChild(§7!U§);
            §?"k§ = new Sprite();
            §?"k§.addChild(§@!R§);
            §?"k§.addChild(§%"k§);
            §?"k§.addChild(§8!;§);
         }
         if(param1)
         {
            _loc2_ = §=#N§.animationManager.getAnimation("SLING_SHOT_KINGSLING");
            §?"k§.addChild(_loc2_.getFrame(0));
         }
         §9#y§();
         §+!0§ = true;
      }
      
      override protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:int = 0;
         super.updateAnimations(param1);
         if(this.§-$>§)
         {
            _loc2_ = this.§-$>§.length - 1;
            while(_loc2_ >= 0)
            {
               if(!this.§6#4§(this.§-$>§[_loc2_],param1))
               {
                  this.§-$>§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         this.§6#4§(this.§`!l§,param1);
         this.§6#4§(this.§[6§,param1);
         this.§6#4§(this.§6#$§,param1);
         this.§9!n§();
      }
      
      override public function useMightyEagle() : §4!_§
      {
         var _loc1_:§4!_§ = super.useMightyEagle();
         (_loc1_ as §6"+§).§+"C§ = this.§9"%§;
         return _loc1_;
      }
      
      override protected function initializeSlingshotObject(param1:§4U§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §4!_§
      {
         return new §6"+§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §4!_§
      {
         var _loc6_:§4!_§ = super.addSlingshotObject(param1,param2,param3,param4,param5);
         if(this.§ #"§)
         {
            this.§@$9§(§1#7§.§4$3§);
         }
         if(§=#N§ is §2$2§)
         {
            (§=#N§ as §2$2§).initializeSlingshotObject(_loc6_);
         }
         return _loc6_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§ #"§)
         {
            §!"p§.playSound("super_shot");
         }
         else if(this.§9"%§.§[! §)
         {
            §!"p§.playSound(this.§9"%§.§[! §);
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      public function §]%§() : Boolean
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc1_:Number = §8u§ / §%!q§.§6q§;
         var _loc2_:Number = §!#§ / §%!q§.§6q§;
         var _loc3_:int = 20 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc11_ = Math.random() * (Math.PI * 2);
            _loc12_ = 0.5 * 10 + 10 * (Math.random() * 0.5);
            §'"`§.particles.addParticle(§@>§.§5Y§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,§8u§,§!#§,1250,"",§@>§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc12_ * Math.cos(_loc11_) * 1,-_loc12_ * Math.sin(_loc11_) * 1,5,_loc12_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         var _loc7_:§6"+§ = null;
         if(mBirds.length > 0)
         {
            _loc7_ = mBirds[mNextBirdIndex] as §6"+§;
            mBirds.splice(mNextBirdIndex,1);
         }
         var _loc8_:§4!_§ = this.addBirdStraightIntoSlingshot("BIRD_WINGMAN",§8u§ + 0.7,§!#§ + 0.1,0);
         if(this.§9"%§)
         {
            (_loc8_ as §6"+§).§+"C§ = this.§9"%§;
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
         §!"p§.playSound("wingman_appears_slingshot","ChannelPowerups",0,1);
         (§'"`§ as §2$2§).§2"P§.§0Y§ = true;
         var _loc10_:§7#c§;
         (_loc10_ = §3#U§.§#$4§.particles as §7#c§).§0$A§(§8u§,§!#§);
         §+!0§ = true;
         if(_loc7_ && _loc7_.§,"§)
         {
            return true;
         }
         return false;
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc2_:§4!_§ = null;
         var _loc1_:Number = super.getLaunchSpeed();
         if(mBirds.length > 0)
         {
            _loc2_ = mBirds[mNextBirdIndex];
         }
         if(_loc2_ && _loc2_.§'"]§ > 0)
         {
            _loc1_ = _loc1_ / _loc2_.§-$0§ * _loc2_.§'"]§;
         }
         return _loc1_;
      }
      
      public function §=#J§(param1:Number, param2:§##a§) : §4!_§
      {
         var _loc3_:§4!_§ = null;
         var _loc4_:§##a§ = null;
         if(mBirds.length > 0)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            for each(_loc4_ in §%#k§.§1"E§)
            {
               if(_loc4_ == param2)
               {
                  _loc3_.§!a§ = _loc4_.§&$9§(_loc3_.name.toUpperCase());
                  _loc3_.§7!x§ = _loc4_.§<!]§(_loc3_.name.toUpperCase());
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
      
      public function § ]§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:§`"X§ = null;
         this.§'"l§ = true;
         this.§3o§ = this.§3o§ || §=#N§.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0,this.§3o§);
         this.§?e§ = this.§?e§ || §=#N§.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0,this.§?e§);
         if(!this.§'!^§)
         {
            this.§3o§.x = (§8u§ - 2) / §%!q§.§6q§;
            this.§3o§.y = (§!#§ - 3) / §%!q§.§6q§;
         }
         this.§?e§.x = this.§3o§.x - 12;
         this.§?e§.y = this.§3o§.y - 42;
         this.§?e§.pivotX = -50;
         this.§?e§.pivotY = -32;
         if(this.§9"%§ != §4"c§.§]#q§)
         {
            §4"D§.addChild(this.§?e§);
            §4"D§.addChild(this.§3o§);
            this.§0$+§ = Math.PI - §%"e§ * (Math.PI / 180);
            _loc1_ = this.§3o§.x * §%!q§.§6q§;
            _loc2_ = this.§3o§.y * §%!q§.§6q§;
            this.§7#O§(_loc1_,_loc2_);
         }
         else
         {
            _loc3_ = §34§.§6!§.getTexture("SLINGSCOPE_TREE_PART_6");
            this.§]!M§.sprite.removeChildAt(0);
            this.§]!M§.sprite.addChild(_loc3_.§5#w§());
            this.§7#O§(this.§]!M§.x * §%!q§.§6q§,this.§]!M§.y * §%!q§.§6q§ - 1);
         }
         §+!0§ = true;
      }
      
      private function §9!n§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§'"l§)
         {
            _loc1_ = §%"e§ * (Math.PI / 180) - this.§0$+§;
            if(Math.abs(_loc1_) < 0.5 * (Math.PI / 180))
            {
               this.§0$+§ = §%"e§ * (Math.PI / 180);
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
               this.§0$+§ += _loc1_ / 20;
            }
            this.§?e§.rotation = Math.PI - this.§0$+§;
            §+!0§ = true;
         }
      }
      
      private function §^"J§(param1:String, param2:String, param3:int) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc6_:Number = §-#O§.width;
         var _loc7_:Number = §-#O§.height;
         var _loc8_:Number = §8u§ / §%!q§.§6q§ + _loc6_ / 2 + -15;
         var _loc9_:Number = §!#§ / §%!q§.§6q§ + _loc7_ + -13;
         if(!this.§-$>§)
         {
            this.§-$>§ = new Vector.<§@"Z§>();
         }
         this.§-$>§.push(new §@"Z§(param1,§4"D§,§'"`§,_loc8_,_loc9_,50));
         §+!0§ = true;
         if(param2 && param3 > 0)
         {
            _loc10_ = 10 + Math.random() * 5;
            _loc11_ = 10;
            _loc12_ = 0;
            while(_loc12_ < _loc10_)
            {
               _loc13_ = 360 / _loc10_ * (_loc12_ + 1);
               _loc14_ = param2 + int(Math.random() * param3 + 1);
               §=#N§.particles.addSimpleParticle(_loc14_,§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,§=#N§.slingshot.x,§=#N§.slingshot.y + Math.random() * 6,700 + Math.random() * 500,"",§@>§.§'g§,_loc11_ * Math.cos(_loc13_),-_loc11_ * Math.sin(_loc13_),15,Math.random() * 60,0.5 + Math.random() * 1);
               _loc12_++;
            }
         }
      }
      
      public function §7#O§(param1:Number, param2:Number) : void
      {
         param1 /= §%!q§.§6q§;
         param2 /= §%!q§.§6q§;
         if(this.§`!l§)
         {
            this.§`!l§.reset();
            this.§`!l§.setPosition(param1,param2);
         }
         else
         {
            this.§`!l§ = new §@"Z§("BLAST_EFFECT",§4"D§,§=#N§,param1,param2,50);
            this.§`!l§.§`#s§(true);
         }
         §+!0§ = true;
      }
      
      public function §["<§(param1:Number, param2:Number) : void
      {
         param1 /= §%!q§.§6q§;
         param2 /= §%!q§.§6q§;
         if(this.§[6§)
         {
            this.§[6§.reset();
            this.§[6§.setPosition(param1,param2);
         }
         else
         {
            this.§[6§ = new §@"Z§("POWERUP_POWERPOTION_ACTIVATION",§4"D§,§=#N§,param1,param2,50);
            this.§[6§.§`#s§(true);
         }
         §+!0§ = true;
      }
      
      public function §;"Z§(param1:Number, param2:Number) : void
      {
         param1 /= §%!q§.§6q§;
         param2 /= §%!q§.§6q§;
         if(this.§6#$§)
         {
            this.§6#$§.reset();
            this.§6#$§.setPosition(param1,param2);
         }
         else
         {
            this.§6#$§ = new §@"Z§("POWERUP_BOOMBOX_ACTIVATION",§4"D§,§=#N§,param1,param2,50);
            this.§6#$§.§`#s§(true);
         }
         §+!0§ = true;
      }
      
      private function §6#4§(param1:§@"Z§, param2:Number) : Boolean
      {
         if(param1 && param1.update(param2))
         {
            §+!0§ = true;
            return true;
         }
         return false;
      }
      
      override protected function shootBird() : void
      {
         if(this.§9"%§ == §4"c§.§]#q§)
         {
            this.§8"-§();
         }
         super.shootBird();
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         if(this.§9"%§ == §4"c§.§]#q§)
         {
            this.§6P§ = getPosition();
            this.§^'§ = this.getLaunchSpeed();
            this.§9s§ = §<6§();
            this.§;g§ = §%"e§;
            this.§4!3§();
         }
      }
      
      private function §8"-§() : void
      {
         this.§0!_§ = false;
         if(this.§9"J§)
         {
            §=#N§.levelObjects.removeObject(this.§9"J§);
            this.§9"J§ = null;
         }
      }
      
      private function §4!3§() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§4!_§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:String = null;
         var _loc16_:§2">§ = null;
         var _loc1_:Number = this.§9s§ * (this.§4!#§ - this.§-"r§) / 100;
         var _loc2_:Number = this.§9s§ * this.§-"r§ / 100;
         var _loc3_:int = 1;
         while(_loc3_ <= this.§ !l§)
         {
            _loc4_ = this.§6P§.x;
            _loc5_ = this.§6P§.y;
            _loc7_ = (_loc6_ = mBirds[mNextBirdIndex]).radius + 0.1;
            _loc8_ = this.§;g§;
            _loc9_ = _loc7_ * Math.cos(_loc8_ * (Math.PI / 180));
            _loc10_ = _loc7_ * Math.sin(_loc8_ * (Math.PI / 180));
            _loc4_ += _loc9_;
            _loc5_ -= _loc10_;
            _loc11_ = _loc2_ + Math.random() * _loc1_;
            _loc12_ = this.§;g§ + ((this.§%Y§ >> 1) - this.§%Y§ / this.§ !l§ * _loc3_);
            _loc13_ = -this.§^'§ * _loc11_ * Math.cos(_loc12_ / (180 / Math.PI));
            _loc14_ = this.§^'§ * _loc11_ * Math.sin(_loc12_ / (180 / Math.PI));
            _loc15_ = §2">§.§,f§();
            (_loc16_ = (§=#N§.levelObjects as §;Y§).addObject(_loc15_,_loc4_,_loc5_,this.§;g§,§!#L§.ID_NEXT_FREE,false,false,false,1) as §2">§).§5"[§(new b2Vec2(_loc13_,_loc14_),false,true);
            _loc3_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§^"Q§();
         super.dispose();
      }
      
      public function get §@#1§() : §'#v§
      {
         return this.§9"%§;
      }
      
      public function §!#Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:§4!y§ = null;
         var _loc4_:b2DistanceJoint = null;
         §1"G§ = param1;
         § "7§ = param2;
         for each(_loc3_ in this.§0"Y§)
         {
            if(_loc3_.getBody().GetJointList() && _loc3_.getBody().GetJointList().joint && _loc3_.getBody().GetJointList().joint is b2DistanceJoint)
            {
               (_loc4_ = b2DistanceJoint(_loc3_.getBody().GetJointList().joint)).§!#T§(param1);
               _loc4_.§3h§(param2);
            }
         }
      }
      
      public function get §?##§() : §4!y§
      {
         return this.§9"J§;
      }
      
      public function get §1!]§() : §6$"§
      {
         return this.§&#_§;
      }
      
      override protected function playStretchSound() : void
      {
         §!"p§.playSound(this.§9"%§.§;"R§);
      }
      
      override public function setSlingShotState(param1:int) : void
      {
         if(mSlingShotState == §"!a§ && param1 == §2"j§)
         {
            return;
         }
         super.setSlingShotState(param1);
      }
      
      override public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §4!_§
      {
         var _loc5_:§4!_§ = super.addBirdStraightIntoSlingshot(param1,param2,param3,param4);
         if(this.§9"%§)
         {
            (_loc5_ as §6"+§).§+"C§ = this.§9"%§;
         }
         return _loc5_;
      }
      
      public function §^"E§() : Point
      {
         return this.§6o§;
      }
      
      override public function sortBirds() : void
      {
         super.sortBirds();
         var _loc1_:int = 0;
         while(_loc1_ < mBirds.length)
         {
            if(mBirds[_loc1_].name == "BIRD_WINGMAN")
            {
               §0"C§.setChildIndex(mBirds[_loc1_].sprite,0);
               break;
            }
            _loc1_++;
         }
      }
   }
}
