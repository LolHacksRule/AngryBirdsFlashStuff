package §'"-§
{
   import §#v§.§#!?§;
   import §#v§.§6^§;
   import §#v§.§=!Z§;
   import §%$!§.§%h§;
   import §&#S§.§+,§;
   import §'z§.§4!x§;
   import §'z§.§7!J§;
   import §+!d§.§2![§;
   import §+!d§.§3§;
   import §,!=§.§,#?§;
   import §0m§.b2Vec2;
   import §5"$§.§]!m§;
   import §52§.§ "M§;
   import §52§.§#%§;
   import §52§.§&#q§;
   import §52§.§1!X§;
   import §52§.§3!0§;
   import §52§.§5!&§;
   import §52§.§6§;
   import §52§.§;!p§;
   import §52§.§?!N§;
   import §52§.§@M§;
   import §8§.§#$+§;
   import §8§.§@!"§;
   import §9$§.Sprite;
   import §=!7§.§ #f§;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §>!#§.§,"W§;
   import §?"R§.ErrorPopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §@"§.§+!3§;
   import §["Q§.§0$,§;
   import §["Q§.§2";§;
   import §[#a§.§3a§;
   import §[#a§.§7!O§;
   import §[#a§.§7#]§;
   import §[#a§.§7$&§;
   import §[#a§.§="@§;
   import §[#a§.§=#]§;
   import §[#a§.§=,§;
   import §]$9§.§5$!§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §8"p§ extends EventDispatcher
   {
      
      private static const §2"u§:Number = 500;
       
      
      private var §5!s§:§6#1§;
      
      private var §"!"§:Boolean = false;
      
      private var §[";§:int = -1;
      
      private var § "w§:Number;
      
      private var §9#i§:int;
      
      private var §0!+§:Function;
      
      private var §1!+§:Array;
      
      private var §<"D§:Number = -1;
      
      private var §;#_§:§7$&§;
      
      private var §>#4§:Number = -1;
      
      private var §?"!§:§@!"§;
      
      private var §8##§:Vector.<§7$&§>;
      
      private var §[#p§:§+,§ = null;
      
      private var §?#_§:§+,§ = null;
      
      private var §!%§:Vector.<§@!f§>;
      
      private var §4"2§:§@!f§;
      
      private var §8#a§:§4!x§;
      
      private var mLevelManager:§#!?§;
      
      private var §?#q§:Array;
      
      private var §@"L§:Boolean = false;
      
      private var §<#T§:Boolean;
      
      private var §9C§:Number = 500;
      
      public function §8"p§(param1:§#!?§)
      {
         this.§1!+§ = [];
         this.§!%§ = new Vector.<§@!f§>();
         super();
         this.mLevelManager = param1;
      }
      
      public function get §+#e§() : int
      {
         return this.§!%§.length;
      }
      
      public function init() : void
      {
         this.§[";§ = -1;
         this.§<"D§ = -1;
         this.§>#4§ = -1;
         this.§;#_§ = null;
         this.§0!+§ = null;
         this.§1!+§ = [];
         this.§8#a§.mouseEnabled = true;
         this.§9#i§ = 0;
         this.§8##§ = new Vector.<§7$&§>();
         var _loc1_:§+!3§ = this.§8#a§.§#""§.textureManager.getTexture("LASER_DOT");
         if(this.§5!s§)
         {
            this.§5!s§.dispose();
         }
         this.§5!s§ = new §3!0§(this.§8#a§,new Sprite(),_loc1_.texture,0,0);
         §>"$§.§3#'§.objects.§<#^§.addChild(this.§5!s§.sprite);
         this.§^"X§();
      }
      
      public function reset() : void
      {
         while(this.§!%§.length > 0)
         {
            this.§!%§.shift();
         }
         if(this.§4"2§)
         {
            this.§6#4§(this.§4"2§.§`$4§);
            try
            {
               this.§4"2§.§`$4§.close();
            }
            catch(e:Error)
            {
            }
            this.§4"2§ = null;
         }
      }
      
      public function setController(param1:§4!x§) : void
      {
         if(this.§8#a§ == param1)
         {
            return;
         }
         this.§8#a§ = param1;
         this.init();
      }
      
      public function run(param1:Number, param2:§7!O§) : void
      {
         var _loc6_:Object = null;
         if(!this.§8#a§)
         {
            return;
         }
         this.§+!F§(param1);
         this.§ do§(param1,param2);
         var _loc3_:Vector.<§5!&§> = this.§8#a§.§#""§.slingshot.mBirds;
         if(_loc3_.length > 0)
         {
            if((_loc3_[this.§8#a§.§#""§.slingshot.mNextBirdIndex] as §1!X§).§%8§)
            {
               this.§2#C§(param1,param2);
            }
         }
         if(!this.§"!"§)
         {
            this.§9#§(param1,param2);
         }
         var _loc4_:Boolean = (§>"$§.§3#'§.slingshot as §&#q§).mSlingShotState == §@M§.§0!C§ || (§>"$§.§3#'§.slingshot as §&#q§).mSlingShotState == §&#q§.§,#o§;
         if(this.§<"D§ > 0)
         {
            if(this.§0!+§ != this.§for§ || this.§0!+§ == this.§for§ && _loc4_)
            {
               this.§<"D§ -= param1;
            }
            if(this.§<"D§ <= 0)
            {
               this.§0!+§();
               this.§0!+§ = null;
               this.§8#a§.mouseEnabled = true;
               if(this.§1!+§.length > 0)
               {
                  _loc6_ = this.§1!+§.shift();
                  this.§<#J§(_loc6_.powerupFunction,_loc6_.gotoCastleSide);
               }
            }
         }
      }
      
      private function §2#C§(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:§&#q§ = null;
         var _loc5_:§1!X§ = null;
         var _loc6_:§ #f§ = null;
         var _loc7_:Number = NaN;
         if(!this.§<#T§)
         {
            this.§<#T§ = true;
            _loc3_ = this.§8#a§.§#""§.slingshot as §&#q§;
            _loc5_ = _loc3_.mBirds[_loc3_.mNextBirdIndex] as §1!X§;
            _loc6_ = §>"$§.§3#'§.particles as § #f§;
            _loc7_ = 0.4;
            _loc6_.§0T§(_loc5_.x + _loc5_.radius,_loc5_.y - _loc5_.radius,_loc7_,0,0,(3 + Math.random() * 5 + 1) * -1,_loc5_.radius);
         }
         if(this.§<#T§)
         {
            this.§9C§ -= param1;
            if(this.§9C§ <= 0)
            {
               this.§9C§ = §2"u§ + Math.random() * 300;
               this.§<#T§ = false;
            }
         }
      }
      
      protected function § do§(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:§&#q§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(this.§"!"§)
         {
            _loc3_ = this.§8#a§.§#""§.slingshot as §&#q§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§-K§.§2#a§() == §7#]§.§^#-§;
               this.§5!s§.§"$<§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,1,_loc7_);
               if(!this.§5!s§.enabled)
               {
                  §#$+§.playSound("Powerup_Laser_Sight","ChannelPowerups");
                  this.§5!s§.enabled = true;
               }
            }
            else
            {
               this.§5!s§.enabled = false;
            }
         }
      }
      
      protected function §9#§(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:§&#q§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(§2![§.§,#>§() == §3#8§.§ "Z§.§"!E§)
         {
            _loc3_ = this.§8#a§.§#""§.slingshot as §&#q§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.getPosition())
            {
               _loc4_ = new Point(_loc3_.getPosition().x - Math.cos(_loc3_.shootingAngle / 180 * Math.PI) * 4,_loc3_.getPosition().y + Math.sin(_loc3_.shootingAngle / 180 * Math.PI) * 4);
            }
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§-K§.§2#a§() == §7#]§.§^#-§;
               this.§5!s§.§"$<§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,2,_loc7_);
               this.§5!s§.enabled = true;
            }
            else
            {
               this.§5!s§.enabled = false;
            }
         }
      }
      
      protected function §+!F§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§7$&§ = null;
         if(this.§8##§)
         {
            _loc2_ = this.§8##§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§8##§[_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.§`!W§)
                  {
                     this.§8##§.splice(_loc2_,1);
                  }
                  else
                  {
                     _loc3_.§+!F§(param1,§>"$§.§3#'§.levelObjects);
                  }
               }
               _loc2_--;
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc1_:int = §%h§.§3!]§.§7#S§(§`j§.§@!V§.§"!E§);
         if(_loc1_ <= 0)
         {
            return false;
         }
         this.§8#a§.§"#O§();
         §%h§.§3!]§.§?!r§(§`j§.§@!V§.§"!E§);
         this.§?$7§(§`j§.§@!V§.§"!E§);
         this.§<#J§(this.§'",§,false);
         return true;
      }
      
      private function §'",§() : void
      {
         var _loc1_:String = this.mLevelManager.currentLevel;
         this.mLevelManager.getCurrentEpisodeModel().name;
         §,"W§.§="7§(§`j§.§@!V§.§"!E§,_loc1_);
         var _loc3_:§&#q§ = §>"$§.§3#'§.slingshot as §&#q§;
         if(_loc3_.mSlingShotState == §@M§.§]I§)
         {
            _loc3_.setSlingShotState(§@M§.§0!C§);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§;"@§(param1);
         this.§8#3§(param1);
      }
      
      private function §8#3§(param1:Number) : void
      {
         if(this.§9#i§ > 0)
         {
            this.§9#i§ -= param1;
         }
      }
      
      protected function §;"@§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§[";§ >= 0 && this.§[";§ < §?!N§.§!#9§)
         {
            _loc2_ = Math.sin(this.§[";§ / §?!N§.§!#9§ * (Math.PI * §?!N§.§[! §) + this.§ "w§);
            _loc3_ = _loc2_ * §?!N§.§<"^§;
            _loc4_ = new b2Vec2(_loc3_,this.§8#a§.§#""§.mLevelEngine.mWorld.GetGravity().y);
            this.§8#a§.§#""§.mLevelEngine.mWorld.SetGravity(_loc4_);
            ++this.§[";§;
            this.§3!J§();
         }
         else if(this.§[";§ == §?!N§.§!#9§)
         {
            this.§[";§ = -1;
            §>"$§.§3#'§.mLevelEngine.mWorld.SetGravity(new b2Vec2(0,this.§8#a§.§#""§.mLevelEngine.mWorld.GetGravity().y));
         }
      }
      
      private function §3!J§() : void
      {
         var _loc1_:Number = this.§8#a§.§#""§.camera.centerX;
         var _loc2_:Number = §0$,§.§,4§ / §0$,§.§`#1§;
         var _loc3_:Number = §0$,§.§'!@§ / §0$,§.§`#1§;
         var _loc4_:Number = _loc1_ + (Math.random() - 0.5) * _loc2_;
         var _loc5_:§ #f§ = this.§8#a§.§#""§.particles as § #f§;
         if(this.§[";§ % 2)
         {
            _loc5_.§&"B§(_loc4_,this.§8#a§.§#""§.§8!X§.ground);
         }
         _loc4_ = _loc1_ + (Math.random() - 0.5) * _loc2_;
         _loc5_.§>"7§(_loc4_,this.§8#a§.§#""§.§8!X§.ground + Math.random() * _loc3_ / 20);
      }
      
      public function §87§() : Boolean
      {
         return this.§[";§ > -1;
      }
      
      public function §'!0§() : Boolean
      {
         return this.§9#i§ > 0;
      }
      
      private function §<#J§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§0!+§ != null)
         {
            this.§1!+§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§0!+§ = param1;
            (§>"$§.§#0§ as §7!J§).mouseEnabled = false;
            this.§<"D§ = param1 == this.§for§ ? Number(§;!p§.§=#1§ * 1.5) : Number(§;!p§.§=#1§);
            this.§8#a§.§#""§.camera.setAction(!!param2 ? int(§0$,§.§-"#§) : int(§0$,§.§6S§));
            this.§>E§(this.§0!+§);
         }
      }
      
      private function §>E§(param1:Function) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case this.§for§:
               _loc2_ = §`j§.§6#z§.§"!E§;
               break;
            case this.§ !N§:
               _loc2_ = §`j§.§5"j§.§"!E§;
               break;
            case this.§##i§:
               _loc2_ = §`j§.§-"f§.§"!E§;
               break;
            case this.§@!C§:
               _loc2_ = §`j§.§-"5§.§"!E§;
               break;
            case this.§+"=§:
               _loc2_ = §`j§.§="-§.§"!E§;
               break;
            case this.§[]§:
               _loc2_ = §`j§.§?O§.§"!E§;
               break;
            case this.§1j§:
               _loc2_ = §`j§.§="-§.§"!E§;
               break;
            case this.§?"4§:
               _loc2_ = §`j§.§+"4§.§"!E§;
         }
         var _loc3_:§,#?§ = AngryBirdsBase.singleton.§ "-§() as §,#?§;
         if(_loc3_ && _loc2_)
         {
            dispatchEvent(new § !_§(§ !_§.§7!P§,_loc2_));
            if(_loc2_ != §`j§.§="-§.§"!E§)
            {
               §#$+§.playSound("Powerup_Intro","ChannelPowerups");
            }
            else
            {
               §#$+§.playSound("Bird_Wingman_Animation","ChannelPowerups");
            }
         }
      }
      
      private function §for§() : void
      {
         var _loc4_:§1!X§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc1_:§&#q§ = this.§8#a§.§#""§.slingshot as §&#q§;
         var _loc2_:Vector.<§5!&§> = _loc1_.mBirds;
         var _loc3_:Number = §?!N§.§2z§;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            (_loc4_ = _loc2_[_loc1_.mNextBirdIndex] as §1!X§).§%8§ = true;
            switch(_loc4_.name)
            {
               case "BIRD_BLACK":
                  _loc3_ = §?!N§.§?"s§;
                  break;
               case "BIRD_BLUE":
                  _loc3_ = §?!N§.§##1§;
                  break;
               case "BIRD_GREEN":
                  _loc3_ = §?!N§.§ "0§;
                  break;
               case "BIRD_WHITE":
                  _loc3_ = §?!N§.§?M§;
                  break;
               case "BIRD_YELLOW":
                  _loc3_ = §?!N§.§9#J§;
                  break;
               case "BIRD_RED":
                  _loc3_ = §?!N§.§,#,§;
                  break;
               case "BIRD_ORANGE":
                  _loc3_ = §?!N§.§+;§;
                  break;
               case "BIRD_RED_BIG":
                  _loc3_ = §?!N§.§'#6§;
                  break;
               case "BIRD_WINGMAN":
                  _loc3_ = §?!N§.§"#m§;
                  break;
               case "BIRD_SARDINE":
                  _loc3_ = 1;
            }
         }
         §#$+§.playSound("Powerup_Superseed","ChannelPowerups");
         _loc1_.§ !@§(_loc3_,§`j§.§6#z§);
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
               if((_loc11_ = _loc2_[0].name) == "BIRD_WINGMAN")
               {
                  _loc11_ = "BIRD_RED";
               }
               this.§8#a§.§#""§.particles.addParticle(§=$4§.§9J§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§=$4§.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
               _loc8_++;
            }
         }
         this.§@T§();
      }
      
      public function §@T§() : void
      {
         var _loc1_:§&#q§ = this.§8#a§.§#""§.slingshot as §&#q§;
         var _loc2_:Vector.<§5!&§> = _loc1_.mBirds;
         var _loc3_:§1!X§ = _loc2_[_loc1_.mNextBirdIndex] as §1!X§;
         §>"$§.§3#'§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§=$4§.§<#h§,§5"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§=$4§.§;";§,_loc3_.x,_loc3_.y - _loc3_.radius,400,"",§=$4§.§-!0§,0,0,0,0,1,8,true);
         if(_loc2_.length > 0)
         {
            §#%§.§'!3§(_loc3_.x,_loc3_.y,40,0,40);
         }
      }
      
      private function §1#v§() : void
      {
         var _loc1_:§&#q§ = this.§8#a§.§#""§.slingshot as §&#q§;
         _loc1_.setSlingShotState(§@M§.§0!C§);
      }
      
      private function §##i§() : void
      {
         §#$+§.playSound("Powerup_SuperSlingshot","ChannelPowerups");
         (this.§8#a§.§#""§.slingshot as §&#q§).§%z§();
      }
      
      private function §@!C§() : void
      {
         this.§"!"§ = true;
         this.§^"X§();
         §#$+§.playSound("Powerup_Laser_Sight","ChannelPowerups");
         (this.§8#a§.§#""§.slingshot as §&#q§).§"!j§();
      }
      
      private function §[]§() : void
      {
         var _loc8_:§="@§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§7$&§ = null;
         var _loc1_:Point = this.§8#a§.§>#f§();
         _loc1_ = this.§8#a§.§#""§.screenToBox2D(_loc1_.x,_loc1_.y);
         this.§?"!§ = §#$+§.playSound("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var _loc2_:Number = (this.§8#a§.§#""§.camera as §2";§).§7#o§() + §;!p§.§%#a§ / 2;
         var _loc3_:Number = (this.§8#a§.§#""§.camera as §2";§).§&#T§() + §;!p§.§%#a§ / 2;
         var _loc4_:Number = this.§8#a§.§#""§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = Number(-20)) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Vector.<§="@§> = this.§#!y§().§super§(3);
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
               _loc9_ = _loc8_.§;#e§ + (Math.random() * §;!p§.§%#a§ - §;!p§.§%#a§ / 2);
            }
            _loc11_ = this.§#!y§().§-"8§(_loc9_,_loc10_,0);
            this.§8##§[_loc7_] = _loc11_;
            _loc7_++;
         }
      }
      
      private function § !N§() : void
      {
         var _loc6_:§="@§ = null;
         this.§8#a§.§<!Y§(Math.round(§ "M§.§9#l§ * §?!N§.§!#9§));
         §#$+§.playSound("Powerup_Earthquake","ChannelPowerups");
         this.§[";§ = 0;
         this.§ "w§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = this.§#!y§().§0y§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            if((_loc6_ = this.§#!y§().getObject(_loc2_) as §="@§) is §=,§ || _loc6_ is §3a§)
            {
               _loc6_.getBody().SetAwake(true);
               if(_loc6_ is §3a§)
               {
                  (_loc6_ as §3a§).scream();
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = §;!p§.§"!y§;
         var _loc4_:Number = §;!p§.§2!;§;
         var _loc5_:Number = §;!p§.§7!8§;
         this.§8#a§.§#""§.§ !A§(true,_loc3_,_loc4_,_loc5_);
         this.§8#a§.§#""§.§4y§();
      }
      
      private function §+"=§() : void
      {
         var _loc3_:§5!&§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§@M§ = this.§8#a§.§#""§.slingshot;
         if(_loc1_.mBirds.length > 0 && _loc1_.mNextBirdIndex < _loc1_.mBirds.length)
         {
            _loc3_ = _loc1_.mBirds[_loc1_.mNextBirdIndex];
            _loc4_ = _loc3_.§ "4§;
            if(_loc3_)
            {
               if((_loc5_ = _loc1_.x - _loc3_.§ "4§) < 1.5 && _loc5_ > 0)
               {
                  _loc4_ = _loc1_.x - 1.5;
               }
               _loc3_.§ "&§();
               this.§[#p§ = (_loc3_ as §1!X§).§,!4§(_loc4_,_loc3_.§[#K§);
            }
         }
         this.§8#a§.§#""§.slingshot.addBirdStraightIntoSlingshot("BIRD_CHRISTMAS",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         §#$+§.playSound("Sound_Santa_Bomb_Bird_Arrival");
         this.§8#a§.§>$0§();
      }
      
      private function §1j§() : void
      {
         this.§8#a§.§"#O§();
         var _loc1_:§&#q§ = §>"$§.§3#'§.slingshot as §&#q§;
         if(_loc1_.§]M§())
         {
            this.§for§();
         }
         _loc1_.setSlingShotState(§@M§.§0!C§);
      }
      
      private function §#!y§() : §=#]§
      {
         return this.§8#a§.§#""§.levelObjects as §=#]§;
      }
      
      public function §?!r§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §`j§.§6#z§.§"!E§:
               this.§<#J§(this.§for§,false);
               break;
            case §`j§.§-"f§.§"!E§:
               this.§<#J§(this.§##i§,false);
               break;
            case §`j§.§-"5§.§"!E§:
               this.§<#J§(this.§@!C§,false);
               break;
            case §`j§.§5"j§.§"!E§:
               this.§<#J§(this.§ !N§,true);
               break;
            case §`j§.§?O§.§"!E§:
               this.§<#J§(this.§[]§,true);
               break;
            case §`j§.§="-§.§"!E§:
               §>"$§.§3#'§.slingshot.setSlingShotState(§&#q§.§,#o§);
               this.§<#J§(this.§1j§,false);
               break;
            case §`j§.§+"4§.§"!E§:
               this.§<#J§(this.§?"4§,true);
         }
         if(param1 != "MightyEagle")
         {
            return true;
         }
         this.§0§(param1);
         this.§?$7§(param1);
         §%h§.§3!]§.§?!r§(param1);
         this.§8#a§.§#""§.§?!r§(param1);
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.mLevelManager.getCurrentEpisodeModel().name;
         §,"W§.§="7§(param1,_loc2_);
         int(§>"$§.§3#'§.slingshot.§`b§());
         int(§>"$§.§3#'§.slingshot.§3!4§());
         if(§>"$§.§3#'§.slingshot.mBirds.length > 0 && §>"$§.§3#'§.slingshot.mBirds[0] as §5!&§)
         {
            (§>"$§.§3#'§.slingshot.mBirds[0] as §5!&§).name;
         }
         return true;
      }
      
      private function §?"4§() : void
      {
         this.§8#a§.§<!Y§(3 * Math.round(§ "M§.§9#l§ * §?!N§.§!#9§));
         (§>"$§.§3#'§.levelObjects as §=#]§).§7""§();
         this.§9#i§ = (§>"$§.§3#'§.levelObjects as §=#]§).§<# §;
      }
      
      public function §?$7§(param1:String) : void
      {
         if(param1 != "MightyEagle")
         {
            return;
         }
         var _loc2_:Array = (§>"$§.§3#'§ as §#%§).§?#A§();
         var _loc3_:§5$!§ = new §5$!§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§@!f§ = new §@!f§(param1,_loc2_,_loc3_);
         if(this.§4"2§ != null)
         {
            this.§!%§.push(_loc4_);
         }
         else
         {
            this.§9"Q§(_loc4_);
         }
      }
      
      protected function §9"Q§(param1:§@!f§) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = (this.mLevelManager as §6^§).§[!2§(_loc2_);
         if(int(§]!m§.§3!]§.levelIDs.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§]!m§.§3!]§.§-#P§(_loc2_));
         }
         var _loc6_:String = !!(_loc5_ = this.mLevelManager.getEpisodeForLevel(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/useItem");
         var _loc8_:Object = {
            "item":param1.§9"e§,
            "levelId":this.mLevelManager.currentLevel,
            "episode":_loc6_,
            "actualLevel":_loc3_,
            "usedItems":param1.§="y§
         };
         _loc7_.contentType = "application/json";
         _loc7_.method = URLRequestMethod.POST;
         _loc7_.data = JSON.stringify(_loc8_);
         this.§4"2§ = param1;
         this.§`"z§(param1.§`$4§);
         param1.§`$4§.load(_loc7_);
      }
      
      protected function §`"z§(param1:URLLoader) : void
      {
         this.§6#4§(param1);
         param1.addEventListener(Event.COMPLETE,this.§6"K§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§-"p§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-"p§);
         param1.addEventListener(§>#J§.§-$%§,this.§-"p§);
      }
      
      protected function §6#4§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§6"K§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§-"p§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-"p§);
         param1.removeEventListener(§>#J§.§-$%§,this.§-"p§);
      }
      
      protected function §6"K§(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc2_:§@!f§ = this.§4"2§;
         this.§6#4§(_loc2_.§`$4§);
         this.§4"2§ = null;
         var _loc3_:Boolean = false;
         if((_loc4_ = _loc2_.§`$4§.data).items)
         {
            §%h§.§3!]§.§1!0§(_loc4_.items);
         }
         _loc3_ = true;
         if(_loc4_.error)
         {
            throw new Error("Powerup activation unsuccessful. Server returned \'" + _loc4_.error + "\'");
         }
         this.§""R§(_loc3_);
      }
      
      protected function §-"p§(param1:Event) : void
      {
         var _loc2_:§@!f§ = this.§4"2§;
         this.§6#4§(_loc2_.§`$4§);
         this.§4"2§ = null;
         if(param1.type == §>#J§.§-$%§)
         {
            this.§@!w§(ErrorPopup.§`"4§);
         }
         else
         {
            this.§""R§(false);
         }
      }
      
      protected function §""R§(param1:Boolean) : void
      {
         var _loc2_:§@!f§ = null;
         if(!param1)
         {
            this.§=#r§();
         }
         if(this.§!%§.length > 0)
         {
            _loc2_ = this.§!%§.shift();
            this.§9"Q§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §@!w§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§[W§.§5Z§,§<d§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=#r§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function get §-#!§() : Boolean
      {
         return this.§4"2§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§8#a§)
         {
            this.§8#a§.mouseEnabled = true;
         }
         this.§9#i§ = 0;
         this.§[";§ = -1;
         this.§>#4§ = -1;
         this.§<"D§ = -1;
         this.§;#_§ = null;
         this.§0!+§ = null;
         this.§1!+§ = [];
         if(this.§?"!§)
         {
            this.§?"!§.stop();
            this.§?"!§ = null;
         }
         if(this.§5!s§)
         {
            this.§5!s§.dispose();
            this.§5!s§ = null;
         }
      }
      
      public function §4#^§() : void
      {
         if(this.§[#p§)
         {
            this.§[#p§.§?#$§();
            this.§[#p§ = null;
         }
         if(this.§?#_§)
         {
            this.§?#_§.§?#$§();
            this.§?#_§ = null;
         }
      }
      
      public function §'#G§(param1:String) : Boolean
      {
         return this.§?#q§ && this.§?#q§.indexOf(param1) > -1;
      }
      
      public function §]"7§() : void
      {
         this.§?#q§ = null;
      }
      
      private function §0§(param1:String) : void
      {
         if(!this.§?#q§)
         {
            this.§?#q§ = new Array();
         }
         this.§?#q§[this.§?#q§.length] = param1;
      }
      
      public function get §"p§() : Boolean
      {
         return this.§@"L§;
      }
      
      public function set §"p§(param1:Boolean) : void
      {
         this.§@"L§ = param1;
      }
      
      public function §^"X§() : void
      {
         var _loc2_:§+!3§ = null;
         if(this.§5!s§)
         {
            this.§5!s§.dispose();
         }
         var _loc1_:String = "LASER_DOT";
         if(this.§"!"§)
         {
            _loc1_ = "LASER_DOT";
         }
         else if(§2![§.§,#>§() == §3#8§.§ "Z§.§"!E§)
         {
            _loc1_ = "POWERUP_TREESLING_AIMDOT";
         }
         if(this.§8#a§)
         {
            _loc2_ = this.§8#a§.§#""§.textureManager.getTexture(_loc1_);
            this.§5!s§ = new §3!0§(this.§8#a§,new Sprite(),_loc2_.texture,0,0);
            §>"$§.§3#'§.objects.§<#^§.addChild(this.§5!s§.sprite);
         }
      }
      
      public function get §^!t§() : Boolean
      {
         return this.§"!"§;
      }
   }
}
