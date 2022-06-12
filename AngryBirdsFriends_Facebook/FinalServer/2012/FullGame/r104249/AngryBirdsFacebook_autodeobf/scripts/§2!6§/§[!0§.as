package §2!6§
{
   import §%!'§.§"!e§;
   import §&!"§.§5"§;
   import §&!"§.§8D§;
   import §&!"§.§`B§;
   import §0!2§.§+!T§;
   import §0!2§.§,!W§;
   import §0!2§.§2"+§;
   import §0!2§.§2"=§;
   import §0!2§.§3`§;
   import §0!2§.§3t§;
   import §0!2§.§4!u§;
   import §0!2§.§9!F§;
   import §0!2§.§;M§;
   import §2E§.§!"&§;
   import §2X§.§[!@§;
   import §3!#§.§!!k§;
   import §3!#§.§5"A§;
   import §3!#§.§<!g§;
   import §3!#§.§>!Z§;
   import §3!#§.§?!s§;
   import §3!#§.§^!^§;
   import §5!G§.§&2§;
   import §70§.§^!>§;
   import §7F§.b2Vec2;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §9"=§.§5>§;
   import §<9§.§ ">§;
   import §>s§.§+m§;
   import §>s§.§9!u§;
   import §@",§.§-!V§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import §^!o§.§=1§;
   import §`!n§.§-[§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import §`u§.§4]§;
   import §`u§.§5!-§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §[!0§ extends EventDispatcher
   {
       
      
      private var §+J§:§2"+§;
      
      private var §'L§:Boolean = false;
      
      private var §`"9§:§4!u§;
      
      private var §9!#§:int = -1;
      
      private var §?!o§:Number;
      
      private var §8g§:Function;
      
      private var §]!§:Array;
      
      private var §"r§:Number = -1;
      
      private var §-N§:§>!Z§;
      
      private var §+!k§:Number = -1;
      
      private var §#?§:§9!u§;
      
      private var §3"L§:Vector.<§>!Z§>;
      
      private var §3!j§:§!"&§ = null;
      
      private var §>5§:Vector.<§`J§>;
      
      private var §^!s§:§`J§;
      
      private var §1!B§:§[!@§;
      
      private var § !%§:Array;
      
      public function §[!0§()
      {
         this.§]!§ = [];
         this.§>5§ = new Vector.<§`J§>();
         super();
      }
      
      public function get §[V§() : int
      {
         return this.§>5§.length;
      }
      
      public function init() : void
      {
         this.§9!#§ = -1;
         this.§"r§ = -1;
         this.§`"9§ = null;
         this.§+!k§ = -1;
         this.§-N§ = null;
         this.§8g§ = null;
         this.§]!§ = [];
         this.§1!B§.mouseEnabled = true;
         this.§3"L§ = new Vector.<§>!Z§>();
         this.§+J§ = new §2"+§();
      }
      
      public function reset() : void
      {
         while(this.§>5§.length > 0)
         {
            this.§>5§.shift();
         }
         if(this.§^!s§)
         {
            this.§@!b§(this.§^!s§.§?"9§);
            try
            {
               this.§^!s§.§?"9§.close();
            }
            catch(e:Error)
            {
            }
            this.§^!s§ = null;
         }
      }
      
      public function setController(param1:§[!@§) : void
      {
         if(this.§1!B§ == param1)
         {
            return;
         }
         if(!this.§1!B§)
         {
         }
         this.§1!B§ = param1;
         this.init();
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(!this.§1!B§)
         {
            return;
         }
         this.§8"2§(param1);
         this.§4!o§(param1);
         if(this.§"r§ > 0)
         {
            this.§"r§ -= param1;
            if(this.§"r§ <= 0)
            {
               this.§8g§();
               this.§8g§ = null;
               (§&2§.§,!x§ as §^!>§).mouseEnabled = true;
               if(this.§]!§.length > 0)
               {
                  _loc2_ = this.§]!§.shift();
                  this.§&!k§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function §4!o§(param1:Number) : void
      {
         var _loc2_:Point = null;
         var _loc3_:§,!W§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§'L§)
         {
            _loc2_ = §&2§.§],§.slingshot.§!%§();
            _loc3_ = §&2§.§],§.slingshot;
            if(_loc2_ != null && _loc3_.mDragging)
            {
               _loc4_ = -Math.cos(_loc3_.§!"@§ / (180 / Math.PI));
               _loc5_ = Math.sin(_loc3_.§!"@§ / (180 / Math.PI));
               this.§+J§.§@!F§(_loc2_,new Point(_loc4_,_loc5_),_loc3_.getLaunchSpeed());
               this.§+J§.enabled = true;
               §+m§.§]!N§("Powerup_Laser_Sight","ChannelPowerups");
            }
            else
            {
               this.§+J§.enabled = false;
            }
         }
      }
      
      protected function §8"2§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§>!Z§ = null;
         if(this.§3"L§)
         {
            _loc2_ = this.§3"L§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§3"L§[_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.§=!M§)
                  {
                     this.§3"L§.splice(_loc2_,1);
                  }
                  else
                  {
                     _loc3_.§8"2§(param1);
                  }
               }
               _loc2_--;
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc1_:int = §`"J§.§1[§.§'>§(§ !h§.§]W§.§5"5§);
         if(_loc1_ <= 0)
         {
            _loc2_ = § !h§.§]W§.§5"5§;
            if(!§ ">§.§%!b§)
            {
               § ">§.§[k§(_loc2_);
            }
            else
            {
               for each(_loc3_ in § ">§.§%!b§)
               {
                  if(_loc3_.id == _loc2_)
                  {
                     §`B§.§[D§(_loc3_);
                  }
               }
            }
            return false;
         }
         §`"J§.§1[§.§2'§(§ !h§.§]W§.§5"5§);
         this.§<m§(§ !h§.§]W§.§5"5§);
         _loc4_ = LevelManager.§`-§;
         §"!e§.§9w§(§ !h§.§]W§.§5"5§,_loc4_);
         return true;
      }
      
      public function §4d§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§9!#§ >= 0 && this.§9!#§ < §3`§.§2R§)
         {
            _loc2_ = Math.sin(this.§9!#§ / §3`§.§2R§ * (Math.PI * §3`§.§`"3§) + this.§?!o§);
            _loc3_ = _loc2_ * §3`§.§2!?§;
            _loc4_ = new b2Vec2(_loc3_,§&2§.§],§.mLevelEngine.mWorld.§">§().y);
            §&2§.§],§.mLevelEngine.mWorld.§1§(_loc4_);
            ++this.§9!#§;
            this.§%!?§();
         }
         else if(this.§9!#§ == §3`§.§2R§)
         {
            this.§9!#§ = -1;
            §&2§.§],§.mLevelEngine.mWorld.§1§(new b2Vec2(0,§&2§.§],§.mLevelEngine.mWorld.§">§().y));
         }
         if(this.§`"9§)
         {
            if(!this.§`"9§.§]!P§(§&2§.§],§.camera,param1 * 1000))
            {
               this.§`"9§ = null;
            }
         }
      }
      
      private function §%!?§() : void
      {
         var _loc1_:Number = §&2§.§],§.camera.§#I§();
         var _loc2_:Number = §5!-§.§@!7§ / §5!-§.§ m§;
         var _loc3_:Number = §5!-§.§[!r§ / §5!-§.§ m§;
         var _loc4_:Number = _loc1_ + (Math.random() - 0.5) * _loc2_;
         var _loc5_:§5>§ = §&2§.§],§.particles as §5>§;
         if(this.§9!#§ % 2)
         {
            _loc5_.§%"@§(_loc4_,§&2§.§],§.§>9§.§"p§);
         }
         _loc4_ = _loc1_ + (Math.random() - 0.5) * _loc2_;
         _loc5_.§+i§(_loc4_,§&2§.§],§.§>9§.§"p§ + Math.random() * _loc3_ / 20);
      }
      
      private function §&!k§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§8g§ != null)
         {
            this.§]!§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§8g§ = param1;
            (§&2§.§,!x§ as §^!>§).mouseEnabled = false;
            this.§"r§ = §3`§.§1q§;
            §&2§.§],§.camera.§"e§(!!param2 ? int(§5!-§.§-z§) : int(§5!-§.§%!U§));
            this.§["%§(this.§8g§);
         }
      }
      
      private function §["%§(param1:Function) : void
      {
         var _loc2_:String = null;
         var _loc3_:§-!V§ = null;
         if(!§8D§.isOpen)
         {
            _loc2_ = null;
            switch(param1)
            {
               case this.§<!C§:
                  _loc2_ = § !h§.§+!<§.§5"5§;
                  break;
               case this.§@,§:
                  _loc2_ = § !h§.§@"<§.§5"5§;
                  break;
               case this.§@!x§:
                  _loc2_ = § !h§.§]!^§.§5"5§;
                  break;
               case this.§^!R§:
                  _loc2_ = § !h§.§="'§.§5"5§;
                  break;
               case this.§'"&§:
                  _loc2_ = § !h§.§36§.§5"5§;
                  break;
               case this.§-!b§:
                  _loc2_ = § !h§.§+6§.§5"5§;
            }
            _loc3_ = §,"I§.§&q§.§6!k§() as §-!V§;
            if(_loc3_ && _loc2_)
            {
               _loc3_.§+L§.§["%§(_loc2_);
            }
         }
      }
      
      private function §<!C§() : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc1_:§3t§ = §&2§.§],§.slingshot as §3t§;
         var _loc2_:§;M§ = _loc1_.§1"&§[_loc1_.§24§];
         var _loc3_:Number = §3`§.§=l§;
         switch(_loc2_.name)
         {
            case "BIRD_BLACK":
               _loc3_ = §3`§.§"!8§;
               break;
            case "BIRD_BLUE":
               _loc3_ = §3`§.§]]§;
               break;
            case "BIRD_GREEN":
               _loc3_ = §3`§.§>!#§;
               break;
            case "BIRD_WHITE":
               _loc3_ = §3`§.§7f§;
               break;
            case "BIRD_YELLOW":
               _loc3_ = §3`§.§7<§;
               break;
            case "BIRD_RED":
               _loc3_ = §3`§.§06§;
               break;
            case "BIRD_ORANGE":
               _loc3_ = §3`§.§8$§;
               break;
            case "BIRD_VANTERRENCE":
               _loc3_ = §3`§.§^J§;
         }
         §+m§.§]!N§("Powerup_Grow","ChannelPowerups");
         _loc1_.§#"F§(_loc3_);
         var _loc4_:Vector.<§;M§>;
         if((_loc4_ = _loc1_.§1"&§).length > 0)
         {
            _loc5_ = 5 + Math.random() * 10;
            _loc6_ = 8;
            _loc7_ = 1;
            _loc8_ = 0;
            while(_loc8_ < _loc5_)
            {
               _loc9_ = Math.random() * (Math.PI * 2);
               _loc10_ = 0.5 * _loc6_ + _loc6_ * (Math.random() * 0.5);
               if((_loc11_ = _loc4_[0].name) == "BIRD_VANTERRENCE")
               {
                  _loc11_ = "BIRD_RED";
               }
               §&2§.§],§.particles.§`"6§(§4! §.§<2§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.§"""§,_loc1_.§5!J§,1250,"",§4! §.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
               _loc8_++;
            }
         }
         if(_loc4_.length > 0)
         {
            §!!k§.§^!%§(_loc1_.§"""§,_loc1_.§5!J§,10,5,15);
            _loc1_.§`!u§(_loc1_.§"""§,_loc1_.§5!J§);
         }
      }
      
      private function §@!x§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         §+m§.§]!N§("Wood_Destroyed1","ChannelPowerups");
         (§&2§.§],§.slingshot as §3t§).§3p§();
         var _loc1_:Vector.<§;M§> = §&2§.§],§.slingshot.§1"&§;
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
               §&2§.§],§.particles.§`"6§(§4! §.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,§&2§.§],§.slingshot.§"""§,§&2§.§],§.slingshot.§5!J§ + Math.random() * 6,1250 + Math.random() * 500,"",§4! §.§#!O§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §^!R§() : void
      {
         §+m§.§]!N§("Menu_Confirm","ChannelPowerups");
         this.§'L§ = true;
         (§&2§.§],§.slingshot as §3t§).§"D§();
      }
      
      private function §-!b§() : void
      {
         var _loc8_:§5"A§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§>!Z§ = null;
         var _loc1_:Point = this.§1!B§.§6!@§();
         _loc1_ = §&2§.§],§.screenToBox2D(_loc1_.x,_loc1_.y);
         this.§#?§ = §+m§.§]!N§("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var _loc2_:Number = (§&2§.§],§.camera as §4]§).§2!$§() + §3`§.§ ",§ / 2;
         var _loc3_:Number = (§&2§.§],§.camera as §4]§).§4!W§() + §3`§.§ ",§ / 2;
         var _loc4_:Number = §&2§.§],§.screenToBox2D(0,0).y;
         var _loc5_:Number = §&2§.§],§.camera.§!n§ < _loc4_ ? Number(§&2§.§],§.camera.§!n§) : Number(_loc4_);
         var _loc6_:Vector.<§5"A§> = (§&2§.§],§.§6X§ as §<!g§).§,!y§(3);
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
               _loc9_ = _loc8_.§'D§ + (Math.random() * §3`§.§ ",§ - §3`§.§ ",§ / 2);
            }
            _loc11_ = this.§?!4§().§;!4§(_loc9_,_loc10_,0);
            this.§3"L§[_loc7_] = _loc11_;
            _loc7_++;
         }
      }
      
      private function §@,§() : void
      {
         var _loc3_:§5"A§ = null;
         this.§1!B§.§#,§(Math.round(1000 * §+!T§.§1!5§ * §3`§.§2R§));
         §+m§.§]!N§("Powerup_Earthquake","ChannelPowerups");
         this.§9!#§ = 0;
         this.§?!o§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §&2§.§],§.objects.§<"C§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §&2§.§],§.objects.§ §(_loc2_);
            if(_loc3_ is §^!^§ || _loc3_ is §?!s§)
            {
               _loc3_.§`!y§().SetAwake(true);
               if(_loc3_ is §?!s§)
               {
                  (_loc3_ as §?!s§).§"!Q§();
               }
            }
            _loc2_++;
         }
         this.§`"9§ = new §4!u§(§3`§.§8!b§,§3`§.§7J§);
         §&2§.§],§.§6!3§();
      }
      
      private function §'"&§() : void
      {
         var _loc3_:§;M§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§,!W§ = §&2§.§],§.slingshot;
         if(_loc1_.§1"&§.length > 0)
         {
            _loc3_ = _loc1_.§1"&§[_loc1_.§24§];
            _loc4_ = _loc3_.§3"F§;
            if(_loc3_)
            {
               if((_loc5_ = _loc1_.§"""§ - _loc3_.§3"F§) < 1.5 && _loc5_ > 0)
               {
                  _loc4_ = _loc1_.§"""§ - 1.5;
               }
               _loc3_.§try §();
               this.§3!j§ = (_loc3_ as §2"=§).§;">§(_loc4_,_loc3_.§6&§);
            }
         }
         var _loc2_:§;M§ = §&2§.§],§.slingshot.§3!W§("BIRD_CHRISTMAS",_loc1_.§"""§ + 0.7,_loc1_.§5!J§ + 0.1,0);
         §+m§.§]!N§("Sound_Santa_Bomb_Bird_Arrival");
         (§&2§.§],§.§@4§() as §^!>§).§0!#§();
      }
      
      private function §?!4§() : §<!g§
      {
         return §&2§.§],§.§6X§ as §<!g§;
      }
      
      public function §2'§(param1:String) : Boolean
      {
         switch(param1)
         {
            case § !h§.§+!<§.§5"5§:
               this.§&!k§(this.§<!C§,false);
               break;
            case § !h§.§]!^§.§5"5§:
               this.§&!k§(this.§@!x§,false);
               break;
            case § !h§.§="'§.§5"5§:
               this.§&!k§(this.§^!R§,false);
               break;
            case § !h§.§@"<§.§5"5§:
               this.§&!k§(this.§@,§,true);
               break;
            case § !h§.§+6§.§5"5§:
               this.§&!k§(this.§-!b§,true);
               break;
            case § !h§.§36§.§5"5§:
               this.§&!k§(this.§'"&§,false);
         }
         this.§5!M§(param1);
         this.§<m§(param1);
         §`"J§.§1[§.§2'§(param1);
         (§&2§.§],§ as §9!F§).§2'§(param1);
         var _loc2_:String = LevelManager.§`-§;
         §"!e§.§9w§(param1,_loc2_);
         return true;
      }
      
      public function §<m§(param1:String) : void
      {
         var _loc2_:Array = (§&2§.§],§ as §9!F§).§;!A§();
         var _loc3_:§9!S§ = new §9!S§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§`J§ = new §`J§(param1,_loc2_,_loc3_);
         if(this.§^!s§ != null)
         {
            this.§>5§.push(_loc4_);
         }
         else
         {
            this.§#!c§(_loc4_);
         }
      }
      
      protected function §#!c§(param1:§`J§) : void
      {
         var _loc2_:String = LevelManager.§`-§;
         var _loc3_:String = §-[§.§8"4§(_loc2_);
         var _loc4_:int;
         if((_loc4_ = §=1§.§1[§.§;9§.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§=1§.§1[§.§7!B§(_loc2_));
         }
         var _loc5_:§=!-§;
         var _loc6_:String = !!(_loc5_ = LevelManager.§0"§(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:String = AngryBirdsFP11.§#"@§ + "/useitem/" + param1.§&"3§ + "/" + LevelManager.§`-§ + "/" + _loc6_ + "/" + _loc3_ + "/" + §-!V§.§#E§ + "/" + escape(JSON.stringify(param1.§4""§));
         var _loc8_:URLRequest = §?x§.§>t§(_loc7_);
         this.§^!s§ = param1;
         this.§2!i§(param1.§?"9§);
         param1.§?"9§.load(_loc8_);
      }
      
      protected function §2!i§(param1:URLLoader) : void
      {
         this.§@!b§(param1);
         param1.addEventListener(Event.COMPLETE,this.§9!k§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
         param1.addEventListener(§="B§.§2"B§,this.§6x§);
      }
      
      protected function §@!b§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§9!k§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§6x§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6x§);
         param1.removeEventListener(§="B§.§2"B§,this.§6x§);
      }
      
      protected function §9!k§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         var request:§`J§ = this.§^!s§;
         this.§@!b§(request.§?"9§);
         this.§^!s§ = null;
         var allowed:Boolean = false;
         try
         {
            response = JSON.parse(request.§?"9§.data);
            if(response.allowed && response.playSessionToken != §-!V§.§#E§)
            {
               §-!V§.§#E§ = response.playSessionToken;
               allowed = true;
            }
            else
            {
               §`B§.§#!i§();
            }
         }
         catch(e:Error)
         {
            allowed = false;
         }
         this.§ var§(allowed);
      }
      
      protected function §6x§(param1:Event) : void
      {
         var _loc2_:§`J§ = this.§^!s§;
         this.§@!b§(_loc2_.§?"9§);
         this.§^!s§ = null;
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            this.§ var§(false);
         }
      }
      
      protected function § var§(param1:Boolean) : void
      {
         var _loc2_:§`J§ = null;
         if(!param1)
         {
            §`B§.§-!§();
         }
         if(this.§>5§.length > 0)
         {
            _loc2_ = this.§>5§.shift();
            this.§#!c§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §@!o§() : Boolean
      {
         return this.§^!s§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§1!B§)
         {
            this.§1!B§.mouseEnabled = true;
         }
         this.§9!#§ = -1;
         this.§+!k§ = -1;
         this.§"r§ = -1;
         this.§`"9§ = null;
         this.§-N§ = null;
         this.§8g§ = null;
         this.§]!§ = [];
         if(this.§#?§)
         {
            this.§#?§.stop();
            this.§#?§ = null;
         }
      }
      
      public function §-h§() : void
      {
         if(this.§3!j§)
         {
            this.§3!j§.§7V§();
            this.§3!j§ = null;
         }
      }
      
      public function §%"L§(param1:String) : Boolean
      {
         return this.§ !%§ && this.§ !%§.indexOf(param1) > -1;
      }
      
      public function §;!U§() : void
      {
         this.§ !%§ = null;
      }
      
      private function §5!M§(param1:String) : void
      {
         if(!this.§ !%§)
         {
            this.§ !%§ = new Array();
         }
         this.§ !%§[this.§ !%§.length] = param1;
      }
   }
}
