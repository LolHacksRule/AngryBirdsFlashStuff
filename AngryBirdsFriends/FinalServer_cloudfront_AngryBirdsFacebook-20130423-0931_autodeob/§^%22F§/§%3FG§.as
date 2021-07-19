package §^"F§
{
   import §!!=§.§"l§;
   import §!!=§.§=H§;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §,l§.§#!,§;
   import §-p§.§4!`§;
   import §-r§.§!"M§;
   import §0D§.§3!R§;
   import §2"'§.§6!K§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §4!<§.§ !X§;
   import §4!<§.§%6§;
   import §4!<§.§&=§;
   import §4!<§.§-!5§;
   import §4!<§.§3+§;
   import §4!<§.§9"<§;
   import §4!<§.§]D§;
   import §4!<§.§^!Z§;
   import §4!<§.§`!o§;
   import §5!Y§.§8y§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §6!^§.b2Vec2;
   import §7"G§.§7!n§;
   import §8m§.§7!>§;
   import §8m§.§@"M§;
   import §9!n§.§!J§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §;u§.§+"9§;
   import §@!"§.§?l§;
   import §`!G§.§2"L§;
   import §`!G§.§=!D§;
   import §`!G§.§>o§;
   import §`!G§.§[!8§;
   import §`!G§.§]"'§;
   import §`!G§.§true §;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §?G§ extends EventDispatcher
   {
       
      
      private var §'!W§:§9"<§;
      
      private var §0"=§:Boolean = false;
      
      private var §#!§:§`!o§;
      
      private var §2"K§:int = -1;
      
      private var §5u§:Number;
      
      private var § ";§:Function;
      
      private var §3k§:Array;
      
      private var §-!r§:Number = -1;
      
      private var §<U§:§=!D§;
      
      private var §3!i§:Number = -1;
      
      private var §?"-§:§7!>§;
      
      private var §"""§:Vector.<§=!D§>;
      
      private var §2!i§:§6!K§ = null;
      
      private var §%""§:§6!K§ = null;
      
      private var §?!1§:Vector.<§'4§>;
      
      private var §5"#§:§'4§;
      
      private var §%V§:§!"M§;
      
      private var §9b§:Array;
      
      private var §["0§:Boolean = false;
      
      public function §?G§()
      {
         this.§3k§ = [];
         this.§?!1§ = new Vector.<§'4§>();
         super();
      }
      
      public function get §<&§() : int
      {
         return this.§?!1§.length;
      }
      
      public function init() : void
      {
         this.§2"K§ = -1;
         this.§-!r§ = -1;
         this.§#!§ = null;
         this.§3!i§ = -1;
         this.§<U§ = null;
         this.§ ";§ = null;
         this.§3k§ = [];
         this.§%V§.mouseEnabled = true;
         this.§"""§ = new Vector.<§=!D§>();
         this.§'!W§ = new §9"<§();
      }
      
      public function reset() : void
      {
         while(this.§?!1§.length > 0)
         {
            this.§?!1§.shift();
         }
         if(this.§5"#§)
         {
            this.§`"8§(this.§5"#§.§;"5§);
            try
            {
               this.§5"#§.§;"5§.close();
            }
            catch(e:Error)
            {
            }
            this.§5"#§ = null;
         }
      }
      
      public function setController(param1:§!"M§) : void
      {
         if(this.§%V§ == param1)
         {
            return;
         }
         if(!this.§%V§)
         {
         }
         this.§%V§ = param1;
         this.init();
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(!this.§%V§)
         {
            return;
         }
         this.§>x§(param1);
         this.§<x§(param1);
         if(this.§-!r§ > 0)
         {
            this.§-!r§ -= param1;
            if(this.§-!r§ <= 0)
            {
               this.§ ";§();
               this.§ ";§ = null;
               (§?l§.§5-§ as §4!`§).mouseEnabled = true;
               if(this.§3k§.length > 0)
               {
                  _loc2_ = this.§3k§.shift();
                  this.§3p§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function §<x§(param1:Number) : void
      {
         var _loc2_:Point = null;
         var _loc3_:§&=§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§0"=§)
         {
            _loc2_ = §?l§.§'h§.slingshot.§@!]§();
            _loc3_ = §?l§.§'h§.slingshot;
            if(_loc2_ != null && _loc3_.mDragging)
            {
               _loc4_ = -Math.cos(_loc3_.§[h§ / (180 / Math.PI));
               _loc5_ = Math.sin(_loc3_.§[h§ / (180 / Math.PI));
               this.§'!W§.§;"E§(_loc2_,new Point(_loc4_,_loc5_),_loc3_.getLaunchSpeed());
               this.§'!W§.enabled = true;
            }
            else
            {
               this.§'!W§.enabled = false;
            }
         }
      }
      
      protected function §>x§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=!D§ = null;
         if(this.§"""§)
         {
            _loc2_ = this.§"""§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§"""§[_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.§&"+§)
                  {
                     this.§"""§.splice(_loc2_,1);
                  }
                  else
                  {
                     _loc3_.§>x§(param1);
                  }
               }
               _loc2_--;
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc2_:String = null;
         var _loc1_:int = §#!,§.§&"5§.§]![§(§4!2§.§6"O§.§1!#§);
         if(_loc1_ <= 0)
         {
            §9"6§.§;!w§(§4!2§.§6"O§.§1!#§);
            return false;
         }
         §#!,§.§&"5§.usePowerup(§4!2§.§6"O§.§1!#§);
         this.§41§(§4!2§.§6"O§.§1!#§);
         _loc2_ = LevelManager.§ T§;
         §@q§.§5! §(§4!2§.§6"O§.§1!#§,_loc2_);
         return true;
      }
      
      public function §1"V§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§2"K§ >= 0 && this.§2"K§ < §^!Z§.§9y§)
         {
            _loc2_ = Math.sin(this.§2"K§ / §^!Z§.§9y§ * (Math.PI * §^!Z§.§var §) + this.§5u§);
            _loc3_ = _loc2_ * §^!Z§.§5!k§;
            _loc4_ = new b2Vec2(_loc3_,§?l§.§'h§.mLevelEngine.mWorld.§1_§().y);
            §?l§.§'h§.mLevelEngine.mWorld.§&!@§(_loc4_);
            ++this.§2"K§;
            this.§5X§();
         }
         else if(this.§2"K§ == §^!Z§.§9y§)
         {
            this.§2"K§ = -1;
            §?l§.§'h§.mLevelEngine.mWorld.§&!@§(new b2Vec2(0,§?l§.§'h§.mLevelEngine.mWorld.§1_§().y));
         }
         if(this.§#!§)
         {
            if(!this.§#!§.§2r§(§?l§.§'h§.camera,param1 * 1000))
            {
               this.§#!§ = null;
            }
         }
      }
      
      private function §5X§() : void
      {
         var _loc1_:Number = §?l§.§'h§.camera.§;!s§();
         var _loc2_:Number = §"l§.§8! § / §"l§.§@!>§;
         var _loc3_:Number = §"l§.§,",§ / §"l§.§@!>§;
         var _loc4_:Number = _loc1_ + (Math.random() - 0.5) * _loc2_;
         var _loc5_:§="@§ = §?l§.§'h§.particles as §="@§;
         if(this.§2"K§ % 2)
         {
            _loc5_.§="9§(_loc4_,§?l§.§'h§.§-!z§.§]2§);
         }
         _loc4_ = _loc1_ + (Math.random() - 0.5) * _loc2_;
         _loc5_.§;C§(_loc4_,§?l§.§'h§.§-!z§.§]2§ + Math.random() * _loc3_ / 20);
      }
      
      private function §3p§(param1:Function, param2:Boolean = true, param3:Number = 600) : void
      {
         if(this.§ ";§ != null)
         {
            this.§3k§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§ ";§ = param1;
            (§?l§.§5-§ as §4!`§).mouseEnabled = false;
            this.§-!r§ = param3;
            §?l§.§'h§.camera.§5"@§(!!param2 ? int(§"l§.§',§) : int(§"l§.§9!E§));
            this.§ A§(this.§ ";§);
         }
      }
      
      private function § A§(param1:Function) : void
      {
         var _loc2_:String = null;
         var _loc3_:§+"9§ = null;
         if(!§8y§.isOpen)
         {
            _loc2_ = null;
            switch(param1)
            {
               case this.§[]§:
                  _loc2_ = §4!2§.§`!4§.§1!#§;
                  break;
               case this.§?",§:
                  _loc2_ = §4!2§.§8"1§.§1!#§;
                  break;
               case this.§2!D§:
                  _loc2_ = §4!2§.§<"O§.§1!#§;
                  break;
               case this.§-!]§:
                  _loc2_ = §4!2§.§3"$§.§1!#§;
                  break;
               case this.§<""§:
                  _loc2_ = §4!2§.§-Y§.§1!#§;
                  break;
               case this.§0!Z§:
                  _loc2_ = §4!2§.§%!U§.§1!#§;
                  break;
               case this.§;!v§:
                  _loc2_ = §4!2§.§-Y§.§1!#§;
                  break;
               case this.§>"&§:
                  _loc2_ = §4!2§.§!! §.§1!#§;
            }
            _loc3_ = §%"S§.§!C§.§2!d§() as §+"9§;
            if(_loc3_ && _loc2_)
            {
               _loc3_.§>"X§.addEventListener(§7!n§.§?"?§,this.§&M§);
               _loc3_.§>"X§.addEventListener(§7!n§.§+F§,this.§5!M§);
               _loc3_.§>"X§.§ A§(_loc2_);
               if(_loc2_ != §4!2§.§-Y§.§1!#§)
               {
                  §@"M§.§3"C§("Powerup_Intro","ChannelPowerups");
               }
            }
         }
      }
      
      protected function §5!M§(param1:§7!n§) : void
      {
         if(param1.movieClip.name == "MovieClip_PowerUp_Wingman")
         {
         }
      }
      
      protected function §&M§(param1:§7!n§) : void
      {
         if(§%"S§.§!C§.§2!d§() as §+"9§)
         {
            (§%"S§.§!C§.§2!d§() as §+"9§).§>"X§.removeEventListener(§7!n§.§?"?§,this.§&M§);
         }
         if(param1.movieClip.name == "MovieClip_PowerUp_Wingman")
         {
            §@"M§.§3"C§("Bird_Wingman_Animation","ChannelWingman");
         }
      }
      
      private function §[]§() : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc1_:§3+§ = §?l§.§'h§.slingshot as §3+§;
         var _loc2_:§]D§ = _loc1_.§9!L§[_loc1_.§<"§] as §]D§;
         _loc2_.§;"F§ = true;
         var _loc3_:Number = §^!Z§.§]"-§;
         switch(_loc2_.name)
         {
            case "BIRD_BLACK":
               _loc3_ = §^!Z§.§?"8§;
               break;
            case "BIRD_BLUE":
               _loc3_ = §^!Z§.§1R§;
               break;
            case "BIRD_GREEN":
               _loc3_ = §^!Z§.§&"1§;
               break;
            case "BIRD_WHITE":
               _loc3_ = §^!Z§.§"7§;
               break;
            case "BIRD_YELLOW":
               _loc3_ = §^!Z§.§,=§;
               break;
            case "BIRD_RED":
               _loc3_ = §^!Z§.§+!V§;
               break;
            case "BIRD_ORANGE":
               _loc3_ = §^!Z§.§44§;
               break;
            case "BIRD_VANTERRENCE":
               _loc3_ = §^!Z§.§21§;
               break;
            case "BIRD_RED_BIG":
               _loc3_ = §^!Z§.§9!o§;
               break;
            case "BIRD_WINGMAN":
               _loc3_ = §^!Z§.§;"N§;
         }
         §@"M§.§3"C§("Powerup_Superseed","ChannelPowerups");
         _loc1_.§;!q§(_loc3_);
         var _loc4_:Vector.<§ !X§>;
         if((_loc4_ = _loc1_.§9!L§).length > 0)
         {
            _loc5_ = 5 + Math.random() * 10;
            _loc6_ = 8;
            _loc7_ = 1;
            _loc8_ = 0;
            while(_loc8_ < _loc5_)
            {
               _loc9_ = Math.random() * (Math.PI * 2);
               _loc10_ = 0.5 * _loc6_ + _loc6_ * (Math.random() * 0.5);
               if((_loc11_ = _loc4_[0].name) == "BIRD_WINGMAN")
               {
                  _loc11_ = "BIRD_RED";
               }
               §?l§.§'h§.particles.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.§4!K§,_loc1_.§7!#§,1250,"",§0i§.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
               _loc8_++;
            }
         }
         if(_loc4_.length > 0)
         {
            §2"L§.§"x§(_loc1_.§4!K§,_loc1_.§7!#§,10,5,15);
            _loc1_.§=a§(_loc1_.§4!K§,_loc1_.§7!#§);
         }
      }
      
      private function §2!D§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         §@"M§.§3"C§("Powerup_SuperSlingshot","ChannelPowerups");
         (§?l§.§'h§.slingshot as §3+§).§"T§();
         var _loc1_:Vector.<§ !X§> = §?l§.§'h§.slingshot.§9!L§;
         if(_loc1_.length > 0)
         {
            _loc2_ = 50 + Math.random() * 5;
            _loc3_ = 8;
            _loc4_ = 1;
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = Math.random() * (Math.PI * 2);
               _loc7_ = 0.2 * _loc3_ + _loc3_ * (Math.random() * 0.8);
               §?l§.§'h§.particles.§"!J§(§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,§?l§.§'h§.slingshot.§4!K§,§?l§.§'h§.slingshot.§7!#§ + Math.random() * 6,1250 + Math.random() * 500,"",§0i§.§2!&§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §-!]§() : void
      {
         §@"M§.§3"C§("Menu_Confirm","ChannelPowerups");
         this.§0"=§ = true;
         (§?l§.§'h§.slingshot as §3+§).§6"G§();
      }
      
      private function §0!Z§() : void
      {
         var _loc8_:§[!8§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§=!D§ = null;
         var _loc1_:Point = this.§%V§.§'"R§();
         _loc1_ = §?l§.§'h§.screenToBox2D(_loc1_.x,_loc1_.y);
         this.§?"-§ = §@"M§.§3"C§("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var _loc2_:Number = (§?l§.§'h§.camera as §=H§).§"!4§() + §^!Z§.§2!b§ / 2;
         var _loc3_:Number = (§?l§.§'h§.camera as §=H§).§@"A§() + §^!Z§.§2!b§ / 2;
         var _loc4_:Number = §?l§.§'h§.screenToBox2D(0,0).y;
         var _loc5_:Number = §?l§.§'h§.camera.§=#§ < _loc4_ ? Number(§?l§.§'h§.camera.§=#§) : Number(_loc4_);
         var _loc6_:Vector.<§[!8§> = (§?l§.§'h§.§?x§ as §]"'§).§+!T§(3);
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
               _loc9_ = _loc8_.§?!l§ + (Math.random() * §^!Z§.§2!b§ - §^!Z§.§2!b§ / 2);
            }
            _loc11_ = this.§'i§().§[[§(_loc9_,_loc10_,0);
            this.§"""§[_loc7_] = _loc11_;
            _loc7_++;
         }
      }
      
      private function §?",§() : void
      {
         var _loc3_:§[!8§ = null;
         this.§%V§.§6!#§(Math.round(1000 * §-!5§.§-"V§ * §^!Z§.§9y§));
         §@"M§.§3"C§("Powerup_Earthquake","ChannelPowerups");
         this.§2"K§ = 0;
         this.§5u§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §?l§.§'h§.objects.§57§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §?l§.§'h§.objects.§,!§(_loc2_);
            if(_loc3_ is §>o§ || _loc3_ is §true §)
            {
               _loc3_.getBody().SetAwake(true);
               if(_loc3_ is §true §)
               {
                  (_loc3_ as §true §).§7!;§();
               }
            }
            _loc2_++;
         }
         this.§#!§ = new §`!o§(§^!Z§.§%C§,§^!Z§.§#!J§);
         §?l§.§'h§.§<;§();
      }
      
      private function §<""§() : void
      {
         var _loc3_:§ !X§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§&=§ = §?l§.§'h§.slingshot;
         if(_loc1_.§9!L§.length > 0)
         {
            _loc3_ = _loc1_.§9!L§[_loc1_.§<"§];
            _loc4_ = _loc3_.§[q§;
            if(_loc3_)
            {
               if((_loc5_ = _loc1_.§4!K§ - _loc3_.§[q§) < 1.5 && _loc5_ > 0)
               {
                  _loc4_ = _loc1_.§4!K§ - 1.5;
               }
               _loc3_.§,";§();
               this.§2!i§ = (_loc3_ as §]D§).§<"N§(_loc4_,_loc3_.§%R§);
            }
         }
         var _loc2_:§ !X§ = §?l§.§'h§.slingshot.§<-§("BIRD_CHRISTMAS",_loc1_.§4!K§ + 0.7,_loc1_.§7!#§ + 0.1,0);
         §@"M§.§3"C§("Sound_Santa_Bomb_Bird_Arrival");
         (§?l§.§'h§.getController() as §4!`§).§=!q§();
      }
      
      private function §;!v§() : void
      {
         var _loc1_:§3+§ = §?l§.§'h§.slingshot as §3+§;
         if(_loc1_.§&"F§())
         {
            this.§[]§();
         }
      }
      
      private function §'i§() : §]"'§
      {
         return §?l§.§'h§.§?x§ as §]"'§;
      }
      
      public function usePowerup(param1:String) : Boolean
      {
         switch(param1)
         {
            case §4!2§.§`!4§.§1!#§:
               this.§3p§(this.§[]§,false);
               break;
            case §4!2§.§<"O§.§1!#§:
               this.§3p§(this.§2!D§,false);
               break;
            case §4!2§.§3"$§.§1!#§:
               this.§3p§(this.§-!]§,false);
               break;
            case §4!2§.§8"1§.§1!#§:
               this.§3p§(this.§?",§,true);
               break;
            case §4!2§.§%!U§.§1!#§:
               this.§3p§(this.§0!Z§,true);
               break;
            case §4!2§.§-Y§.§1!#§:
               this.§3p§(this.§;!v§,false);
               break;
            case §4!2§.§!! §.§1!#§:
               this.§3p§(this.§>"&§,true);
         }
         this.§-!&§(param1);
         this.§41§(param1);
         §#!,§.§&"5§.usePowerup(param1);
         (§?l§.§'h§ as §%6§).usePowerup(param1);
         var _loc2_:String = LevelManager.§ T§;
         §@q§.§5! §(param1,_loc2_);
         return true;
      }
      
      private function §>"&§() : void
      {
         this.§%V§.§6!#§(Math.round(3000 * §-!5§.§-"V§ * §^!Z§.§9y§));
         (§?l§.§'h§.§?x§ as §]"'§).§%u§();
      }
      
      public function §41§(param1:String) : void
      {
         var _loc2_:Array = (§?l§.§'h§ as §%6§).§'!>§();
         var _loc3_:§3d§ = new §3d§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§'4§ = new §'4§(param1,_loc2_,_loc3_);
         if(this.§5"#§ != null)
         {
            this.§?!1§.push(_loc4_);
         }
         else
         {
            this.§<H§(_loc4_);
         }
      }
      
      protected function §<H§(param1:§'4§) : void
      {
         var _loc2_:String = LevelManager.§ T§;
         var _loc3_:String = §!J§.§;6§(_loc2_);
         var _loc4_:int;
         if((_loc4_ = §3!R§.§&"5§.§8I§.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§3!R§.§&"5§.§5K§(_loc2_));
         }
         var _loc6_:String = !!(_loc5_ = LevelManager.§5!T§(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:String = AngryBirdsFP11.§?8§ + "/useitem/" + param1.§3!V§ + "/" + LevelManager.§ T§ + "/" + _loc6_ + "/" + _loc3_ + "/" + §+"9§.§%?§ + "/" + escape(JSON.stringify(param1.§-c§));
         var _loc8_:URLRequest = §9!7§.§,!l§(_loc7_);
         this.§5"#§ = param1;
         this.§ !Y§(param1.§;"5§);
         param1.§;"5§.load(_loc8_);
      }
      
      protected function § !Y§(param1:URLLoader) : void
      {
         this.§`"8§(param1);
         param1.addEventListener(Event.COMPLETE,this.§[!j§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§'!9§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!9§);
         param1.addEventListener(§9G§.§33§,this.§'!9§);
      }
      
      protected function §`"8§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§[!j§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!9§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'!9§);
         param1.removeEventListener(§9G§.§33§,this.§'!9§);
      }
      
      protected function §[!j§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         var request:§'4§ = this.§5"#§;
         this.§`"8§(request.§;"5§);
         this.§5"#§ = null;
         var allowed:Boolean = false;
         try
         {
            response = JSON.parse(request.§;"5§.data);
            if(response.updatedItems)
            {
               §#!,§.§&"5§.§6"M§(response.updatedItems);
            }
            if(response.allowed && response.playSessionToken != §+"9§.§%?§)
            {
               §+"9§.§%?§ = response.playSessionToken;
               allowed = true;
            }
            else
            {
               §9"6§.§>_§();
            }
         }
         catch(e:Error)
         {
            allowed = false;
         }
         this.§]r§(allowed);
      }
      
      protected function §'!9§(param1:Event) : void
      {
         var _loc2_:§'4§ = this.§5"#§;
         this.§`"8§(_loc2_.§;"5§);
         this.§5"#§ = null;
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            this.§]r§(false);
         }
      }
      
      protected function §]r§(param1:Boolean) : void
      {
         var _loc2_:§'4§ = null;
         if(!param1)
         {
            §9"6§.§#!o§();
         }
         if(this.§?!1§.length > 0)
         {
            _loc2_ = this.§?!1§.shift();
            this.§<H§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §each §() : Boolean
      {
         return this.§5"#§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§%V§)
         {
            this.§%V§.mouseEnabled = true;
         }
         this.§2"K§ = -1;
         this.§3!i§ = -1;
         this.§-!r§ = -1;
         this.§#!§ = null;
         this.§<U§ = null;
         this.§ ";§ = null;
         this.§3k§ = [];
         if(this.§?"-§)
         {
            this.§?"-§.stop();
            this.§?"-§ = null;
         }
      }
      
      public function §]W§() : void
      {
         if(this.§2!i§)
         {
            this.§2!i§.§7!d§();
            this.§2!i§ = null;
         }
         if(this.§%""§)
         {
            this.§%""§.§7!d§();
            this.§%""§ = null;
         }
      }
      
      public function §+"#§(param1:String) : Boolean
      {
         return this.§9b§ && this.§9b§.indexOf(param1) > -1;
      }
      
      public function §'k§() : void
      {
         this.§9b§ = null;
      }
      
      private function §-!&§(param1:String) : void
      {
         if(!this.§9b§)
         {
            this.§9b§ = new Array();
         }
         this.§9b§[this.§9b§.length] = param1;
      }
      
      public function get §0-§() : Boolean
      {
         return this.§["0§;
      }
      
      public function set §0-§(param1:Boolean) : void
      {
         this.§["0§ = param1;
      }
   }
}
