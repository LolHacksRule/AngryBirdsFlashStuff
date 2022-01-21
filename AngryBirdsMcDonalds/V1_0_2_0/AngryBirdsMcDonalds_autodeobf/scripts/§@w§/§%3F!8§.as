package §@w§
{
   import § !m§.§ !M§;
   import § !m§.§6h§;
   import § v§.§!!^§;
   import §!!h§.§1H§;
   import §"U§.b2Vec2;
   import §%`§.§"s§;
   import §%`§.§`I§;
   import §%`§.§`U§;
   import §'a§.§"B§;
   import §'a§.§8,§;
   import §'a§.§8<§;
   import §'a§.§^N§;
   import §'a§.§use §;
   import §+-§.§3!5§;
   import §-Y§.§-!V§;
   import §-Y§.§?r§;
   import §2!`§.§3F§;
   import §2!`§.§8!;§;
   import §7"§.§1! §;
   import §7"§.§[!K§;
   import §9!W§.§=!@§;
   import §;!j§.§25§;
   import §@!T§.§ l§;
   import §[#§.§!p§;
   import §[_§.§2D§;
   import §]!G§.§0!g§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   
   public class §?!8§ extends EventDispatcher implements §1! §
   {
      
      private static const §!o§:Array = [§`H§.§43§,§`H§.§=^§,§`H§.§1!h§,§`H§.§9!a§,§`H§.§ Y§,§`H§.MIGHTY_EAGLE];
       
      
      private var §?O§:§8,§;
      
      private var § 1§:Boolean = false;
      
      private var §"!F§:§"B§;
      
      private var §&!V§:int = -1;
      
      private var §6I§:Number;
      
      private var §4!9§:Function;
      
      private var § !]§:Array;
      
      private var §,i§:Number = -1;
      
      private var §&!J§:§ l§;
      
      private var §?t§:Number = -1;
      
      private var §11§:§ !M§;
      
      private var §;!@§:Vector.<§'v§>;
      
      private var §=2§:§'v§;
      
      private var §`3§:§!p§;
      
      public function §?!8§()
      {
         this.§ !]§ = [];
         this.§;!@§ = new Vector.<§'v§>();
         super();
      }
      
      public static function §@g§(param1:String) : int
      {
         return §!o§.indexOf(param1);
      }
      
      public function get §?B§() : int
      {
         return this.§;!@§.length;
      }
      
      public function init() : void
      {
         this.§&!V§ = -1;
         this.§,i§ = -1;
         this.§"!F§ = null;
         this.§?t§ = -1;
         this.§&!J§ = null;
         this.§4!9§ = null;
         this.§ !]§ = [];
         this.§`3§.mouseEnabled = true;
         this.§?O§ = new §8,§(§=!@§.§>!T§.mLevelEngine.mWorld.§;&§().y);
      }
      
      public function reset() : void
      {
         while(this.§;!@§.length > 0)
         {
            this.§;!@§.shift();
         }
         if(this.§=2§)
         {
            try
            {
               this.§=2§.§ !_§.dispose();
            }
            catch(e:Error)
            {
            }
            this.§=2§ = null;
         }
      }
      
      public function setController(param1:§!p§) : void
      {
         if(this.§`3§ == param1)
         {
            return;
         }
         if(!this.§`3§)
         {
         }
         this.§`3§ = param1;
         this.init();
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(!this.§`3§)
         {
            return;
         }
         this.§3R§(param1);
         this.§#!?§(param1);
         if(this.§,i§ > 0)
         {
            this.§,i§ -= param1;
            if(this.§,i§ <= 0)
            {
               this.§4!9§();
               this.§4!9§ = null;
               (§=!@§.§>!b§ as §!p§).mouseEnabled = true;
               if(this.§ !]§.length > 0)
               {
                  _loc2_ = this.§ !]§.shift();
                  this.§?,§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function §#!?§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Point = §=!@§.§>!T§.slingshot.§5L§();
         if(this.§?O§.enabled && _loc2_ != null && §=!@§.§>!T§.slingshot.mDragging)
         {
            _loc3_ = -Math.cos(§=!@§.§>!T§.slingshot.§&!,§ / (180 / Math.PI));
            _loc4_ = Math.sin(§=!@§.§>!T§.slingshot.§&!,§ / (180 / Math.PI));
            this.§?O§.§!G§(_loc2_,new Point(_loc3_,_loc4_),§=!@§.§>!T§.slingshot.getLaunchSpeed());
            if(!this.§ 1§)
            {
               this.§ 1§ = true;
               §6h§.§-a§("Powerup_Laser_Sight","ChannelPowerups");
            }
         }
         else
         {
            this.§?O§.hide();
            this.§ 1§ = false;
         }
      }
      
      protected function §3R§(param1:Number) : void
      {
         if(this.§&!J§)
         {
            if(this.§&!J§.§6!n§)
            {
               this.§&!J§ = null;
               this.§?t§ = -1;
            }
            else
            {
               this.§&!J§.§3R§(param1);
               if(this.§&!J§.§<g§)
               {
                  if(this.§?t§ > 0)
                  {
                     if(!this.§&!J§.§%9§() || !this.§&!J§.§%9§().IsActive())
                     {
                        this.§?t§ = -1;
                        this.§&!J§ = null;
                     }
                     else
                     {
                        this.§?t§ -= param1;
                        if(this.§?t§ <= 0)
                        {
                           this.§<!k§();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §4!N§(param1:MouseEvent) : void
      {
         param1.preventDefault();
         this.§<!k§();
      }
      
      private function §<!k§() : void
      {
         if(this.§11§)
         {
            this.§11§.stop();
            this.§11§ = null;
         }
         §6h§.§-a§("Powerup_Bomb_Bang","ChannelPowerups");
         §=!@§.§>!T§.§1!-§.§'%§(this.§&!J§,false,true,true);
         this.§?t§ = -1;
         this.§`3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4!N§);
      }
      
      public function §+M§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§&!V§ >= 0 && this.§&!V§ < §^N§.§;g§)
         {
            _loc2_ = Math.sin(this.§&!V§ / §^N§.§;g§ * (Math.PI * §^N§.§%@§) + this.§6I§);
            _loc3_ = _loc2_ * §^N§.§&I§;
            _loc4_ = new b2Vec2(_loc3_,§=!@§.§>!T§.mLevelEngine.mWorld.§;&§().y);
            §=!@§.§>!T§.mLevelEngine.mWorld.§?!X§(_loc4_);
            ++this.§&!V§;
         }
         else if(this.§&!V§ == §^N§.§;g§)
         {
            this.§&!V§ = -1;
            §=!@§.§>!T§.mLevelEngine.mWorld.§?!X§(new b2Vec2(0,§=!@§.§>!T§.mLevelEngine.mWorld.§;&§().y));
         }
         if(this.§"!F§)
         {
            if(!this.§"!F§.§ 2§(§=!@§.§>!T§.camera,param1 * 1000))
            {
               this.§"!F§ = null;
            }
         }
      }
      
      private function §?,§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§4!9§ != null)
         {
            this.§ !]§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§4!9§ = param1;
            (§=!@§.§>!b§ as §!p§).mouseEnabled = false;
            this.§,i§ = §^N§.§-!W§;
            §=!@§.§>!T§.camera.setAction(!!param2 ? int(§2D§.§3!;§) : int(§2D§.§1!f§));
            §=!@§.§>!T§.camera.manualScale = !!param2 ? Number(§=!@§.§>!T§.camera.§[!7§) : Number(§=!@§.§>!T§.camera.§8^§);
         }
      }
      
      private function §,!g§() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:§use § = (§=!@§.§>!T§.slingshot as §?r§).§^!@§[(§=!@§.§>!T§.slingshot as §?r§).§`!5§];
         var _loc2_:Number = §^N§.§`§;
         switch(_loc1_.name)
         {
            case "BIRD_BLACK":
               _loc2_ = §^N§.§ K§;
               break;
            case "BIRD_BLUE":
               _loc2_ = §^N§.§`!Y§;
               break;
            case "BIRD_GREEN":
               _loc2_ = §^N§.§@!$§;
               break;
            case "BIRD_WHITE":
               _loc2_ = §^N§.§&U§;
               break;
            case "BIRD_YELLOW":
               _loc2_ = §^N§.§0$§;
               break;
            case "BIRD_RED":
               _loc2_ = §^N§.§2! §;
         }
         §6h§.§-a§("Powerup_Grow","ChannelPowerups");
         (§=!@§.§>!T§.slingshot as §?r§).§<&§(_loc2_);
         var _loc3_:Vector.<§use §> = §=!@§.§>!T§.slingshot.§^!@§;
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
               §=!@§.§>!T§.particles.§;!G§(§8!;§.§9!1§,§3F§.§![§,§8!;§.§!!8§,§=!@§.§>!T§.slingshot.§ +§,§=!@§.§>!T§.slingshot.§'Z§,1250,"",§8!;§.§2!n§(_loc3_[0].name),_loc9_ * Math.cos(_loc8_) * _loc6_,-_loc9_ * Math.sin(_loc8_) * _loc6_,5,_loc9_ * 20,Math.sqrt(_loc6_));
               _loc7_++;
            }
         }
      }
      
      private function §%!§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         §6h§.§-a§("Wood_Destroyed1","ChannelPowerups");
         (§=!@§.§>!T§.slingshot as §?r§).§<Z§();
         var _loc1_:Vector.<§use §> = §=!@§.§>!T§.slingshot.§^!@§;
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
               §=!@§.§>!T§.particles.§;!G§(§8!;§.§'!D§,§3F§.§![§,§8!;§.§!!8§,§=!@§.§>!T§.slingshot.§ +§,§=!@§.§>!T§.slingshot.§'Z§ + Math.random() * 6,1250 + Math.random() * 500,"",§8!;§.§+!e§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §%!?§() : void
      {
         §6h§.§-a§("Menu_Confirm","ChannelPowerups");
         this.§?O§.enabled = !this.§?O§.enabled;
      }
      
      private function §24§() : void
      {
         var _loc1_:Point = this.§`3§.§0!5§();
         _loc1_ = §=!@§.§>!T§.screenToBox2D(_loc1_.x,_loc1_.y);
         var _loc2_:§"s§ = §=!@§.§>!T§.§1!-§.§ !8§();
         if(_loc2_ == null)
         {
            return;
         }
         this.§11§ = §6h§.§-a§("Powerup_Bomb_Fuse","ChannelPowerups");
         var _loc3_:Number = _loc2_.§'!B§ + (Math.random() - 0.5) * §^N§.§74§;
         var _loc4_:Number = §=!@§.§>!T§.camera.§4!M§;
         this.§&!J§ = this.§0!L§().§&!1§(_loc3_,_loc4_,0);
         this.§&!J§.§7!G§ = true;
         this.§?t§ = §^N§.§]C§ * 1000;
         this.§`3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4!N§);
      }
      
      private function §=!H§() : void
      {
         var _loc3_:§"s§ = null;
         this.§`3§.§[n§(Math.round(1000 * §8<§.§^;§ * §^N§.§;g§));
         §6h§.§-a§("Powerup_Earthquake","ChannelPowerups");
         this.§&!V§ = 0;
         this.§6I§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §=!@§.§>!T§.objects.§ %§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §=!@§.§>!T§.objects.§6!e§(_loc2_);
            if(_loc3_ is §`I§ || _loc3_ is §`U§)
            {
               _loc3_.§%9§().SetAwake(true);
               if(_loc3_ is §`U§)
               {
                  (_loc3_ as §`U§).§8!Q§();
               }
            }
            _loc2_++;
         }
         this.§"!F§ = new §"B§(§^N§.§^6§,§^N§.§]0§);
      }
      
      private function §0!L§() : §0!g§
      {
         return §=!@§.§>!T§.§1!-§ as §0!g§;
      }
      
      public function §4-§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §`H§.§43§:
               this.§?,§(this.§,!g§,false);
               break;
            case §`H§.§=^§:
               this.§?,§(this.§%!§,false);
               break;
            case §`H§.§1!h§:
               this.§?,§(this.§%!?§,true);
               break;
            case §`H§.§9!a§:
               this.§?,§(this.§=!H§,true);
               break;
            case §`H§.§ Y§:
               this.§?,§(this.§24§,true);
         }
         this.§7>§(param1);
         §'!#§.§'!S§.§4-§(param1);
         (§=!@§.§>!T§ as §-!V§).§4-§(param1);
         var _loc2_:String = §3!5§.§-!2§;
         §25§.§0!1§(param1,_loc2_);
         return true;
      }
      
      public function §7>§(param1:String) : void
      {
         var _loc2_:int = (§=!@§.§>!T§ as §-!V§).§&A§();
         var _loc3_:§'v§ = new §'v§(param1,_loc2_);
         if(this.§=2§ != null)
         {
            this.§;!@§.push(_loc3_);
         }
         else
         {
            this.§[![§(_loc3_);
         }
      }
      
      protected function §[![§(param1:§'v§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§1H§ = null;
         if(!§!!^§.§use§(§3!5§.§-!2§))
         {
            _loc2_ = "useItem";
            _loc3_ = {};
            _loc3_.type = param1.§;k§;
            _loc3_.count = 1;
            (_loc4_ = []).push(_loc3_);
            _loc5_ = §1H§.§ !X§(§!!^§.§,!a§.email,_loc4_);
            _loc6_ = {
               "id":§!!^§.§,!a§.email,
               "items":_loc4_,
               "itemsSecurity":_loc5_
            };
            _loc7_ = new §1H§(_loc6_,§'j§.§2H§ + _loc2_,this,§1H§.§`P§);
            this.§=2§ = param1;
            this.§=2§.§ !_§ = _loc7_;
         }
         else
         {
            this.§=2§ = null;
            this.§;!§(true);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §[!K§.§,!j§((param1.currentTarget as URLLoader).data);
         this.§=2§ = null;
         this.§;!§(true);
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §;!§(param1:Boolean) : void
      {
         var _loc2_:§'v§ = null;
         if(param1)
         {
         }
         if(this.§;!@§.length > 0)
         {
            _loc2_ = this.§;!@§.shift();
            this.§[![§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §^!g§() : Boolean
      {
         return this.§=2§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§`3§)
         {
            this.§`3§.mouseEnabled = true;
            this.§`3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4!N§);
         }
         this.§&!V§ = -1;
         this.§?t§ = -1;
         this.§,i§ = -1;
         this.§"!F§ = null;
         this.§&!J§ = null;
         this.§4!9§ = null;
         this.§ !]§ = [];
         if(this.§11§)
         {
            this.§11§.stop();
            this.§11§ = null;
         }
      }
   }
}
