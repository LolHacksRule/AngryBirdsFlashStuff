package §3!7§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import § each§.§>v§;
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#]§.b2Vec2;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §3![§.§^"1§;
   import §6!B§.§,!p§;
   import §6!B§.§>!E§;
   import §7"@§.§2!e§;
   import §7-§.§,!C§;
   import §8!v§.§"m§;
   import §9"!§.§+Z§;
   import §9"!§.§2K§;
   import §9"!§.§2a§;
   import §9"!§.§4!`§;
   import §9"!§.§4"F§;
   import §9"!§.§;!M§;
   import §9"!§.§;x§;
   import §9"!§.§>"7§;
   import §9"!§.§`7§;
   import §9"%§.§&!9§;
   import §9"%§.§&!g§;
   import §9"%§.§&!r§;
   import §9"%§.§1!Q§;
   import §9"%§.§="$§;
   import §<a§.§+!B§;
   import §[!"§.§&0§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   import §^j§.§7>§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §#A§ extends EventDispatcher
   {
       
      
      private var §,?§:§+Z§;
      
      private var §9!D§:Boolean = false;
      
      private var §^!m§:§;x§;
      
      private var §5!Z§:int = -1;
      
      private var §0"%§:Number;
      
      private var §]!$§:Function;
      
      private var §&=§:Array;
      
      private var §9r§:Number = -1;
      
      private var §,]§:§&!9§;
      
      private var §"!h§:Number = -1;
      
      private var §<"§:§,!p§;
      
      private var §&$§:§"m§ = null;
      
      private var §,!i§:Vector.<§^d§>;
      
      private var §;$§:§^d§;
      
      private var §,!c§:§7>§;
      
      public function §#A§()
      {
         this.§&=§ = [];
         this.§,!i§ = new Vector.<§^d§>();
         super();
      }
      
      public function get §"b§() : int
      {
         return this.§,!i§.length;
      }
      
      public function init() : void
      {
         this.§5!Z§ = -1;
         this.§9r§ = -1;
         this.§^!m§ = null;
         this.§"!h§ = -1;
         this.§,]§ = null;
         this.§]!$§ = null;
         this.§&=§ = [];
         this.§,!c§.mouseEnabled = true;
         this.§,?§ = new §+Z§(§#6§.§6!z§.mLevelEngine.mWorld.§0u§().y);
      }
      
      public function reset() : void
      {
         while(this.§,!i§.length > 0)
         {
            this.§,!i§.shift();
         }
         if(this.§;$§)
         {
            this.§<!Z§(this.§;$§.§1!e§);
            try
            {
               this.§;$§.§1!e§.close();
            }
            catch(e:Error)
            {
            }
            this.§;$§ = null;
         }
      }
      
      public function setController(param1:§7>§) : void
      {
         if(this.§,!c§ == param1)
         {
            return;
         }
         if(!this.§,!c§)
         {
         }
         this.§,!c§ = param1;
         this.init();
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(!this.§,!c§)
         {
            return;
         }
         this.§9!`§(param1);
         this.§>!!§(param1);
         if(this.§9r§ > 0)
         {
            this.§9r§ -= param1;
            if(this.§9r§ <= 0)
            {
               this.§]!$§();
               this.§]!$§ = null;
               (§#6§.§'" § as §^"1§).mouseEnabled = true;
               if(this.§&=§.length > 0)
               {
                  _loc2_ = this.§&=§.shift();
                  this.§,"F§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function §>!!§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Point = §#6§.§6!z§.slingshot.§<!x§();
         if(this.§,?§.enabled && _loc2_ != null && §#6§.§6!z§.slingshot.mDragging)
         {
            _loc3_ = -Math.cos(§#6§.§6!z§.slingshot.§2!C§ / (180 / Math.PI));
            _loc4_ = Math.sin(§#6§.§6!z§.slingshot.§2!C§ / (180 / Math.PI));
            this.§,?§.§2q§(_loc2_,new Point(_loc3_,_loc4_),§#6§.§6!z§.slingshot.getLaunchSpeed());
            if(!this.§9!D§)
            {
               this.§9!D§ = true;
               §>!E§.§7N§("Powerup_Laser_Sight","ChannelPowerups");
            }
         }
         else
         {
            this.§,?§.hide();
            this.§9!D§ = false;
         }
      }
      
      protected function §9!`§(param1:Number) : void
      {
         if(this.§,]§)
         {
            if(this.§,]§.§@4§)
            {
               this.§,]§ = null;
               this.§"!h§ = -1;
            }
            else
            {
               this.§,]§.§9!`§(param1);
               if(this.§,]§.§4!7§)
               {
                  if(this.§"!h§ > 0)
                  {
                     if(!this.§,]§.§=!y§() || !this.§,]§.§=!y§().IsActive())
                     {
                        this.§"!h§ = -1;
                        this.§,]§ = null;
                     }
                     else
                     {
                        this.§"!h§ -= param1;
                        if(this.§"!h§ <= 0)
                        {
                           this.§`!Y§();
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc1_:int = §?!F§.§;"§.§!!y§(§>,§.§^t§.§]6§);
         if(_loc1_ <= 0)
         {
            _loc2_ = §>,§.§^t§.§]6§;
            if(!§>v§.§@",§)
            {
               §>v§.§ !y§(_loc2_);
            }
            else
            {
               for each(_loc3_ in §>v§.§@",§)
               {
                  if(_loc3_.id == _loc2_)
                  {
                     §%?§.§6!x§(_loc3_);
                  }
               }
            }
            return false;
         }
         §?!F§.§;"§.§ !2§(§>,§.§^t§.§]6§);
         this.§?K§(§>,§.§^t§.§]6§);
         _loc4_ = LevelManager.§'!O§;
         §+!B§.§@§(§>,§.§^t§.§]6§,_loc4_);
         return true;
      }
      
      private function §0"7§(param1:MouseEvent) : void
      {
         param1.preventDefault();
         this.§`!Y§();
      }
      
      private function §`!Y§() : void
      {
         if(this.§<"§)
         {
            this.§<"§.stop();
            this.§<"§ = null;
         }
         §>!E§.§7N§("Powerup_Bomb_Bang","ChannelPowerups");
         §#6§.§6!z§.§<f§.§-!,§(this.§,]§,false,true,true);
         this.§"!h§ = -1;
         this.§,!c§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0"7§);
      }
      
      public function §2c§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§5!Z§ >= 0 && this.§5!Z§ < §4"F§.§1"#§)
         {
            _loc2_ = Math.sin(this.§5!Z§ / §4"F§.§1"#§ * (Math.PI * §4"F§.§0"3§) + this.§0"%§);
            _loc3_ = _loc2_ * §4"F§.§-y§;
            _loc4_ = new b2Vec2(_loc3_,§#6§.§6!z§.mLevelEngine.mWorld.§0u§().y);
            §#6§.§6!z§.mLevelEngine.mWorld.§%$§(_loc4_);
            ++this.§5!Z§;
         }
         else if(this.§5!Z§ == §4"F§.§1"#§)
         {
            this.§5!Z§ = -1;
            §#6§.§6!z§.mLevelEngine.mWorld.§%$§(new b2Vec2(0,§#6§.§6!z§.mLevelEngine.mWorld.§0u§().y));
         }
         if(this.§^!m§)
         {
            if(!this.§^!m§.§@1§(§#6§.§6!z§.camera,param1 * 1000))
            {
               this.§^!m§ = null;
            }
         }
      }
      
      private function §,"F§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§]!$§ != null)
         {
            this.§&=§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§]!$§ = param1;
            (§#6§.§'" § as §^"1§).mouseEnabled = false;
            this.§9r§ = §4"F§.§"!_§;
            §#6§.§6!z§.camera.§4"2§(!!param2 ? int(§&0§.§!!4§) : int(§&0§.§#!"§));
            §#6§.§6!z§.camera.§+!Z§ = !!param2 ? Number(§#6§.§6!z§.camera.§07§) : Number(§#6§.§6!z§.camera.§>E§);
         }
      }
      
      private function §"!?§() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc1_:§;!M§ = (§#6§.§6!z§.slingshot as §>"7§).§ L§[(§#6§.§6!z§.slingshot as §>"7§).§6!m§];
         var _loc2_:Number = §4"F§.§ "?§;
         switch(_loc1_.name)
         {
            case "BIRD_BLACK":
               _loc2_ = §4"F§.§3!>§;
               break;
            case "BIRD_BLUE":
               _loc2_ = §4"F§.§5d§;
               break;
            case "BIRD_GREEN":
               _loc2_ = §4"F§.§@!<§;
               break;
            case "BIRD_WHITE":
               _loc2_ = §4"F§.§#!9§;
               break;
            case "BIRD_YELLOW":
               _loc2_ = §4"F§.§6T§;
               break;
            case "BIRD_RED":
               _loc2_ = §4"F§.§4S§;
               break;
            case "BIRD_ORANGE":
               _loc2_ = §4"F§.§9!^§;
               break;
            case "BIRD_VANTERRENCE":
               _loc2_ = §4"F§.§=!B§;
         }
         §>!E§.§7N§("Powerup_Grow","ChannelPowerups");
         (§#6§.§6!z§.slingshot as §>"7§).§+!>§(_loc2_);
         var _loc3_:Vector.<§;!M§> = §#6§.§6!z§.slingshot.§ L§;
         if(_loc3_.length > 0)
         {
            _loc4_ = 5 + Math.random() * 10;
            _loc5_ = 8;
            _loc6_ = 1;
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc8_ = Math.random() * (Math.PI * 2);
               _loc9_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
               if((_loc10_ = _loc3_[0].name) == "BIRD_VANTERRENCE")
               {
                  _loc10_ = "BIRD_RED";
               }
               §#6§.§6!z§.particles.§;!u§(§'G§.§`!O§,§^!f§.§>"F§,§'G§.§+";§,§#6§.§6!z§.slingshot.§,!k§,§#6§.§6!z§.slingshot.§!Q§,1250,"",§'G§.§,">§(_loc10_),_loc9_ * Math.cos(_loc8_) * _loc6_,-_loc9_ * Math.sin(_loc8_) * _loc6_,5,_loc9_ * 20,Math.sqrt(_loc6_));
               _loc7_++;
            }
         }
      }
      
      private function §?!§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         §>!E§.§7N§("Wood_Destroyed1","ChannelPowerups");
         (§#6§.§6!z§.slingshot as §>"7§).§!!2§();
         var _loc1_:Vector.<§;!M§> = §#6§.§6!z§.slingshot.§ L§;
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
               §#6§.§6!z§.particles.§;!u§(§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,§#6§.§6!z§.slingshot.§,!k§,§#6§.§6!z§.slingshot.§!Q§ + Math.random() * 6,1250 + Math.random() * 500,"",§'G§.§3!k§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §'!z§() : void
      {
         §>!E§.§7N§("Menu_Confirm","ChannelPowerups");
         this.§,?§.enabled = !this.§,?§.enabled;
      }
      
      private function §9d§() : void
      {
         var _loc1_:Point = this.§,!c§.§"!J§();
         _loc1_ = §#6§.§6!z§.screenToBox2D(_loc1_.x,_loc1_.y);
         var _loc2_:§&!r§ = §#6§.§6!z§.§<f§.§;R§();
         if(_loc2_ == null)
         {
            return;
         }
         this.§<"§ = §>!E§.§7N§("Powerup_Bomb_Fuse","ChannelPowerups");
         var _loc3_:Number = _loc2_.§`!n§ + (Math.random() - 0.5) * §4"F§.§1U§;
         var _loc4_:Number = §#6§.§6!z§.camera.§<p§;
         this.§,]§ = this.§7?§().§?!6§(_loc3_,_loc4_,0);
         this.§,]§.§"!`§ = true;
         this.§"!h§ = §4"F§.§05§ * 1000;
         this.§,!c§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0"7§);
      }
      
      private function §^!@§() : void
      {
         var _loc3_:§&!r§ = null;
         this.§,!c§.§'"8§(Math.round(1000 * §4!`§.§%!E§ * §4"F§.§1"#§));
         §>!E§.§7N§("Powerup_Earthquake","ChannelPowerups");
         this.§5!Z§ = 0;
         this.§0"%§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §#6§.§6!z§.objects.§'1§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §#6§.§6!z§.objects.§!!A§(_loc2_);
            if(_loc3_ is §&!g§ || _loc3_ is §="$§)
            {
               _loc3_.§=!y§().SetAwake(true);
               if(_loc3_ is §="$§)
               {
                  (_loc3_ as §="$§).§4!B§();
               }
            }
            _loc2_++;
         }
         this.§^!m§ = new §;x§(§4"F§.§ =§,§4"F§.§`"E§);
      }
      
      private function §9"2§() : void
      {
         var _loc3_:§;!M§ = null;
         var _loc1_:§2a§ = §#6§.§6!z§.slingshot;
         if(_loc1_.§ L§.length > 0)
         {
            _loc3_ = _loc1_.§ L§[_loc1_.§6!m§];
            if(_loc1_.§ L§.length <= 1 && _loc3_)
            {
               this.§&$§ = (_loc3_ as §`7§).§4!]§(_loc3_.§1!s§,_loc3_.§@!v§,false);
            }
            else if(_loc3_)
            {
               _loc3_.§'!5§();
               this.§&$§ = (_loc3_ as §`7§).§4!]§(_loc3_.§1!s§,_loc3_.§@!v§);
            }
         }
         var _loc2_:§;!M§ = §#6§.§6!z§.slingshot.§=M§("BIRD_VANTERRENCE",_loc1_.§,!k§ + 0.7,_loc1_.§!Q§ + 0.1);
         §>!E§.§7N§("Extra_Bird_powerup");
         (§#6§.§6!z§.§%!B§() as §^"1§).§-6§();
         §#6§.§6!z§.particles.§4!P§("HALLOWEEN_ZOMBIE_SMOKE",§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,_loc2_.x,_loc2_.y,500,"",0,0,0,0,0,2,12,false);
         §#6§.§6!z§.particles.§4!P§("HALLOWEEN_EXTRABIRD_SPARKLE",§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,_loc2_.x,_loc2_.y,500,"",0,0,0,0,0,2,20,false);
      }
      
      private function §7?§() : §1!Q§
      {
         return §#6§.§6!z§.§<f§ as §1!Q§;
      }
      
      public function § !2§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §>,§.§^Q§.§]6§:
               this.§,"F§(this.§"!?§,false);
               break;
            case §>,§.§7!C§.§]6§:
               this.§,"F§(this.§?!§,false);
               break;
            case §>,§.§%!X§.§]6§:
               this.§,"F§(this.§'!z§,true);
               break;
            case §>,§.§&m§.§]6§:
               this.§,"F§(this.§^!@§,true);
               break;
            case §>,§.§," §.§]6§:
               this.§,"F§(this.§9"2§,false);
         }
         this.§?K§(param1);
         §?!F§.§;"§.§ !2§(param1);
         (§#6§.§6!z§ as §2K§).§ !2§(param1);
         var _loc2_:String = LevelManager.§'!O§;
         §+!B§.§@§(param1,_loc2_);
         return true;
      }
      
      public function §?K§(param1:String) : void
      {
         var _loc2_:Array = (§#6§.§6!z§ as §2K§).§[v§();
         var _loc3_:§0]§ = new §0]§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§^d§ = new §^d§(param1,_loc2_,_loc3_);
         if(this.§;$§ != null)
         {
            this.§,!i§.push(_loc4_);
         }
         else
         {
            this.§[!J§(_loc4_);
         }
      }
      
      protected function §[!J§(param1:§^d§) : void
      {
         var _loc2_:String = LevelManager.§'!O§;
         var _loc3_:String = § <§.§2!V§(_loc2_);
         var _loc4_:int;
         if((_loc4_ = §,!C§.§;"§.§-&§.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§,!C§.§;"§.§8!z§(_loc2_));
         }
         var _loc5_:§>x§;
         var _loc6_:String = !!(_loc5_ = LevelManager.§^_§(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:String = AngryBirdsFP11.§76§ + "/useitem/" + param1.§6!$§ + "/" + LevelManager.§'!O§ + "/" + _loc6_ + "/" + _loc3_ + "/" + §2!e§.§#!W§ + "/" + escape(JSON.stringify(param1.§#"A§));
         var _loc8_:URLRequest = §-!l§.§%""§(_loc7_);
         this.§;$§ = param1;
         this.§+!E§(param1.§1!e§);
         param1.§1!e§.load(_loc8_);
      }
      
      protected function §+!E§(param1:URLLoader) : void
      {
         this.§<!Z§(param1);
         param1.addEventListener(Event.COMPLETE,this.§#!4§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§-!u§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!u§);
         param1.addEventListener(§+!D§.§25§,this.§-!u§);
      }
      
      protected function §<!Z§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§#!4§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!u§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!u§);
         param1.removeEventListener(§+!D§.§25§,this.§-!u§);
      }
      
      protected function §#!4§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         var request:§^d§ = this.§;$§;
         this.§<!Z§(request.§1!e§);
         this.§;$§ = null;
         var allowed:Boolean = false;
         try
         {
            response = JSON.parse(request.§1!e§.data);
            if(response.allowed && response.playSessionToken != §2!e§.§#!W§)
            {
               §2!e§.§#!W§ = response.playSessionToken;
               allowed = true;
            }
            else
            {
               §%?§.§6!7§();
            }
         }
         catch(e:Error)
         {
            allowed = false;
         }
         this.§<!R§(allowed);
      }
      
      protected function §-!u§(param1:Event) : void
      {
         var _loc2_:§^d§ = this.§;$§;
         this.§<!Z§(_loc2_.§1!e§);
         this.§;$§ = null;
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            this.§<!R§(false);
         }
      }
      
      protected function §<!R§(param1:Boolean) : void
      {
         var _loc2_:§^d§ = null;
         if(!param1)
         {
            §%?§.§4!>§();
         }
         if(this.§,!i§.length > 0)
         {
            _loc2_ = this.§,!i§.shift();
            this.§[!J§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §6I§() : Boolean
      {
         return this.§;$§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§,!c§)
         {
            this.§,!c§.mouseEnabled = true;
            this.§,!c§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0"7§);
         }
         this.§5!Z§ = -1;
         this.§"!h§ = -1;
         this.§9r§ = -1;
         this.§^!m§ = null;
         this.§,]§ = null;
         this.§]!$§ = null;
         this.§&=§ = [];
         if(this.§<"§)
         {
            this.§<"§.stop();
            this.§<"§ = null;
         }
      }
      
      public function §<!2§() : void
      {
         if(this.§&$§)
         {
            this.§&$§.§?"3§();
            this.§&$§ = null;
         }
      }
   }
}
