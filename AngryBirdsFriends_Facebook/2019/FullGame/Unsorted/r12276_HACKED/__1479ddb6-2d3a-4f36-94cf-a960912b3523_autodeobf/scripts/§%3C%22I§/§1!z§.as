package §<"I§
{
   import § "v§.§+o§;
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import § h§.WarningPopup;
   import § null§.§@§;
   import §#Z§.Sprite;
   import §%$0§.§0E§;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-"e§.§!"=§;
   import §-"e§.§[9§;
   import §0!>§.§ !b§;
   import §0!>§.§;#$§;
   import §2E§.§'@§;
   import §4#$§.§5"L§;
   import §6!R§.b2Vec2;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §9!6§.§## §;
   import §9#M§.§'!-§;
   import §>#Y§.§!",§;
   import §?$#§.§!";§;
   import §?$#§.§%2§;
   import §?$#§.§&$0§;
   import §?$#§.§2!"§;
   import §?$#§.§3!H§;
   import §?$#§.§7!<§;
   import §?$#§.§;![§;
   import §?$#§.§@#l§;
   import §?$#§.§]"]§;
   import §?$#§.§^#j§;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §?o§.§?"m§;
   import §^0§.§%"^§;
   import §^0§.§%N§;
   import §^0§.§&"e§;
   import §^0§.§3!U§;
   import §^0§.§8§;
   import §^0§.§=Q§;
   import §^0§.§>"T§;
   import §^0§.§`"p§;
   import §^1§.§2#u§;
   import §`$=§.§5$E§;
   import §`$=§.§<Q§;
   import com.rovio.assets.§=@§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §1!z§ extends EventDispatcher
   {
      
      private static const §<"&§:Number = 500;
       
      
      private var §9"e§:§!";§;
      
      protected var §-"6§:Boolean = false;
      
      private var §@#B§:int = -1;
      
      private var §1#`§:Number;
      
      private var §6!s§:int;
      
      private var §@i§:Function;
      
      private var §for §:Array;
      
      private var §0!a§:Number = -1;
      
      private var §8"i§:§8#4§;
      
      private var §<"s§:Number = -1;
      
      private var §5A§:§+o§;
      
      private var §5"Y§:Vector.<§8#4§>;
      
      private var §`"7§:§@#5§ = null;
      
      private var §3!3§:§@#5§ = null;
      
      private var §@-§:Vector.<§2"x§>;
      
      private var §="V§:§2"x§;
      
      private var §3!0§:§ !b§;
      
      private var mLevelManager:§4#?§;
      
      private var §6!a§:Array;
      
      private var §?!K§:Boolean = false;
      
      private var §=!0§:Boolean;
      
      private var §1"c§:Number = 500;
      
      private var §;!J§:Boolean;
      
      public function §1!z§(param1:§4#?§)
      {
         this.§for § = [];
         this.§@-§ = new Vector.<§2"x§>();
         super();
         this.mLevelManager = param1;
      }
      
      public function get §;!@§() : int
      {
         return this.§@-§.length;
      }
      
      public function init() : void
      {
         this.§@#B§ = -1;
         this.§0!a§ = -1;
         this.§<"s§ = -1;
         this.§8"i§ = null;
         this.§@i§ = null;
         this.§for § = [];
         this.§3!0§.mouseEnabled = true;
         this.§;!J§ = false;
         this.§6!s§ = 0;
         this.§5"Y§ = new Vector.<§8#4§>();
         var _loc1_:§'!-§ = this.§3!0§.§'"&§.textureManager.getTexture("LASER_DOT");
         if(this.§9"e§)
         {
            this.§9"e§.dispose();
         }
         this.§9"e§ = new §3!H§(this.§3!0§,new Sprite(),_loc1_.texture,0,0);
         §+!p§.§`?§.objects.backgroundSprite.addChild(this.§9"e§.sprite);
         this.§>#E§();
      }
      
      public function reset() : void
      {
         while(this.§@-§.length > 0)
         {
            this.§@-§.shift();
         }
         if(this.§="V§)
         {
            this.§]"s§(this.§="V§.§;#5§);
            try
            {
               this.§="V§.§;#5§.close();
            }
            catch(e:Error)
            {
            }
            this.§="V§ = null;
         }
      }
      
      public function setController(param1:§ !b§) : void
      {
         if(this.§3!0§ == param1)
         {
            return;
         }
         this.§3!0§ = param1;
         this.init();
      }
      
      public function run(param1:Number, param2:§>"T§) : void
      {
         var _loc6_:Object = null;
         if(!this.§3!0§)
         {
            return;
         }
         this.§=!U§(param1);
         this.§5#m§(param1,param2);
         var _loc3_:Vector.<§;![§> = this.§3!0§.§'"&§.slingshot.mBirds;
         if(_loc3_.length > 0)
         {
            if((_loc3_[this.§3!0§.§'"&§.slingshot.mNextBirdIndex] as §7!<§).§;!u§)
            {
               this.§2s§(param1,param2);
            }
         }
         if(!this.§-"6§)
         {
            this.§1M§(param1,param2);
         }
         var _loc4_:Boolean = (§+!p§.§`?§.slingshot as §]"]§).mSlingShotState == §2!"§.§'[§ || (§+!p§.§`?§.slingshot as §]"]§).mSlingShotState == §]"]§.§""m§;
         if(this.§0!a§ > 0)
         {
            if(this.§@i§ != this.§,a§ || this.§@i§ == this.§,a§ && _loc4_)
            {
               this.§0!a§ -= param1;
            }
            if(this.§0!a§ <= 0)
            {
               this.§@i§();
               this.§@i§ = null;
               this.§3!0§.mouseEnabled = true;
               if(this.§for §.length > 0)
               {
                  _loc6_ = this.§for §.shift();
                  this.§7!C§(_loc6_.powerupFunction,_loc6_.gotoCastleSide);
               }
            }
         }
      }
      
      private function §2s§(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:§]"]§ = null;
         var _loc5_:§7!<§ = null;
         var _loc6_:§0E§ = null;
         var _loc7_:Number = NaN;
         if(!this.§=!0§)
         {
            this.§=!0§ = true;
            _loc3_ = this.§3!0§.§'"&§.slingshot as §]"]§;
            _loc5_ = _loc3_.mBirds[_loc3_.mNextBirdIndex] as §7!<§;
            _loc6_ = §+!p§.§`?§.particles as §0E§;
            _loc7_ = 0.4;
            _loc6_.§##2§(_loc5_.x + _loc5_.radius,_loc5_.y - _loc5_.radius,_loc7_,0,0,(3 + Math.random() * 4) * -1,_loc5_.radius);
         }
         if(this.§=!0§)
         {
            this.§1"c§ -= param1;
            if(this.§1"c§ <= 0)
            {
               this.§1"c§ = §<"&§ + Math.random() * 300;
               this.§=!0§ = false;
            }
         }
      }
      
      protected function §5#m§(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:§]"]§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(this.§-"6§)
         {
            _loc3_ = this.§3!0§.§'"&§.slingshot as §]"]§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§#"'§.§83§() == §`"p§.§##+§;
               this.§9"e§.§`#+§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,10,_loc7_,false,22);
               this.§9"e§.enabled = true;
            }
            else
            {
               this.§9"e§.enabled = false;
            }
         }
      }
      
      protected function §1M§(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:§]"]§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(§!"=§.§!$#§() == §[9§.§%"<§.§=#@§)
         {
            _loc3_ = this.§3!0§.§'"&§.slingshot as §]"]§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.getPosition())
            {
               _loc4_ = new Point(_loc3_.getPosition().x - Math.cos(_loc3_.shootingAngle / 180 * Math.PI) * 4,_loc3_.getPosition().y + Math.sin(_loc3_.shootingAngle / 180 * Math.PI) * 4);
            }
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§#"'§.§83§() == §`"p§.§##+§;
               this.§9"e§.§`#+§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,16,_loc7_,true,64);
               this.§9"e§.enabled = true;
            }
            else
            {
               this.§9"e§.enabled = false;
            }
         }
      }
      
      protected function §=!U§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§8#4§ = null;
         if(this.§5"Y§)
         {
            _loc2_ = this.§5"Y§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§5"Y§[_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.§5"6§)
                  {
                     this.§5"Y§.splice(_loc2_,1);
                  }
                  else
                  {
                     _loc3_.§=!U§(param1,§+!p§.§`?§.levelObjects);
                  }
               }
               _loc2_--;
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc1_:int = §!",§.§3"1§.§2![§(§<$B§.§`"K§.§=#@§);
         if(_loc1_ <= 0)
         {
            return false;
         }
         this.§3!0§.§9!d§();
         this.§#Y§();
         §!",§.§3"1§.§,"9§(§<$B§.§`"K§.§=#@§);
         this.§=!,§(§<$B§.§`"K§.§=#@§);
         this.§7!C§(this.§@"_§,false);
         return true;
      }
      
      private function §@"_§() : void
      {
         var _loc1_:String = this.mLevelManager.currentLevel;
         this.mLevelManager.getCurrentEpisodeModel().name;
         §'@§.§,$,§(§<$B§.§`"K§.§=#@§,_loc1_);
         var _loc3_:§]"]§ = §+!p§.§`?§.slingshot as §]"]§;
         if(_loc3_.mSlingShotState == §2!"§.§1#%§)
         {
            _loc3_.setSlingShotState(§2!"§.§'[§);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§]z§(param1);
         this.§?!t§(param1);
      }
      
      private function §?!t§(param1:Number) : void
      {
         if(this.§6!s§ > 0)
         {
            this.§6!s§ -= param1;
         }
      }
      
      protected function §]z§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§@#B§ >= 0 && this.§@#B§ < §%2§.§9'§)
         {
            _loc2_ = Math.sin(this.§@#B§ / §%2§.§9'§ * (Math.PI * §%2§.§,"k§) + this.§1#`§);
            _loc3_ = _loc2_ * §%2§.§%#C§;
            _loc4_ = new b2Vec2(_loc3_,this.§3!0§.§'"&§.mLevelEngine.mWorld.GetGravity().y);
            this.§3!0§.§'"&§.mLevelEngine.mWorld.SetGravity(_loc4_);
            ++this.§@#B§;
            this.§+$0§();
         }
         else if(this.§@#B§ == §%2§.§9'§)
         {
            this.§@#B§ = -1;
            §+!p§.§`?§.mLevelEngine.mWorld.SetGravity(new b2Vec2(0,this.§3!0§.§'"&§.mLevelEngine.mWorld.GetGravity().y));
         }
      }
      
      private function §+$0§() : void
      {
         var _loc1_:Number = this.§3!0§.§'"&§.camera.centerX;
         var _loc2_:Number = §5$E§.§'!F§ / §5$E§.§4W§;
         var _loc3_:Number = §5$E§.§4$B§ / §5$E§.§4W§;
         var _loc4_:Number = _loc1_ + (Math.random() - 0.5) * _loc2_;
         var _loc5_:§0E§ = this.§3!0§.§'"&§.particles as §0E§;
         if(this.§@#B§ % 2)
         {
            _loc5_.§>#1§(_loc4_,this.§3!0§.§'"&§.§%?§.ground);
         }
         if(§5"L§.§3"1§.§`T§())
         {
            _loc5_.§;i§(_loc1_ + (Math.random() - 0.5) * _loc2_,0,2);
         }
         _loc4_ = _loc1_ + (Math.random() - 0.5) * _loc2_;
         _loc5_.§>C§(_loc4_,this.§3!0§.§'"&§.§%?§.ground + Math.random() * _loc3_ / 20);
      }
      
      public function §,!>§() : Boolean
      {
         return this.§@#B§ > -1;
      }
      
      public function §>n§() : Boolean
      {
         return this.§6!s§ > 0;
      }
      
      private function §7!C§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§@i§ != null)
         {
            this.§for §.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§@i§ = param1;
            (§+!p§.§-#W§ as §;#$§).mouseEnabled = false;
            this.§0!a§ = param1 == this.§,a§ ? Number(§&$0§.§3""§ * 1.5) : Number(§&$0§.§3""§);
            this.§3!0§.§'"&§.camera.setAction(!!param2 ? int(§5$E§.§[!I§) : int(§5$E§.§5L§));
            this.§["=§(this.§@i§);
         }
      }
      
      protected function §["=§(param1:Function) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case this.§,a§:
               _loc2_ = §<$B§.§+"4§.§=#@§;
               break;
            case this.§'"+§:
               _loc2_ = §<$B§.§5#J§.§=#@§;
               break;
            case this.§"l§:
               _loc2_ = §<$B§.§<$§.§=#@§;
               break;
            case this.§@$ §:
               _loc2_ = §<$B§.§[D§.§=#@§;
               break;
            case this.§@!M§:
               _loc2_ = §<$B§.§ !n§.§=#@§;
               break;
            case this.§+p§:
               _loc2_ = §<$B§.§0"s§.§=#@§;
               break;
            case this.§8#d§:
               _loc2_ = §<$B§.§^!n§.§=#@§;
               break;
            case this.§!#-§:
               _loc2_ = §<$B§.§,"S§.§=#@§;
               break;
            case this.§@#O§:
               _loc2_ = §<$B§.§0"s§.§=#@§;
               break;
            case this.§4R§:
               _loc2_ = §<$B§.§!"C§.§=#@§;
         }
         var _loc3_:§2#u§ = AngryBirdsBase.singleton.§8"v§() as §2#u§;
         if(_loc3_ && _loc2_)
         {
            dispatchEvent(new §#$9§(§#$9§.§;U§,_loc2_));
            if(_loc2_ == §<$B§.§0"s§.§=#@§)
            {
               §4$4§.playSound("wingman_animation","ChannelPowerups");
            }
            else if(_loc2_ == §<$B§.§,"S§.§=#@§)
            {
               §4$4§.playSound("pumpkin_activation","ChannelPowerups");
            }
            else
            {
               §4$4§.playSound("powerup_intro","ChannelPowerups");
            }
         }
         else
         {
            §4$4§.playSound("powerup_intro","ChannelPowerups");
         }
      }
      
      private function §,a§() : void
      {
         var _loc4_:§7!<§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc1_:§]"]§ = this.§3!0§.§'"&§.slingshot as §]"]§;
         var _loc2_:Vector.<§;![§> = _loc1_.mBirds;
         var _loc3_:Number = §%2§.§&#g§;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            (_loc4_ = _loc2_[_loc1_.mNextBirdIndex] as §7!<§).§;!u§ = true;
            switch(_loc4_.name)
            {
               case "BIRD_BLACK":
                  _loc3_ = §%2§.§%!O§;
                  break;
               case "BIRD_BLUE":
                  _loc3_ = §%2§.§#$<§;
                  break;
               case "BIRD_GREEN":
                  _loc3_ = §%2§.§@"E§;
                  break;
               case "BIRD_WHITE":
                  _loc3_ = §%2§.§'!j§;
                  break;
               case "BIRD_YELLOW":
                  _loc3_ = §%2§.§+"7§;
                  break;
               case "BIRD_RED":
                  _loc3_ = §%2§.§@#Q§;
                  break;
               case "BIRD_ORANGE":
                  _loc3_ = §%2§.§1"b§;
                  break;
               case "BIRD_REDBIG":
                  _loc3_ = §%2§.§1#t§;
                  break;
               case "BIRD_WINGMAN":
                  _loc3_ = §%2§.§,"X§;
                  break;
               case "BIRD_SARDINE":
                  _loc3_ = 1;
                  _loc4_.§;!u§ = false;
                  break;
               case "POWERUP_BOOMBOX":
                  _loc3_ = §%2§.§2!U§;
            }
         }
         §4$4§.playSound("big_bird","ChannelPowerups");
         _loc1_.§"$<§(_loc3_,§<$B§.§+"4§);
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
                  this.§3!0§.§'"&§.particles.addParticle(§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§`#I§.§"#N§,_loc10_ * Math.cos(_loc9_),-_loc10_ * Math.sin(_loc9_),10,_loc10_ * 50);
               }
               else
               {
                  if(_loc11_ == "BIRD_WINGMAN")
                  {
                     _loc11_ = "BIRD_RED";
                  }
                  this.§3!0§.§'"&§.particles.addParticle(§`#I§.§5$"§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§`#I§.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
               }
               _loc8_++;
            }
         }
         this.§%"$§();
         this.§;!J§ = false;
      }
      
      private function §9#7§() : void
      {
         var _loc3_:§7!<§ = null;
         var _loc1_:§]"]§ = this.§3!0§.§'"&§.slingshot as §]"]§;
         var _loc2_:Vector.<§;![§> = _loc1_.mBirds;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc1_.mNextBirdIndex] as §7!<§;
            _loc3_.§;!u§ = false;
            _loc3_.§&3§ = null;
            _loc3_.§!$&§ = null;
            _loc3_.scale = 1;
            _loc3_.sprite.scaleX = _loc3_.scale;
            _loc3_.sprite.scaleY = _loc3_.scale;
         }
         this.§;!J§ = false;
      }
      
      public function §%"$§() : void
      {
         var _loc1_:§]"]§ = this.§3!0§.§'"&§.slingshot as §]"]§;
         var _loc2_:Vector.<§;![§> = _loc1_.mBirds;
         var _loc3_:§7!<§ = _loc2_[_loc1_.mNextBirdIndex] as §7!<§;
         §+!p§.§`?§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§`#I§.§1!h§,§2#Z§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,_loc3_.x,_loc3_.y - _loc3_.radius,400,"",§`#I§.§&#p§,0,0,0,0,1,8,true);
         if(_loc2_.length > 0)
         {
            §^#j§.§#!^§(_loc3_.x,_loc3_.y,40,0,40);
         }
         (this.§3!0§.§'"&§.slingshot as §]"]§).§6$,§(_loc3_.x,_loc3_.y);
      }
      
      private function §^#[§() : void
      {
         var _loc1_:§]"]§ = this.§3!0§.§'"&§.slingshot as §]"]§;
         _loc1_.setSlingShotState(§2!"§.§'[§);
      }
      
      private function §"l§() : void
      {
         §4$4§.playSound("super_slingshot","ChannelPowerups");
         (this.§3!0§.§'"&§.slingshot as §]"]§).§3"n§();
      }
      
      private function §@!M§() : void
      {
         this.§-"6§ = true;
         this.§>#E§();
         §4$4§.playSound("laser_sight","ChannelPowerups");
         (this.§3!0§.§'"&§.slingshot as §]"]§).§;"x§();
      }
      
      private function §8#d§() : void
      {
         var _loc8_:§=Q§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§8#4§ = null;
         var _loc1_:Point = this.§3!0§.§!"-§();
         _loc1_ = this.§3!0§.§'"&§.screenToBox2D(_loc1_.x,_loc1_.y);
         this.§5A§ = §4$4§.playSound("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var _loc2_:Number = (this.§3!0§.§'"&§.camera as §<Q§).§=#Z§() + §&$0§.§<#§ / 2;
         var _loc3_:Number = (this.§3!0§.§'"&§.camera as §<Q§).§<?§() + §&$0§.§<#§ / 2;
         var _loc4_:Number = this.§3!0§.§'"&§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = -20) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Vector.<§=Q§> = this.§1A§().§^t§(3);
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
               _loc9_ = _loc8_.§]K§ + (Math.random() * §&$0§.§<#§ - §&$0§.§<#§ / 2);
            }
            _loc11_ = this.§1A§().§]$"§(_loc9_,_loc10_,0);
            this.§5"Y§[_loc7_] = _loc11_;
            _loc7_++;
         }
      }
      
      private function §!#-§() : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Boolean = false;
         var _loc2_:Number = (this.§3!0§.§'"&§.camera as §<Q§).§=#Z§() + §&$0§.§<#§ / 2;
         var _loc3_:Number = (this.§3!0§.§'"&§.camera as §<Q§).§<?§() + §&$0§.§<#§ / 2;
         var _loc4_:Number = this.§3!0§.§'"&§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = -20) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc7_:Number = (Number(_loc3_ - _loc2_)) / (5 + 1);
         var _loc8_:int = 0;
         while(_loc8_ < 5)
         {
            _loc9_ = _loc2_ + _loc7_ + _loc8_ * _loc7_;
            _loc10_ = _loc5_ - Math.random() * 30;
            _loc11_ = this.§1A§().§3#Y§(_loc9_,_loc10_);
            while(_loc11_)
            {
               _loc10_++;
               _loc11_ = this.§1A§().§3#Y§(_loc9_,_loc10_);
            }
            §+!p§.§`?§.levelObjects.addObject("POWERUP_PUMPKIN",_loc9_,_loc10_,Math.random() * 360,§%"^§.ID_NEXT_FREE,false,false,false,1,false,false,(Math.random() - 0.5) * 10,new b2Vec2((Math.random() - 0.5) * 10,0));
            _loc8_++;
         }
      }
      
      private function §'"+§() : void
      {
         var _loc8_:§=Q§ = null;
         this.§3!0§.§9[§(Math.round(§@#l§.§'k§ * §%2§.§9'§));
         §4$4§.playSound("earthquake","ChannelPowerups");
         var _loc2_:String = "earthquake" + "_" + §5"L§.§3"1§.brandedTournamentAssetId;
         if(§=@§.§8!l§(_loc2_))
         {
            §4$4§.playSound(_loc2_,"ChannelPowerups");
         }
         this.§@#B§ = 0;
         this.§1#`§ = Math.random() * (Math.PI * 2);
         var _loc3_:int = this.§1A§().§,=§();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if((_loc8_ = this.§1A§().getObject(_loc4_) as §=Q§) is §%N§ || _loc8_ is §&"e§)
            {
               _loc8_.getBody().SetAwake(true);
               if(_loc8_ is §&"e§)
               {
                  _loc8_.scream();
                  _loc8_.§9$ §();
               }
            }
            _loc4_++;
         }
         var _loc5_:Number = §&$0§.§<#Z§;
         var _loc6_:Number = §&$0§.§8"n§;
         var _loc7_:Number = §&$0§.§`4§;
         this.§3!0§.§'"&§.§7"f§(true,_loc5_,_loc6_,_loc7_);
         this.§3!0§.§'"&§.§6$#§();
      }
      
      private function §+p§() : void
      {
         var _loc3_:§;![§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§2!"§ = this.§3!0§.§'"&§.slingshot;
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
               _loc3_.§'P§();
               this.§`"7§ = (_loc3_ as §7!<§).§[!B§(_loc4_,_loc3_.originalY);
            }
         }
         this.§3!0§.§'"&§.slingshot.addBirdStraightIntoSlingshot("BIRD_CHRISTMAS",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         §4$4§.playSound("Sound_Santa_Bomb_Bird_Arrival");
         this.§3!0§.§?"'§();
      }
      
      private function §@#O§() : void
      {
         this.§3!0§.§9!d§();
         var _loc1_:§]"]§ = §+!p§.§`?§.slingshot as §]"]§;
         if(_loc1_.§9A§())
         {
            this.§,a§();
         }
         _loc1_.setSlingShotState(§2!"§.§'[§);
      }
      
      private function §@$ §() : void
      {
         var _loc4_:§7!<§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§3!0§.§9!d§();
         var _loc1_:§]"]§ = §+!p§.§`?§.slingshot as §]"]§;
         var _loc2_:Boolean = false;
         if(_loc1_.mBirds.length > 0 && _loc1_.mNextBirdIndex < _loc1_.mBirds.length)
         {
            if((_loc4_ = _loc1_.mBirds[_loc1_.mNextBirdIndex] as §7!<§).§;!u§)
            {
               this.§;!J§ = true;
               this.§9#7§();
               _loc2_ = true;
            }
            _loc5_ = _loc4_.originalX;
            _loc6_ = _loc4_.originalY;
            if(_loc4_.name == "BIRD_WINGMAN")
            {
               _loc5_ = _loc1_.§3!y§().x;
               _loc6_ = _loc1_.§3!y§().y;
            }
            if(_loc4_)
            {
               _loc4_.§'P§();
               this.§`"7§ = _loc4_.§[!B§(_loc5_,_loc6_);
            }
         }
         _loc1_.setSlingShotState(§2!"§.§'[§);
         var _loc3_:§;![§ = _loc1_.addBirdStraightIntoSlingshot("POWERUP_BOOMBOX",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         _loc3_.§5"_§ = false;
         this.§3!0§.§?"'§();
         if(_loc2_)
         {
            this.§;!J§ = true;
            this.§,a§();
         }
         _loc1_.§9"+§(_loc1_.x + 0.7,_loc1_.y + 0.1);
         §4$4§.playSound("tnt_released_01","ChannelPowerups",0,0.5);
      }
      
      private function §1A§() : §3!U§
      {
         return this.§3!0§.§'"&§.levelObjects as §3!U§;
      }
      
      public function §,"9§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §<$B§.§+"4§.§=#@§:
               this.§;!J§ = true;
               this.§7!C§(this.§,a§,false);
               break;
            case §<$B§.§<$§.§=#@§:
               this.§7!C§(this.§"l§,false);
               break;
            case §<$B§.§[D§.§=#@§:
               this.§7!C§(this.§@$ §,false);
               break;
            case §<$B§.§ !n§.§=#@§:
               this.§7!C§(this.§@!M§,false);
               break;
            case §<$B§.§5#J§.§=#@§:
               this.§7!C§(this.§'"+§,true);
               break;
            case §<$B§.§^!n§.§=#@§:
               this.§7!C§(this.§8#d§,true);
               break;
            case §<$B§.§,"S§.§=#@§:
               this.§7!C§(this.§!#-§,true);
               break;
            case §<$B§.§0"s§.§=#@§:
               §+!p§.§`?§.slingshot.setSlingShotState(§]"]§.§""m§);
               this.§7!C§(this.§@#O§,false);
               break;
            case §<$B§.§!"C§.§=#@§:
               this.§7!C§(this.§4R§,true);
         }
         if(param1 != "MightyEagle")
         {
            return true;
         }
         this.§##"§(param1);
         this.§=!,§(param1);
         this.§3!0§.§'"&§.§,"9§(param1);
         §!",§.§3"1§.§,"9§(param1);
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.mLevelManager.getCurrentEpisodeModel().name;
         §'@§.§,$,§(param1,_loc2_);
         int(§+!p§.§`?§.slingshot.§?#&§());
         int(§+!p§.§`?§.slingshot.§,"j§());
         if(§+!p§.§`?§.slingshot.mBirds.length > 0 && §+!p§.§`?§.slingshot.mBirds[0] as §;![§)
         {
            (§+!p§.§`?§.slingshot.mBirds[0] as §;![§).name;
         }
         return true;
      }
      
      private function §4R§() : void
      {
         this.§3!0§.§9[§(3 * Math.round(§@#l§.§'k§ * §%2§.§9'§));
         (§+!p§.§`?§.levelObjects as §3!U§).§>B§();
         this.§6!s§ = (§+!p§.§`?§.levelObjects as §3!U§).§=$+§;
      }
      
      public function §=!,§(param1:String) : void
      {
         if(param1 != "MightyEagle")
         {
            return;
         }
         if(§!",§.§3"1§.§4#<§(param1) > 0)
         {
            return;
         }
         var _loc2_:Array = (§+!p§.§`?§ as §^#j§).§7#j§();
         var _loc3_:§5"f§ = new §5"f§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§2"x§ = new §2"x§(param1,_loc2_,_loc3_);
         if(this.§="V§ != null)
         {
            this.§@-§.push(_loc4_);
         }
         else
         {
            this.§'#W§(_loc4_);
         }
      }
      
      protected function §'#W§(param1:§2"x§) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = (this.mLevelManager as §?"m§).§&#W§(_loc2_);
         if(int(§5"L§.§3"1§.levelIDs.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§5"L§.§3"1§.§%!m§(_loc2_));
         }
         var _loc5_:§79§;
         var _loc6_:String = !!(_loc5_ = this.mLevelManager.getEpisodeForLevel(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/useItem");
         var _loc8_:Object = {
            "item":param1.§#w§,
            "levelId":this.mLevelManager.currentLevel,
            "episode":_loc6_,
            "actualLevel":_loc3_,
            "usedItems":param1.§3#N§
         };
         if(this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc8_["tournamentId"] = §5"L§.§3"1§.§`#p§();
         }
         _loc7_.contentType = "application/json";
         _loc7_.method = URLRequestMethod.POST;
         _loc7_.data = JSON.stringify(_loc8_);
         this.§="V§ = param1;
         this.§3T§(param1.§;#5§);
         param1.§;#5§.load(_loc7_);
      }
      
      protected function §3T§(param1:URLLoader) : void
      {
         this.§]"s§(param1);
         param1.addEventListener(Event.COMPLETE,this.§%#,§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§`!]§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!]§);
         param1.addEventListener(§;" §.§`S§,this.§`!]§);
      }
      
      protected function §]"s§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§%#,§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!]§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!]§);
         param1.removeEventListener(§;" §.§`S§,this.§`!]§);
      }
      
      protected function §%#,§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:§2"x§ = this.§="V§;
         this.§]"s§(_loc2_.§;#5§);
         this.§="V§ = null;
         _loc3_ = _loc2_.§;#5§.data;
         if(_loc3_.items)
         {
            §!",§.§3"1§.§"#t§(_loc3_.items);
         }
         if(_loc3_.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Powerup activation unsuccessful. Server returned \'" + _loc3_.error + "\'"));
         }
         this.§6k§(true);
      }
      
      protected function §`!]§(param1:Event) : void
      {
         var _loc2_:§2"x§ = this.§="V§;
         this.§]"s§(_loc2_.§;#5§);
         this.§="V§ = null;
         if(param1.type == §;" §.§`S§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§&_§));
         }
         else
         {
            this.§6k§(false);
         }
      }
      
      protected function §6k§(param1:Boolean) : void
      {
         var _loc2_:§2"x§ = null;
         if(!param1)
         {
            this.§[T§();
         }
         if(this.§@-§.length > 0)
         {
            _loc2_ = this.§@-§.shift();
            this.§'#W§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §[T§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §#!?§(param1:Boolean = true) : Boolean
      {
         if(param1)
         {
            return this.§="V§ != null || this.§@-§.length > 0 || this.§3!i§;
         }
         return this.§="V§ != null || this.§@-§.length > 0;
      }
      
      public function get §3!i§() : Boolean
      {
         return this.§;!J§ || (§+!p§.§`?§.slingshot as §]"]§).mSlingShotState == §]"]§.§""m§;
      }
      
      public function dispose() : void
      {
         if(this.§3!0§)
         {
            this.§3!0§.mouseEnabled = true;
         }
         this.§6!s§ = 0;
         this.§@#B§ = -1;
         this.§<"s§ = -1;
         this.§0!a§ = -1;
         this.§8"i§ = null;
         this.§@i§ = null;
         this.§for § = [];
         if(this.§5A§)
         {
            this.§5A§.stop();
            this.§5A§ = null;
         }
         if(this.§9"e§)
         {
            this.§9"e§.dispose();
            this.§9"e§ = null;
         }
      }
      
      public function §#Y§() : void
      {
         if(this.§`"7§)
         {
            this.§`"7§.§+!_§();
            this.§`"7§ = null;
         }
         if(this.§3!3§)
         {
            this.§3!3§.§+!_§();
            this.§3!3§ = null;
         }
      }
      
      public function §;"w§(param1:String) : Boolean
      {
         return this.§6!a§ && this.§6!a§.indexOf(param1) > -1;
      }
      
      public function §5"b§() : void
      {
         this.§6!a§ = null;
      }
      
      private function §##"§(param1:String) : void
      {
         if(!this.§6!a§)
         {
            this.§6!a§ = new Array();
         }
         this.§6!a§[this.§6!a§.length] = param1;
      }
      
      public function get §>!c§() : Boolean
      {
         return this.§?!K§;
      }
      
      public function set §>!c§(param1:Boolean) : void
      {
         this.§?!K§ = param1;
      }
      
      public function §>#E§() : void
      {
         var _loc2_:§'!-§ = null;
         if(this.§9"e§)
         {
            this.§9"e§.dispose();
         }
         var _loc1_:String = "LASER_DOT";
         if(this.§-"6§)
         {
            _loc1_ = "LASER_DOT";
         }
         else if(§!"=§.§!$#§() == §[9§.§%"<§.§=#@§)
         {
            _loc1_ = "POWERUP_TREESLING_AIMDOT";
         }
         if(this.§3!0§)
         {
            _loc2_ = this.§3!0§.§'"&§.textureManager.getTexture(_loc1_);
            this.§9"e§ = new §3!H§(this.§3!0§,new Sprite(),_loc2_.texture,0,0);
            §+!p§.§`?§.objects.backgroundSprite.addChild(this.§9"e§.sprite);
         }
      }
      
      public function get §%"_§() : Boolean
      {
         return this.§-"6§;
      }
   }
}
