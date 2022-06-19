package §+"§
{
   import §!"8§.b2Vec2;
   import §'_§.§!W§;
   import §'_§.§+#§;
   import §'_§.§89§;
   import §'_§.§9V§;
   import §'_§.§<!3§;
   import §+I§.§9!%§;
   import §-I§.§package§;
   import §1k§.§%4§;
   import §1k§.§'"9§;
   import §3!Z§.§,>§;
   import §3!Z§.§5!$§;
   import §3,§.§+;§;
   import §3,§.§-!K§;
   import §3,§.§4";§;
   import §3,§.§>M§;
   import §3,§.§[O§;
   import §3,§.§^!#§;
   import §3,§.§`a§;
   import §7N§.§43§;
   import §7N§.§]@§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §;!s§.§9!]§;
   import §<!<§.§%!#§;
   import §<!e§.§[!t§;
   import §[!K§.§&j§;
   import §[!z§.§"5§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import §^6§.§0!w§;
   import §`"5§.§?Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class §8!n§ extends EventDispatcher
   {
      
      private static const §=u§:Array = [§<!A§.§;!;§,§<!A§.§7X§,§<!A§.§[;§,§<!A§.§2!4§,§<!A§.§=!5§,§<!A§.MIGHTY_EAGLE];
       
      
      private var §4R§:§[O§;
      
      private var §2!Q§:Boolean = false;
      
      private var §=!w§:§+;§;
      
      private var §7O§:int = -1;
      
      private var §>!3§:Number;
      
      private var §#!=§:Function;
      
      private var §?I§:Array;
      
      private var §`_§:Number = -1;
      
      private var §!!n§:§!W§;
      
      private var §<!h§:Number = -1;
      
      private var §42§:§'"9§;
      
      private var §?"'§:Vector.<§8A§>;
      
      private var §%!x§:§8A§;
      
      private var §<Z§:§9!]§;
      
      public function §8!n§()
      {
         this.§?I§ = [];
         this.§?"'§ = new Vector.<§8A§>();
         super();
      }
      
      public static function §<!-§(param1:String) : int
      {
         return §=u§.indexOf(param1);
      }
      
      public function get §3i§() : int
      {
         return this.§?"'§.length;
      }
      
      public function init() : void
      {
         this.§7O§ = -1;
         this.§`_§ = -1;
         this.§=!w§ = null;
         this.§<!h§ = -1;
         this.§!!n§ = null;
         this.§#!=§ = null;
         this.§?I§ = [];
         this.§<Z§.mouseEnabled = true;
         this.§4R§ = new §[O§(§9!%§.§!!M§.mLevelEngine.mWorld.§+";§().y);
      }
      
      public function reset() : void
      {
         while(this.§?"'§.length > 0)
         {
            this.§?"'§.shift();
         }
         if(this.§%!x§)
         {
            this.§&_§(this.§%!x§.§`N§);
            try
            {
               this.§%!x§.§`N§.close();
            }
            catch(e:Error)
            {
            }
            this.§%!x§ = null;
         }
      }
      
      public function setController(param1:§9!]§) : void
      {
         if(this.§<Z§ == param1)
         {
            return;
         }
         if(!this.§<Z§)
         {
         }
         this.§<Z§ = param1;
         this.init();
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(!this.§<Z§)
         {
            return;
         }
         this.§+!`§(param1);
         this.§7n§(param1);
         if(this.§`_§ > 0)
         {
            this.§`_§ -= param1;
            if(this.§`_§ <= 0)
            {
               this.§#!=§();
               this.§#!=§ = null;
               (§9!%§.§&N§ as §package§).mouseEnabled = true;
               if(this.§?I§.length > 0)
               {
                  _loc2_ = this.§?I§.shift();
                  this.§,N§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function §7n§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Point = §9!%§.§!!M§.slingshot.§5!X§();
         if(this.§4R§.enabled && _loc2_ != null && §9!%§.§!!M§.slingshot.mDragging)
         {
            _loc3_ = -Math.cos(§9!%§.§!!M§.slingshot.§3Q§ / (180 / Math.PI));
            _loc4_ = Math.sin(§9!%§.§!!M§.slingshot.§3Q§ / (180 / Math.PI));
            this.§4R§.§^!D§(_loc2_,new Point(_loc3_,_loc4_),§9!%§.§!!M§.slingshot.getLaunchSpeed());
            if(!this.§2!Q§)
            {
               this.§2!Q§ = true;
               §%4§.§>f§("Powerup_Laser_Sight","ChannelPowerups");
            }
         }
         else
         {
            this.§4R§.hide();
            this.§2!Q§ = false;
         }
      }
      
      protected function §+!`§(param1:Number) : void
      {
         if(this.§!!n§)
         {
            if(this.§!!n§.§>!Y§)
            {
               this.§!!n§ = null;
               this.§<!h§ = -1;
            }
            else
            {
               this.§!!n§.§+!`§(param1);
               if(this.§!!n§.§4!9§)
               {
                  if(this.§<!h§ > 0)
                  {
                     if(!this.§!!n§.§2"7§() || !this.§!!n§.§2"7§().IsActive())
                     {
                        this.§<!h§ = -1;
                        this.§!!n§ = null;
                     }
                     else
                     {
                        this.§<!h§ -= param1;
                        if(this.§<!h§ <= 0)
                        {
                           this.§#!9§();
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
         var _loc1_:int = §'!0§.§8c§.§9+§(§<!A§.MIGHTY_EAGLE);
         if(_loc1_ <= 0)
         {
            _loc2_ = §?Q§.MIGHTY_EAGLE;
            if(!§?Q§.§+!&§)
            {
               §?Q§.§ ,§(_loc2_);
            }
            else
            {
               for each(_loc3_ in §?Q§.§+!&§)
               {
                  if(_loc3_.id == _loc2_)
                  {
                     §43§.§!!A§(_loc3_);
                  }
               }
            }
            return false;
         }
         §'!0§.§8c§.§4!#§(§<!A§.MIGHTY_EAGLE);
         this.§'!M§(§<!A§.MIGHTY_EAGLE);
         _loc4_ = LevelManager.§[!<§;
         §%!#§.§"">§(§<!A§.MIGHTY_EAGLE,_loc4_);
         return true;
      }
      
      private function §]6§(param1:MouseEvent) : void
      {
         param1.preventDefault();
         this.§#!9§();
      }
      
      private function §#!9§() : void
      {
         if(this.§42§)
         {
            this.§42§.stop();
            this.§42§ = null;
         }
         §%4§.§>f§("Powerup_Bomb_Bang","ChannelPowerups");
         §9!%§.§!!M§.§3!=§.§%U§(this.§!!n§,false,true,true);
         this.§<!h§ = -1;
         this.§<Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]6§);
      }
      
      public function §&"9§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§7O§ >= 0 && this.§7O§ < §`a§.§]W§)
         {
            _loc2_ = Math.sin(this.§7O§ / §`a§.§]W§ * (Math.PI * §`a§.§?E§) + this.§>!3§);
            _loc3_ = _loc2_ * §`a§.§>!U§;
            _loc4_ = new b2Vec2(_loc3_,§9!%§.§!!M§.mLevelEngine.mWorld.§+";§().y);
            §9!%§.§!!M§.mLevelEngine.mWorld.§'!5§(_loc4_);
            ++this.§7O§;
         }
         else if(this.§7O§ == §`a§.§]W§)
         {
            this.§7O§ = -1;
            §9!%§.§!!M§.mLevelEngine.mWorld.§'!5§(new b2Vec2(0,§9!%§.§!!M§.mLevelEngine.mWorld.§+";§().y));
         }
         if(this.§=!w§)
         {
            if(!this.§=!w§.§?"=§(§9!%§.§!!M§.camera,param1 * 1000))
            {
               this.§=!w§ = null;
            }
         }
      }
      
      private function §,N§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§#!=§ != null)
         {
            this.§?I§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§#!=§ = param1;
            (§9!%§.§&N§ as §package§).mouseEnabled = false;
            this.§`_§ = §`a§.§4$§;
            §9!%§.§!!M§.camera.§0!z§(!!param2 ? int(§0!w§.§6^§) : int(§0!w§.§@w§));
            §9!%§.§!!M§.camera.§<f§ = !!param2 ? Number(§9!%§.§!!M§.camera.§-^§) : Number(§9!%§.§!!M§.camera.§0>§);
         }
      }
      
      private function §?!Z§() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:§-!K§ = (§9!%§.§!!M§.slingshot as §4";§).§&!L§[(§9!%§.§!!M§.slingshot as §4";§).§1g§];
         var _loc2_:Number = §`a§.§7!M§;
         switch(_loc1_.name)
         {
            case "BIRD_BLACK":
               _loc2_ = §`a§.§?!§;
               break;
            case "BIRD_BLUE":
               _loc2_ = §`a§.§9I§;
               break;
            case "BIRD_GREEN":
               _loc2_ = §`a§.§-"%§;
               break;
            case "BIRD_WHITE":
               _loc2_ = §`a§.§26§;
               break;
            case "BIRD_YELLOW":
               _loc2_ = §`a§.§=E§;
               break;
            case "BIRD_RED":
               _loc2_ = §`a§.§?&§;
         }
         §%4§.§>f§("Powerup_Grow","ChannelPowerups");
         (§9!%§.§!!M§.slingshot as §4";§).§1"1§(_loc2_);
         var _loc3_:Vector.<§-!K§> = §9!%§.§!!M§.slingshot.§&!L§;
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
               §9!%§.§!!M§.particles.§&!J§(§5!$§.§2M§,§,>§.§^!<§,§5!$§.§2!&§,§9!%§.§!!M§.slingshot.§>U§,§9!%§.§!!M§.slingshot.§>!c§,1250,"",§5!$§.§9!Z§(_loc3_[0].name),_loc9_ * Math.cos(_loc8_) * _loc6_,-_loc9_ * Math.sin(_loc8_) * _loc6_,5,_loc9_ * 20,Math.sqrt(_loc6_));
               _loc7_++;
            }
         }
      }
      
      private function §#Z§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         §%4§.§>f§("Wood_Destroyed1","ChannelPowerups");
         (§9!%§.§!!M§.slingshot as §4";§).§ V§();
         var _loc1_:Vector.<§-!K§> = §9!%§.§!!M§.slingshot.§&!L§;
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
               §9!%§.§!!M§.particles.§&!J§(§5!$§.§5%§,§,>§.§^!<§,§5!$§.§2!&§,§9!%§.§!!M§.slingshot.§>U§,§9!%§.§!!M§.slingshot.§>!c§ + Math.random() * 6,1250 + Math.random() * 500,"",§5!$§.§="$§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §>!F§() : void
      {
         §%4§.§>f§("Menu_Confirm","ChannelPowerups");
         this.§4R§.enabled = !this.§4R§.enabled;
      }
      
      private function §"g§() : void
      {
         var _loc1_:Point = this.§<Z§.§'"5§();
         _loc1_ = §9!%§.§!!M§.screenToBox2D(_loc1_.x,_loc1_.y);
         var _loc2_:§9V§ = §9!%§.§!!M§.§3!=§.§,!7§();
         if(_loc2_ == null)
         {
            return;
         }
         this.§42§ = §%4§.§>f§("Powerup_Bomb_Fuse","ChannelPowerups");
         var _loc3_:Number = _loc2_.§'$§ + (Math.random() - 0.5) * §`a§.§%"B§;
         var _loc4_:Number = §9!%§.§!!M§.camera.§'v§;
         this.§!!n§ = this.§7"+§().§=A§(_loc3_,_loc4_,0);
         this.§!!n§.§=6§ = true;
         this.§<!h§ = §`a§.§!! § * 1000;
         this.§<Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]6§);
      }
      
      private function §"!^§() : void
      {
         var _loc3_:§9V§ = null;
         this.§<Z§.§5!`§(Math.round(1000 * §^!#§.§&!Q§ * §`a§.§]W§));
         §%4§.§>f§("Powerup_Earthquake","ChannelPowerups");
         this.§7O§ = 0;
         this.§>!3§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §9!%§.§!!M§.objects.§0!T§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §9!%§.§!!M§.objects.§&J§(_loc2_);
            if(_loc3_ is §+#§ || _loc3_ is §<!3§)
            {
               _loc3_.§2"7§().SetAwake(true);
               if(_loc3_ is §<!3§)
               {
                  (_loc3_ as §<!3§).§<u§();
               }
            }
            _loc2_++;
         }
         this.§=!w§ = new §+;§(§`a§.§-B§,§`a§.§`c§);
      }
      
      private function §7"+§() : §89§
      {
         return §9!%§.§!!M§.§3!=§ as §89§;
      }
      
      public function §4!#§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §<!A§.§;!;§:
               this.§,N§(this.§?!Z§,false);
               break;
            case §<!A§.§7X§:
               this.§,N§(this.§#Z§,false);
               break;
            case §<!A§.§[;§:
               this.§,N§(this.§>!F§,true);
               break;
            case §<!A§.§2!4§:
               this.§,N§(this.§"!^§,true);
               break;
            case §<!A§.§=!5§:
               this.§,N§(this.§"g§,true);
         }
         this.§'!M§(param1);
         §'!0§.§8c§.§4!#§(param1);
         (§9!%§.§!!M§ as §>M§).§4!#§(param1);
         var _loc2_:String = LevelManager.§[!<§;
         §%!#§.§"">§(param1,_loc2_);
         return true;
      }
      
      public function §'!M§(param1:String) : void
      {
         var _loc2_:int = (§9!%§.§!!M§ as §>M§).§;H§();
         var _loc3_:§,!S§ = new §,!S§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§8A§ = new §8A§(param1,_loc2_,_loc3_);
         if(this.§%!x§ != null)
         {
            this.§?"'§.push(_loc4_);
         }
         else
         {
            this.§""1§(_loc4_);
         }
      }
      
      protected function §""1§(param1:§8A§) : void
      {
         var _loc2_:String = LevelManager.§[!<§;
         var _loc3_:String = §"5§.§3t§(_loc2_);
         var _loc4_:int;
         if((_loc4_ = §[!t§.§8c§.levels.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§[!t§.§8c§.§=!l§(_loc2_));
         }
         var _loc5_:§]f§;
         var _loc6_:String = !!(_loc5_ = LevelManager.§"!r§(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:String = AngryBirdsFP11.§7!!§ + "/useitem/" + param1.§8k§ + "/" + LevelManager.§[!<§ + "/" + _loc6_ + "/" + _loc3_ + "/" + §&j§.§="5§ + "/" + param1.§95§;
         var _loc8_:URLRequest = §4!J§.§3j§(_loc7_);
         this.§%!x§ = param1;
         this.§-b§(param1.§`N§);
         param1.§`N§.load(_loc8_);
      }
      
      protected function §-b§(param1:URLLoader) : void
      {
         this.§&_§(param1);
         param1.addEventListener(Event.COMPLETE,this.§&!k§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§&w§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&w§);
         param1.addEventListener(§"!n§.§"+§,this.§&w§);
      }
      
      protected function §&_§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§&!k§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§&w§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&w§);
         param1.removeEventListener(§"!n§.§"+§,this.§&w§);
      }
      
      protected function §&!k§(param1:Event) : void
      {
         var response:Object = null;
         var e:Event = param1;
         var request:§8A§ = this.§%!x§;
         this.§&_§(request.§`N§);
         this.§%!x§ = null;
         var allowed:Boolean = false;
         try
         {
            response = JSON.parse(request.§`N§.data);
            if(response.allowed && response.playSessionToken != §&j§.§="5§)
            {
               §&j§.§="5§ = response.playSessionToken;
               allowed = true;
            }
            else
            {
               §43§.§ "6§();
            }
         }
         catch(e:Error)
         {
            allowed = false;
         }
         this.§<@§(allowed);
      }
      
      protected function §&w§(param1:Event) : void
      {
         var _loc2_:§8A§ = this.§%!x§;
         this.§&_§(_loc2_.§`N§);
         this.§%!x§ = null;
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            this.§<@§(false);
         }
      }
      
      protected function §<@§(param1:Boolean) : void
      {
         var _loc2_:§8A§ = null;
         if(!param1)
         {
            §43§.§?!S§();
         }
         if(this.§?"'§.length > 0)
         {
            _loc2_ = this.§?"'§.shift();
            this.§""1§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §%!H§() : Boolean
      {
         return this.§%!x§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§<Z§)
         {
            this.§<Z§.mouseEnabled = true;
            this.§<Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]6§);
         }
         this.§7O§ = -1;
         this.§<!h§ = -1;
         this.§`_§ = -1;
         this.§=!w§ = null;
         this.§!!n§ = null;
         this.§#!=§ = null;
         this.§?I§ = [];
         if(this.§42§)
         {
            this.§42§.stop();
            this.§42§ = null;
         }
      }
   }
}
