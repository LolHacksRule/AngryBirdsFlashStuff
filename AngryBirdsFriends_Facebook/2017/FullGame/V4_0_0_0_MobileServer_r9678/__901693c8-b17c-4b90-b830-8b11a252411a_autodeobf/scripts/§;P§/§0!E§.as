package §;P§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import § o§.WarningPopup;
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §&"J§.§4"W§;
   import §+!C§.§#!L§;
   import §+!C§.§,C§;
   import §+!C§.§1!$§;
   import §+!C§.§9!b§;
   import §+!C§.§<!-§;
   import §+!C§.§@!^§;
   import §+!C§.§@"@§;
   import §+!C§.§@#]§;
   import §+!C§.§]#b§;
   import §+!C§.§^$'§;
   import §1#W§.§!#&§;
   import §1#W§.§="D§;
   import §6"r§.§!#A§;
   import §6V§.§`"5§;
   import §7!j§.§'#'§;
   import §8Z§.§-#C§;
   import §9$<§.§-t§;
   import §9$<§.§4p§;
   import §94§.§&I§;
   import §<#m§.§^#o§;
   import §=#C§.§1"r§;
   import §=#C§.§7"G§;
   import §>!5§.§%!8§;
   import §>!5§.§-!S§;
   import §>!5§.§4@§;
   import §>!5§.§6#-§;
   import §>!5§.§76§;
   import §>!5§.§;"i§;
   import §>!5§.§<j§;
   import §>!5§.§^"9§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §["-§.§3"<§;
   import §["-§.§;#>§;
   import §];§.§-!t§;
   import §^$1§.§2"^§;
   import §^$1§.§6#J§;
   import §^$1§.§7"6§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §0!E§ extends EventDispatcher
   {
      
      private static const §&"6§:Number = 500;
       
      
      private var §4-§:§^$'§;
      
      protected var §]z§:Boolean = false;
      
      private var §0$1§:int = -1;
      
      private var §1"%§:Number;
      
      private var §@$%§:int;
      
      private var §9&§:Function;
      
      private var §[l§:Array;
      
      private var §"#,§:Number = -1;
      
      private var §!!>§:§%!8§;
      
      private var § !p§:Number = -1;
      
      private var §84§:§="D§;
      
      private var §+O§:Vector.<§%!8§>;
      
      private var §^H§:§-#C§ = null;
      
      private var § if§:§-#C§ = null;
      
      private var §3$$§:Vector.<§>B§>;
      
      private var §3!M§:§>B§;
      
      private var §;"N§:§3"<§;
      
      private var mLevelManager:§^#Q§;
      
      private var §6!X§:Array;
      
      private var §;"G§:Boolean = false;
      
      private var §7"L§:Boolean;
      
      private var §&§:Number = 500;
      
      private var §+#6§:Boolean;
      
      public function §0!E§(param1:§^#Q§)
      {
         this.§[l§ = [];
         this.§3$$§ = new Vector.<§>B§>();
         super();
         this.mLevelManager = param1;
      }
      
      public function get §["?§() : int
      {
         return this.§3$$§.length;
      }
      
      public function init() : void
      {
         this.§0$1§ = -1;
         this.§"#,§ = -1;
         this.§ !p§ = -1;
         this.§!!>§ = null;
         this.§9&§ = null;
         this.§[l§ = [];
         this.§;"N§.mouseEnabled = true;
         this.§+#6§ = false;
         this.§@$%§ = 0;
         this.§+O§ = new Vector.<§%!8§>();
         var _loc1_:§'#'§ = this.§;"N§.§"!!§.textureManager.getTexture("LASER_DOT");
         if(this.§4-§)
         {
            this.§4-§.dispose();
         }
         this.§4-§ = new §,C§(this.§;"N§,new Sprite(),_loc1_.texture,0,0);
         §!#A§.§#F§.objects.backgroundSprite.addChild(this.§4-§.sprite);
         this.§%%§();
      }
      
      public function reset() : void
      {
         while(this.§3$$§.length > 0)
         {
            this.§3$$§.shift();
         }
         if(this.§3!M§)
         {
            this.§[!s§(this.§3!M§.§9#s§);
            try
            {
               this.§3!M§.§9#s§.close();
            }
            catch(e:Error)
            {
            }
            this.§3!M§ = null;
         }
      }
      
      public function setController(param1:§3"<§) : void
      {
         if(this.§;"N§ == param1)
         {
            return;
         }
         this.§;"N§ = param1;
         this.init();
      }
      
      public function run(param1:Number, param2:§-!S§) : void
      {
         var _loc5_:§@#]§ = null;
         var _loc6_:Object = null;
         if(!this.§;"N§)
         {
            return;
         }
         this.§9#j§(param1);
         this.§]"n§(param1,param2);
         var _loc3_:Vector.<§@"@§> = this.§;"N§.§"!!§.slingshot.mBirds;
         if(_loc3_.length > 0)
         {
            if((_loc5_ = _loc3_[this.§;"N§.§"!!§.slingshot.mNextBirdIndex] as §@#]§).§8#o§)
            {
               this.§8#T§(param1,param2);
            }
         }
         if(!this.§]z§)
         {
            this.§2§(param1,param2);
         }
         var _loc4_:Boolean = (§!#A§.§#F§.slingshot as §9!b§).mSlingShotState == §]#b§.§^#,§ || (§!#A§.§#F§.slingshot as §9!b§).mSlingShotState == §9!b§.§`D§;
         if(this.§"#,§ > 0)
         {
            if(this.§9&§ != this.§0F§ || this.§9&§ == this.§0F§ && _loc4_)
            {
               this.§"#,§ -= param1;
            }
            if(this.§"#,§ <= 0)
            {
               this.§9&§();
               this.§9&§ = null;
               this.§;"N§.mouseEnabled = true;
               if(this.§[l§.length > 0)
               {
                  _loc6_ = this.§[l§.shift();
                  this.§0'§(_loc6_.powerupFunction,_loc6_.gotoCastleSide);
               }
            }
         }
      }
      
      private function §8#T§(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:§9!b§ = null;
         var _loc4_:Vector.<§@"@§> = null;
         var _loc5_:§@#]§ = null;
         var _loc6_:§6#J§ = null;
         var _loc7_:Number = NaN;
         if(!this.§7"L§)
         {
            this.§7"L§ = true;
            _loc3_ = this.§;"N§.§"!!§.slingshot as §9!b§;
            _loc5_ = (_loc4_ = _loc3_.mBirds)[_loc3_.mNextBirdIndex] as §@#]§;
            _loc6_ = §!#A§.§#F§.particles as §6#J§;
            _loc7_ = 0.4;
            _loc6_.§@#z§(_loc5_.x + _loc5_.radius,_loc5_.y - _loc5_.radius,_loc7_,0,0,(3 + Math.random() * 4) * -1,_loc5_.radius);
         }
         if(this.§7"L§)
         {
            this.§&§ -= param1;
            if(this.§&§ <= 0)
            {
               this.§&§ = §&"6§ + Math.random() * 300;
               this.§7"L§ = false;
            }
         }
      }
      
      protected function §]"n§(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:§9!b§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(this.§]z§)
         {
            _loc3_ = this.§;"N§.§"!!§.slingshot as §9!b§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§^"=§.§,#l§() == §4@§.§=§;
               this.§4-§.§5"n§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,10,_loc7_,false,22);
               this.§4-§.enabled = true;
            }
            else
            {
               this.§4-§.enabled = false;
            }
         }
      }
      
      protected function §2§(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:§9!b§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(§1"r§.§,#8§() == §7"G§.§1d§.§?"9§)
         {
            _loc3_ = this.§;"N§.§"!!§.slingshot as §9!b§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.getPosition())
            {
               _loc4_ = new Point(_loc3_.getPosition().x - Math.cos(_loc3_.shootingAngle / 180 * Math.PI) * 4,_loc3_.getPosition().y + Math.sin(_loc3_.shootingAngle / 180 * Math.PI) * 4);
            }
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§^"=§.§,#l§() == §4@§.§=§;
               this.§4-§.§5"n§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,16,_loc7_,true,64);
               this.§4-§.enabled = true;
            }
            else
            {
               this.§4-§.enabled = false;
            }
         }
      }
      
      protected function §9#j§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§%!8§ = null;
         if(this.§+O§)
         {
            _loc2_ = this.§+O§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§+O§[_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.§["Z§)
                  {
                     this.§+O§.splice(_loc2_,1);
                  }
                  else
                  {
                     _loc3_.§9#j§(param1,§!#A§.§#F§.levelObjects);
                  }
               }
               _loc2_--;
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc1_:int = §4"W§.§ "D§.§04§(§super§.§["0§.§?"9§);
         if(_loc1_ <= 0)
         {
            return false;
         }
         this.§;"N§.§5!4§();
         §4"W§.§ "D§.§>$7§(§super§.§["0§.§?"9§);
         this.§"!p§(§super§.§["0§.§?"9§);
         this.§0'§(this.§87§,false);
         return true;
      }
      
      private function §87§() : void
      {
         var _loc1_:String = this.mLevelManager.currentLevel;
         var _loc2_:String = this.mLevelManager.getCurrentEpisodeModel().name;
         §`"5§.§[!G§(§super§.§["0§.§?"9§,_loc1_);
         var _loc3_:§9!b§ = §!#A§.§#F§.slingshot as §9!b§;
         if(_loc3_.mSlingShotState == §]#b§.§,$9§)
         {
            _loc3_.setSlingShotState(§]#b§.§^#,§);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§>$5§(param1);
         this.§##S§(param1);
      }
      
      private function §##S§(param1:Number) : void
      {
         if(this.§@$%§ > 0)
         {
            this.§@$%§ -= param1;
         }
      }
      
      protected function §>$5§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§0$1§ >= 0 && this.§0$1§ < §@!^§.§<"8§)
         {
            _loc2_ = Math.sin(this.§0$1§ / §@!^§.§<"8§ * (Math.PI * §@!^§.§4"5§) + this.§1"%§);
            _loc3_ = _loc2_ * §@!^§.§@$8§;
            _loc4_ = new b2Vec2(_loc3_,this.§;"N§.§"!!§.mLevelEngine.mWorld.GetGravity().y);
            this.§;"N§.§"!!§.mLevelEngine.mWorld.SetGravity(_loc4_);
            ++this.§0$1§;
            this.§<$2§();
         }
         else if(this.§0$1§ == §@!^§.§<"8§)
         {
            this.§0$1§ = -1;
            §!#A§.§#F§.mLevelEngine.mWorld.SetGravity(new b2Vec2(0,this.§;"N§.§"!!§.mLevelEngine.mWorld.GetGravity().y));
         }
      }
      
      private function §<$2§() : void
      {
         var _loc1_:Number = this.§;"N§.§"!!§.camera.centerX;
         var _loc2_:Number = §-t§.§6w§ / §-t§.§<!W§;
         var _loc3_:Number = §-t§.§`#Z§ / §-t§.§<!W§;
         var _loc4_:Number = _loc1_ + (Math.random() - 0.5) * _loc2_;
         var _loc5_:§6#J§ = this.§;"N§.§"!!§.particles as §6#J§;
         if(this.§0$1§ % 2)
         {
            _loc5_.§"!0§(_loc4_,this.§;"N§.§"!!§.§>$$§.ground);
         }
         _loc4_ = _loc1_ + (Math.random() - 0.5) * _loc2_;
         _loc5_.§2!8§(_loc4_,this.§;"N§.§"!!§.§>$$§.ground + Math.random() * _loc3_ / 20);
      }
      
      public function §4"!§() : Boolean
      {
         return this.§0$1§ > -1;
      }
      
      public function §6L§() : Boolean
      {
         return this.§@$%§ > 0;
      }
      
      private function §0'§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§9&§ != null)
         {
            this.§[l§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§9&§ = param1;
            (§!#A§.§=![§ as §;#>§).mouseEnabled = false;
            this.§"#,§ = param1 == this.§0F§ ? Number(§1!$§.§4"6§ * 1.5) : Number(§1!$§.§4"6§);
            this.§;"N§.§"!!§.camera.setAction(!!param2 ? int(§-t§.§-"e§) : int(§-t§.§ v§));
            this.§@"P§(this.§9&§);
         }
      }
      
      protected function §@"P§(param1:Function) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case this.§0F§:
               _loc2_ = §super§.§@"B§.§?"9§;
               break;
            case this.§]!t§:
               _loc2_ = §super§.§+!d§.§?"9§;
               break;
            case this.§%!K§:
               _loc2_ = §super§.§&"l§.§?"9§;
               break;
            case this.§4#d§:
               _loc2_ = §super§.§!!y§.§?"9§;
               break;
            case this.§,0§:
               _loc2_ = §super§.§#"[§.§?"9§;
               break;
            case this.§^"E§:
               _loc2_ = §super§.§%#[§.§?"9§;
               break;
            case this.§-#p§:
               _loc2_ = §super§.§^!M§.§?"9§;
               break;
            case this.§6#!§:
               _loc2_ = §super§.§#"[§.§?"9§;
               break;
            case this.§"#B§:
               _loc2_ = §super§.§9!T§.§?"9§;
         }
         var _loc3_:§&I§ = AngryBirdsBase.singleton.§[##§() as §&I§;
         if(_loc3_ && _loc2_)
         {
            dispatchEvent(new §%!]§(§%!]§.§4<§,_loc2_));
            if(_loc2_ == §super§.§#"[§.§?"9§)
            {
               §!#&§.playSound("wingman_animation","ChannelPowerups");
            }
            else if(_loc2_ == §super§.§^!M§.§?"9§)
            {
               §!#&§.playSound("pumpkin_activation","ChannelPowerups");
            }
            else
            {
               §!#&§.playSound("powerup_intro","ChannelPowerups");
            }
         }
      }
      
      private function §0F§() : void
      {
         var _loc4_:§@#]§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc1_:§9!b§ = this.§;"N§.§"!!§.slingshot as §9!b§;
         var _loc2_:Vector.<§@"@§> = _loc1_.mBirds;
         var _loc3_:Number = §@!^§.§'#d§;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            (_loc4_ = _loc2_[_loc1_.mNextBirdIndex] as §@#]§).§8#o§ = true;
            switch(_loc4_.name)
            {
               case "BIRD_BLACK":
                  _loc3_ = §@!^§.§;#S§;
                  break;
               case "BIRD_BLUE":
                  _loc3_ = §@!^§.§!n§;
                  break;
               case "BIRD_GREEN":
                  _loc3_ = §@!^§.§9"C§;
                  break;
               case "BIRD_WHITE":
                  _loc3_ = §@!^§.§&!u§;
                  break;
               case "BIRD_YELLOW":
                  _loc3_ = §@!^§.§%&§;
                  break;
               case "BIRD_RED":
                  _loc3_ = §@!^§.§,#6§;
                  break;
               case "BIRD_ORANGE":
                  _loc3_ = §@!^§.§-##§;
                  break;
               case "BIRD_RED_BIG":
                  _loc3_ = §@!^§.§"#I§;
                  break;
               case "BIRD_WINGMAN":
                  _loc3_ = §@!^§.§&"s§;
                  break;
               case "BIRD_SARDINE":
                  _loc3_ = 1;
                  _loc4_.§8#o§ = false;
            }
         }
         §!#&§.playSound("big_bird","ChannelPowerups");
         _loc1_.§=s§(_loc3_,§super§.§@"B§);
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
               this.§;"N§.§"!!§.particles.addParticle(§2"^§.§?w§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§2"^§.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
               _loc8_++;
            }
         }
         this.§9#B§();
         this.§+#6§ = false;
      }
      
      public function §9#B§() : void
      {
         var _loc1_:§9!b§ = this.§;"N§.§"!!§.slingshot as §9!b§;
         var _loc2_:Vector.<§@"@§> = _loc1_.mBirds;
         var _loc3_:§@#]§ = _loc2_[_loc1_.mNextBirdIndex] as §@#]§;
         §!#A§.§#F§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§2"^§.§<$+§,§7"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§2"^§.PARTICLE_TYPE_STATIC_PARTICLE,_loc3_.x,_loc3_.y - _loc3_.radius,400,"",§2"^§.§9Z§,0,0,0,0,1,8,true);
         if(_loc2_.length > 0)
         {
            §#!L§.§@9§(_loc3_.x,_loc3_.y,40,0,40);
         }
         (this.§;"N§.§"!!§.slingshot as §9!b§).§2#L§(_loc3_.x,_loc3_.y);
      }
      
      private function §5!V§() : void
      {
         var _loc1_:§9!b§ = this.§;"N§.§"!!§.slingshot as §9!b§;
         _loc1_.setSlingShotState(§]#b§.§^#,§);
      }
      
      private function §%!K§() : void
      {
         §!#&§.playSound("super_slingshot","ChannelPowerups");
         (this.§;"N§.§"!!§.slingshot as §9!b§).§2";§();
      }
      
      private function §4#d§() : void
      {
         this.§]z§ = true;
         this.§%%§();
         §!#&§.playSound("laser_sight","ChannelPowerups");
         (this.§;"N§.§"!!§.slingshot as §9!b§).§7#2§();
      }
      
      private function §^"E§() : void
      {
         var _loc8_:§^"9§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§%!8§ = null;
         var _loc1_:Point = this.§;"N§.§=0§();
         _loc1_ = this.§;"N§.§"!!§.screenToBox2D(_loc1_.x,_loc1_.y);
         this.§84§ = §!#&§.playSound("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var _loc2_:Number = (this.§;"N§.§"!!§.camera as §4p§).§##k§() + §1!$§.§"!&§ / 2;
         var _loc3_:Number = (this.§;"N§.§"!!§.camera as §4p§).§'#F§() + §1!$§.§"!&§ / 2;
         var _loc4_:Number = this.§;"N§.§"!!§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = -20) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Vector.<§^"9§> = this.§<z§().§^K§(3);
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
               _loc9_ = _loc8_.§;"o§ + (Math.random() * §1!$§.§"!&§ - §1!$§.§"!&§ / 2);
            }
            _loc11_ = this.§<z§().§-!O§(_loc9_,_loc10_,0);
            this.§+O§[_loc7_] = _loc11_;
            _loc7_++;
         }
      }
      
      private function §-#p§() : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Boolean = false;
         var _loc2_:Number = (this.§;"N§.§"!!§.camera as §4p§).§##k§() + §1!$§.§"!&§ / 2;
         var _loc3_:Number = (this.§;"N§.§"!!§.camera as §4p§).§'#F§() + §1!$§.§"!&§ / 2;
         var _loc4_:Number = this.§;"N§.§"!!§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = -20) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Number;
         var _loc7_:Number = (_loc6_ = _loc3_ - _loc2_) / (5 + 1);
         var _loc8_:int = 0;
         while(_loc8_ < 5)
         {
            _loc9_ = _loc2_ + _loc7_ + _loc8_ * _loc7_;
            _loc10_ = _loc5_ - Math.random() * 30;
            _loc11_ = this.§<z§().§#![§(_loc9_,_loc10_);
            while(_loc11_)
            {
               _loc10_++;
               _loc11_ = this.§<z§().§#![§(_loc9_,_loc10_);
            }
            §!#A§.§#F§.levelObjects.addObject("POWERUP_PUMPKIN",_loc9_,_loc10_,Math.random() * 360,§6#-§.ID_NEXT_FREE,false,false,false,1,false,false,(Math.random() - 0.5) * 10,new b2Vec2((Math.random() - 0.5) * 10,0));
            _loc8_++;
         }
      }
      
      private function §]!t§() : void
      {
         var _loc6_:§^"9§ = null;
         this.§;"N§.§@Z§(Math.round(§<!-§.§&"o§ * §@!^§.§<"8§));
         §!#&§.playSound("earthquake","ChannelPowerups");
         this.§0$1§ = 0;
         this.§1"%§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = this.§<z§().§7D§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            if((_loc6_ = this.§<z§().getObject(_loc2_) as §^"9§) is §;"i§ || _loc6_ is §76§)
            {
               _loc6_.getBody().SetAwake(true);
               if(_loc6_ is §76§)
               {
                  _loc6_.scream();
                  _loc6_.§@"Y§();
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = §1!$§.§6B§;
         var _loc4_:Number = §1!$§.§2"G§;
         var _loc5_:Number = §1!$§.§#"?§;
         this.§;"N§.§"!!§.§#2§(true,_loc3_,_loc4_,_loc5_);
         this.§;"N§.§"!!§.§][§();
      }
      
      private function §,0§() : void
      {
         var _loc3_:§@"@§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§]#b§ = this.§;"N§.§"!!§.slingshot;
         if(_loc1_.mBirds.length > 0 && _loc1_.mNextBirdIndex < _loc1_.mBirds.length)
         {
            _loc3_ = _loc1_.mBirds[_loc1_.mNextBirdIndex];
            _loc4_ = _loc3_.§>#%§;
            if(_loc3_)
            {
               if((_loc5_ = _loc1_.x - _loc3_.§>#%§) < 1.5 && _loc5_ > 0)
               {
                  _loc4_ = _loc1_.x - 1.5;
               }
               _loc3_.§&!e§();
               this.§^H§ = (_loc3_ as §@#]§).§&$&§(_loc4_,_loc3_.§6#u§);
            }
         }
         var _loc2_:§@"@§ = this.§;"N§.§"!!§.slingshot.addBirdStraightIntoSlingshot("BIRD_CHRISTMAS",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         §!#&§.playSound("Sound_Santa_Bomb_Bird_Arrival");
         this.§;"N§.§@+§();
      }
      
      private function §6#!§() : void
      {
         this.§;"N§.§5!4§();
         var _loc1_:§9!b§ = §!#A§.§#F§.slingshot as §9!b§;
         if(_loc1_.§`Z§())
         {
            this.§0F§();
         }
         _loc1_.setSlingShotState(§]#b§.§^#,§);
      }
      
      private function §<z§() : §<j§
      {
         return this.§;"N§.§"!!§.levelObjects as §<j§;
      }
      
      public function §>$7§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §super§.§@"B§.§?"9§:
               this.§+#6§ = true;
               this.§0'§(this.§0F§,false);
               break;
            case §super§.§&"l§.§?"9§:
               this.§0'§(this.§%!K§,false);
               break;
            case §super§.§!!y§.§?"9§:
               this.§0'§(this.§4#d§,false);
               break;
            case §super§.§+!d§.§?"9§:
               this.§0'§(this.§]!t§,true);
               break;
            case §super§.§%#[§.§?"9§:
               this.§0'§(this.§^"E§,true);
               break;
            case §super§.§^!M§.§?"9§:
               this.§0'§(this.§-#p§,true);
               break;
            case §super§.§#"[§.§?"9§:
               §!#A§.§#F§.slingshot.setSlingShotState(§9!b§.§`D§);
               this.§0'§(this.§6#!§,false);
               break;
            case §super§.§9!T§.§?"9§:
               this.§0'§(this.§"#B§,true);
         }
         this.§3$,§(param1);
         this.§"!p§(param1);
         §4"W§.§ "D§.§>$7§(param1);
         this.§;"N§.§"!!§.§>$7§(param1);
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = this.mLevelManager.getCurrentEpisodeModel().name;
         §`"5§.§[!G§(param1,_loc2_);
         var _loc4_:int = §!#A§.§#F§.slingshot.§ "+§();
         var _loc5_:int = §!#A§.§#F§.slingshot.§%a§();
         var _loc6_:String = "";
         if(§!#A§.§#F§.slingshot.mBirds.length > 0 && §!#A§.§#F§.slingshot.mBirds[0] as §@"@§)
         {
            _loc6_ = (§!#A§.§#F§.slingshot.mBirds[0] as §@"@§).name;
         }
         return true;
      }
      
      private function §"#B§() : void
      {
         this.§;"N§.§@Z§(3 * Math.round(§<!-§.§&"o§ * §@!^§.§<"8§));
         (§!#A§.§#F§.levelObjects as §<j§).§1"f§();
         this.§@$%§ = (§!#A§.§#F§.levelObjects as §<j§).§^[§;
      }
      
      public function §"!p§(param1:String) : void
      {
         if(§4"W§.§ "D§.§@^§(param1) > 0)
         {
            return;
         }
         var _loc2_:Array = (§!#A§.§#F§ as §#!L§).§-$1§();
         var _loc3_:§4"v§ = new §4"v§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§>B§ = new §>B§(param1,_loc2_,_loc3_);
         if(this.§3!M§ != null)
         {
            this.§3$$§.push(_loc4_);
         }
         else
         {
            this.§>"T§(_loc4_);
         }
      }
      
      protected function §>"T§(param1:§>B§) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = (this.mLevelManager as §`!Q§).§+#O§(_loc2_);
         var _loc4_:int;
         if((_loc4_ = §-!t§.§ "D§.levelIDs.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§-!t§.§ "D§.§9`§(_loc2_));
         }
         var _loc5_:§9##§;
         var _loc6_:String = !!(_loc5_ = this.mLevelManager.getEpisodeForLevel(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/useItem");
         var _loc8_:Object = {
            "item":param1.§1!;§,
            "levelId":this.mLevelManager.currentLevel,
            "episode":_loc6_,
            "actualLevel":_loc3_,
            "usedItems":param1.§]#z§
         };
         _loc7_.contentType = "application/json";
         _loc7_.method = URLRequestMethod.POST;
         _loc7_.data = JSON.stringify(_loc8_);
         this.§3!M§ = param1;
         this.§[#7§(param1.§9#s§);
         param1.§9#s§.load(_loc7_);
      }
      
      protected function §[#7§(param1:URLLoader) : void
      {
         this.§[!s§(param1);
         param1.addEventListener(Event.COMPLETE,this.§!1§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§@!§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@!§);
         param1.addEventListener(§]e§.§5!;§,this.§@!§);
      }
      
      protected function §[!s§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§!1§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§@!§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§@!§);
         param1.removeEventListener(§]e§.§5!;§,this.§@!§);
      }
      
      protected function §!1§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:§>B§ = this.§3!M§;
         this.§[!s§(_loc2_.§9#s§);
         this.§3!M§ = null;
         _loc3_ = _loc2_.§9#s§.data;
         if(_loc3_.items)
         {
            §4"W§.§ "D§.§+#<§(_loc3_.items);
         }
         if(_loc3_.error)
         {
            throw new Error("Powerup activation unsuccessful. Server returned \'" + _loc3_.error + "\'");
         }
         this.§,f§(true);
      }
      
      protected function §@!§(param1:Event) : void
      {
         var _loc2_:§>B§ = this.§3!M§;
         this.§[!s§(_loc2_.§9#s§);
         this.§3!M§ = null;
         if(param1.type == §]e§.§5!;§)
         {
            this.§[#U§(ErrorPopup.§?"V§);
         }
         else
         {
            this.§,f§(false);
         }
      }
      
      protected function §,f§(param1:Boolean) : void
      {
         var _loc2_:§>B§ = null;
         if(!param1)
         {
            this.§=!,§();
         }
         if(this.§3$$§.length > 0)
         {
            _loc2_ = this.§3$$§.shift();
            this.§>"T§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §[#U§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§%"!§.§4!P§,§^#o§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=!,§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §"$1§(param1:Boolean = true) : Boolean
      {
         if(param1)
         {
            return this.§3!M§ != null || this.§3$$§.length > 0 || this.§1!Y§;
         }
         return this.§3!M§ != null || this.§3$$§.length > 0;
      }
      
      public function get §1!Y§() : Boolean
      {
         return this.§+#6§ || (§!#A§.§#F§.slingshot as §9!b§).mSlingShotState == §9!b§.§`D§;
      }
      
      public function dispose() : void
      {
         if(this.§;"N§)
         {
            this.§;"N§.mouseEnabled = true;
         }
         this.§@$%§ = 0;
         this.§0$1§ = -1;
         this.§ !p§ = -1;
         this.§"#,§ = -1;
         this.§!!>§ = null;
         this.§9&§ = null;
         this.§[l§ = [];
         if(this.§84§)
         {
            this.§84§.stop();
            this.§84§ = null;
         }
         if(this.§4-§)
         {
            this.§4-§.dispose();
            this.§4-§ = null;
         }
      }
      
      public function §1!c§() : void
      {
         if(this.§^H§)
         {
            this.§^H§.§=`§();
            this.§^H§ = null;
         }
         if(this.§ if§)
         {
            this.§ if§.§=`§();
            this.§ if§ = null;
         }
      }
      
      public function §]!Y§(param1:String) : Boolean
      {
         return this.§6!X§ && this.§6!X§.indexOf(param1) > -1;
      }
      
      public function §6!Q§() : void
      {
         this.§6!X§ = null;
      }
      
      private function §3$,§(param1:String) : void
      {
         if(!this.§6!X§)
         {
            this.§6!X§ = new Array();
         }
         this.§6!X§[this.§6!X§.length] = param1;
      }
      
      public function get §#"i§() : Boolean
      {
         return this.§;"G§;
      }
      
      public function set §#"i§(param1:Boolean) : void
      {
         this.§;"G§ = param1;
      }
      
      public function §%%§() : void
      {
         var _loc2_:§'#'§ = null;
         if(this.§4-§)
         {
            this.§4-§.dispose();
         }
         var _loc1_:String = "LASER_DOT";
         if(this.§]z§)
         {
            _loc1_ = "LASER_DOT";
         }
         else if(§1"r§.§,#8§() == §7"G§.§1d§.§?"9§)
         {
            _loc1_ = "POWERUP_TREESLING_AIMDOT";
         }
         if(this.§;"N§)
         {
            _loc2_ = this.§;"N§.§"!!§.textureManager.getTexture(_loc1_);
            this.§4-§ = new §,C§(this.§;"N§,new Sprite(),_loc2_.texture,0,0);
            §!#A§.§#F§.objects.backgroundSprite.addChild(this.§4-§.sprite);
         }
      }
      
      public function get §"8§() : Boolean
      {
         return this.§]z§;
      }
   }
}
