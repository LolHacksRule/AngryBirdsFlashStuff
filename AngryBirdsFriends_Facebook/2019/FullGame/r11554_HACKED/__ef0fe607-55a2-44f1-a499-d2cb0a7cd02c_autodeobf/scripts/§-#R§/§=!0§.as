package §-#R§
{
   import § !D§.§ !§;
   import § !D§.§ !"§;
   import § !D§.§"b§;
   import § !D§.§0$?§;
   import § !D§.§3§;
   import § !D§.§4B§;
   import § !D§.§;#W§;
   import § !D§.§;M§;
   import § !D§.§<!A§;
   import § !D§.§>#K§;
   import § O§.§&# §;
   import § O§.§7!S§;
   import §!6§.Sprite;
   import §!L§.§6!<§;
   import §!L§.§<"s§;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §"$=§.§[§;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §%A§.§]#e§;
   import §%_§.§9#b§;
   import §%_§.§;l§;
   import §+"u§.§^"C§;
   import §+#B§.§5"w§;
   import §-!!§.§ #'§;
   import §-!!§.§'l§;
   import §-!!§.§,!h§;
   import §-!!§.§-#L§;
   import §-!!§.§1$<§;
   import §-!!§.§7S§;
   import §-!!§.§8"J§;
   import §-!!§.§`h§;
   import §3=§.§0!e§;
   import §6§.§]%§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"9§.§1"T§;
   import §>"9§.§[#%§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §?!N§.WarningPopup;
   import §]"'§.§#$D§;
   import §^"[§.§^!8§;
   import §`# §.b2Vec2;
   import com.rovio.assets.§2"O§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §=!0§ extends EventDispatcher
   {
      
      private static const §!$4§:Number = 500;
       
      
      private var §@b§:§>#K§;
      
      protected var §-#t§:Boolean = false;
      
      private var §="c§:int = -1;
      
      private var §&!H§:Number;
      
      private var §1!e§:int;
      
      private var §@"0§:Function;
      
      private var §@p§:Array;
      
      private var §>!$§:Number = -1;
      
      private var §^#$§:§'l§;
      
      private var §^$C§:Number = -1;
      
      private var §+k§:§1"T§;
      
      private var §"Z§:Vector.<§'l§>;
      
      private var §>"f§:§]%§ = null;
      
      private var §0"y§:§]%§ = null;
      
      private var §,#y§:Vector.<§6"y§>;
      
      private var §%"x§:§6"y§;
      
      private var §-!q§:§6!<§;
      
      private var mLevelManager:§'![§;
      
      private var §6!$§:Array;
      
      private var §-m§:Boolean = false;
      
      private var §!"r§:Boolean;
      
      private var §<=§:Number = 500;
      
      private var §<"f§:Boolean;
      
      public function §=!0§(param1:§'![§)
      {
         this.§@p§ = [];
         this.§,#y§ = new Vector.<§6"y§>();
         super();
         this.mLevelManager = param1;
      }
      
      public function get §>#t§() : int
      {
         return this.§,#y§.length;
      }
      
      public function init() : void
      {
         this.§="c§ = -1;
         this.§>!$§ = -1;
         this.§^$C§ = -1;
         this.§^#$§ = null;
         this.§@"0§ = null;
         this.§@p§ = [];
         this.§-!q§.mouseEnabled = true;
         this.§<"f§ = false;
         this.§1!e§ = 0;
         this.§"Z§ = new Vector.<§'l§>();
         var _loc1_:§^!8§ = this.§-!q§.§-a§.textureManager.getTexture("LASER_DOT");
         if(this.§@b§)
         {
            this.§@b§.dispose();
         }
         this.§@b§ = new § !"§(this.§-!q§,new Sprite(),_loc1_.texture,0,0);
         §%"T§.§;`§.objects.backgroundSprite.addChild(this.§@b§.sprite);
         this.§@!i§();
      }
      
      public function reset() : void
      {
         while(this.§,#y§.length > 0)
         {
            this.§,#y§.shift();
         }
         if(this.§%"x§)
         {
            this.§`$>§(this.§%"x§.§%!#§);
            try
            {
               this.§%"x§.§%!#§.close();
            }
            catch(e:Error)
            {
            }
            this.§%"x§ = null;
         }
      }
      
      public function setController(param1:§6!<§) : void
      {
         if(this.§-!q§ == param1)
         {
            return;
         }
         this.§-!q§ = param1;
         this.init();
      }
      
      public function run(param1:Number, param2:§ #'§) : void
      {
         var _loc6_:Object = null;
         if(!this.§-!q§)
         {
            return;
         }
         this.§;#B§(param1);
         this.§&!O§(param1,param2);
         var _loc3_:Vector.<§;M§> = this.§-!q§.§-a§.slingshot.mBirds;
         if(_loc3_.length > 0)
         {
            if((_loc3_[this.§-!q§.§-a§.slingshot.mNextBirdIndex] as § !§).§^'§)
            {
               this.§4"H§(param1,param2);
            }
         }
         if(!this.§-#t§)
         {
            this.§<$@§(param1,param2);
         }
         var _loc4_:Boolean = (§%"T§.§;`§.slingshot as §0$?§).mSlingShotState == §"b§.§"G§ || (§%"T§.§;`§.slingshot as §0$?§).mSlingShotState == §0$?§.§?P§;
         if(this.§>!$§ > 0)
         {
            if(this.§@"0§ != this.§^$8§ || this.§@"0§ == this.§^$8§ && _loc4_)
            {
               this.§>!$§ -= param1;
            }
            if(this.§>!$§ <= 0)
            {
               this.§@"0§();
               this.§@"0§ = null;
               this.§-!q§.mouseEnabled = true;
               if(this.§@p§.length > 0)
               {
                  _loc6_ = this.§@p§.shift();
                  this.§>$2§(_loc6_.powerupFunction,_loc6_.gotoCastleSide);
               }
            }
         }
      }
      
      private function §4"H§(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:§0$?§ = null;
         var _loc5_:§ !§ = null;
         var _loc6_:§]#e§ = null;
         var _loc7_:Number = NaN;
         if(!this.§!"r§)
         {
            this.§!"r§ = true;
            _loc3_ = this.§-!q§.§-a§.slingshot as §0$?§;
            _loc5_ = _loc3_.mBirds[_loc3_.mNextBirdIndex] as § !§;
            _loc6_ = §%"T§.§;`§.particles as §]#e§;
            _loc7_ = 0.4;
            _loc6_.§?!8§(_loc5_.x + _loc5_.radius,_loc5_.y - _loc5_.radius,_loc7_,0,0,(3 + Math.random() * 4) * -1,_loc5_.radius);
         }
         if(this.§!"r§)
         {
            this.§<=§ -= param1;
            if(this.§<=§ <= 0)
            {
               this.§<=§ = §!$4§ + Math.random() * 300;
               this.§!"r§ = false;
            }
         }
      }
      
      protected function §&!O§(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:§0$?§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(this.§-#t§)
         {
            _loc3_ = this.§-!q§.§-a§.slingshot as §0$?§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§5$A§.§`#j§() == §-#L§.§9"u§;
               this.§@b§.§'"c§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,10,_loc7_,false,22);
               this.§@b§.enabled = true;
            }
            else
            {
               this.§@b§.enabled = false;
            }
         }
      }
      
      protected function §<$@§(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:§0$?§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(§&# §.§!$0§() == §7!S§.§&"z§.§]'§)
         {
            _loc3_ = this.§-!q§.§-a§.slingshot as §0$?§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.getPosition())
            {
               _loc4_ = new Point(_loc3_.getPosition().x - Math.cos(_loc3_.shootingAngle / 180 * Math.PI) * 4,_loc3_.getPosition().y + Math.sin(_loc3_.shootingAngle / 180 * Math.PI) * 4);
            }
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§5$A§.§`#j§() == §-#L§.§9"u§;
               this.§@b§.§'"c§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,16,_loc7_,true,64);
               this.§@b§.enabled = true;
            }
            else
            {
               this.§@b§.enabled = false;
            }
         }
      }
      
      protected function §;#B§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§'l§ = null;
         if(this.§"Z§)
         {
            _loc2_ = this.§"Z§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§"Z§[_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.§>#a§)
                  {
                     this.§"Z§.splice(_loc2_,1);
                  }
                  else
                  {
                     _loc3_.§;#B§(param1,§%"T§.§;`§.levelObjects);
                  }
               }
               _loc2_--;
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc1_:int = §#$D§.§?q§.§<"M§(§0!w§.§'!z§.§]'§);
         if(_loc1_ <= 0)
         {
            return false;
         }
         this.§-!q§.§-"'§();
         this.§'"?§();
         §#$D§.§?q§.§?z§(§0!w§.§'!z§.§]'§);
         this.§3!a§(§0!w§.§'!z§.§]'§);
         this.§>$2§(this.§]"T§,false);
         return true;
      }
      
      private function §]"T§() : void
      {
         var _loc1_:String = this.mLevelManager.currentLevel;
         this.mLevelManager.getCurrentEpisodeModel().name;
         §5"w§.§6!h§(§0!w§.§'!z§.§]'§,_loc1_);
         var _loc3_:§0$?§ = §%"T§.§;`§.slingshot as §0$?§;
         if(_loc3_.mSlingShotState == §"b§.§70§)
         {
            _loc3_.setSlingShotState(§"b§.§"G§);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§-"C§(param1);
         this.§6#F§(param1);
      }
      
      private function §6#F§(param1:Number) : void
      {
         if(this.§1!e§ > 0)
         {
            this.§1!e§ -= param1;
         }
      }
      
      protected function §-"C§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§="c§ >= 0 && this.§="c§ < §3#1§.§-!e§)
         {
            _loc2_ = Math.sin(this.§="c§ / §3#1§.§-!e§ * (Math.PI * §3#1§.§<# §) + this.§&!H§);
            _loc3_ = _loc2_ * §3#1§.§4!L§;
            _loc4_ = new b2Vec2(_loc3_,this.§-!q§.§-a§.mLevelEngine.mWorld.GetGravity().y);
            this.§-!q§.§-a§.mLevelEngine.mWorld.SetGravity(_loc4_);
            ++this.§="c§;
            this.§+!T§();
         }
         else if(this.§="c§ == §3#1§.§-!e§)
         {
            this.§="c§ = -1;
            §%"T§.§;`§.mLevelEngine.mWorld.SetGravity(new b2Vec2(0,this.§-!q§.§-a§.mLevelEngine.mWorld.GetGravity().y));
         }
      }
      
      private function §+!T§() : void
      {
         var _loc1_:Number = this.§-!q§.§-a§.camera.centerX;
         var _loc2_:Number = §;l§.§@#5§ / §;l§.§%#3§;
         var _loc3_:Number = §;l§.§;#2§ / §;l§.§%#3§;
         var _loc4_:Number = _loc1_ + (Math.random() - 0.5) * _loc2_;
         var _loc5_:§]#e§ = this.§-!q§.§-a§.particles as §]#e§;
         if(this.§="c§ % 2)
         {
            _loc5_.§?#K§(_loc4_,this.§-!q§.§-a§.§!!,§.ground);
         }
         if(§^"C§.§?q§.§5"O§())
         {
            _loc5_.§^!j§(_loc1_ + (Math.random() - 0.5) * _loc2_,0,2);
         }
         _loc4_ = _loc1_ + (Math.random() - 0.5) * _loc2_;
         _loc5_.§5#G§(_loc4_,this.§-!q§.§-a§.§!!,§.ground + Math.random() * _loc3_ / 20);
      }
      
      public function §-"M§() : Boolean
      {
         return this.§="c§ > -1;
      }
      
      public function §@$8§() : Boolean
      {
         return this.§1!e§ > 0;
      }
      
      private function §>$2§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§@"0§ != null)
         {
            this.§@p§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§@"0§ = param1;
            (§%"T§.§+"M§ as §<"s§).mouseEnabled = false;
            this.§>!$§ = param1 == this.§^$8§ ? Number(§;#W§.§;$8§ * 1.5) : Number(§;#W§.§;$8§);
            this.§-!q§.§-a§.camera.setAction(!!param2 ? int(§;l§.§&y§) : int(§;l§.§1$C§));
            this.§]!f§(this.§@"0§);
         }
      }
      
      protected function §]!f§(param1:Function) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case this.§^$8§:
               _loc2_ = §0!w§.§3#D§.§]'§;
               break;
            case this.§"$;§:
               _loc2_ = §0!w§.§%#p§.§]'§;
               break;
            case this.§`"&§:
               _loc2_ = §0!w§.§ #;§.§]'§;
               break;
            case this.§2+§:
               _loc2_ = §0!w§.§<L§.§]'§;
               break;
            case this.§,"3§:
               _loc2_ = §0!w§.§,"w§.§]'§;
               break;
            case this.§+"i§:
               _loc2_ = §0!w§.§2$?§.§]'§;
               break;
            case this.§>$E§:
               _loc2_ = §0!w§.§8$B§.§]'§;
               break;
            case this.§&$E§:
               _loc2_ = §0!w§.§9#%§.§]'§;
               break;
            case this.§@!1§:
               _loc2_ = §0!w§.§2$?§.§]'§;
               break;
            case this.§7"g§:
               _loc2_ = §0!w§.§<!y§.§]'§;
         }
         var _loc3_:§0!e§ = AngryBirdsBase.singleton.§1h§() as §0!e§;
         if(_loc3_ && _loc2_)
         {
            dispatchEvent(new §=u§(§=u§.§%'§,_loc2_));
            if(_loc2_ == §0!w§.§2$?§.§]'§)
            {
               §[#%§.playSound("wingman_animation","ChannelPowerups");
            }
            else if(_loc2_ == §0!w§.§9#%§.§]'§)
            {
               §[#%§.playSound("pumpkin_activation","ChannelPowerups");
            }
            else
            {
               §[#%§.playSound("powerup_intro","ChannelPowerups");
            }
         }
         else
         {
            §[#%§.playSound("powerup_intro","ChannelPowerups");
         }
      }
      
      private function §^$8§() : void
      {
         var _loc4_:§ !§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc1_:§0$?§ = this.§-!q§.§-a§.slingshot as §0$?§;
         var _loc2_:Vector.<§;M§> = _loc1_.mBirds;
         var _loc3_:Number = §3#1§.§,!O§;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            (_loc4_ = _loc2_[_loc1_.mNextBirdIndex] as § !§).§^'§ = true;
            switch(_loc4_.name)
            {
               case "BIRD_BLACK":
                  _loc3_ = §3#1§.§^#0§;
                  break;
               case "BIRD_BLUE":
                  _loc3_ = §3#1§.§5"$§;
                  break;
               case "BIRD_GREEN":
                  _loc3_ = §3#1§.§3$"§;
                  break;
               case "BIRD_WHITE":
                  _loc3_ = §3#1§.§,#@§;
                  break;
               case "BIRD_YELLOW":
                  _loc3_ = §3#1§.§[!h§;
                  break;
               case "BIRD_RED":
                  _loc3_ = §3#1§.§'!M§;
                  break;
               case "BIRD_ORANGE":
                  _loc3_ = §3#1§.§&&§;
                  break;
               case "BIRD_REDBIG":
                  _loc3_ = §3#1§.§;!$§;
                  break;
               case "BIRD_WINGMAN":
                  _loc3_ = §3#1§.§!#Q§;
                  break;
               case "BIRD_SARDINE":
                  _loc3_ = 1;
                  _loc4_.§^'§ = false;
                  break;
               case "POWERUP_BOOMBOX":
                  _loc3_ = §3#1§.§98§;
            }
         }
         §[#%§.playSound("big_bird","ChannelPowerups");
         _loc1_.§+!]§(_loc3_,§0!w§.§3#D§);
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
                  this.§-!q§.§-a§.particles.addParticle(§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§'Y§.§5#q§,_loc10_ * Math.cos(_loc9_),-_loc10_ * Math.sin(_loc9_),10,_loc10_ * 50);
               }
               else
               {
                  if(_loc11_ == "BIRD_WINGMAN")
                  {
                     _loc11_ = "BIRD_RED";
                  }
                  this.§-!q§.§-a§.particles.addParticle(§'Y§.§7!s§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§'Y§.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
               }
               _loc8_++;
            }
         }
         this.§>!V§();
         this.§<"f§ = false;
      }
      
      private function §<#`§() : void
      {
         var _loc3_:§ !§ = null;
         var _loc1_:§0$?§ = this.§-!q§.§-a§.slingshot as §0$?§;
         var _loc2_:Vector.<§;M§> = _loc1_.mBirds;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc1_.mNextBirdIndex] as § !§;
            _loc3_.§^'§ = false;
            _loc3_.§;"R§ = null;
            _loc3_.§1O§ = null;
            _loc3_.scale = 1;
            _loc3_.sprite.scaleX = _loc3_.scale;
            _loc3_.sprite.scaleY = _loc3_.scale;
         }
         this.§<"f§ = false;
      }
      
      public function §>!V§() : void
      {
         var _loc1_:§0$?§ = this.§-!q§.§-a§.slingshot as §0$?§;
         var _loc2_:Vector.<§;M§> = _loc1_.mBirds;
         var _loc3_:§ !§ = _loc2_[_loc1_.mNextBirdIndex] as § !§;
         §%"T§.§;`§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§'Y§.§>$?§,§>F§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,_loc3_.x,_loc3_.y - _loc3_.radius,400,"",§'Y§.§,"A§,0,0,0,0,1,8,true);
         if(_loc2_.length > 0)
         {
            §4B§.§&G§(_loc3_.x,_loc3_.y,40,0,40);
         }
         (this.§-!q§.§-a§.slingshot as §0$?§).§&#b§(_loc3_.x,_loc3_.y);
      }
      
      private function §?#!§() : void
      {
         var _loc1_:§0$?§ = this.§-!q§.§-a§.slingshot as §0$?§;
         _loc1_.setSlingShotState(§"b§.§"G§);
      }
      
      private function §`"&§() : void
      {
         §[#%§.playSound("super_slingshot","ChannelPowerups");
         (this.§-!q§.§-a§.slingshot as §0$?§).§ "$§();
      }
      
      private function §,"3§() : void
      {
         this.§-#t§ = true;
         this.§@!i§();
         §[#%§.playSound("laser_sight","ChannelPowerups");
         (this.§-!q§.§-a§.slingshot as §0$?§).§8H§();
      }
      
      private function §>$E§() : void
      {
         var _loc8_:§8"J§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§'l§ = null;
         var _loc1_:Point = this.§-!q§.§9#[§();
         _loc1_ = this.§-!q§.§-a§.screenToBox2D(_loc1_.x,_loc1_.y);
         this.§+k§ = §[#%§.playSound("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var _loc2_:Number = (this.§-!q§.§-a§.camera as §9#b§).§@[§() + §;#W§.§+#>§ / 2;
         var _loc3_:Number = (this.§-!q§.§-a§.camera as §9#b§).§<#H§() + §;#W§.§+#>§ / 2;
         var _loc4_:Number = this.§-!q§.§-a§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = -20) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Vector.<§8"J§> = this.§9!U§().§6#?§(3);
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
               _loc9_ = _loc8_.§ $!§ + (Math.random() * §;#W§.§+#>§ - §;#W§.§+#>§ / 2);
            }
            _loc11_ = this.§9!U§().§0#y§(_loc9_,_loc10_,0);
            this.§"Z§[_loc7_] = _loc11_;
            _loc7_++;
         }
      }
      
      private function §&$E§() : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Boolean = false;
         var _loc2_:Number = (this.§-!q§.§-a§.camera as §9#b§).§@[§() + §;#W§.§+#>§ / 2;
         var _loc3_:Number = (this.§-!q§.§-a§.camera as §9#b§).§<#H§() + §;#W§.§+#>§ / 2;
         var _loc4_:Number = this.§-!q§.§-a§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = -20) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc7_:Number = (Number(_loc3_ - _loc2_)) / (5 + 1);
         var _loc8_:int = 0;
         while(_loc8_ < 5)
         {
            _loc9_ = _loc2_ + _loc7_ + _loc8_ * _loc7_;
            _loc10_ = _loc5_ - Math.random() * 30;
            _loc11_ = this.§9!U§().§"!4§(_loc9_,_loc10_);
            while(_loc11_)
            {
               _loc10_++;
               _loc11_ = this.§9!U§().§"!4§(_loc9_,_loc10_);
            }
            §%"T§.§;`§.levelObjects.addObject("POWERUP_PUMPKIN",_loc9_,_loc10_,Math.random() * 360,§7S§.ID_NEXT_FREE,false,false,false,1,false,false,(Math.random() - 0.5) * 10,new b2Vec2((Math.random() - 0.5) * 10,0));
            _loc8_++;
         }
      }
      
      private function §"$;§() : void
      {
         var _loc8_:§8"J§ = null;
         this.§-!q§.§^#P§(Math.round(§<!A§.§1!T§ * §3#1§.§-!e§));
         §[#%§.playSound("earthquake","ChannelPowerups");
         var _loc2_:String = "earthquake" + "_" + §^"C§.§?q§.brandedTournamentAssetId;
         if(§2"O§.§;#m§(_loc2_))
         {
            §[#%§.playSound(_loc2_,"ChannelPowerups");
         }
         this.§="c§ = 0;
         this.§&!H§ = Math.random() * (Math.PI * 2);
         var _loc3_:int = this.§9!U§().§ "Z§();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if((_loc8_ = this.§9!U§().getObject(_loc4_) as §8"J§) is §,!h§ || _loc8_ is §1$<§)
            {
               _loc8_.getBody().SetAwake(true);
               if(_loc8_ is §1$<§)
               {
                  _loc8_.scream();
                  _loc8_.§7#?§();
               }
            }
            _loc4_++;
         }
         var _loc5_:Number = §;#W§.§'!g§;
         var _loc6_:Number = §;#W§.§4",§;
         var _loc7_:Number = §;#W§.§ !=§;
         this.§-!q§.§-a§.§?"G§(true,_loc5_,_loc6_,_loc7_);
         this.§-!q§.§-a§.§5#a§();
      }
      
      private function §+"i§() : void
      {
         var _loc3_:§;M§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§"b§ = this.§-!q§.§-a§.slingshot;
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
               _loc3_.§9"b§();
               this.§>"f§ = (_loc3_ as § !§).§0#q§(_loc4_,_loc3_.originalY);
            }
         }
         this.§-!q§.§-a§.slingshot.addBirdStraightIntoSlingshot("BIRD_CHRISTMAS",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         §[#%§.playSound("Sound_Santa_Bomb_Bird_Arrival");
         this.§-!q§.§@#-§();
      }
      
      private function §@!1§() : void
      {
         this.§-!q§.§-"'§();
         var _loc1_:§0$?§ = §%"T§.§;`§.slingshot as §0$?§;
         if(_loc1_.§+!k§())
         {
            this.§^$8§();
         }
         _loc1_.setSlingShotState(§"b§.§"G§);
      }
      
      private function §2+§() : void
      {
         var _loc4_:§ !§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§-!q§.§-"'§();
         var _loc1_:§0$?§ = §%"T§.§;`§.slingshot as §0$?§;
         var _loc2_:Boolean = false;
         if(_loc1_.mBirds.length > 0 && _loc1_.mNextBirdIndex < _loc1_.mBirds.length)
         {
            if((_loc4_ = _loc1_.mBirds[_loc1_.mNextBirdIndex] as § !§).§^'§)
            {
               this.§<"f§ = true;
               this.§<#`§();
               _loc2_ = true;
            }
            _loc5_ = _loc4_.originalX;
            _loc6_ = _loc4_.originalY;
            if(_loc4_.name == "BIRD_WINGMAN")
            {
               _loc5_ = _loc1_.§7!J§().x;
               _loc6_ = _loc1_.§7!J§().y;
            }
            if(_loc4_)
            {
               _loc4_.§9"b§();
               this.§>"f§ = _loc4_.§0#q§(_loc5_,_loc6_);
            }
         }
         _loc1_.setSlingShotState(§"b§.§"G§);
         var _loc3_:§;M§ = _loc1_.addBirdStraightIntoSlingshot("POWERUP_BOOMBOX",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         _loc3_.§["N§ = false;
         this.§-!q§.§@#-§();
         if(_loc2_)
         {
            this.§<"f§ = true;
            this.§^$8§();
         }
         _loc1_.§<#k§(_loc1_.x + 0.7,_loc1_.y + 0.1);
         §[#%§.playSound("tnt_released_01","ChannelPowerups",0,0.5);
      }
      
      private function §9!U§() : §`h§
      {
         return this.§-!q§.§-a§.levelObjects as §`h§;
      }
      
      public function §?z§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §0!w§.§3#D§.§]'§:
               this.§<"f§ = true;
               this.§>$2§(this.§^$8§,false);
               break;
            case §0!w§.§ #;§.§]'§:
               this.§>$2§(this.§`"&§,false);
               break;
            case §0!w§.§<L§.§]'§:
               this.§>$2§(this.§2+§,false);
               break;
            case §0!w§.§,"w§.§]'§:
               this.§>$2§(this.§,"3§,false);
               break;
            case §0!w§.§%#p§.§]'§:
               this.§>$2§(this.§"$;§,true);
               break;
            case §0!w§.§8$B§.§]'§:
               this.§>$2§(this.§>$E§,true);
               break;
            case §0!w§.§9#%§.§]'§:
               this.§>$2§(this.§&$E§,true);
               break;
            case §0!w§.§2$?§.§]'§:
               §%"T§.§;`§.slingshot.setSlingShotState(§0$?§.§?P§);
               this.§>$2§(this.§@!1§,false);
               break;
            case §0!w§.§<!y§.§]'§:
               this.§>$2§(this.§7"g§,true);
         }
         if(param1 != "MightyEagle")
         {
            return true;
         }
         this.§6#W§(param1);
         this.§3!a§(param1);
         this.§-!q§.§-a§.§?z§(param1);
         §#$D§.§?q§.§?z§(param1);
         var _loc2_:String = this.mLevelManager.currentLevel;
         this.mLevelManager.getCurrentEpisodeModel().name;
         §5"w§.§6!h§(param1,_loc2_);
         int(§%"T§.§;`§.slingshot.§@$B§());
         int(§%"T§.§;`§.slingshot.§17§());
         if(§%"T§.§;`§.slingshot.mBirds.length > 0 && §%"T§.§;`§.slingshot.mBirds[0] as §;M§)
         {
            (§%"T§.§;`§.slingshot.mBirds[0] as §;M§).name;
         }
         return true;
      }
      
      private function §7"g§() : void
      {
         this.§-!q§.§^#P§(3 * Math.round(§<!A§.§1!T§ * §3#1§.§-!e§));
         (§%"T§.§;`§.levelObjects as §`h§).§7"f§();
         this.§1!e§ = (§%"T§.§;`§.levelObjects as §`h§).§?#l§;
      }
      
      public function §3!a§(param1:String) : void
      {
         if(param1 != "MightyEagle")
         {
            return;
         }
         if(§#$D§.§?q§.§if§(param1) > 0)
         {
            return;
         }
         var _loc2_:Array = (§%"T§.§;`§ as §4B§).§4#h§();
         var _loc3_:§'!n§ = new §'!n§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§6"y§ = new §6"y§(param1,_loc2_,_loc3_);
         if(this.§%"x§ != null)
         {
            this.§,#y§.push(_loc4_);
         }
         else
         {
            this.§7<§(_loc4_);
         }
      }
      
      protected function §7<§(param1:§6"y§) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = (this.mLevelManager as §,-§).§#6§(_loc2_);
         if(int(§^"C§.§?q§.levelIDs.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§^"C§.§?q§.§6#T§(_loc2_));
         }
         var _loc5_:§[#5§;
         var _loc6_:String = !!(_loc5_ = this.mLevelManager.getEpisodeForLevel(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/useItem");
         var _loc8_:Object = {
            "item":param1.§[U§,
            "levelId":this.mLevelManager.currentLevel,
            "episode":_loc6_,
            "actualLevel":_loc3_,
            "usedItems":param1.§9a§
         };
         if(this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc8_["tournamentId"] = §^"C§.§?q§.§5!W§();
         }
         _loc7_.contentType = "application/json";
         _loc7_.method = URLRequestMethod.POST;
         _loc7_.data = JSON.stringify(_loc8_);
         this.§%"x§ = param1;
         this.§9#C§(param1.§%!#§);
         param1.§%!#§.load(_loc7_);
      }
      
      protected function §9#C§(param1:URLLoader) : void
      {
         this.§`$>§(param1);
         param1.addEventListener(Event.COMPLETE,this.§ #"§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§,"I§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,"I§);
         param1.addEventListener(§"!;§.§ #x§,this.§,"I§);
      }
      
      protected function §`$>§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§ #"§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§,"I§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,"I§);
         param1.removeEventListener(§"!;§.§ #x§,this.§,"I§);
      }
      
      protected function § #"§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:§6"y§ = this.§%"x§;
         this.§`$>§(_loc2_.§%!#§);
         this.§%"x§ = null;
         _loc3_ = _loc2_.§%!#§.data;
         if(_loc3_.items)
         {
            §#$D§.§?q§.§["a§(_loc3_.items);
         }
         if(_loc3_.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Powerup activation unsuccessful. Server returned \'" + _loc3_.error + "\'"));
         }
         this.§%"Q§(true);
      }
      
      protected function §,"I§(param1:Event) : void
      {
         var _loc2_:§6"y§ = this.§%"x§;
         this.§`$>§(_loc2_.§%!#§);
         this.§%"x§ = null;
         if(param1.type == §"!;§.§ #x§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§]"d§));
         }
         else
         {
            this.§%"Q§(false);
         }
      }
      
      protected function §%"Q§(param1:Boolean) : void
      {
         var _loc2_:§6"y§ = null;
         if(!param1)
         {
            this.§^!c§();
         }
         if(this.§,#y§.length > 0)
         {
            _loc2_ = this.§,#y§.shift();
            this.§7<§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §^!c§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §0"§(param1:Boolean = true) : Boolean
      {
         if(param1)
         {
            return this.§%"x§ != null || this.§,#y§.length > 0 || this.§]#o§;
         }
         return this.§%"x§ != null || this.§,#y§.length > 0;
      }
      
      public function get §]#o§() : Boolean
      {
         return this.§<"f§ || (§%"T§.§;`§.slingshot as §0$?§).mSlingShotState == §0$?§.§?P§;
      }
      
      public function dispose() : void
      {
         if(this.§-!q§)
         {
            this.§-!q§.mouseEnabled = true;
         }
         this.§1!e§ = 0;
         this.§="c§ = -1;
         this.§^$C§ = -1;
         this.§>!$§ = -1;
         this.§^#$§ = null;
         this.§@"0§ = null;
         this.§@p§ = [];
         if(this.§+k§)
         {
            this.§+k§.stop();
            this.§+k§ = null;
         }
         if(this.§@b§)
         {
            this.§@b§.dispose();
            this.§@b§ = null;
         }
      }
      
      public function §'"?§() : void
      {
         if(this.§>"f§)
         {
            this.§>"f§.§6X§();
            this.§>"f§ = null;
         }
         if(this.§0"y§)
         {
            this.§0"y§.§6X§();
            this.§0"y§ = null;
         }
      }
      
      public function §!#;§(param1:String) : Boolean
      {
         return this.§6!$§ && this.§6!$§.indexOf(param1) > -1;
      }
      
      public function §-#4§() : void
      {
         this.§6!$§ = null;
      }
      
      private function §6#W§(param1:String) : void
      {
         if(!this.§6!$§)
         {
            this.§6!$§ = new Array();
         }
         this.§6!$§[this.§6!$§.length] = param1;
      }
      
      public function get §3!v§() : Boolean
      {
         return this.§-m§;
      }
      
      public function set §3!v§(param1:Boolean) : void
      {
         this.§-m§ = param1;
      }
      
      public function §@!i§() : void
      {
         var _loc2_:§^!8§ = null;
         if(this.§@b§)
         {
            this.§@b§.dispose();
         }
         var _loc1_:String = "LASER_DOT";
         if(this.§-#t§)
         {
            _loc1_ = "LASER_DOT";
         }
         else if(§&# §.§!$0§() == §7!S§.§&"z§.§]'§)
         {
            _loc1_ = "POWERUP_TREESLING_AIMDOT";
         }
         if(this.§-!q§)
         {
            _loc2_ = this.§-!q§.§-a§.textureManager.getTexture(_loc1_);
            this.§@b§ = new § !"§(this.§-!q§,new Sprite(),_loc2_.texture,0,0);
            §%"T§.§;`§.objects.backgroundSprite.addChild(this.§@b§.sprite);
         }
      }
      
      public function get §&`§() : Boolean
      {
         return this.§-#t§;
      }
   }
}
