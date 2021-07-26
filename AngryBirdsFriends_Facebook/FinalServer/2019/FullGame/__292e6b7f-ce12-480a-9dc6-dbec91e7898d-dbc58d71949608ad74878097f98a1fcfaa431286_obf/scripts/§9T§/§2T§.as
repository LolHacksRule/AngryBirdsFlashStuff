package §9T§
{
   import § $0§.§5R§;
   import §#"4§.§<"G§;
   import §#g§.§!P§;
   import §#g§.§+!C§;
   import §#g§.§1§;
   import §#g§.§4!`§;
   import §#g§.§7#E§;
   import §#g§.§<!N§;
   import §#g§.§<"C§;
   import §#g§.§?#N§;
   import §#g§.§?'§;
   import §#g§.§^"R§;
   import §+!Y§.§="S§;
   import §+!Y§.§[@§;
   import §,#,§.§]§;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §3"V§.§9$8§;
   import §4§.§<!`§;
   import §4§.§`3§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §6#h§.§'!t§;
   import §6#h§.§5#&§;
   import §7"T§.§4!L§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §7"o§.§>"r§;
   import §7#$§.§3!,§;
   import §7#$§.§8$%§;
   import §7#$§.§]#q§;
   import §;!=§.§ !i§;
   import §;!=§.§"#-§;
   import §;!=§.§#!m§;
   import §;!=§.§&"^§;
   import §;!=§.§1!y§;
   import §;!=§.§8!o§;
   import §;!=§.§>"G§;
   import §;!=§.§]!m§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §?Q§.WarningPopup;
   import §]§.§ "F§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §2T§ extends EventDispatcher
   {
      
      private static const §2t§:Number = 500;
       
      
      private var §+"K§:§?#N§;
      
      protected var §&!u§:Boolean = false;
      
      private var §%"§:int = -1;
      
      private var §^Q§:Number;
      
      private var §""i§:int;
      
      private var §#e§:Function;
      
      private var §?"5§:Array;
      
      private var §1R§:Number = -1;
      
      private var §`"^§:§8!o§;
      
      private var § !y§:Number = -1;
      
      private var § !F§:§9$8§;
      
      private var §=!2§:Vector.<§8!o§>;
      
      private var §5"l§:§@$-§ = null;
      
      private var §1"z§:§@$-§ = null;
      
      private var §=j§:Vector.<§'"f§>;
      
      private var §]"B§:§'"f§;
      
      private var §=#8§:§5#&§;
      
      private var mLevelManager:§]#q§;
      
      private var §!v§:Array;
      
      private var §<§:Boolean = false;
      
      private var §%$4§:Boolean;
      
      private var §3$6§:Number = 500;
      
      private var §9"?§:Boolean;
      
      public function §2T§(param1:§]#q§)
      {
         this.§?"5§ = [];
         this.§=j§ = new Vector.<§'"f§>();
         super();
         this.mLevelManager = param1;
      }
      
      public function get §]$$§() : int
      {
         return this.§=j§.length;
      }
      
      public function init() : void
      {
         this.§%"§ = -1;
         this.§1R§ = -1;
         this.§ !y§ = -1;
         this.§`"^§ = null;
         this.§#e§ = null;
         this.§?"5§ = [];
         this.§=#8§.mouseEnabled = true;
         this.§9"?§ = false;
         this.§""i§ = 0;
         this.§=!2§ = new Vector.<§8!o§>();
         var _loc1_:§4!L§ = this.§=#8§.§,!M§.textureManager.getTexture("LASER_DOT");
         if(this.§+"K§)
         {
            this.§+"K§.dispose();
         }
         this.§+"K§ = new §<"C§(this.§=#8§,new Sprite(),_loc1_.texture,0,0);
         §]$?§.§2#§.objects.backgroundSprite.addChild(this.§+"K§.sprite);
         this.§<#D§();
      }
      
      public function reset() : void
      {
         while(this.§=j§.length > 0)
         {
            this.§=j§.shift();
         }
         if(this.§]"B§)
         {
            this.§`"+§(this.§]"B§.§@!w§);
            try
            {
               this.§]"B§.§@!w§.close();
            }
            catch(e:Error)
            {
            }
            this.§]"B§ = null;
         }
      }
      
      public function setController(param1:§5#&§) : void
      {
         if(this.§=#8§ == param1)
         {
            return;
         }
         this.§=#8§ = param1;
         this.init();
      }
      
      public function run(param1:Number, param2:§]!m§) : void
      {
         var _loc5_:§?'§ = null;
         var _loc6_:Object = null;
         if(!this.§=#8§)
         {
            return;
         }
         this.§'#j§(param1);
         this.§%#?§(param1,param2);
         var _loc3_:Vector.<§1#0§> = this.§=#8§.§,!M§.slingshot.mBirds;
         if(_loc3_.length > 0)
         {
            if((_loc5_ = _loc3_[this.§=#8§.§,!M§.slingshot.mNextBirdIndex] as §?'§).§=!'§)
            {
               this.§7#e§(param1,param2);
            }
         }
         if(!this.§&!u§)
         {
            this.§;#o§(param1,param2);
         }
         var _loc4_:Boolean = (§]$?§.§2#§.slingshot as §+!C§).mSlingShotState == §^"R§.§;D§ || (§]$?§.§2#§.slingshot as §+!C§).mSlingShotState == §+!C§.§&"#§;
         if(this.§1R§ > 0)
         {
            if(this.§#e§ != this.§7#z§ || this.§#e§ == this.§7#z§ && _loc4_)
            {
               this.§1R§ -= param1;
            }
            if(this.§1R§ <= 0)
            {
               this.§#e§();
               this.§#e§ = null;
               this.§=#8§.mouseEnabled = true;
               if(this.§?"5§.length > 0)
               {
                  _loc6_ = this.§?"5§.shift();
                  this.§]#§(_loc6_.powerupFunction,_loc6_.gotoCastleSide);
               }
            }
         }
      }
      
      private function §7#e§(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:§+!C§ = null;
         var _loc4_:Vector.<§1#0§> = null;
         var _loc5_:§?'§ = null;
         var _loc6_:§>"r§ = null;
         var _loc7_:Number = NaN;
         if(!this.§%$4§)
         {
            this.§%$4§ = true;
            _loc3_ = this.§=#8§.§,!M§.slingshot as §+!C§;
            _loc5_ = (_loc4_ = _loc3_.mBirds)[_loc3_.mNextBirdIndex] as §?'§;
            _loc6_ = §]$?§.§2#§.particles as §>"r§;
            _loc7_ = 0.4;
            _loc6_.§6§(_loc5_.x + _loc5_.radius,_loc5_.y - _loc5_.radius,_loc7_,0,0,(3 + Math.random() * 4) * -1,_loc5_.radius);
         }
         if(this.§%$4§)
         {
            this.§3$6§ -= param1;
            if(this.§3$6§ <= 0)
            {
               this.§3$6§ = §2t§ + Math.random() * 300;
               this.§%$4§ = false;
            }
         }
      }
      
      protected function §%#?§(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:§+!C§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(this.§&!u§)
         {
            _loc3_ = this.§=#8§.§,!M§.slingshot as §+!C§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§4$@§.§&F§() == §"#-§.§!#E§;
               this.§+"K§.§=#>§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,10,_loc7_,false,22);
               this.§+"K§.enabled = true;
            }
            else
            {
               this.§+"K§.enabled = false;
            }
         }
      }
      
      protected function §;#o§(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:§+!C§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(§="S§.§2!c§() == §[@§.§;"c§.§8t§)
         {
            _loc3_ = this.§=#8§.§,!M§.slingshot as §+!C§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.getPosition())
            {
               _loc4_ = new Point(_loc3_.getPosition().x - Math.cos(_loc3_.shootingAngle / 180 * Math.PI) * 4,_loc3_.getPosition().y + Math.sin(_loc3_.shootingAngle / 180 * Math.PI) * 4);
            }
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§4$@§.§&F§() == §"#-§.§!#E§;
               this.§+"K§.§=#>§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,16,_loc7_,true,64);
               this.§+"K§.enabled = true;
            }
            else
            {
               this.§+"K§.enabled = false;
            }
         }
      }
      
      protected function §'#j§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§8!o§ = null;
         if(this.§=!2§)
         {
            _loc2_ = this.§=!2§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§=!2§[_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.§,#5§)
                  {
                     this.§=!2§.splice(_loc2_,1);
                  }
                  else
                  {
                     _loc3_.§'#j§(param1,§]$?§.§2#§.levelObjects);
                  }
               }
               _loc2_--;
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc1_:int = §]#0§.§+!,§.§,#k§(§ "T§.§="E§.§8t§);
         if(_loc1_ <= 0)
         {
            return false;
         }
         this.§=#8§.§"!#§();
         this.§<#a§();
         §]#0§.§+!,§.§"#u§(§ "T§.§="E§.§8t§);
         this.§<"6§(§ "T§.§="E§.§8t§);
         this.§]#§(this.§;"j§,false);
         return true;
      }
      
      private function §;"j§() : void
      {
         var _loc1_:String = this.mLevelManager.currentLevel;
         var _loc2_:String = this.mLevelManager.getCurrentEpisodeModel().name;
         §<"G§.§`!u§(§ "T§.§="E§.§8t§,_loc1_);
         var _loc3_:§+!C§ = §]$?§.§2#§.slingshot as §+!C§;
         if(_loc3_.mSlingShotState == §^"R§.§`#A§)
         {
            _loc3_.setSlingShotState(§^"R§.§;D§);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§+!z§(param1);
         this.§+#w§(param1);
      }
      
      private function §+#w§(param1:Number) : void
      {
         if(this.§""i§ > 0)
         {
            this.§""i§ -= param1;
         }
      }
      
      protected function §+!z§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§%"§ >= 0 && this.§%"§ < §<!N§.§^R§)
         {
            _loc2_ = Math.sin(this.§%"§ / §<!N§.§^R§ * (Math.PI * §<!N§.§2"m§) + this.§^Q§);
            _loc3_ = _loc2_ * §<!N§.§ #9§;
            _loc4_ = new b2Vec2(_loc3_,this.§=#8§.§,!M§.mLevelEngine.mWorld.GetGravity().y);
            this.§=#8§.§,!M§.mLevelEngine.mWorld.SetGravity(_loc4_);
            ++this.§%"§;
            this.§?"n§();
         }
         else if(this.§%"§ == §<!N§.§^R§)
         {
            this.§%"§ = -1;
            §]$?§.§2#§.mLevelEngine.mWorld.SetGravity(new b2Vec2(0,this.§=#8§.§,!M§.mLevelEngine.mWorld.GetGravity().y));
         }
      }
      
      private function §?"n§() : void
      {
         var _loc1_:Number = this.§=#8§.§,!M§.camera.centerX;
         var _loc2_:Number = §`3§.§#$7§ / §`3§.§-"C§;
         var _loc3_:Number = §`3§.§ 3§ / §`3§.§-"C§;
         var _loc4_:Number = _loc1_ + (Math.random() - 0.5) * _loc2_;
         var _loc5_:§>"r§ = this.§=#8§.§,!M§.particles as §>"r§;
         if(this.§%"§ % 2)
         {
            _loc5_.§&"r§(_loc4_,this.§=#8§.§,!M§.§3"b§.ground);
         }
         if(§7!$§.§+!,§.§5#e§())
         {
            _loc5_.§^#O§(_loc1_ + (Math.random() - 0.5) * _loc2_,0,2);
         }
         _loc4_ = _loc1_ + (Math.random() - 0.5) * _loc2_;
         _loc5_.§"!O§(_loc4_,this.§=#8§.§,!M§.§3"b§.ground + Math.random() * _loc3_ / 20);
      }
      
      public function §9#X§() : Boolean
      {
         return this.§%"§ > -1;
      }
      
      public function §@#Z§() : Boolean
      {
         return this.§""i§ > 0;
      }
      
      private function §]#§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§#e§ != null)
         {
            this.§?"5§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§#e§ = param1;
            (§]$?§.§;r§ as §'!t§).mouseEnabled = false;
            this.§1R§ = param1 == this.§7#z§ ? Number(§7#E§.§!$7§ * 1.5) : Number(§7#E§.§!$7§);
            this.§=#8§.§,!M§.camera.setAction(!!param2 ? int(§`3§.§`#[§) : int(§`3§.§@>§));
            this.§"6§(this.§#e§);
         }
      }
      
      protected function §"6§(param1:Function) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case this.§7#z§:
               _loc2_ = § "T§.§&!C§.§8t§;
               break;
            case this.§<"v§:
               _loc2_ = § "T§.§8"8§.§8t§;
               break;
            case this.§+!D§:
               _loc2_ = § "T§.§=#x§.§8t§;
               break;
            case this.§2!Z§:
               _loc2_ = § "T§.§#"9§.§8t§;
               break;
            case this.§6!u§:
               _loc2_ = § "T§.§4@§.§8t§;
               break;
            case this.§@!%§:
               _loc2_ = § "T§.§7z§.§8t§;
               break;
            case this.§""q§:
               _loc2_ = § "T§.§,",§.§8t§;
               break;
            case this.§%!g§:
               _loc2_ = § "T§.§'!+§.§8t§;
               break;
            case this.§!!j§:
               _loc2_ = § "T§.§7z§.§8t§;
               break;
            case this.§5!4§:
               _loc2_ = § "T§.§=$%§.§8t§;
         }
         var _loc3_:§ "F§ = AngryBirdsBase.singleton.§9"n§() as § "F§;
         if(_loc3_ && _loc2_)
         {
            dispatchEvent(new §@#d§(§@#d§.§?"^§,_loc2_));
            if(_loc2_ == § "T§.§7z§.§8t§)
            {
               § b§.playSound("wingman_animation","ChannelPowerups");
            }
            else if(_loc2_ == § "T§.§'!+§.§8t§)
            {
               § b§.playSound("pumpkin_activation","ChannelPowerups");
            }
            else
            {
               § b§.playSound("powerup_intro","ChannelPowerups");
            }
         }
         else
         {
            § b§.playSound("powerup_intro","ChannelPowerups");
         }
      }
      
      private function §7#z§() : void
      {
         var _loc4_:§?'§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc1_:§+!C§ = this.§=#8§.§,!M§.slingshot as §+!C§;
         var _loc2_:Vector.<§1#0§> = _loc1_.mBirds;
         var _loc3_:Number = §<!N§.§;#,§;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            (_loc4_ = _loc2_[_loc1_.mNextBirdIndex] as §?'§).§=!'§ = true;
            switch(_loc4_.name)
            {
               case "BIRD_BLACK":
                  _loc3_ = §<!N§.§0"N§;
                  break;
               case "BIRD_BLUE":
                  _loc3_ = §<!N§.§%" §;
                  break;
               case "BIRD_GREEN":
                  _loc3_ = §<!N§.§^!s§;
                  break;
               case "BIRD_WHITE":
                  _loc3_ = §<!N§.§ !`§;
                  break;
               case "BIRD_YELLOW":
                  _loc3_ = §<!N§.§%s§;
                  break;
               case "BIRD_RED":
                  _loc3_ = §<!N§.§7P§;
                  break;
               case "BIRD_ORANGE":
                  _loc3_ = §<!N§.§5"G§;
                  break;
               case "BIRD_REDBIG":
                  _loc3_ = §<!N§.§!!W§;
                  break;
               case "BIRD_WINGMAN":
                  _loc3_ = §<!N§.§,!D§;
                  break;
               case "BIRD_SARDINE":
                  _loc3_ = 1;
                  _loc4_.§=!'§ = false;
                  break;
               case "POWERUP_BOOMBOX":
                  _loc3_ = §<!N§.§'H§;
            }
         }
         § b§.playSound("big_bird","ChannelPowerups");
         _loc1_.§&#k§(_loc3_,§ "T§.§&!C§);
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
                  this.§=#8§.§,!M§.particles.addParticle(§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§=,§.§5! §,_loc10_ * Math.cos(_loc9_),-_loc10_ * Math.sin(_loc9_),10,_loc10_ * 50);
               }
               else
               {
                  if(_loc11_ == "BIRD_WINGMAN")
                  {
                     _loc11_ = "BIRD_RED";
                  }
                  this.§=#8§.§,!M§.particles.addParticle(§=,§.§^#Y§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§=,§.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
               }
               _loc8_++;
            }
         }
         this.§+!g§();
         this.§9"?§ = false;
      }
      
      private function § #y§() : void
      {
         var _loc3_:§?'§ = null;
         var _loc1_:§+!C§ = this.§=#8§.§,!M§.slingshot as §+!C§;
         var _loc2_:Vector.<§1#0§> = _loc1_.mBirds;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc1_.mNextBirdIndex] as §?'§;
            _loc3_.§=!'§ = false;
            _loc3_.§?"'§ = null;
            _loc3_.§0#1§ = null;
            _loc3_.scale = 1;
            _loc3_.sprite.scaleX = _loc3_.scale;
            _loc3_.sprite.scaleY = _loc3_.scale;
         }
         this.§9"?§ = false;
      }
      
      public function §+!g§() : void
      {
         var _loc1_:§+!C§ = this.§=#8§.§,!M§.slingshot as §+!C§;
         var _loc2_:Vector.<§1#0§> = _loc1_.mBirds;
         var _loc3_:§?'§ = _loc2_[_loc1_.mNextBirdIndex] as §?'§;
         §]$?§.§2#§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§=,§.§%!m§,§##P§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,_loc3_.x,_loc3_.y - _loc3_.radius,400,"",§=,§.§ a§,0,0,0,0,1,8,true);
         if(_loc2_.length > 0)
         {
            §!P§.§?",§(_loc3_.x,_loc3_.y,40,0,40);
         }
         (this.§=#8§.§,!M§.slingshot as §+!C§).§9"@§(_loc3_.x,_loc3_.y);
      }
      
      private function §=! §() : void
      {
         var _loc1_:§+!C§ = this.§=#8§.§,!M§.slingshot as §+!C§;
         _loc1_.setSlingShotState(§^"R§.§;D§);
      }
      
      private function §+!D§() : void
      {
         § b§.playSound("super_slingshot","ChannelPowerups");
         (this.§=#8§.§,!M§.slingshot as §+!C§).§5$A§();
      }
      
      private function §6!u§() : void
      {
         this.§&!u§ = true;
         this.§<#D§();
         § b§.playSound("laser_sight","ChannelPowerups");
         (this.§=#8§.§,!M§.slingshot as §+!C§).§`"?§();
      }
      
      private function §""q§() : void
      {
         var _loc8_:§>"G§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§8!o§ = null;
         var _loc1_:Point = this.§=#8§.§'"N§();
         _loc1_ = this.§=#8§.§,!M§.screenToBox2D(_loc1_.x,_loc1_.y);
         this.§ !F§ = § b§.playSound("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var _loc2_:Number = (this.§=#8§.§,!M§.camera as §<!`§).§4"R§() + §7#E§.§8"E§ / 2;
         var _loc3_:Number = (this.§=#8§.§,!M§.camera as §<!`§).§!c§() + §7#E§.§8"E§ / 2;
         var _loc4_:Number = this.§=#8§.§,!M§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = Number(-20)) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Vector.<§>"G§> = this.§]f§().§[#G§(3);
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
               _loc9_ = _loc8_.§88§ + (Math.random() * §7#E§.§8"E§ - §7#E§.§8"E§ / 2);
            }
            _loc11_ = this.§]f§().§?#G§(_loc9_,_loc10_,0);
            this.§=!2§[_loc7_] = _loc11_;
            _loc7_++;
         }
      }
      
      private function §%!g§() : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Boolean = false;
         var _loc2_:Number = (this.§=#8§.§,!M§.camera as §<!`§).§4"R§() + §7#E§.§8"E§ / 2;
         var _loc3_:Number = (this.§=#8§.§,!M§.camera as §<!`§).§!c§() + §7#E§.§8"E§ / 2;
         var _loc4_:Number = this.§=#8§.§,!M§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = Number(-20)) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Number;
         var _loc7_:Number = (_loc6_ = _loc3_ - _loc2_) / (5 + 1);
         var _loc8_:int = 0;
         while(_loc8_ < 5)
         {
            _loc9_ = _loc2_ + _loc7_ + _loc8_ * _loc7_;
            _loc10_ = _loc5_ - Math.random() * 30;
            _loc11_ = this.§]f§().§,!'§(_loc9_,_loc10_);
            while(_loc11_)
            {
               _loc10_++;
               _loc11_ = this.§]f§().§,!'§(_loc9_,_loc10_);
            }
            §]$?§.§2#§.levelObjects.addObject("POWERUP_PUMPKIN",_loc9_,_loc10_,Math.random() * 360,§ !i§.ID_NEXT_FREE,false,false,false,1,false,false,(Math.random() - 0.5) * 10,new b2Vec2((Math.random() - 0.5) * 10,0));
            _loc8_++;
         }
      }
      
      private function §<"v§() : void
      {
         var _loc8_:§>"G§ = null;
         this.§=#8§.§&!q§(Math.round(§4!`§.§7!h§ * §<!N§.§^R§));
         § b§.playSound("earthquake","ChannelPowerups");
         var _loc2_:String = "earthquake" + "_" + §7!$§.§+!,§.brandedTournamentAssetId;
         if(§[a§.§]$'§(_loc2_))
         {
            § b§.playSound(_loc2_,"ChannelPowerups");
         }
         this.§%"§ = 0;
         this.§^Q§ = Math.random() * (Math.PI * 2);
         var _loc3_:int = this.§]f§().§-B§();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if((_loc8_ = this.§]f§().getObject(_loc4_) as §>"G§) is §1!y§ || _loc8_ is §#!m§)
            {
               _loc8_.getBody().SetAwake(true);
               if(_loc8_ is §#!m§)
               {
                  _loc8_.scream();
                  _loc8_.§%$%§();
               }
            }
            _loc4_++;
         }
         var _loc5_:Number = §7#E§.§ !b§;
         var _loc6_:Number = §7#E§.§`!i§;
         var _loc7_:Number = §7#E§.§!$&§;
         this.§=#8§.§,!M§.§-!D§(true,_loc5_,_loc6_,_loc7_);
         this.§=#8§.§,!M§.§@#T§();
      }
      
      private function §@!%§() : void
      {
         var _loc3_:§1#0§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§^"R§ = this.§=#8§.§,!M§.slingshot;
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
               _loc3_.§?"j§();
               this.§5"l§ = (_loc3_ as §?'§).§8"T§(_loc4_,_loc3_.originalY);
            }
         }
         var _loc2_:§1#0§ = this.§=#8§.§,!M§.slingshot.addBirdStraightIntoSlingshot("BIRD_CHRISTMAS",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         § b§.playSound("Sound_Santa_Bomb_Bird_Arrival");
         this.§=#8§.§9#=§();
      }
      
      private function §!!j§() : void
      {
         this.§=#8§.§"!#§();
         var _loc1_:§+!C§ = §]$?§.§2#§.slingshot as §+!C§;
         if(_loc1_.§>#+§())
         {
            this.§7#z§();
         }
         _loc1_.setSlingShotState(§^"R§.§;D§);
      }
      
      private function §2!Z§() : void
      {
         var _loc4_:§?'§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§=#8§.§"!#§();
         var _loc1_:§+!C§ = §]$?§.§2#§.slingshot as §+!C§;
         var _loc2_:Boolean = false;
         if(_loc1_.mBirds.length > 0 && _loc1_.mNextBirdIndex < _loc1_.mBirds.length)
         {
            if((_loc4_ = _loc1_.mBirds[_loc1_.mNextBirdIndex] as §?'§).§=!'§)
            {
               this.§9"?§ = true;
               this.§ #y§();
               _loc2_ = true;
            }
            _loc5_ = _loc4_.originalX;
            _loc6_ = _loc4_.originalY;
            if(_loc4_.name == "BIRD_WINGMAN")
            {
               _loc5_ = _loc1_.§>`§().x;
               _loc6_ = _loc1_.§>`§().y;
            }
            if(_loc4_)
            {
               _loc4_.§?"j§();
               this.§5"l§ = _loc4_.§8"T§(_loc5_,_loc6_);
            }
         }
         _loc1_.setSlingShotState(§^"R§.§;D§);
         var _loc3_:§1#0§ = _loc1_.addBirdStraightIntoSlingshot("POWERUP_BOOMBOX",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         _loc3_.§##7§ = false;
         this.§=#8§.§9#=§();
         if(_loc2_)
         {
            this.§9"?§ = true;
            this.§7#z§();
         }
         _loc1_.§,$=§(_loc1_.x + 0.7,_loc1_.y + 0.1);
         § b§.playSound("tnt_released_01","ChannelPowerups",0,0.5);
      }
      
      private function §]f§() : §&"^§
      {
         return this.§=#8§.§,!M§.levelObjects as §&"^§;
      }
      
      public function §"#u§(param1:String) : Boolean
      {
         switch(param1)
         {
            case § "T§.§&!C§.§8t§:
               this.§9"?§ = true;
               this.§]#§(this.§7#z§,false);
               break;
            case § "T§.§=#x§.§8t§:
               this.§]#§(this.§+!D§,false);
               break;
            case § "T§.§#"9§.§8t§:
               this.§]#§(this.§2!Z§,false);
               break;
            case § "T§.§4@§.§8t§:
               this.§]#§(this.§6!u§,false);
               break;
            case § "T§.§8"8§.§8t§:
               this.§]#§(this.§<"v§,true);
               break;
            case § "T§.§,",§.§8t§:
               this.§]#§(this.§""q§,true);
               break;
            case § "T§.§'!+§.§8t§:
               this.§]#§(this.§%!g§,true);
               break;
            case § "T§.§7z§.§8t§:
               §]$?§.§2#§.slingshot.setSlingShotState(§+!C§.§&"#§);
               this.§]#§(this.§!!j§,false);
               break;
            case § "T§.§=$%§.§8t§:
               this.§]#§(this.§5!4§,true);
         }
         this.§<#&§(param1);
         this.§<"6§(param1);
         this.§=#8§.§,!M§.§"#u§(param1);
         §]#0§.§+!,§.§"#u§(param1);
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = this.mLevelManager.getCurrentEpisodeModel().name;
         §<"G§.§`!u§(param1,_loc2_);
         var _loc4_:int = §]$?§.§2#§.slingshot.§^"]§();
         var _loc5_:int = §]$?§.§2#§.slingshot.§4#$§();
         var _loc6_:String = "";
         if(§]$?§.§2#§.slingshot.mBirds.length > 0 && §]$?§.§2#§.slingshot.mBirds[0] as §1#0§)
         {
            _loc6_ = (§]$?§.§2#§.slingshot.mBirds[0] as §1#0§).name;
         }
         return true;
      }
      
      private function §5!4§() : void
      {
         this.§=#8§.§&!q§(3 * Math.round(§4!`§.§7!h§ * §<!N§.§^R§));
         (§]$?§.§2#§.levelObjects as §&"^§).§-"g§();
         this.§""i§ = (§]$?§.§2#§.levelObjects as §&"^§).§6Y§;
      }
      
      public function §<"6§(param1:String) : void
      {
         if(§]#0§.§+!,§.§9n§(param1) > 0)
         {
            return;
         }
         var _loc2_:Array = (§]$?§.§2#§ as §!P§).§with§();
         var _loc3_:§-$C§ = new §-$C§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§'"f§ = new §'"f§(param1,_loc2_,_loc3_);
         if(this.§]"B§ != null)
         {
            this.§=j§.push(_loc4_);
         }
         else
         {
            this.§5"b§(_loc4_);
         }
      }
      
      protected function §5"b§(param1:§'"f§) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = (this.mLevelManager as §8$%§).§0"<§(_loc2_);
         var _loc4_:int;
         if((_loc4_ = §7!$§.§+!,§.levelIDs.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§7!$§.§+!,§.§>"v§(_loc2_));
         }
         var _loc6_:String = !!(_loc5_ = this.mLevelManager.getEpisodeForLevel(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/useItem");
         var _loc8_:Object = {
            "item":param1.§%"I§,
            "levelId":this.mLevelManager.currentLevel,
            "episode":_loc6_,
            "actualLevel":_loc3_,
            "usedItems":param1.§?"8§
         };
         if(this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc8_["tournamentId"] = §7!$§.§+!,§.§`!X§();
         }
         _loc7_.contentType = "application/json";
         _loc7_.method = URLRequestMethod.POST;
         _loc7_.data = JSON.stringify(_loc8_);
         this.§]"B§ = param1;
         this.§'#-§(param1.§@!w§);
         param1.§@!w§.load(_loc7_);
      }
      
      protected function §'#-§(param1:URLLoader) : void
      {
         this.§`"+§(param1);
         param1.addEventListener(Event.COMPLETE,this.§[#$§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§]"b§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]"b§);
         param1.addEventListener(§+!p§.§2$9§,this.§]"b§);
      }
      
      protected function §`"+§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§[#$§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§]"b§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]"b§);
         param1.removeEventListener(§+!p§.§2$9§,this.§]"b§);
      }
      
      protected function §[#$§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:§'"f§ = this.§]"B§;
         this.§`"+§(_loc2_.§@!w§);
         this.§]"B§ = null;
         _loc3_ = _loc2_.§@!w§.data;
         if(_loc3_.items)
         {
            §]#0§.§+!,§.§&$@§(_loc3_.items);
         }
         if(_loc3_.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Powerup activation unsuccessful. Server returned \'" + _loc3_.error + "\'"));
         }
         this.§ $6§(true);
      }
      
      protected function §]"b§(param1:Event) : void
      {
         var _loc2_:§'"f§ = this.§]"B§;
         this.§`"+§(_loc2_.§@!w§);
         this.§]"B§ = null;
         if(param1.type == §+!p§.§2$9§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§-#d§));
         }
         else
         {
            this.§ $6§(false);
         }
      }
      
      protected function § $6§(param1:Boolean) : void
      {
         var _loc2_:§'"f§ = null;
         if(!param1)
         {
            this.§4!0§();
         }
         if(this.§=j§.length > 0)
         {
            _loc2_ = this.§=j§.shift();
            this.§5"b§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §4!0§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §9$$§(param1:Boolean = true) : Boolean
      {
         if(param1)
         {
            return this.§]"B§ != null || this.§=j§.length > 0 || this.§?![§;
         }
         return this.§]"B§ != null || this.§=j§.length > 0;
      }
      
      public function get §?![§() : Boolean
      {
         return this.§9"?§ || (§]$?§.§2#§.slingshot as §+!C§).mSlingShotState == §+!C§.§&"#§;
      }
      
      public function dispose() : void
      {
         if(this.§=#8§)
         {
            this.§=#8§.mouseEnabled = true;
         }
         this.§""i§ = 0;
         this.§%"§ = -1;
         this.§ !y§ = -1;
         this.§1R§ = -1;
         this.§`"^§ = null;
         this.§#e§ = null;
         this.§?"5§ = [];
         if(this.§ !F§)
         {
            this.§ !F§.stop();
            this.§ !F§ = null;
         }
         if(this.§+"K§)
         {
            this.§+"K§.dispose();
            this.§+"K§ = null;
         }
      }
      
      public function §<#a§() : void
      {
         if(this.§5"l§)
         {
            this.§5"l§.§0"D§();
            this.§5"l§ = null;
         }
         if(this.§1"z§)
         {
            this.§1"z§.§0"D§();
            this.§1"z§ = null;
         }
      }
      
      public function §'"?§(param1:String) : Boolean
      {
         return this.§!v§ && this.§!v§.indexOf(param1) > -1;
      }
      
      public function §?#I§() : void
      {
         this.§!v§ = null;
      }
      
      private function §<#&§(param1:String) : void
      {
         if(!this.§!v§)
         {
            this.§!v§ = new Array();
         }
         this.§!v§[this.§!v§.length] = param1;
      }
      
      public function get §,!o§() : Boolean
      {
         return this.§<§;
      }
      
      public function set §,!o§(param1:Boolean) : void
      {
         this.§<§ = param1;
      }
      
      public function §<#D§() : void
      {
         var _loc2_:§4!L§ = null;
         if(this.§+"K§)
         {
            this.§+"K§.dispose();
         }
         var _loc1_:String = "LASER_DOT";
         if(this.§&!u§)
         {
            _loc1_ = "LASER_DOT";
         }
         else if(§="S§.§2!c§() == §[@§.§;"c§.§8t§)
         {
            _loc1_ = "POWERUP_TREESLING_AIMDOT";
         }
         if(this.§=#8§)
         {
            _loc2_ = this.§=#8§.§,!M§.textureManager.getTexture(_loc1_);
            this.§+"K§ = new §<"C§(this.§=#8§,new Sprite(),_loc2_.texture,0,0);
            §]$?§.§2#§.objects.backgroundSprite.addChild(this.§+"K§.sprite);
         }
      }
      
      public function get §6C§() : Boolean
      {
         return this.§&!u§;
      }
   }
}
