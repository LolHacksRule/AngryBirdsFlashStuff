package §&$!§
{
   import § "%§.b2Vec2;
   import §!#"§.§4[§;
   import §!'§.§7#c§;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §"!@§.§6!+§;
   import §%!P§.§-#i§;
   import §%!P§.§4#u§;
   import §1!=§.§^"U§;
   import §2G§.§-#+§;
   import §4"R§.§4"c§;
   import §4"R§.§7"]§;
   import §8#!§.§5`§;
   import §8§.§!#L§;
   import §8§.§&#V§;
   import §8§.§,!+§;
   import §8§.§3"8§;
   import §8§.§4!y§;
   import §8§.§6!H§;
   import §8§.§;Y§;
   import §8§.§]o§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §;$3§.§?!0§;
   import §=#G§.§6"v§;
   import §=#G§.§<#Z§;
   import §?P§.ErrorPopup;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@!M§.§^#p§;
   import §@0§.§ !o§;
   import §@0§.§1§;
   import §@0§.§1#s§;
   import §@0§.§2$2§;
   import §@0§.§3!Y§;
   import §@0§.§4!_§;
   import §@0§.§6"+§;
   import §@0§.§9"Q§;
   import §@0§.§9"^§;
   import §@0§.§<!v§;
   import §@V§.§1"V§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import §^"S§.Sprite;
   import §`"8§.§`"X§;
   import §`7§.§`"x§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §"!"§ extends EventDispatcher
   {
      
      private static const §>!9§:Number = 500;
       
      
      private var §]"v§:§3!Y§;
      
      protected var §,#F§:Boolean = false;
      
      private var §+#A§:int = -1;
      
      private var §##K§:Number;
      
      private var §`"&§:int;
      
      private var §`#>§:Function;
      
      private var §3#D§:Array;
      
      private var §##J§:Number = -1;
      
      private var §!"<§:§,!+§;
      
      private var § y§:Number = -1;
      
      private var §>!s§:§^#p§;
      
      private var §@"L§:Vector.<§,!+§>;
      
      private var §->§:§4[§ = null;
      
      private var §<"g§:§4[§ = null;
      
      private var §>$3§:Vector.<§1!e§>;
      
      private var §`"u§:§1!e§;
      
      private var §'>§:§<#Z§;
      
      private var mLevelManager:§8=§;
      
      private var §-A§:Array;
      
      private var §3"P§:Boolean = false;
      
      private var §=!3§:Boolean;
      
      private var §"!#§:Number = 500;
      
      private var §2!Y§:Boolean;
      
      public function §"!"§(param1:§8=§)
      {
         this.§3#D§ = [];
         this.§>$3§ = new Vector.<§1!e§>();
         super();
         this.mLevelManager = param1;
      }
      
      public function get §%E§() : int
      {
         return this.§>$3§.length;
      }
      
      public function init() : void
      {
         this.§+#A§ = -1;
         this.§##J§ = -1;
         this.§ y§ = -1;
         this.§!"<§ = null;
         this.§`#>§ = null;
         this.§3#D§ = [];
         this.§'>§.mouseEnabled = true;
         this.§2!Y§ = false;
         this.§`"&§ = 0;
         this.§@"L§ = new Vector.<§,!+§>();
         var _loc1_:§`"X§ = this.§'>§.§'"`§.textureManager.getTexture("LASER_DOT");
         if(this.§]"v§)
         {
            this.§]"v§.dispose();
         }
         this.§]"v§ = new §1#s§(this.§'>§,new Sprite(),_loc1_.texture,0,0);
         §3#U§.§#$4§.objects.backgroundSprite.addChild(this.§]"v§.sprite);
         this.§#^§();
      }
      
      public function reset() : void
      {
         while(this.§>$3§.length > 0)
         {
            this.§>$3§.shift();
         }
         if(this.§`"u§)
         {
            this.§,!b§(this.§`"u§.§9#v§);
            try
            {
               this.§`"u§.§9#v§.close();
            }
            catch(e:Error)
            {
            }
            this.§`"u§ = null;
         }
      }
      
      public function setController(param1:§<#Z§) : void
      {
         if(this.§'>§ == param1)
         {
            return;
         }
         this.§'>§ = param1;
         this.init();
      }
      
      public function run(param1:Number, param2:§&#V§) : void
      {
         var _loc5_:§6"+§ = null;
         var _loc6_:Object = null;
         if(!this.§'>§)
         {
            return;
         }
         this.§6#+§(param1);
         this.§;!k§(param1,param2);
         var _loc3_:Vector.<§4!_§> = this.§'>§.§'"`§.slingshot.mBirds;
         if(_loc3_.length > 0)
         {
            if((_loc5_ = _loc3_[this.§'>§.§'"`§.slingshot.mNextBirdIndex] as §6"+§).§,"§)
            {
               this.§;[§(param1,param2);
            }
         }
         if(!this.§,#F§)
         {
            this.§7"9§(param1,param2);
         }
         var _loc4_:Boolean = (§3#U§.§#$4§.slingshot as §9"^§).mSlingShotState == § !o§.§3#2§ || (§3#U§.§#$4§.slingshot as §9"^§).mSlingShotState == §9"^§.§"!a§;
         if(this.§##J§ > 0)
         {
            if(this.§`#>§ != this.§3#7§ || this.§`#>§ == this.§3#7§ && _loc4_)
            {
               this.§##J§ -= param1;
            }
            if(this.§##J§ <= 0)
            {
               this.§`#>§();
               this.§`#>§ = null;
               this.§'>§.mouseEnabled = true;
               if(this.§3#D§.length > 0)
               {
                  _loc6_ = this.§3#D§.shift();
                  this.§7#§(_loc6_.powerupFunction,_loc6_.gotoCastleSide);
               }
            }
         }
      }
      
      private function §;[§(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:§9"^§ = null;
         var _loc4_:Vector.<§4!_§> = null;
         var _loc5_:§6"+§ = null;
         var _loc6_:§7#c§ = null;
         var _loc7_:Number = NaN;
         if(!this.§=!3§)
         {
            this.§=!3§ = true;
            _loc3_ = this.§'>§.§'"`§.slingshot as §9"^§;
            _loc5_ = (_loc4_ = _loc3_.mBirds)[_loc3_.mNextBirdIndex] as §6"+§;
            _loc6_ = §3#U§.§#$4§.particles as §7#c§;
            _loc7_ = 0.4;
            _loc6_.§=!>§(_loc5_.x + _loc5_.radius,_loc5_.y - _loc5_.radius,_loc7_,0,0,(3 + Math.random() * 4) * -1,_loc5_.radius);
         }
         if(this.§=!3§)
         {
            this.§"!#§ -= param1;
            if(this.§"!#§ <= 0)
            {
               this.§"!#§ = §>!9§ + Math.random() * 300;
               this.§=!3§ = false;
            }
         }
      }
      
      protected function §;!k§(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:§9"^§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(this.§,#F§)
         {
            _loc3_ = this.§'>§.§'"`§.slingshot as §9"^§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§@#1§.§7"x§() == §3"8§.§![§;
               this.§]"v§.§<$7§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,10,_loc7_,false,22);
               this.§]"v§.enabled = true;
            }
            else
            {
               this.§]"v§.enabled = false;
            }
         }
      }
      
      protected function §7"9§(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:§9"^§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(§7"]§.§<,§() == §4"c§.§]#q§.§5"g§)
         {
            _loc3_ = this.§'>§.§'"`§.slingshot as §9"^§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.getPosition())
            {
               _loc4_ = new Point(_loc3_.getPosition().x - Math.cos(_loc3_.shootingAngle / 180 * Math.PI) * 4,_loc3_.getPosition().y + Math.sin(_loc3_.shootingAngle / 180 * Math.PI) * 4);
            }
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§@#1§.§7"x§() == §3"8§.§![§;
               this.§]"v§.§<$7§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,16,_loc7_,true,64);
               this.§]"v§.enabled = true;
            }
            else
            {
               this.§]"v§.enabled = false;
            }
         }
      }
      
      protected function §6#+§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§,!+§ = null;
         if(this.§@"L§)
         {
            _loc2_ = this.§@"L§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§@"L§[_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.§+<§)
                  {
                     this.§@"L§.splice(_loc2_,1);
                  }
                  else
                  {
                     _loc3_.§6#+§(param1,§3#U§.§#$4§.levelObjects);
                  }
               }
               _loc2_--;
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc1_:int = §-#+§.§6!§.§=b§(§%#k§.§]k§.§5"g§);
         if(_loc1_ <= 0)
         {
            return false;
         }
         this.§'>§.§]"V§();
         this.§@#d§();
         §-#+§.§6!§.§"t§(§%#k§.§]k§.§5"g§);
         this.§`j§(§%#k§.§]k§.§5"g§);
         this.§7#§(this.§9!S§,false);
         return true;
      }
      
      private function §9!S§() : void
      {
         var _loc1_:String = this.mLevelManager.currentLevel;
         var _loc2_:String = this.mLevelManager.getCurrentEpisodeModel().name;
         §`"x§.§'l§(§%#k§.§]k§.§5"g§,_loc1_);
         var _loc3_:§9"^§ = §3#U§.§#$4§.slingshot as §9"^§;
         if(_loc3_.mSlingShotState == § !o§.§2"j§)
         {
            _loc3_.setSlingShotState(§ !o§.§3#2§);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§1"s§(param1);
         this.§9"c§(param1);
      }
      
      private function §9"c§(param1:Number) : void
      {
         if(this.§`"&§ > 0)
         {
            this.§`"&§ -= param1;
         }
      }
      
      protected function §1"s§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§+#A§ >= 0 && this.§+#A§ < §<!v§.§,#b§)
         {
            _loc2_ = Math.sin(this.§+#A§ / §<!v§.§,#b§ * (Math.PI * §<!v§.§>!I§) + this.§##K§);
            _loc3_ = _loc2_ * §<!v§.§4"o§;
            _loc4_ = new b2Vec2(_loc3_,this.§'>§.§'"`§.mLevelEngine.mWorld.GetGravity().y);
            this.§'>§.§'"`§.mLevelEngine.mWorld.SetGravity(_loc4_);
            ++this.§+#A§;
            this.§@"f§();
         }
         else if(this.§+#A§ == §<!v§.§,#b§)
         {
            this.§+#A§ = -1;
            §3#U§.§#$4§.mLevelEngine.mWorld.SetGravity(new b2Vec2(0,this.§'>§.§'"`§.mLevelEngine.mWorld.GetGravity().y));
         }
      }
      
      private function §@"f§() : void
      {
         var _loc1_:Number = this.§'>§.§'"`§.camera.centerX;
         var _loc2_:Number = §4#u§.§[!#§ / §4#u§.§3"§;
         var _loc3_:Number = §4#u§.§3j§ / §4#u§.§3"§;
         var _loc4_:Number = _loc1_ + (Math.random() - 0.5) * _loc2_;
         var _loc5_:§7#c§ = this.§'>§.§'"`§.particles as §7#c§;
         if(this.§+#A§ % 2)
         {
            _loc5_.§["Q§(_loc4_,this.§'>§.§'"`§.§^n§.ground);
         }
         _loc4_ = _loc1_ + (Math.random() - 0.5) * _loc2_;
         _loc5_.§3!w§(_loc4_,this.§'>§.§'"`§.§^n§.ground + Math.random() * _loc3_ / 20);
      }
      
      public function §]#=§() : Boolean
      {
         return this.§+#A§ > -1;
      }
      
      public function §^#E§() : Boolean
      {
         return this.§`"&§ > 0;
      }
      
      private function §7#§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§`#>§ != null)
         {
            this.§3#D§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§`#>§ = param1;
            (§3#U§.§8I§ as §6"v§).mouseEnabled = false;
            this.§##J§ = param1 == this.§3#7§ ? Number(§1#7§.§-$'§ * 1.5) : Number(§1#7§.§-$'§);
            this.§'>§.§'"`§.camera.setAction(!!param2 ? int(§4#u§.§]#"§) : int(§4#u§.§?!G§));
            this.§"#4§(this.§`#>§);
         }
      }
      
      protected function §"#4§(param1:Function) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case this.§3#7§:
               _loc2_ = §%#k§.§""z§.§5"g§;
               break;
            case this.§#! §:
               _loc2_ = §%#k§.§6`§.§5"g§;
               break;
            case this.§3#L§:
               _loc2_ = §%#k§.§'"!§.§5"g§;
               break;
            case this.§[Q§:
               _loc2_ = §%#k§.§'!N§.§5"g§;
               break;
            case this.§^#$§:
               _loc2_ = §%#k§.§0"W§.§5"g§;
               break;
            case this.§,"x§:
               _loc2_ = §%#k§.§6"t§.§5"g§;
               break;
            case this.§"#J§:
               _loc2_ = §%#k§.§>#Z§.§5"g§;
               break;
            case this.§;"5§:
               _loc2_ = §%#k§.§[4§.§5"g§;
               break;
            case this.§4w§:
               _loc2_ = §%#k§.§6"t§.§5"g§;
               break;
            case this.§7"&§:
               _loc2_ = §%#k§.§@#l§.§5"g§;
         }
         var _loc3_:§6!+§ = AngryBirdsBase.singleton.§=!&§() as §6!+§;
         if(_loc3_ && _loc2_)
         {
            dispatchEvent(new §^!&§(§^!&§.§?A§,_loc2_));
            if(_loc2_ == §%#k§.§6"t§.§5"g§)
            {
               §!"p§.playSound("wingman_animation","ChannelPowerups");
            }
            else if(_loc2_ == §%#k§.§[4§.§5"g§)
            {
               §!"p§.playSound("pumpkin_activation","ChannelPowerups");
            }
            else
            {
               §!"p§.playSound("powerup_intro","ChannelPowerups");
            }
         }
         else
         {
            §!"p§.playSound("powerup_intro","ChannelPowerups");
         }
      }
      
      private function §3#7§() : void
      {
         var _loc4_:§6"+§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc1_:§9"^§ = this.§'>§.§'"`§.slingshot as §9"^§;
         var _loc2_:Vector.<§4!_§> = _loc1_.mBirds;
         var _loc3_:Number = §<!v§.§;#5§;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            (_loc4_ = _loc2_[_loc1_.mNextBirdIndex] as §6"+§).§,"§ = true;
            switch(_loc4_.name)
            {
               case "BIRD_BLACK":
                  _loc3_ = §<!v§.§#F§;
                  break;
               case "BIRD_BLUE":
                  _loc3_ = §<!v§.§@<§;
                  break;
               case "BIRD_GREEN":
                  _loc3_ = §<!v§.§[$5§;
                  break;
               case "BIRD_WHITE":
                  _loc3_ = §<!v§.§,""§;
                  break;
               case "BIRD_YELLOW":
                  _loc3_ = §<!v§.§]"=§;
                  break;
               case "BIRD_RED":
                  _loc3_ = §<!v§.§2#o§;
                  break;
               case "BIRD_ORANGE":
                  _loc3_ = §<!v§.§-"t§;
                  break;
               case "BIRD_REDBIG":
                  _loc3_ = §<!v§.§3" §;
                  break;
               case "BIRD_WINGMAN":
                  _loc3_ = §<!v§.§3!&§;
                  break;
               case "BIRD_SARDINE":
                  _loc3_ = 1;
                  _loc4_.§,"§ = false;
                  break;
               case "POWERUP_BOOMBOX":
                  _loc3_ = §<!v§.§,!k§;
            }
         }
         §!"p§.playSound("big_bird","ChannelPowerups");
         _loc1_.§=#J§(_loc3_,§%#k§.§""z§);
         if(_loc2_.length > 0)
         {
            _loc5_ = 5 + Math.random() * 10;
            _loc6_ = 8;
            _loc7_ = 1;
            _loc8_ = 0;
            while(_loc8_ < _loc5_)
            {
               _loc9_ = Math.random() * (Math.PI * 2);
               _loc10_ = 0.5 * _loc6_ + _loc6_ * (Math.random() * 0.5);
               if((_loc11_ = _loc2_[0].name) == "POWERUP_BOOMBOX")
               {
                  this.§'>§.§'"`§.particles.addParticle(§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§@>§.§'g§,_loc10_ * Math.cos(_loc9_),-_loc10_ * Math.sin(_loc9_),10,_loc10_ * 50);
               }
               else
               {
                  if(_loc11_ == "BIRD_WINGMAN")
                  {
                     _loc11_ = "BIRD_RED";
                  }
                  this.§'>§.§'"`§.particles.addParticle(§@>§.§5Y§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§@>§.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
               }
               _loc8_++;
            }
         }
         this.§7"c§();
         this.§2!Y§ = false;
      }
      
      private function §6-§() : void
      {
         var _loc3_:§6"+§ = null;
         var _loc1_:§9"^§ = this.§'>§.§'"`§.slingshot as §9"^§;
         var _loc2_:Vector.<§4!_§> = _loc1_.mBirds;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc1_.mNextBirdIndex] as §6"+§;
            _loc3_.§,"§ = false;
            _loc3_.§!a§ = null;
            _loc3_.§7!x§ = null;
            _loc3_.scale = 1;
            _loc3_.sprite.scaleX = _loc3_.scale;
            _loc3_.sprite.scaleY = _loc3_.scale;
         }
         this.§2!Y§ = false;
      }
      
      public function §7"c§() : void
      {
         var _loc1_:§9"^§ = this.§'>§.§'"`§.slingshot as §9"^§;
         var _loc2_:Vector.<§4!_§> = _loc1_.mBirds;
         var _loc3_:§6"+§ = _loc2_[_loc1_.mNextBirdIndex] as §6"+§;
         §3#U§.§#$4§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§@>§.§2c§,§[p§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§@>§.PARTICLE_TYPE_STATIC_PARTICLE,_loc3_.x,_loc3_.y - _loc3_.radius,400,"",§@>§.§&_§,0,0,0,0,1,8,true);
         if(_loc2_.length > 0)
         {
            §2$2§.§?"9§(_loc3_.x,_loc3_.y,40,0,40);
         }
         (this.§'>§.§'"`§.slingshot as §9"^§).§["<§(_loc3_.x,_loc3_.y);
      }
      
      private function §<M§() : void
      {
         var _loc1_:§9"^§ = this.§'>§.§'"`§.slingshot as §9"^§;
         _loc1_.setSlingShotState(§ !o§.§3#2§);
      }
      
      private function §3#L§() : void
      {
         §!"p§.playSound("super_slingshot","ChannelPowerups");
         (this.§'>§.§'"`§.slingshot as §9"^§).§,#A§();
      }
      
      private function §^#$§() : void
      {
         this.§,#F§ = true;
         this.§#^§();
         §!"p§.playSound("laser_sight","ChannelPowerups");
         (this.§'>§.§'"`§.slingshot as §9"^§).§ ]§();
      }
      
      private function §"#J§() : void
      {
         var _loc8_:§4!y§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§,!+§ = null;
         var _loc1_:Point = this.§'>§.§-"c§();
         _loc1_ = this.§'>§.§'"`§.screenToBox2D(_loc1_.x,_loc1_.y);
         this.§>!s§ = §!"p§.playSound("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var _loc2_:Number = (this.§'>§.§'"`§.camera as §-#i§).§;!u§() + §1#7§.§6"[§ / 2;
         var _loc3_:Number = (this.§'>§.§'"`§.camera as §-#i§).§8"5§() + §1#7§.§6"[§ / 2;
         var _loc4_:Number = this.§'>§.§'"`§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = Number(-20)) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Vector.<§4!y§> = this.§'@§().§ use§(3);
         var _loc7_:int = 0;
         while(_loc7_ < 3)
         {
            _loc8_ = _loc6_[_loc7_];
            _loc10_ = _loc5_ - (Math.random() * 30 + _loc7_ * 10);
            if(_loc8_ == null)
            {
               _loc9_ = _loc2_ + (_loc3_ - _loc2_) * Math.random();
            }
            else
            {
               _loc9_ = _loc8_.§;d§ + (Math.random() * §1#7§.§6"[§ - §1#7§.§6"[§ / 2);
            }
            _loc11_ = this.§'@§().§<"E§(_loc9_,_loc10_,0);
            this.§@"L§[_loc7_] = _loc11_;
            _loc7_++;
         }
      }
      
      private function §;"5§() : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Boolean = false;
         var _loc2_:Number = (this.§'>§.§'"`§.camera as §-#i§).§;!u§() + §1#7§.§6"[§ / 2;
         var _loc3_:Number = (this.§'>§.§'"`§.camera as §-#i§).§8"5§() + §1#7§.§6"[§ / 2;
         var _loc4_:Number = this.§'>§.§'"`§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = Number(-20)) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Number;
         var _loc7_:Number = (_loc6_ = _loc3_ - _loc2_) / (5 + 1);
         var _loc8_:int = 0;
         while(_loc8_ < 5)
         {
            _loc9_ = _loc2_ + _loc7_ + _loc8_ * _loc7_;
            _loc10_ = _loc5_ - Math.random() * 30;
            _loc11_ = this.§'@§().§6!T§(_loc9_,_loc10_);
            while(_loc11_)
            {
               _loc10_++;
               _loc11_ = this.§'@§().§6!T§(_loc9_,_loc10_);
            }
            §3#U§.§#$4§.levelObjects.addObject("POWERUP_PUMPKIN",_loc9_,_loc10_,Math.random() * 360,§!#L§.ID_NEXT_FREE,false,false,false,1,false,false,(Math.random() - 0.5) * 10,new b2Vec2((Math.random() - 0.5) * 10,0));
            _loc8_++;
         }
      }
      
      private function §#! §() : void
      {
         var _loc6_:§4!y§ = null;
         this.§'>§.§0#?§(Math.round(§9"Q§.§`E§ * §<!v§.§,#b§));
         §!"p§.playSound("earthquake","ChannelPowerups");
         this.§+#A§ = 0;
         this.§##K§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = this.§'@§().§&#1§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            if((_loc6_ = this.§'@§().getObject(_loc2_) as §4!y§) is §]o§ || _loc6_ is §6!H§)
            {
               _loc6_.getBody().SetAwake(true);
               if(_loc6_ is §6!H§)
               {
                  _loc6_.scream();
                  _loc6_.§5#C§();
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = §1#7§.§+#f§;
         var _loc4_:Number = §1#7§.§ !X§;
         var _loc5_:Number = §1#7§.§#3§;
         this.§'>§.§'"`§.§""x§(true,_loc3_,_loc4_,_loc5_);
         this.§'>§.§'"`§.§>"T§();
      }
      
      private function §,"x§() : void
      {
         var _loc3_:§4!_§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§ !o§ = this.§'>§.§'"`§.slingshot;
         if(_loc1_.mBirds.length > 0 && _loc1_.mNextBirdIndex < _loc1_.mBirds.length)
         {
            _loc3_ = _loc1_.mBirds[_loc1_.mNextBirdIndex];
            _loc4_ = _loc3_.originalX;
            if(_loc3_)
            {
               if((_loc5_ = _loc1_.x - _loc3_.originalX) < 1.5 && _loc5_ > 0)
               {
                  _loc4_ = _loc1_.x - 1.5;
               }
               _loc3_.§>k§();
               this.§->§ = (_loc3_ as §6"+§).§=!s§(_loc4_,_loc3_.originalY);
            }
         }
         var _loc2_:§4!_§ = this.§'>§.§'"`§.slingshot.addBirdStraightIntoSlingshot("BIRD_CHRISTMAS",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         §!"p§.playSound("Sound_Santa_Bomb_Bird_Arrival");
         this.§'>§.§^Q§();
      }
      
      private function §4w§() : void
      {
         this.§'>§.§]"V§();
         var _loc1_:§9"^§ = §3#U§.§#$4§.slingshot as §9"^§;
         if(_loc1_.§]%§())
         {
            this.§3#7§();
         }
         _loc1_.setSlingShotState(§ !o§.§3#2§);
      }
      
      private function §[Q§() : void
      {
         var _loc4_:§6"+§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§'>§.§]"V§();
         var _loc1_:§9"^§ = §3#U§.§#$4§.slingshot as §9"^§;
         var _loc2_:Boolean = false;
         if(_loc1_.mBirds.length > 0 && _loc1_.mNextBirdIndex < _loc1_.mBirds.length)
         {
            if((_loc4_ = _loc1_.mBirds[_loc1_.mNextBirdIndex] as §6"+§).§,"§)
            {
               this.§2!Y§ = true;
               this.§6-§();
               _loc2_ = true;
            }
            _loc5_ = _loc4_.originalX;
            _loc6_ = _loc4_.originalY;
            if(_loc4_.name == "BIRD_WINGMAN")
            {
               _loc5_ = _loc1_.§^"E§().x;
               _loc6_ = _loc1_.§^"E§().y;
            }
            if(_loc4_)
            {
               _loc4_.§>k§();
               this.§->§ = _loc4_.§=!s§(_loc5_,_loc6_);
            }
         }
         _loc1_.setSlingShotState(§ !o§.§3#2§);
         var _loc3_:§4!_§ = _loc1_.addBirdStraightIntoSlingshot("POWERUP_BOOMBOX",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         _loc3_.§;#t§ = false;
         this.§'>§.§^Q§();
         if(_loc2_)
         {
            this.§2!Y§ = true;
            this.§3#7§();
         }
         _loc1_.§;"Z§(_loc1_.x + 0.7,_loc1_.y + 0.1);
         §!"p§.playSound("tnt_released_01","ChannelPowerups",0,0.5);
      }
      
      private function §'@§() : §;Y§
      {
         return this.§'>§.§'"`§.levelObjects as §;Y§;
      }
      
      public function §"t§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §%#k§.§""z§.§5"g§:
               this.§2!Y§ = true;
               this.§7#§(this.§3#7§,false);
               break;
            case §%#k§.§'"!§.§5"g§:
               this.§7#§(this.§3#L§,false);
               break;
            case §%#k§.§'!N§.§5"g§:
               this.§7#§(this.§[Q§,false);
               break;
            case §%#k§.§0"W§.§5"g§:
               this.§7#§(this.§^#$§,false);
               break;
            case §%#k§.§6`§.§5"g§:
               this.§7#§(this.§#! §,true);
               break;
            case §%#k§.§>#Z§.§5"g§:
               this.§7#§(this.§"#J§,true);
               break;
            case §%#k§.§[4§.§5"g§:
               this.§7#§(this.§;"5§,true);
               break;
            case §%#k§.§6"t§.§5"g§:
               §3#U§.§#$4§.slingshot.setSlingShotState(§9"^§.§"!a§);
               this.§7#§(this.§4w§,false);
               break;
            case §%#k§.§@#l§.§5"g§:
               this.§7#§(this.§7"&§,true);
         }
         this.§<=§(param1);
         this.§`j§(param1);
         this.§'>§.§'"`§.§"t§(param1);
         §-#+§.§6!§.§"t§(param1);
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = this.mLevelManager.getCurrentEpisodeModel().name;
         §`"x§.§'l§(param1,_loc2_);
         var _loc4_:int = §3#U§.§#$4§.slingshot.§`!R§();
         var _loc5_:int = §3#U§.§#$4§.slingshot.§]$>§();
         var _loc6_:String = "";
         if(§3#U§.§#$4§.slingshot.mBirds.length > 0 && §3#U§.§#$4§.slingshot.mBirds[0] as §4!_§)
         {
            _loc6_ = (§3#U§.§#$4§.slingshot.mBirds[0] as §4!_§).name;
         }
         return true;
      }
      
      private function §7"&§() : void
      {
         this.§'>§.§0#?§(3 * Math.round(§9"Q§.§`E§ * §<!v§.§,#b§));
         (§3#U§.§#$4§.levelObjects as §;Y§).§=#o§();
         this.§`"&§ = (§3#U§.§#$4§.levelObjects as §;Y§).§@"M§;
      }
      
      public function §`j§(param1:String) : void
      {
         if(§-#+§.§6!§.§+o§(param1) > 0)
         {
            return;
         }
         var _loc2_:Array = (§3#U§.§#$4§ as §2$2§).§;&§();
         var _loc3_:§1"V§ = new §1"V§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§1!e§ = new §1!e§(param1,_loc2_,_loc3_);
         if(this.§`"u§ != null)
         {
            this.§>$3§.push(_loc4_);
         }
         else
         {
            this.§-!@§(_loc4_);
         }
      }
      
      protected function §-!@§(param1:§1!e§) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = (this.mLevelManager as §?!0§).§7#J§(_loc2_);
         var _loc4_:int;
         if((_loc4_ = §5`§.§6!§.levelIDs.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§5`§.§6!§.§?<§(_loc2_));
         }
         var _loc6_:String = !!(_loc5_ = this.mLevelManager.getEpisodeForLevel(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/useItem");
         _loc7_.url += "&" + §5`§.§6!§.§7j§();
         var _loc8_:Object = {
            "item":param1.§2"z§,
            "levelId":this.mLevelManager.currentLevel,
            "episode":_loc6_,
            "actualLevel":_loc3_,
            "usedItems":param1.§=G§
         };
         _loc7_.contentType = "application/json";
         _loc7_.method = URLRequestMethod.POST;
         _loc7_.data = JSON.stringify(_loc8_);
         this.§`"u§ = param1;
         this.§3$7§(param1.§9#v§);
         param1.§9#v§.load(_loc7_);
      }
      
      protected function §3$7§(param1:URLLoader) : void
      {
         this.§,!b§(param1);
         param1.addEventListener(Event.COMPLETE,this.§1!r§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§""g§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""g§);
         param1.addEventListener(§;m§.§!$5§,this.§""g§);
      }
      
      protected function §,!b§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§1!r§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§""g§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""g§);
         param1.removeEventListener(§;m§.§!$5§,this.§""g§);
      }
      
      protected function §1!r§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:§1!e§ = this.§`"u§;
         this.§,!b§(_loc2_.§9#v§);
         this.§`"u§ = null;
         _loc3_ = _loc2_.§9#v§.data;
         if(_loc3_.items)
         {
            §-#+§.§6!§.§,"0§(_loc3_.items);
         }
         if(_loc3_.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Powerup activation unsuccessful. Server returned \'" + _loc3_.error + "\'"));
         }
         this.§<"j§(true);
      }
      
      protected function §""g§(param1:Event) : void
      {
         var _loc2_:§1!e§ = this.§`"u§;
         this.§,!b§(_loc2_.§9#v§);
         this.§`"u§ = null;
         if(param1.type == §;m§.§!$5§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§=!%§));
         }
         else
         {
            this.§<"j§(false);
         }
      }
      
      protected function §<"j§(param1:Boolean) : void
      {
         var _loc2_:§1!e§ = null;
         if(!param1)
         {
            this.§<#Y§();
         }
         if(this.§>$3§.length > 0)
         {
            _loc2_ = this.§>$3§.shift();
            this.§-!@§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §<#Y§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §8R§(param1:Boolean = true) : Boolean
      {
         if(param1)
         {
            return this.§`"u§ != null || this.§>$3§.length > 0 || this.§^#X§;
         }
         return this.§`"u§ != null || this.§>$3§.length > 0;
      }
      
      public function get §^#X§() : Boolean
      {
         return this.§2!Y§ || (§3#U§.§#$4§.slingshot as §9"^§).mSlingShotState == §9"^§.§"!a§;
      }
      
      public function dispose() : void
      {
         if(this.§'>§)
         {
            this.§'>§.mouseEnabled = true;
         }
         this.§`"&§ = 0;
         this.§+#A§ = -1;
         this.§ y§ = -1;
         this.§##J§ = -1;
         this.§!"<§ = null;
         this.§`#>§ = null;
         this.§3#D§ = [];
         if(this.§>!s§)
         {
            this.§>!s§.stop();
            this.§>!s§ = null;
         }
         if(this.§]"v§)
         {
            this.§]"v§.dispose();
            this.§]"v§ = null;
         }
      }
      
      public function §@#d§() : void
      {
         if(this.§->§)
         {
            this.§->§.§@g§();
            this.§->§ = null;
         }
         if(this.§<"g§)
         {
            this.§<"g§.§@g§();
            this.§<"g§ = null;
         }
      }
      
      public function §`9§(param1:String) : Boolean
      {
         return this.§-A§ && this.§-A§.indexOf(param1) > -1;
      }
      
      public function §`#J§() : void
      {
         this.§-A§ = null;
      }
      
      private function §<=§(param1:String) : void
      {
         if(!this.§-A§)
         {
            this.§-A§ = new Array();
         }
         this.§-A§[this.§-A§.length] = param1;
      }
      
      public function get §0Y§() : Boolean
      {
         return this.§3"P§;
      }
      
      public function set §0Y§(param1:Boolean) : void
      {
         this.§3"P§ = param1;
      }
      
      public function §#^§() : void
      {
         var _loc2_:§`"X§ = null;
         if(this.§]"v§)
         {
            this.§]"v§.dispose();
         }
         var _loc1_:String = "LASER_DOT";
         if(this.§,#F§)
         {
            _loc1_ = "LASER_DOT";
         }
         else if(§7"]§.§<,§() == §4"c§.§]#q§.§5"g§)
         {
            _loc1_ = "POWERUP_TREESLING_AIMDOT";
         }
         if(this.§'>§)
         {
            _loc2_ = this.§'>§.§'"`§.textureManager.getTexture(_loc1_);
            this.§]"v§ = new §1#s§(this.§'>§,new Sprite(),_loc2_.texture,0,0);
            §3#U§.§#$4§.objects.backgroundSprite.addChild(this.§]"v§.sprite);
         }
      }
      
      public function get §>_§() : Boolean
      {
         return this.§,#F§;
      }
   }
}
