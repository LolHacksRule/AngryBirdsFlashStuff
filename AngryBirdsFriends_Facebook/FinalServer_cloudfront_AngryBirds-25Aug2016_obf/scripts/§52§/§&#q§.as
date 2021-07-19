package §52§
{
   import §#v§.§-"R§;
   import §%$!§.§+3§;
   import §'"-§.§'§;
   import §'"-§.§`j§;
   import §'z§.§7!J§;
   import §+!d§.§&b§;
   import §+!d§.§2![§;
   import §+!d§.§3§;
   import §,#L§.§8"y§;
   import §,#L§.§=#O§;
   import §0m§.b2Vec2;
   import §1&§.Texture;
   import §8§.§#$+§;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §;!H§.§<!K§;
   import §=!7§.§ #f§;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §?§.§>"$§;
   import §@!O§.b2DistanceJoint;
   import §@!O§.b2MouseJoint;
   import §@"§.§&!=§;
   import §@"§.§+!3§;
   import §@"§.§`"W§;
   import §["Q§.§0$,§;
   import §[#a§.§6"[§;
   import §[#a§.§="@§;
   import §[#a§.§=#]§;
   import §[#a§.§^!n§;
   import §[#a§.§^#M§;
   import §`#C§.§8K§;
   import flash.geom.Point;
   
   public class §&#q§ extends §@M§
   {
      
      public static const §,#o§:int = 777;
      
      protected static const §>">§:uint = 7602176;
      
      protected static var §,""§:Texture;
      
      public static var §,#P§:int = 8;
      
      public static var §+"d§:int = 5;
      
      public static var §9"p§:int = 1;
      
      public static var §%!F§:Number = 1;
      
      public static var §># §:Number = 180;
      
      public static var §<$3§:Number = 70;
      
      public static var §<!V§:Number = 0;
      
      public static var §="p§:Number = 0;
       
      
      private var §-"6§:§&#^§;
      
      private var §%#4§:Vector.<§&#^§>;
      
      private var §<#B§:Boolean;
      
      private var §'@§:DisplayObject;
      
      private var §;"Z§:DisplayObject;
      
      private var §5t§:Number;
      
      private var §6#e§:§&b§;
      
      private var §=$6§:Boolean = false;
      
      private var §0" §:Boolean = false;
      
      private var §#m§:§="@§;
      
      private var §3"'§:§^!n§;
      
      private var §'#i§:§^!n§;
      
      private var §@!s§:b2MouseJoint;
      
      private var §#"l§:§=#O§;
      
      private var §1!5§:Vector.<§="@§>;
      
      private var §#!N§:Boolean;
      
      private var §%#2§:Boolean;
      
      private var §<#q§:int = 5;
      
      private var §=">§:int = 8;
      
      private var §@#"§:int = 85;
      
      private var §?$2§:int = 98;
      
      private var §<"I§:Point;
      
      private var §%!7§:Number;
      
      private var §8";§:Number;
      
      private var §=#%§:Number;
      
      public function §&#q§(param1:§#!,§, param2:§-"R§, param3:Sprite)
      {
         this.§1!5§ = new Vector.<§="@§>();
         super(param1,param2,param3);
         this.§#"j§(§3#8§.§6#o§(§2![§.§,#>§()),true);
         this.§;!4§ = false;
      }
      
      public function get §;!4§() : Boolean
      {
         return this.§0" §;
      }
      
      public function set §;!4§(param1:Boolean) : void
      {
         this.§0" § = param1;
      }
      
      public function get §3"s§() : Boolean
      {
         return this.§=$6§;
      }
      
      public function set §3"s§(param1:Boolean) : void
      {
         var _loc2_:§`"W§ = null;
         if(this.§=$6§ == param1)
         {
            return;
         }
         this.§=$6§ = param1;
         if(this.§=$6§)
         {
            _loc2_ = this.getSlingshotAnimation();
            while(§]Y§.numChildren > 0)
            {
               §]Y§.removeChildAt(0);
            }
            §>%§ = _loc2_.getFrame(0,§>%§);
            §3#q§ = _loc2_.getFrame(1,§3#q§);
            §]Y§.addChild(§>%§);
            §]Y§.addChild(§'"U§);
            §]Y§.addChild(§2"9§);
            §]Y§.addChild(§`"s§);
            §]Y§.addChild(§#!B§);
            §]Y§.addChild(§3#q§);
            §-#@§ = true;
            this.§;!4§ = false;
         }
      }
      
      override protected function getSlingshotAnimation() : §`"W§
      {
         if(this.§=$6§)
         {
            return §,#2§.animationManager.getAnimation("CHRISTMAS_SLINGSHOT");
         }
         if(this.§6#e§)
         {
            return §,#2§.animationManager.getAnimation(this.§6#e§.§4##§);
         }
         return super.getSlingshotAnimation();
      }
      
      public function §#"j§(param1:§&b§, param2:Boolean, param3:Boolean = false) : void
      {
         null;
         if(!param2 && (this.§6#e§ && this.§6#e§.§"!E§ == param1.§"!E§))
         {
            return;
         }
         this.§6#e§ = param1;
         var _loc6_:int = 0;
         var _loc7_:* = mBirds;
         while(§§hasnext(_loc7_,_loc6_))
         {
         }
         §,#2§.camera.setAction(!!param3 ? int(§0$,§.§-"#§) : int(§0$,§.§6S§));
         var _loc5_:§`"W§ = §,#2§.animationManager.getAnimation(this.§6#e§.§4##§);
         §>%§ = _loc5_.getFrame(0,§>%§);
         §3#q§ = _loc5_.getFrame(1,§3#q§);
         this.§%V§(this.§;!4§);
         §>%§.visible = §3#q§.visible = true;
         this.§3#I§();
         if(this.§6#e§ == §3#8§.§ "Z§)
         {
            this.§[!G§();
         }
         if((§#""§ as §#%§).§4"w§)
         {
            (§#""§ as §#%§).§4"w§.§^"X§();
         }
         if(!param2)
         {
            this.§#$1§(this.§6#e§.§4'§,this.§6#e§.§%#x§,this.§6#e§.§4N§);
            if(!§>"$§.isPaused)
            {
               §#$+§.playSound(this.§6#e§.soundName,"ChannelPowerups");
            }
            §+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§3h§(§<!K§.§-7§,[param1.§"!E§],true);
         }
         if(this.§<#B§)
         {
            this.§"!j§();
         }
         this.updateAnimations(0);
      }
      
      private function §[!G§() : void
      {
         null;
         var _loc5_:§^!n§ = null;
         var _loc6_:§8"y§ = null;
         null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:§8"y§ = null;
         null;
         var _loc12_:§8"y§ = null;
         null;
         var _loc14_:§8"y§ = null;
         null;
         §>%§.visible = §3#q§.visible = false;
         §>%§.width = 1;
         §>%§.height = 220;
         var _loc1_:Array = [0.275,2.5,4.5,6.3,7.5,9.5];
         var _loc2_:int = -1;
         var _loc4_:int = 1;
         while(_loc4_ <= 6)
         {
            (_loc5_ = §,#2§.levelObjects.addObject("SLING_SHOT_TREE_PART_" + _loc4_,§+!5§,7.5 + §'! § - _loc1_[_loc4_ - 1],0,§6"[§.ID_NEXT_FREE,false,false,false) as §^!n§).getBody().GetDefinition().linearDamping = 7;
            _loc5_.getBody().GetDefinition().angularDamping = 0.1;
            _loc5_.getBody().SetAwake(true);
            this.§1!5§.push(_loc5_);
            if(_loc2_ == -1)
            {
               _loc2_ = _loc5_.id;
               _loc5_;
            }
            else
            {
               if(_loc4_ == 5)
               {
                  this.§3"'§ = _loc5_;
               }
               if(_loc4_ == 6)
               {
                  this.§'#i§ = _loc5_;
                  (_loc6_ = new §8"y§(§8"y§.§!![§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0))).breakable = false;
                  _loc6_.coordinateType = 2;
                  (§,#2§.levelObjects as §=#]§).§&V§(_loc6_);
               }
               else
               {
                  _loc8_ = -0.3 * Math.PI;
                  _loc9_ = 0.3 * Math.PI;
                  (_loc10_ = new §8"y§(§8"y§.§6#N§,_loc2_,_loc5_.id,new Point(0,0),new Point(0,0),false,true,_loc8_,_loc9_,false)).coordinateType = 2;
                  _loc10_.breakable = false;
                  (§,#2§.levelObjects as §=#]§).§&V§(_loc10_);
                  (_loc12_ = new §8"y§(§8"y§.§0$9§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x + 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc12_.frequency = §># § * 0.1;
                  _loc12_.dampingRatio = §<$3§ * 0.1;
                  _loc12_.breakable = false;
                  (§,#2§.levelObjects as §=#]§).§&V§(_loc12_);
                  (_loc14_ = new §8"y§(§8"y§.§0$9§,_loc2_,_loc5_.id,new Point(_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y),new Point(_loc5_.getBody().GetPosition().x - 1,_loc5_.getBody().GetPosition().y - 1))).coordinateType = 1;
                  _loc14_.frequency = §># § * 0.1;
                  _loc14_.dampingRatio = §<$3§ * 0.1;
                  _loc14_.breakable = false;
                  (§,#2§.levelObjects as §=#]§).§&V§(_loc14_);
               }
               _loc2_ = _loc5_.id;
               _loc5_;
            }
            _loc4_++;
         }
         _loc2_ = _loc5_.id;
         _loc5_;
      }
      
      private function §`y§() : void
      {
         this.§#m§ = §,#2§.levelObjects.addObject("POWERUP_TREESLING_FAKEBIRD",this.§3"'§.getBody().GetPosition().x,this.§3"'§.getBody().GetPosition().y,0,§6"[§.ID_NEXT_FREE,false,false,false) as §="@§;
         this.§#m§.getBody().GetDefinition().linearDamping = 7;
         this.§#m§.getBody().GetDefinition().angularDamping = 0.1;
         this.§#m§.getBody().SetAwake(true);
      }
      
      private function §3#I§() : void
      {
         var _loc1_:§="@§ = null;
         this.§#!N§ = false;
         this.§#m§ = null;
         this.§3"'§ = null;
         this.§@!s§ = null;
         this.§#"l§ = null;
         for each(_loc1_ in this.§1!5§)
         {
            if(§,#2§.levelObjects)
            {
               §,#2§.levelObjects.removeObject(_loc1_);
            }
         }
         this.§1!5§.length = 0;
      }
      
      private function §3V§() : void
      {
         this.§`y§();
         var _loc1_:§8"y§ = new §8"y§(§8"y§.§0$9§,this.§#m§.id,this.§3"'§.id,new Point(0,0),new Point(0,0),false);
         _loc1_.coordinateType = 2;
         _loc1_.frequency = §<!V§;
         _loc1_.dampingRatio = §="p§;
         _loc1_.breakable = false;
         (§,#2§.levelObjects as §=#]§).§&V§(_loc1_);
         var _loc3_:§8"y§ = new §8"y§(§8"y§.§,"h§,this.§3"'§.id,this.§#m§.id,new Point(0,0),new Point(0,0));
         _loc3_.breakable = false;
         this.§#"l§ = (§,#2§.levelObjects as §=#]§).§&V§(_loc3_);
         this.§@!s§ = this.§#"l§.§&#X§ as b2MouseJoint;
         this.§#m§.getBody().SetAwake(true);
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Point = null;
         var _loc7_:b2Vec2 = null;
         super.update(param1,param2);
         var _loc3_:§5!&§ = null;
         if(mSlingShotState == §0!C§ && !this.§#!N§ && !this.§#m§ && this.§3"'§ && this.§3"'§.getBody())
         {
            this.§#!N§ = true;
            this.§%#2§ = false;
            this.§3V§();
         }
         else if(mSlingShotState == §>!H§ && !this.§%#2§)
         {
            this.§%#2§ = true;
         }
         Number(0);
         Number(0);
         if(this.§#m§ && mBirds.length > 0 && mSlingShotState == §0!C§)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            if(_loc3_)
            {
               Number(0.5 * _loc3_.radius * Math.cos(this.§3"'§.§^!Y§()));
               Number(0.5 * _loc3_.radius * Math.sin(this.§3"'§.§^!Y§()));
            }
            if(this.§@!s§)
            {
               if(mDragging)
               {
                  _loc6_ = (§>"$§.§#0§ as §7!J§).§>#f§();
                  _loc6_ = §,#2§.screenToBox2D(_loc6_.x,_loc6_.y);
                  _loc7_ = new b2Vec2(§5"x§ - mBirds[mNextBirdIndex].radius * Math.cos(§,#j§ / (180 / Math.PI)),§0#[§ + mBirds[mNextBirdIndex].radius * Math.sin(§,#j§ / (180 / Math.PI)));
                  this.§@!s§.§ "5§(new b2Vec2(this.§#m§.getBody().GetPosition().x,this.§#m§.getBody().GetPosition().y));
                  this.§#m§.getBody().SetPosition(_loc7_);
               }
               else
               {
                  this.§^"t§();
               }
            }
         }
         if(mSlingShotState == §0!C§ && _loc3_ && this.§3"'§ && this.§3"'§.getBody() && this.§#!N§)
         {
         }
         if(this.§6#e§ == §3#8§.§ "Z§)
         {
            § #s§.y = §'! § / §#!,§.§?$#§ + 60;
         }
      }
      
      public function §%z§() : void
      {
         this.§%V§(true);
         this.§@!7§(§;!p§.§<v§);
         this.§#$1§("POWERUP_SLINGSHOT_LIGHTNING",null,0);
         if(this.§<#B§)
         {
            this.§"!j§();
         }
      }
      
      public function §@!7§(param1:Number) : void
      {
         var _loc2_:§5!&§ = null;
         for each(_loc2_ in mBirds)
         {
            _loc2_.§4"?§ = param1;
         }
      }
      
      protected function §%V§(param1:Boolean = false) : void
      {
         var _loc2_:§`"W§ = null;
         if(this.§6#e§)
         {
            §3#N§(this.§6#e§.§@"a§,this.§6#e§.§@"a§,true);
         }
         else
         {
            §3#N§();
         }
         §6"=§ = !!param1 ? Number(§;!p§.§4"f§) : Number(§;!p§.§ !K§);
         this.§;!4§ = param1;
         while(§]Y§.numChildren > 0)
         {
            §]Y§.removeChildAt(0);
         }
         if(this.§6#e§ != §3#8§.§ "Z§)
         {
            §^b§ = new Sprite();
            §^b§.addChild(§>%§);
            §^b§.addChild(§'"U§);
            § #s§ = new Sprite();
            § #s§.addChild(§;3§);
            § #s§.addChild(§#!B§);
            § #s§.addChild(§3#q§);
         }
         if(param1)
         {
            _loc2_ = §,#2§.animationManager.getAnimation("SLING_SHOT_KINGSLING");
            § #s§.addChild(_loc2_.getFrame(0));
         }
         §0!o§();
         §-#@§ = true;
      }
      
      override protected function updateAnimations(param1:Number) : void
      {
         var _loc2_:int = 0;
         super.updateAnimations(param1);
         if(this.§%#4§)
         {
            _loc2_ = this.§%#4§.length - 1;
            while(_loc2_ >= 0)
            {
               if(!this.§<$,§(this.§%#4§[_loc2_],param1))
               {
                  this.§%#4§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         this.§<$,§(this.§-"6§,param1);
         this.§?y§();
      }
      
      override public function useMightyEagle() : §5!&§
      {
         var _loc1_:§5!&§ = super.useMightyEagle();
         (_loc1_ as §1!X§).§^#H§ = this.§6#e§;
         return _loc1_;
      }
      
      override protected function initializeSlingshotObject(param1:§8K§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §5!&§
      {
         return new §1!X§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §5!&§
      {
         var _loc6_:§5!&§ = super.addSlingshotObject(param1,param2,param3,param4,param5);
         if(this.§;!4§)
         {
            this.§@!7§(§;!p§.§<v§);
         }
         if(§,#2§ is §#%§)
         {
            (§,#2§ as §#%§).initializeSlingshotObject(_loc6_);
         }
         return _loc6_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§;!4§)
         {
            §#$+§.playSound("Powerup_Speed");
         }
         else if(this.§6#e§.§<x§)
         {
            §#$+§.playSound(this.§6#e§.§<x§);
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      public function §]M§() : Boolean
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         Number(§+!5§ / §#!,§.§?$#§);
         Number(§'! § / §#!,§.§?$#§);
         var _loc3_:int = 20 + Math.random() * 10;
         var _loc4_:int = 10;
         var _loc5_:Number = 1;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc11_ = Math.random() * (Math.PI * 2);
            _loc12_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §#""§.particles.addParticle(§=$4§.§9J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,§+!5§,§'! §,1250,"",§=$4§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc12_ * Math.cos(_loc11_) * _loc5_,-_loc12_ * Math.sin(_loc11_) * _loc5_,5,_loc12_ * 20,Math.sqrt(_loc5_));
            _loc6_++;
         }
         var _loc7_:§1!X§ = null;
         if(mBirds.length > 0)
         {
            _loc7_ = mBirds[mNextBirdIndex] as §1!X§;
            mBirds.splice(mNextBirdIndex,1);
         }
         var _loc8_:§5!&§ = addBirdStraightIntoSlingshot("BIRD_WINGMAN",§+!5§ + 0.7,§'! § + 0.1,0);
         if(this.§6#e§)
         {
            (_loc8_ as §1!X§).§^#H§ = this.§6#e§;
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
         §#$+§.playSound("Bird_Wingman_Appear","ChannelPowerups",0,1);
         (§#""§ as §#%§).§4"w§.§"p§ = true;
         (§>"$§.§3#'§.particles as § #f§).§]#N§(§+!5§,§'! §);
         §-#@§ = true;
         if(_loc7_ && _loc7_.§%8§)
         {
            return true;
         }
         return false;
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc2_:§5!&§ = null;
         var _loc1_:Number = super.getLaunchSpeed();
         if(mBirds.length > 0)
         {
            _loc2_ = mBirds[mNextBirdIndex];
         }
         if(_loc2_ && _loc2_.§4"?§ > 0)
         {
            _loc1_ = _loc1_ / _loc2_.§-f§ * _loc2_.§4"?§;
         }
         return _loc1_;
      }
      
      public function § !@§(param1:Number, param2:§'#3§) : §5!&§
      {
         var _loc3_:§5!&§ = null;
         var _loc4_:§'#3§ = null;
         if(mBirds.length > 0)
         {
            _loc3_ = mBirds[mNextBirdIndex];
            for each(_loc4_ in §`j§.§1"f§)
            {
               if(_loc4_ == param2)
               {
                  _loc3_.§=#8§ = _loc4_.§3$8§(_loc3_.name.toUpperCase());
                  break;
               }
            }
            if(_loc3_.§=#8§ < 1)
            {
               _loc3_.§=#8§ = 1;
            }
            _loc3_.scale = param1;
            _loc3_.sprite.scaleX = _loc3_.scale;
            _loc3_.sprite.scaleY = _loc3_.scale;
            return _loc3_;
         }
         return null;
      }
      
      public function §"!j§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:§+!3§ = null;
         this.§<#B§ = true;
         this.§'@§ = this.§'@§ || §,#2§.animationManager.getAnimation("TELESCOPE_MOUNT").getFrame(0,this.§'@§);
         this.§;"Z§ = this.§;"Z§ || §,#2§.animationManager.getAnimation("TELESCOPE_TUBE").getFrame(0,this.§;"Z§);
         if(!this.§3"s§)
         {
            this.§'@§.x = (§+!5§ - 2) / §#!,§.§?$#§;
            this.§'@§.y = (§'! § - 3) / §#!,§.§?$#§;
         }
         this.§;"Z§.x = this.§'@§.x - 12;
         this.§;"Z§.y = this.§'@§.y - 42;
         this.§;"Z§.pivotX = -50;
         this.§;"Z§.pivotY = -32;
         if(this.§6#e§ != §3#8§.§ "Z§)
         {
            §]Y§.addChild(this.§;"Z§);
            §]Y§.addChild(this.§'@§);
            this.§5t§ = Math.PI - §,#j§ * (Math.PI / 180);
            _loc1_ = this.§'@§.x * §#!,§.§?$#§;
            _loc2_ = this.§'@§.y * §#!,§.§?$#§;
            this.§7"@§(_loc1_,_loc2_);
         }
         else
         {
            _loc3_ = §&!=§.§3!]§.getTexture("SLINGSCOPE_TREE_PART_6");
            this.§'#i§.sprite.removeChildAt(0);
            this.§'#i§.sprite.addChild(_loc3_.§]$1§());
            this.§7"@§(this.§'#i§.x * §#!,§.§?$#§,this.§'#i§.y * §#!,§.§?$#§ - 1);
         }
         §-#@§ = true;
      }
      
      private function §?y§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§<#B§)
         {
            _loc1_ = §,#j§ * (Math.PI / 180) - this.§5t§;
            if(Math.abs(_loc1_) < 0.5 * (Math.PI / 180))
            {
               this.§5t§ = §,#j§ * (Math.PI / 180);
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
               this.§5t§ += _loc1_ / 20;
            }
            this.§;"Z§.rotation = Math.PI - this.§5t§;
            §-#@§ = true;
         }
      }
      
      private function §#$1§(param1:String, param2:String, param3:int) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc4_:Number = -15;
         var _loc5_:Number = -13;
         var _loc6_:Number = §>%§.width;
         var _loc7_:Number = §>%§.height;
         var _loc8_:Number = §+!5§ / §#!,§.§?$#§ + _loc6_ / 2 + _loc4_;
         var _loc9_:Number = §'! § / §#!,§.§?$#§ + _loc7_ + _loc5_;
         if(!this.§%#4§)
         {
            this.§%#4§ = new Vector.<§&#^§>();
         }
         this.§%#4§.push(new §&#^§(param1,§]Y§,§#""§,_loc8_,_loc9_,50));
         §-#@§ = true;
         if(param2 && param3 > 0)
         {
            _loc10_ = 10 + Math.random() * 5;
            _loc11_ = 10;
            _loc12_ = 0;
            while(_loc12_ < _loc10_)
            {
               _loc13_ = 360 / _loc10_ * (_loc12_ + 1);
               _loc14_ = param2 + int(Math.random() * param3 + 1);
               §,#2§.particles.addSimpleParticle(_loc14_,§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,§,#2§.slingshot.x,§,#2§.slingshot.y + Math.random() * 6,700 + Math.random() * 500,"",§=$4§.§;D§,_loc11_ * Math.cos(_loc13_),-_loc11_ * Math.sin(_loc13_),15,Math.random() * 60,0.5 + Math.random() * 1);
               _loc12_++;
            }
         }
      }
      
      public function §7"@§(param1:Number, param2:Number) : void
      {
         param1 /= §#!,§.§?$#§;
         param2 /= §#!,§.§?$#§;
         if(this.§-"6§)
         {
            this.§-"6§.reset();
            this.§-"6§.setPosition(param1,param2);
         }
         else
         {
            this.§-"6§ = new §&#^§("BLAST_EFFECT",§]Y§,§,#2§,param1,param2,50);
            this.§-"6§.§-"n§(true);
         }
         §-#@§ = true;
      }
      
      private function §<$,§(param1:§&#^§, param2:Number) : Boolean
      {
         if(param1 && param1.update(param2))
         {
            §-#@§ = true;
            return true;
         }
         return false;
      }
      
      override protected function shootBird() : void
      {
         if(this.§6#e§ == §3#8§.§ "Z§)
         {
            this.§^"t§();
         }
         super.shootBird();
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         if(this.§6#e§ == §3#8§.§ "Z§)
         {
            this.§<"I§ = getPosition();
            this.§%!7§ = this.getLaunchSpeed();
            this.§8";§ = §?"A§();
            this.§=#%§ = §,#j§;
            this.§@#5§();
         }
      }
      
      private function §^"t§() : void
      {
         this.§#!N§ = false;
         if(this.§#m§)
         {
            §,#2§.levelObjects.removeObject(this.§#m§);
            this.§#m§ = null;
         }
      }
      
      private function §@#5§() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:String = null;
         null;
         var _loc1_:Number = this.§8";§ * (this.§?$2§ - this.§@#"§) / 100;
         var _loc2_:Number = this.§8";§ * this.§@#"§ / 100;
         var _loc3_:int = 1;
         while(_loc3_ <= this.§<#q§)
         {
            _loc4_ = this.§<"I§.x;
            _loc5_ = this.§<"I§.y;
            _loc7_ = mBirds[mNextBirdIndex].radius + 0.1;
            _loc8_ = this.§=#%§;
            _loc9_ = _loc7_ * Math.cos(_loc8_ * (Math.PI / 180));
            _loc10_ = _loc7_ * Math.sin(_loc8_ * (Math.PI / 180));
            _loc4_ += _loc9_;
            _loc5_ -= _loc10_;
            _loc11_ = _loc2_ + Math.random() * _loc1_;
            _loc12_ = this.§=#%§ + ((this.§=">§ >> 1) - this.§=">§ / this.§<#q§ * _loc3_);
            _loc13_ = -this.§%!7§ * _loc11_ * Math.cos(_loc12_ / (180 / Math.PI));
            _loc14_ = this.§%!7§ * _loc11_ * Math.sin(_loc12_ / (180 / Math.PI));
            _loc15_ = §^#M§.§2$6§();
            ((§,#2§.levelObjects as §=#]§).addObject(_loc15_,_loc4_,_loc5_,this.§=#%§,§6"[§.ID_NEXT_FREE,false,false,false,1) as §^#M§).§%"R§(new b2Vec2(_loc13_,_loc14_),false,true);
            _loc3_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§3#I§();
         super.dispose();
      }
      
      public function get §-K§() : §&b§
      {
         return this.§6#e§;
      }
      
      public function §<!%§(param1:Number, param2:Number) : void
      {
         var _loc3_:§="@§ = null;
         var _loc4_:b2DistanceJoint = null;
         §># § = param1;
         §<$3§ = param2;
         for each(_loc3_ in this.§1!5§)
         {
            if(_loc3_.getBody().GetJointList() && _loc3_.getBody().GetJointList().joint && _loc3_.getBody().GetJointList().joint is b2DistanceJoint)
            {
               (_loc4_ = b2DistanceJoint(_loc3_.getBody().GetJointList().joint)).§"0§(param1);
               _loc4_.§^!I§(param2);
            }
         }
      }
      
      public function get §7l§() : §="@§
      {
         return this.§#m§;
      }
      
      public function get §3"U§() : §^!n§
      {
         return this.§3"'§;
      }
      
      override protected function playStretchSound() : void
      {
         §#$+§.playSound(this.§6#e§.§=" §);
      }
   }
}
