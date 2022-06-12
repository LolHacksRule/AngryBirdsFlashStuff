package §>2§
{
   import § §.§[$3§;
   import §!#C§.§4!Q§;
   import §"#z§.Texture;
   import §'G§.§3$§;
   import §'G§.§3$B§;
   import §'G§.§;D§;
   import §,"v§.§7!J§;
   import §-#X§.§0!H§;
   import §-#X§.§9#J§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §-$!§.§<U§;
   import §-;§.§+"d§;
   import §-;§.§<K§;
   import §1#u§.§;"Q§;
   import §2_§.b2DistanceJoint;
   import §2_§.b2MouseJoint;
   import §4§.§9#i§;
   import §6!3§.§"#i§;
   import §6!3§.§'!§;
   import §6!3§.§4!o§;
   import §6!3§.§;!U§;
   import §6!3§.§?"!§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §7"p§.§%6§;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§3Z§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §`#@§.§7n§;
   import flash.geom.Point;
   
   public class §7#;§ extends §6#t§
   {
      
      public static const §%"d§:int = 777;
      
      protected static const §3#T§:uint = 7602176;
      
      protected static var §%"u§:Texture;
      
      public static var §%!T§:int = 8;
      
      public static var § G§:int = 5;
      
      public static var §+!Y§:int = 1;
      
      public static var §8#"§:Number = 1;
      
      public static var §!$,§:Number = 180;
      
      public static var §]]§:Number = 70;
      
      public static var §2z§:Number = 0;
      
      public static var §'"z§:Number = 0;
       
      
      private var §>!-§:Point;
      
      private var §`p§:§>!^§;
      
      private var § #7§:Vector.<§>!^§>;
      
      private var §%!s§:§>!^§;
      
      private var § "[§:§>!^§;
      
      private var §]!5§:Boolean;
      
      private var §1!e§:DisplayObject;
      
      private var §<#D§:DisplayObject;
      
      private var §`U§:Number;
      
      private var §8z§:§ $<§;
      
      private var §"#$§:Boolean = false;
      
      private var §#$§:Boolean = false;
      
      private var § "P§:§;!U§;
      
      private var §+$"§:§"#i§;
      
      private var § $8§:§"#i§;
      
      private var §<#y§:b2MouseJoint;
      
      private var §4a§:§9#J§;
      
      private var §0!h§:Vector.<§;!U§>;
      
      private var §=!W§:Boolean;
      
      private var §>$ §:Boolean;
      
      private var §#P§:int = 5;
      
      private var §4]§:int = 8;
      
      private var §4"K§:int = 85;
      
      private var §#A§:int = 98;
      
      private var §"#5§:Point;
      
      private var §8#L§:Number;
      
      private var §+%§:Number;
      
      private var §+!R§:Number;
      
      public function §7#;§(param1:§!6§, param2:§7!J§, param3:Sprite)
      {
         this.§0!h§ = new Vector.<§;!U§>();
         super(param1,param2,param3);
         this.§]$?§(§0$@§.§"P§(§<U§.§='§()),true);
         this.§>$4§ = false;
         if(mBirds.length > 1)
         {
            this.§>!-§ = new Point(mBirds[1].originalX,mBirds[1].originalY - (1.8 - mBirds[1].radius));
         }
         else if(mBirds.length > 0)
         {
            this.§>!-§ = new Point(mBirds[0].originalX,mBirds[0].originalY - (1.8 - mBirds[0].radius));
         }
         else
         {
            this.§>!-§ = new Point(x,y + 7);
         }
      }
      
      public function get §>$4§() : Boolean
      {
         return this.§#$§;
      }
      
      public function set §>$4§(param1:Boolean) : void
      {
         this.§#$§ = param1;
      }
      
      public function get §]#;§() : Boolean
      {
         return this.§"#$§;
      }
      
      public function set §]#;§(param1:Boolean) : void
      {
         var _loc2_:§;D§ = null;
         if(this.§"#$§ == param1)
         {
            return;
         }
         this.§"#$§ = param1;
         if(this.§"#$§)
         {
            _loc2_ = this.getSlingshotAnimation();
            while(§'#f§.numChildren > 0)
            {
               §'#f§.removeChildAt(0);
            }
            §4#d§ = _loc2_.getFrame(0,§4#d§);
            §^# § = _loc2_.getFrame(1,§^# §);
            §'#f§.addChild(§4#d§);
            §'#f§.addChild(§^#7§);
            §'#f§.addChild(§1$1§);
            §'#f§.addChild(§2!A§);
            §'#f§.addChild(§^!0§);
            §'#f§.addChild(§^# §);
            §5!k§ = true;
            this.§>$4§ = false;
         }
      }
      
      override protected function getSlingshotAnimation() : §;D§
      {
         if(this.§"#$§)
         {
            return §5#0§.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         if(this.§8z§)
         {
            return §5#0§.animationManager.getAnimation(this.§8z§.§,"&§);
         }
         return super.getSlingshotAnimation();
      }
      
      public function §]$?§(param1:§ $<§, param2:Boolean, param3:Boolean = false) : void
      {
         var _loc4_:§&!T§ = null;
         if(!param2 && (this.§8z§ && this.§8z§.§1#7§ == param1.§1#7§))
         {
            return;
         }
         this.§8z§ = param1;
         if(!param2)
         {
            §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§4"h§(§[$3§.§5M§,[this.§8z§.§1#7§],true);
         }
         for each(_loc4_ in mBirds)
         {
            _loc4_.§<!c§ = this.§8z§;
         }
         §5#0§.camera.setAction(!!param3 ? int(§;"Q§.§4s§) : int(§;"Q§.§"8§));
         var _loc5_:§;D§ = §5#0§.animationManager.getAnimation(this.§8z§.§,"&§);
         §4#d§ = _loc5_.getFrame(0,§4#d§);
         §^# § = _loc5_.getFrame(1,§^# §);
         this.§1"5§(this.§>$4§);
         §4#d§.visible = §^# §.visible = true;
         this.§<"U§();
         if(this.§8z§ == §0$@§.§9!§)
         {
            this.§1w§();
         }
         if((§1$'§ as §"#1§).§=!G§)
         {
            (§1$'§ as §"#1§).§=!G§.§'"o§();
         }
         if(!param2)
         {
            this.§#$1§(this.§8z§.§9"m§,this.§8z§.particleName,this.§8z§.§=#6§);
            if(!§7n§.isPaused)
            {
               §3Z§.playSound(this.§8z§.soundName,"ChannelPowerups");
            }
         }
         if(this.§]!5§)
         {
            this.§^"'§();
         }
         this.updateAnimations(0);
      }
      
      private function §1w§() : void
      {
         var _loc3_:§;!U§ = null;
         var _loc5_:§"#i§ = null;
         var _loc6_:§0!H§ = null;
         var _loc7_:§9#J§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:§0!H§ = null;
         var _loc11_:§9#J§ = null;
         var _loc12_:§0!H§ = null;
         var _loc13_:§9#J§ = null;
         var _loc14_:§0!H§ = null;
         var _loc15_:§9#J§ = null;
         §^# §.visible = false;
         §4#d§.visible = false;
         §4#d§.width = 1;
         §4#d§.height = 220;
         var _loc1_:Array = [0.275,2.5,4.5,6.3,7.5,9.5];
         var _loc2_:int = -1;
         var _loc4_:int = 1;
         while(_loc4_ <= 6)
         {
            (_loc5_ = §5#0§.levelObjects.addObject("SLING_SHOT_TREE_PART_" + _loc4_,§["d§,7.5 + §%#z§ - _loc1_[_loc4_ - 1],0,§'!§.ID_NEXT_FREE,false,false,false) as §"#i§).getBody().GetDefinition().linearDamping = 7;
            _loc5_.getBody().GetDefinition().angularDamping = 0.1;
            _loc5_.getBody().SetAwake(true);
            this.§0!h§.push(_loc5_);
            if(_loc2_ == -1)
            {
               _loc2_ = _loc5_.id;
               _loc3_ = _loc5_;
            }
            else
            {
               if(_loc4_ == 5)
               {
                  this.§+$"§ = _loc5_;
               }
               if(_loc4_ == 6)
               {
                  this.§ $8§ = _loc5_;
                  (_loc6_ = new §0!H§(§0!H§.§,"!§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0))).breakable = false;
                  _loc6_.coordinateType = 2;
                  _loc6_.§#&§ = true;
                  _loc7_ = (§5#0§.levelObjects as §4!o§).§--§(_loc6_);
               }
               else
               {
                  _loc8_ = -0.3 * Math.PI;
                  _loc9_ = 0.3 * Math.PI;
                  (_loc10_ = new §0!H§(§0!H§.§9"V§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0),false,true,_loc8_,_loc9_,false)).coordinateType = 2;
                  _loc10_.breakable = false;
                  _loc10_.§#&§ = true;
                  _loc11_ = (§5#0§.levelObjects as §4!o§).§--§(_loc10_);
                  (_loc12_ = new §0!H§(§0!H§.§0#8§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x + 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc12_.frequency = §!$,§ * 0.1;
                  _loc12_.dampingRatio = §]]§ * 0.1;
                  _loc12_.breakable = false;
                  _loc12_.§#&§ = true;
                  _loc13_ = (§5#0§.levelObjects as §4!o§).§--§(_loc12_);
                  (_loc14_ = new §0!H§(§0!H§.§0#8§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x - 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc14_.frequency = §!$,§ * 0.1;
                  _loc14_.dampingRatio = §]]§ * 0.1;
                  _loc14_.breakable = false;
                  _loc14_.§#&§ = true;
                  _loc15_ = (§5#0§.levelObjects as §4!o§).§--§(_loc14_);
               }
               _loc2_ = _loc5_.id;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         _loc2_ = _loc5_.id;
         _loc3_ = _loc5_;
      }
      
      private function §<$6§() : void
      {
         this.§ "P§ = §5#0§.levelObjects.addObject("POWERUP_TREESLING_FAKEBIRD",this.§+$"§.getBody().GetPosition().x,this.§+$"§.getBody().GetPosition().y,0,§'!§.ID_NEXT_FREE,false,false,false) as §;!U§;
         this.§ "P§.getBody().GetDefinition().linearDamping = 7;
         this.§ "P§.getBody().GetDefinition().angularDamping = 0.1;
         this.§ "P§.getBody().SetAwake(true);
      }
      
      private function §<"U§() : void
      {
         var _loc1_:§;!U§ = null;
         this.§=!W§ = false;
         this.§ "P§ = null;
         this.§+$"§ = null;
         this.§<#y§ = null;
         this.§4a§ = null;
         for each(_loc1_ in this.§0!h§)
         {
            if(§5#0§.levelObjects)
            {
               §5#0§.levelObjects.removeObject(_loc1_);
            }
         }
         this.§0!h§.length = 0;
      }
      
      private function §3=§() : void
      {
         this.§<$6§();
         var _loc1_:§0!H§ = new §0!H§(§0!H§.§0#8§,this.§ "P§.id,this.§+$"§.id,new Point(0,0),new Point(0,0),false);
         _loc1_.coordinateType = 2;
         _loc1_.frequency = §2z§;
         _loc1_.dampingRatio = §'"z§;
         _loc1_.breakable = false;
         _loc1_.§#&§ = true;
         var _loc2_:§9#J§ = (§5#0§.levelObjects as §4!o§).§--§(_loc1_);
         var _loc3_:§0!H§ = new §0!H§(§0!H§.§3B§,this.§+$"§.id,this.§ "P§.id,new Point(0,0),new Point(0,0));
         _loc3_.breakable = false;
         _loc3_.§#&§ = true;
         this.§4a§ = (§5#0§.levelObjects as §4!o§).§--§(_loc3_);
         this.§<#y§ = this.§4a§.§ !§ as b2MouseJoint;
         this.§ "P§.getBody().SetAwake(true);
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:b2Vec2 = null;
         if((§1$'§ as §"#1§).§=!G§)
         {
            if(mDragging)
            {
               if((§1$'§ as §"#1§).§=!G§.§]$&§)
               {
                  mDragging = false;
                  §3""§ = false;
                  §;a§();
               }
            }
         }
         super.update(param1,param2);
         var _loc3_:§>#!§ = null;
         if(mSlingShotState == §5"#§ && !this.§=!W§ && !this.§ "P§ && this.§+$"§ && this.§+$"§.getBody())
         {
            this.§=!W§ = true;
            this.§>$ § = false;
            this.§3=§();
         }
         else if(mSlingShotState == §0"X§ && !this.§>$ §)
         {
            this.§>$ § = true;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         if(this.§ "P§ && mBirds.length > 0 && mSlingShotState == §5"#§)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            if(_loc3_)
            {
               _loc4_ = 0.5 * _loc3_.radius * Math.cos(this.§+$"§.§%#4§());
               _loc5_ = 0.5 * _loc3_.radius * Math.sin(this.§+$"§.§%#4§());
            }
            if(this.§<#y§)
            {
               if(mDragging)
               {
                  _loc6_ = (§7n§.§ "'§ as §9#i§).§6!a§();
                  _loc6_ = §5#0§.screenToBox2D(_loc6_.x,_loc6_.y);
                  _loc7_ = new b2Vec2(§0#e§ - mBirds[mNextBirdIndex].radius * Math.cos(§-!d§ / (180 / Math.PI)),§8"^§ + mBirds[mNextBirdIndex].radius * Math.sin(§-!d§ / (180 / Math.PI)));
                  this.§<#y§.§>!3§(new b2Vec2(this.§ "P§.getBody().GetPosition().x,this.§ "P§.getBody().GetPosition().y));
                  this.§ "P§.getBody().SetPosition(_loc7_);
               }
               else
               {
                  this.§5=§();
               }
            }
         }
         if(mSlingShotState == §5"#§ && _loc3_ && this.§+$"§ && this.§+$"§.getBody() && this.§=!W§)
         {
         }
         if(this.§8z§ == §0$@§.§9!§)
         {
            §?[§.y = §%#z§ / §!6§.§[#v§ + 60;
         }
      }
      
      public function §;#=§() : void
      {
         this.§1"5§(true);
         this.§1#X§(§!!W§.§&#m§);
         this.§#$1§("POWERUP_SLINGSHOT_LIGHTNING",null,0);
         if(this.§]!5§)
         {
            this.§^"'§();
         }
      }
      
      public function §1#X§(param1:Number) : void
      {
         var _loc2_:§>#!§ = null;
         for each(_loc2_ in mBirds)
         {
            if(_loc2_.name == "BIRD_GREEN")
            {
               _loc2_.§<!+§ = param1 * §>#!§.§&#i§();
            }
            else
            {
               _loc2_.§<!+§ = param1;
            }
         }
      }
      
      protected function §1"5§(param1:Boolean = false) : void
      {
         var _loc2_:§;D§ = null;
         if(this.§8z§)
         {
            §`"`§(this.§8z§.§<#J§,this.§8z§.§<#J§,true);
         }
         else
         {
            §`"`§();
         }
         §9$!§ = !!param1 ? Number(§!!W§.§%#R§) : Number(§!!W§.§2U§);
         this.§>$4§ = param1;
         while(§'#f§.numChildren > 0)
         {
            §'#f§.removeChildAt(0);
         }
         if(this.§8z§ != §0$@§.§9!§)
         {
            §="l§ = new Sprite();
            §="l§.addChild(§4#d§);
            §="l§.addChild(§^#7§);
            §?[§ = new Sprite();
            §?[§.addChild(§3#^§);
            §?[§.addChild(§^!0§);
            §?[§.addChild(§^# §);
         }
         if(param1)
         {
            _loc2_ = §5#0§.animationManager.getAnimation("SLING_SHOT_KINGSLING");
            §?[§.addChild(_loc2_.getFrame(0));
         }
         §]>§();
         §5!k§ = true;
      }
      
      override protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:int = 0;
         super.updateAnimations(param1);
         if(this.§ #7§)
         {
            _loc2_ = this.§ #7§.length - 1;
            while(_loc2_ >= 0)
            {
               if(!this.§9!T§(this.§ #7§[_loc2_],param1))
               {
                  this.§ #7§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         this.§9!T§(this.§`p§,param1);
         this.§9!T§(this.§%!s§,param1);
         this.§9!T§(this.§ "[§,param1);
         this.§7$D§();
      }
      
      override public function useMightyEagle() : §>#!§
      {
         var _loc1_:§>#!§ = super.useMightyEagle();
         (_loc1_ as §&!T§).§<!c§ = this.§8z§;
         return _loc1_;
      }
      
      override protected function initializeSlingshotObject(param1:§?$>§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §>#!§
      {
         return new §&!T§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §>#!§
      {
         var _loc6_:§>#!§ = super.addSlingshotObject(param1,param2,param3,param4,param5);
         if(this.§>$4§)
         {
            this.§1#X§(§!!W§.§&#m§);
         }
         if(§5#0§ is §"#1§)
         {
            (§5#0§ as §"#1§).initializeSlingshotObject(_loc6_);
         }
         return _loc6_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§>$4§)
         {
            §3Z§.playSound("super_shot");
         }
         else if(this.§8z§.§6"X§)
         {
            §3Z§.playSound(this.§8z§.§6"X§);
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      public function §^$ §() : Boolean
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc1_:Number = §["d§ / §!6§.§[#v§;
         var _loc2_:Number = §%#z§ / §!6§.§[#v§;
         var _loc3_:int = 20 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc11_ = Math.random() * (Math.PI * 2);
            _loc12_ = 0.5 * 10 + 10 * (Math.random() * 0.5);
            §1$'§.particles.addParticle(§6!9§.§?!R§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,§["d§,§%#z§,1250,"",§6!9§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc12_ * Math.cos(_loc11_) * 1,-_loc12_ * Math.sin(_loc11_) * 1,5,_loc12_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         var _loc7_:§&!T§ = null;
         if(mBirds.length > 0)
         {
            _loc7_ = mBirds[mNextBirdIndex] as §&!T§;
            mBirds.splice(mNextBirdIndex,1);
         }
         var _loc8_:§>#!§ = this.addBirdStraightIntoSlingshot("BIRD_WINGMAN",§["d§ + 0.7,§%#z§ + 0.1,0);
         if(this.§8z§)
         {
            (_loc8_ as §&!T§).§<!c§ = this.§8z§;
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
         §3Z§.playSound("wingman_appears_slingshot","ChannelPowerups",0,1);
         (§1$'§ as §"#1§).§=!G§.§>j§ = true;
         var _loc10_:§%6§;
         (_loc10_ = §7n§.§6#K§.particles as §%6§).§+!j§(§["d§,§%#z§);
         §5!k§ = true;
         if(_loc7_ && _loc7_.§+#'§)
         {
            return true;
         }
         return false;
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc2_:§>#!§ = null;
         var _loc1_:Number = super.getLaunchSpeed();
         if(mBirds.length > 0)
         {
            _loc2_ = mBirds[mNextBirdIndex];
         }
         if(_loc2_ && _loc2_.§<!+§ > 0)
         {
            _loc1_ = _loc1_ / _loc2_.§0" § * _loc2_.§<!+§;
         }
         return _loc1_;
      }
      
      public function §&"O§(param1:Number, param2:§<K§) : §>#!§
      {
         var _loc3_:§>#!§ = null;
         var _loc4_:§<K§ = null;
         if(mBirds.length > 0)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            for each(_loc4_ in §+"d§.§]V§)
            {
               if(_loc4_ == param2)
               {
                  _loc3_.§]!q§ = _loc4_.§;V§(_loc3_.name.toUpperCase());
                  _loc3_.§+#?§ = _loc4_.§`9§(_loc3_.name.toUpperCase());
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
      
      public function §^"'§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:§3$B§ = null;
         this.§]!5§ = true;
         this.§1!e§ = this.§1!e§ || §5#0§.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0,this.§1!e§);
         this.§<#D§ = this.§<#D§ || §5#0§.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0,this.§<#D§);
         if(!this.§]#;§)
         {
            this.§1!e§.x = (§["d§ - 2) / §!6§.§[#v§;
            this.§1!e§.y = (§%#z§ - 3) / §!6§.§[#v§;
         }
         this.§<#D§.x = this.§1!e§.x - 12;
         this.§<#D§.y = this.§1!e§.y - 42;
         this.§<#D§.pivotX = -50;
         this.§<#D§.pivotY = -32;
         if(this.§8z§ != §0$@§.§9!§)
         {
            §'#f§.addChild(this.§<#D§);
            §'#f§.addChild(this.§1!e§);
            this.§`U§ = Math.PI - §-!d§ * (Math.PI / 180);
            _loc1_ = this.§1!e§.x * §!6§.§[#v§;
            _loc2_ = this.§1!e§.y * §!6§.§[#v§;
            this.§-"`§(_loc1_,_loc2_);
         }
         else
         {
            _loc3_ = §3$§.§`"H§.getTexture("SLINGSCOPE_TREE_PART_6");
            this.§ $8§.sprite.removeChildAt(0);
            this.§ $8§.sprite.addChild(_loc3_.§"$ §());
            this.§-"`§(this.§ $8§.x * §!6§.§[#v§,this.§ $8§.y * §!6§.§[#v§ - 1);
         }
         §5!k§ = true;
      }
      
      private function §7$D§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§]!5§)
         {
            _loc1_ = §-!d§ * (Math.PI / 180) - this.§`U§;
            if(Math.abs(_loc1_) < 0.5 * (Math.PI / 180))
            {
               this.§`U§ = §-!d§ * (Math.PI / 180);
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
               this.§`U§ += _loc1_ / 20;
            }
            this.§<#D§.rotation = Math.PI - this.§`U§;
            §5!k§ = true;
         }
      }
      
      private function §#$1§(param1:String, param2:String, param3:int) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc6_:Number = §4#d§.width;
         var _loc7_:Number = §4#d§.height;
         var _loc8_:Number = §["d§ / §!6§.§[#v§ + _loc6_ / 2 + -15;
         var _loc9_:Number = §%#z§ / §!6§.§[#v§ + _loc7_ + -13;
         if(!this.§ #7§)
         {
            this.§ #7§ = new Vector.<§>!^§>();
         }
         this.§ #7§.push(new §>!^§(param1,§'#f§,§1$'§,_loc8_,_loc9_,50));
         §5!k§ = true;
         if(param2 && param3 > 0)
         {
            _loc10_ = 10 + Math.random() * 5;
            _loc11_ = 10;
            _loc12_ = 0;
            while(_loc12_ < _loc10_)
            {
               _loc13_ = 360 / _loc10_ * (_loc12_ + 1);
               _loc14_ = param2 + int(Math.random() * param3 + 1);
               §5#0§.particles.addSimpleParticle(_loc14_,§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,§5#0§.slingshot.x,§5#0§.slingshot.y + Math.random() * 6,700 + Math.random() * 500,"",§6!9§.§9"W§,_loc11_ * Math.cos(_loc13_),-_loc11_ * Math.sin(_loc13_),15,Math.random() * 60,0.5 + Math.random() * 1);
               _loc12_++;
            }
         }
      }
      
      public function §-"`§(param1:Number, param2:Number) : void
      {
         param1 /= §!6§.§[#v§;
         param2 /= §!6§.§[#v§;
         if(this.§`p§)
         {
            this.§`p§.reset();
            this.§`p§.setPosition(param1,param2);
         }
         else
         {
            this.§`p§ = new §>!^§("BLAST_EFFECT",§'#f§,§5#0§,param1,param2,50);
            this.§`p§.§="<§(true);
         }
         §5!k§ = true;
      }
      
      public function §^#m§(param1:Number, param2:Number) : void
      {
         param1 /= §!6§.§[#v§;
         param2 /= §!6§.§[#v§;
         if(this.§%!s§)
         {
            this.§%!s§.reset();
            this.§%!s§.setPosition(param1,param2);
         }
         else
         {
            this.§%!s§ = new §>!^§("POWERUP_POWERPOTION_ACTIVATION",§'#f§,§5#0§,param1,param2,50);
            this.§%!s§.§="<§(true);
         }
         §5!k§ = true;
      }
      
      public function §`$2§(param1:Number, param2:Number) : void
      {
         param1 /= §!6§.§[#v§;
         param2 /= §!6§.§[#v§;
         if(this.§ "[§)
         {
            this.§ "[§.reset();
            this.§ "[§.setPosition(param1,param2);
         }
         else
         {
            this.§ "[§ = new §>!^§("POWERUP_BOOMBOX_ACTIVATION",§'#f§,§5#0§,param1,param2,50);
            this.§ "[§.§="<§(true);
         }
         §5!k§ = true;
      }
      
      private function §9!T§(param1:§>!^§, param2:Number) : Boolean
      {
         if(param1 && param1.update(param2))
         {
            §5!k§ = true;
            return true;
         }
         return false;
      }
      
      override protected function shootBird() : void
      {
         if(this.§8z§ == §0$@§.§9!§)
         {
            this.§5=§();
         }
         super.shootBird();
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         if(this.§8z§ == §0$@§.§9!§)
         {
            this.§"#5§ = getPosition();
            this.§8#L§ = this.getLaunchSpeed();
            this.§+%§ = §2!p§();
            this.§+!R§ = §-!d§;
            this.§#!d§();
         }
      }
      
      private function §5=§() : void
      {
         this.§=!W§ = false;
         if(this.§ "P§)
         {
            §5#0§.levelObjects.removeObject(this.§ "P§);
            this.§ "P§ = null;
         }
      }
      
      private function §#!d§() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§>#!§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:String = null;
         var _loc16_:§?"!§ = null;
         var _loc1_:Number = this.§+%§ * (this.§#A§ - this.§4"K§) / 100;
         var _loc2_:Number = this.§+%§ * this.§4"K§ / 100;
         var _loc3_:int = 1;
         while(_loc3_ <= this.§#P§)
         {
            _loc4_ = this.§"#5§.x;
            _loc5_ = this.§"#5§.y;
            _loc7_ = (_loc6_ = mBirds[mNextBirdIndex]).radius + 0.1;
            _loc8_ = this.§+!R§;
            _loc9_ = _loc7_ * Math.cos(_loc8_ * (Math.PI / 180));
            _loc10_ = _loc7_ * Math.sin(_loc8_ * (Math.PI / 180));
            _loc4_ += _loc9_;
            _loc5_ -= _loc10_;
            _loc11_ = _loc2_ + Math.random() * _loc1_;
            _loc12_ = this.§+!R§ + ((this.§4]§ >> 1) - this.§4]§ / this.§#P§ * _loc3_);
            _loc13_ = -this.§8#L§ * _loc11_ * Math.cos(_loc12_ / (180 / Math.PI));
            _loc14_ = this.§8#L§ * _loc11_ * Math.sin(_loc12_ / (180 / Math.PI));
            _loc15_ = §?"!§.§7!y§();
            (_loc16_ = (§5#0§.levelObjects as §4!o§).addObject(_loc15_,_loc4_,_loc5_,this.§+!R§,§'!§.ID_NEXT_FREE,false,false,false,1) as §?"!§).§-#l§(new b2Vec2(_loc13_,_loc14_),false,true);
            _loc3_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§<"U§();
         super.dispose();
      }
      
      public function get §1#6§() : § $<§
      {
         return this.§8z§;
      }
      
      public function §+"i§(param1:Number, param2:Number) : void
      {
         var _loc3_:§;!U§ = null;
         var _loc4_:b2DistanceJoint = null;
         §!$,§ = param1;
         §]]§ = param2;
         for each(_loc3_ in this.§0!h§)
         {
            if(_loc3_.getBody().GetJointList() && _loc3_.getBody().GetJointList().joint && _loc3_.getBody().GetJointList().joint is b2DistanceJoint)
            {
               (_loc4_ = b2DistanceJoint(_loc3_.getBody().GetJointList().joint)).§]$$§(param1);
               _loc4_.§="O§(param2);
            }
         }
      }
      
      public function get §9p§() : §;!U§
      {
         return this.§ "P§;
      }
      
      public function get §]"_§() : §"#i§
      {
         return this.§+$"§;
      }
      
      override protected function playStretchSound() : void
      {
         §3Z§.playSound(this.§8z§.§1j§);
      }
      
      override public function setSlingShotState(param1:int) : void
      {
         if(mSlingShotState == §%"d§ && param1 == §2Y§)
         {
            return;
         }
         super.setSlingShotState(param1);
      }
      
      override public function addBirdStraightIntoSlingshot(param1:String, param2:Number, param3:Number, param4:int) : §>#!§
      {
         var _loc5_:§>#!§ = super.addBirdStraightIntoSlingshot(param1,param2,param3,param4);
         if(this.§8z§)
         {
            (_loc5_ as §&!T§).§<!c§ = this.§8z§;
         }
         return _loc5_;
      }
      
      public function §^>§() : Point
      {
         return this.§>!-§;
      }
      
      override public function sortBirds() : void
      {
         super.sortBirds();
         var _loc1_:int = 0;
         while(_loc1_ < mBirds.length)
         {
            if(mBirds[_loc1_].name == "BIRD_WINGMAN")
            {
               §1$1§.setChildIndex(mBirds[_loc1_].sprite,0);
               break;
            }
            _loc1_++;
         }
      }
   }
}
