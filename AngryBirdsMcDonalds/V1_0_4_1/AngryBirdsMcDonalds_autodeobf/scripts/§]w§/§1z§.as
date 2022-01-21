package §]w§
{
   import §#!q§.§6!?§;
   import §#[§.§=!Z§;
   import §%!5§.§7;§;
   import §'!N§.§8!C§;
   import §'!`§.§%!H§;
   import §'!`§.§%C§;
   import §'!`§.§;!§;
   import §-!F§.§2[§;
   import §1!^§.§,!n§;
   import §3j§.§;9§;
   import §3j§.§[8§;
   import §4!,§.§+f§;
   import §55§.§4U§;
   import §55§.§7!;§;
   import §55§.§7!B§;
   import §55§.§7!k§;
   import §55§.§const§;
   import §7!N§.§0-§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   import §<! §.§1!6§;
   import §<! §.§<<§;
   import §@!M§.§use §;
   import §]^§.§1!K§;
   import §]^§.§7G§;
   import §^!%§.b2Vec2;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   
   public class §1z§ extends EventDispatcher implements §<<§
   {
      
      private static const §2!C§:Array = [§-K§.§2!8§,§-K§.§-T§,§-K§.§=Q§,§-K§.§"!l§,§-K§.§9S§,§-K§.MIGHTY_EAGLE];
       
      
      private var §`k§:§7!;§;
      
      private var §+Z§:Boolean = false;
      
      private var §7-§:§const§;
      
      private var §2Z§:int = -1;
      
      private var §1!a§:Number;
      
      private var §&!4§:Function;
      
      private var §4f§:Array;
      
      private var §6@§:Number = -1;
      
      private var §`P§:§=!Z§;
      
      private var §7R§:Number = -1;
      
      private var §54§:§1!K§;
      
      private var §=&§:Vector.<§6!2§>;
      
      private var §=!F§:§6!2§;
      
      private var §+k§:§8!C§;
      
      public function §1z§()
      {
         this.§4f§ = [];
         this.§=&§ = new Vector.<§6!2§>();
         super();
      }
      
      public static function §?L§(param1:String) : int
      {
         return §2!C§.indexOf(param1);
      }
      
      public function get §8!Q§() : int
      {
         return this.§=&§.length;
      }
      
      public function init() : void
      {
         this.§2Z§ = -1;
         this.§6@§ = -1;
         this.§7-§ = null;
         this.§7R§ = -1;
         this.§`P§ = null;
         this.§&!4§ = null;
         this.§4f§ = [];
         this.§+k§.mouseEnabled = true;
         this.§`k§ = new §7!;§(§7;§.§1h§.mLevelEngine.mWorld.§<M§().y);
      }
      
      public function reset() : void
      {
         while(this.§=&§.length > 0)
         {
            this.§=&§.shift();
         }
         if(this.§=!F§)
         {
            try
            {
               this.§=!F§.§%N§.dispose();
            }
            catch(e:Error)
            {
            }
            this.§=!F§ = null;
         }
      }
      
      public function setController(param1:§8!C§) : void
      {
         if(this.§+k§ == param1)
         {
            return;
         }
         if(!this.§+k§)
         {
         }
         this.§+k§ = param1;
         this.init();
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(!this.§+k§)
         {
            return;
         }
         this.§^!G§(param1);
         this.§>!U§(param1);
         if(this.§6@§ > 0)
         {
            this.§6@§ -= param1;
            if(this.§6@§ <= 0)
            {
               this.§&!4§();
               this.§&!4§ = null;
               (§7;§.§5F§ as §8!C§).mouseEnabled = true;
               if(this.§4f§.length > 0)
               {
                  _loc2_ = this.§4f§.shift();
                  this.§[l§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function §>!U§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Point = §7;§.§1h§.slingshot.§&!%§();
         if(this.§`k§.enabled && _loc2_ != null && §7;§.§1h§.slingshot.mDragging)
         {
            _loc3_ = -Math.cos(§7;§.§1h§.slingshot.§>O§ / (180 / Math.PI));
            _loc4_ = Math.sin(§7;§.§1h§.slingshot.§>O§ / (180 / Math.PI));
            this.§`k§.§?!X§(_loc2_,new Point(_loc3_,_loc4_),§7;§.§1h§.slingshot.getLaunchSpeed());
            if(!this.§+Z§)
            {
               this.§+Z§ = true;
               §7G§.§4W§("Powerup_Laser_Sight","ChannelPowerups");
            }
         }
         else
         {
            this.§`k§.hide();
            this.§+Z§ = false;
         }
      }
      
      protected function §^!G§(param1:Number) : void
      {
         if(this.§`P§)
         {
            if(this.§`P§.§#!^§)
            {
               this.§`P§ = null;
               this.§7R§ = -1;
            }
            else
            {
               this.§`P§.§^!G§(param1);
               if(this.§`P§.§"!V§)
               {
                  if(this.§7R§ > 0)
                  {
                     if(!this.§`P§.§&!p§() || !this.§`P§.§&!p§().IsActive())
                     {
                        this.§7R§ = -1;
                        this.§`P§ = null;
                     }
                     else
                     {
                        this.§7R§ -= param1;
                        if(this.§7R§ <= 0)
                        {
                           this.§5!Y§();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §"!`§(param1:MouseEvent) : void
      {
         param1.preventDefault();
         this.§5!Y§();
      }
      
      private function §5!Y§() : void
      {
         if(this.§54§)
         {
            this.§54§.stop();
            this.§54§ = null;
         }
         §7G§.§4W§("Powerup_Bomb_Bang","ChannelPowerups");
         §7;§.§1h§.§%j§.§5!0§(this.§`P§,false,true,true);
         this.§7R§ = -1;
         this.§+k§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"!`§);
      }
      
      public function §+w§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§2Z§ >= 0 && this.§2Z§ < §7!k§.§7!6§)
         {
            _loc2_ = Math.sin(this.§2Z§ / §7!k§.§7!6§ * (Math.PI * §7!k§.§%,§) + this.§1!a§);
            _loc3_ = _loc2_ * §7!k§.§+l§;
            _loc4_ = new b2Vec2(_loc3_,§7;§.§1h§.mLevelEngine.mWorld.§<M§().y);
            §7;§.§1h§.mLevelEngine.mWorld.§?!?§(_loc4_);
            ++this.§2Z§;
         }
         else if(this.§2Z§ == §7!k§.§7!6§)
         {
            this.§2Z§ = -1;
            §7;§.§1h§.mLevelEngine.mWorld.§?!?§(new b2Vec2(0,§7;§.§1h§.mLevelEngine.mWorld.§<M§().y));
         }
         if(this.§7-§)
         {
            if(!this.§7-§.§[-§(§7;§.§1h§.camera,param1 * 1000))
            {
               this.§7-§ = null;
            }
         }
      }
      
      private function §[l§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§&!4§ != null)
         {
            this.§4f§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§&!4§ = param1;
            (§7;§.§5F§ as §8!C§).mouseEnabled = false;
            this.§6@§ = §7!k§.§%!o§;
            §7;§.§1h§.camera.setAction(!!param2 ? int(§+f§.§0!F§) : int(§+f§.§&!U§));
            §7;§.§1h§.camera.manualScale = !!param2 ? Number(§7;§.§1h§.camera.§'Y§) : Number(§7;§.§1h§.camera.§&!1§);
         }
      }
      
      private function §]!,§() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:§7!B§ = (§7;§.§1h§.slingshot as §;9§).§!!e§[(§7;§.§1h§.slingshot as §;9§).§3w§];
         var _loc2_:Number = §7!k§.§%A§;
         switch(_loc1_.name)
         {
            case "BIRD_BLACK":
               _loc2_ = §7!k§.§=^§;
               break;
            case "BIRD_BLUE":
               _loc2_ = §7!k§.§+D§;
               break;
            case "BIRD_GREEN":
               _loc2_ = §7!k§.§=!S§;
               break;
            case "BIRD_WHITE":
               _loc2_ = §7!k§.§+V§;
               break;
            case "BIRD_YELLOW":
               _loc2_ = §7!k§.§0!A§;
               break;
            case "BIRD_RED":
               _loc2_ = §7!k§.§-w§;
         }
         §7G§.§4W§("Powerup_Grow","ChannelPowerups");
         (§7;§.§1h§.slingshot as §;9§).§9!%§(_loc2_);
         var _loc3_:Vector.<§7!B§> = §7;§.§1h§.slingshot.§!!e§;
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
               §7;§.§1h§.particles.§4!2§(§3!f§.§1w§,§,!j§.§++§,§3!f§.§"!&§,§7;§.§1h§.slingshot.§=!=§,§7;§.§1h§.slingshot.§[!;§,1250,"",§3!f§.§-!Z§(_loc3_[0].name),_loc9_ * Math.cos(_loc8_) * _loc6_,-_loc9_ * Math.sin(_loc8_) * _loc6_,5,_loc9_ * 20,Math.sqrt(_loc6_));
               _loc7_++;
            }
         }
      }
      
      private function §!!§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         §7G§.§4W§("Wood_Destroyed1","ChannelPowerups");
         (§7;§.§1h§.slingshot as §;9§).§&F§();
         var _loc1_:Vector.<§7!B§> = §7;§.§1h§.slingshot.§!!e§;
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
               §7;§.§1h§.particles.§4!2§(§3!f§.§#!9§,§,!j§.§++§,§3!f§.§"!&§,§7;§.§1h§.slingshot.§=!=§,§7;§.§1h§.slingshot.§[!;§ + Math.random() * 6,1250 + Math.random() * 500,"",§3!f§.§0,§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §?!T§() : void
      {
         §7G§.§4W§("Menu_Confirm","ChannelPowerups");
         this.§`k§.enabled = !this.§`k§.enabled;
      }
      
      private function §;!c§() : void
      {
         var _loc1_:Point = this.§+k§.§>!,§();
         _loc1_ = §7;§.§1h§.screenToBox2D(_loc1_.x,_loc1_.y);
         var _loc2_:§%!H§ = §7;§.§1h§.§%j§.§[!Q§();
         if(_loc2_ == null)
         {
            return;
         }
         this.§54§ = §7G§.§4W§("Powerup_Bomb_Fuse","ChannelPowerups");
         var _loc3_:Number = _loc2_.§;!2§ + (Math.random() - 0.5) * §7!k§.§ !@§;
         var _loc4_:Number = §7;§.§1h§.camera.§[!B§;
         this.§`P§ = this.§<!8§().§%>§(_loc3_,_loc4_,0);
         this.§`P§.§3§ = true;
         this.§7R§ = §7!k§.§8!O§ * 1000;
         this.§+k§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"!`§);
      }
      
      private function §"d§() : void
      {
         var _loc3_:§%!H§ = null;
         this.§+k§.§68§(Math.round(1000 * §4U§.§2]§ * §7!k§.§7!6§));
         §7G§.§4W§("Powerup_Earthquake","ChannelPowerups");
         this.§2Z§ = 0;
         this.§1!a§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §7;§.§1h§.objects.§1A§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §7;§.§1h§.objects.§3$§(_loc2_);
            if(_loc3_ is §;!§ || _loc3_ is §%C§)
            {
               _loc3_.§&!p§().SetAwake(true);
               if(_loc3_ is §%C§)
               {
                  (_loc3_ as §%C§).§&>§();
               }
            }
            _loc2_++;
         }
         this.§7-§ = new §const§(§7!k§.§,5§,§7!k§.§4V§);
      }
      
      private function §<!8§() : §use §
      {
         return §7;§.§1h§.§%j§ as §use §;
      }
      
      public function §,D§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §-K§.§2!8§:
               this.§[l§(this.§]!,§,false);
               break;
            case §-K§.§-T§:
               this.§[l§(this.§!!§,false);
               break;
            case §-K§.§=Q§:
               this.§[l§(this.§?!T§,true);
               break;
            case §-K§.§"!l§:
               this.§[l§(this.§"d§,true);
               break;
            case §-K§.§9S§:
               this.§[l§(this.§;!c§,true);
         }
         this.§>!B§(param1);
         §8!L§.§9$§.§,D§(param1);
         (§7;§.§1h§ as §[8§).§,D§(param1);
         var _loc2_:String = §2[§.§^N§;
         §6!?§.§=!4§(param1,_loc2_);
         return true;
      }
      
      public function §>!B§(param1:String) : void
      {
         var _loc2_:int = (§7;§.§1h§ as §[8§).§+!^§();
         var _loc3_:§6!2§ = new §6!2§(param1,_loc2_);
         if(this.§=!F§ != null)
         {
            this.§=&§.push(_loc3_);
         }
         else
         {
            this.§[?§(_loc3_);
         }
      }
      
      protected function §[?§(param1:§6!2§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§,!n§ = null;
         if(!§0-§.§-5§(§2[§.§^N§))
         {
            _loc2_ = "useItem";
            _loc3_ = {};
            _loc3_.type = param1.§!D§;
            _loc3_.count = 1;
            (_loc4_ = []).push(_loc3_);
            _loc5_ = §,!n§.§'u§(§0-§.§6!&§.email,_loc4_);
            _loc6_ = {
               "id":§0-§.§6!&§.email,
               "items":_loc4_,
               "itemsSecurity":_loc5_
            };
            _loc7_ = new §,!n§(_loc6_,§9!_§.§?!k§ + _loc2_,this,§,!n§.§-I§);
            this.§=!F§ = param1;
            this.§=!F§.§%N§ = _loc7_;
         }
         else
         {
            this.§=!F§ = null;
            this.§#!X§(true);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §1!6§.§>o§((param1.currentTarget as URLLoader).data);
         this.§=!F§ = null;
         this.§#!X§(true);
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §#!X§(param1:Boolean) : void
      {
         var _loc2_:§6!2§ = null;
         if(param1)
         {
         }
         if(this.§=&§.length > 0)
         {
            _loc2_ = this.§=&§.shift();
            this.§[?§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §return§() : Boolean
      {
         return this.§=!F§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§+k§)
         {
            this.§+k§.mouseEnabled = true;
            this.§+k§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"!`§);
         }
         this.§2Z§ = -1;
         this.§7R§ = -1;
         this.§6@§ = -1;
         this.§7-§ = null;
         this.§`P§ = null;
         this.§&!4§ = null;
         this.§4f§ = [];
         if(this.§54§)
         {
            this.§54§.stop();
            this.§54§ = null;
         }
      }
   }
}
