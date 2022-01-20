package §2S§
{
   import § !J§.§,![§;
   import § !J§.§,_§;
   import § !J§.§5u§;
   import § !J§.§6K§;
   import § !J§.§=a§;
   import §#!1§.§6!>§;
   import §&6§.§`!T§;
   import §&6§.§`!q§;
   import §+P§.§#X§;
   import §+S§.b2Vec2;
   import §,4§.§;_§;
   import §,E§.§"!K§;
   import §-h§.§ use§;
   import §0$§.§!t§;
   import §4j§.§4y§;
   import §4j§.§9M§;
   import §4j§.§;!O§;
   import §5U§.§@9§;
   import §7F§.§2M§;
   import §?!d§.§-E§;
   import §[!4§.§-#§;
   import §[!4§.§^!W§;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §^!I§.§"r§;
   import §^!I§.§6!%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   
   public class §'!@§ extends EventDispatcher implements §`!T§
   {
      
      private static const §%y§:Array = [§9!A§.§4r§,§9!A§.§!b§,§9!A§.§ !q§,§9!A§.§"S§,§9!A§.§<W§,§9!A§.MIGHTY_EAGLE];
       
      
      private var §&9§:§6K§;
      
      private var §66§:Boolean = false;
      
      private var §!!F§:§,_§;
      
      private var §?!L§:int = -1;
      
      private var §'4§:Number;
      
      private var §;q§:Function;
      
      private var §@!D§:Array;
      
      private var §0w§:Number = -1;
      
      private var §8b§:§#X§;
      
      private var §+!1§:Number = -1;
      
      private var §]!A§:§^!W§;
      
      private var §4!T§:Vector.<§@![§>;
      
      private var §&!f§:§@![§;
      
      private var §@!C§:§ use§;
      
      public function §'!@§()
      {
         this.§@!D§ = [];
         this.§4!T§ = new Vector.<§@![§>();
         super();
      }
      
      public static function §1!h§(param1:String) : int
      {
         return §%y§.indexOf(param1);
      }
      
      public function get §0"§() : int
      {
         return this.§4!T§.length;
      }
      
      public function init() : void
      {
         this.§?!L§ = -1;
         this.§0w§ = -1;
         this.§!!F§ = null;
         this.§+!1§ = -1;
         this.§8b§ = null;
         this.§;q§ = null;
         this.§@!D§ = [];
         this.§@!C§.mouseEnabled = true;
         this.§&9§ = new §6K§(§2M§.§1?§.mLevelEngine.mWorld.§4K§().y);
      }
      
      public function reset() : void
      {
         while(this.§4!T§.length > 0)
         {
            this.§4!T§.shift();
         }
         if(this.§&!f§)
         {
            try
            {
               this.§&!f§.§,6§.dispose();
            }
            catch(e:Error)
            {
            }
            this.§&!f§ = null;
         }
      }
      
      public function setController(param1:§ use§) : void
      {
         if(this.§@!C§ == param1)
         {
            return;
         }
         if(!this.§@!C§)
         {
         }
         this.§@!C§ = param1;
         this.init();
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(!this.§@!C§)
         {
            return;
         }
         this.§`Q§(param1);
         this.§ !c§(param1);
         if(this.§0w§ > 0)
         {
            this.§0w§ -= param1;
            if(this.§0w§ <= 0)
            {
               this.§;q§();
               this.§;q§ = null;
               (§2M§.§`r§ as § use§).mouseEnabled = true;
               if(this.§@!D§.length > 0)
               {
                  _loc2_ = this.§@!D§.shift();
                  this.§?!P§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function § !c§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Point = §2M§.§1?§.slingshot.§ g§();
         if(this.§&9§.enabled && _loc2_ != null && §2M§.§1?§.slingshot.mDragging)
         {
            _loc3_ = -Math.cos(§2M§.§1?§.slingshot.§"'§ / (180 / Math.PI));
            _loc4_ = Math.sin(§2M§.§1?§.slingshot.§"'§ / (180 / Math.PI));
            this.§&9§.§ if§(_loc2_,new Point(_loc3_,_loc4_),§2M§.§1?§.slingshot.getLaunchSpeed());
            if(!this.§66§)
            {
               this.§66§ = true;
               §-#§.§4h§("Powerup_Laser_Sight","ChannelPowerups");
            }
         }
         else
         {
            this.§&9§.hide();
            this.§66§ = false;
         }
      }
      
      protected function §`Q§(param1:Number) : void
      {
         if(this.§8b§)
         {
            if(this.§8b§.§=!P§)
            {
               this.§8b§ = null;
               this.§+!1§ = -1;
            }
            else
            {
               this.§8b§.§`Q§(param1);
               if(this.§8b§.§>K§)
               {
                  if(this.§+!1§ > 0)
                  {
                     if(!this.§8b§.§3H§() || !this.§8b§.§3H§().IsActive())
                     {
                        this.§+!1§ = -1;
                        this.§8b§ = null;
                     }
                     else
                     {
                        this.§+!1§ -= param1;
                        if(this.§+!1§ <= 0)
                        {
                           this.§9!H§();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §,R§(param1:MouseEvent) : void
      {
         param1.preventDefault();
         this.§9!H§();
      }
      
      private function §9!H§() : void
      {
         if(this.§]!A§)
         {
            this.§]!A§.stop();
            this.§]!A§ = null;
         }
         §-#§.§4h§("Powerup_Bomb_Bang","ChannelPowerups");
         §2M§.§1?§.§5!_§.§8<§(this.§8b§,false,true,true);
         this.§+!1§ = -1;
         this.§@!C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,R§);
      }
      
      public function §7!n§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§?!L§ >= 0 && this.§?!L§ < §,![§.§5!8§)
         {
            _loc2_ = Math.sin(this.§?!L§ / §,![§.§5!8§ * (Math.PI * §,![§.§5"§) + this.§'4§);
            _loc3_ = _loc2_ * §,![§.§!!c§;
            _loc4_ = new b2Vec2(_loc3_,§2M§.§1?§.mLevelEngine.mWorld.§4K§().y);
            §2M§.§1?§.mLevelEngine.mWorld.§@!'§(_loc4_);
            ++this.§?!L§;
         }
         else if(this.§?!L§ == §,![§.§5!8§)
         {
            this.§?!L§ = -1;
            §2M§.§1?§.mLevelEngine.mWorld.§@!'§(new b2Vec2(0,§2M§.§1?§.mLevelEngine.mWorld.§4K§().y));
         }
         if(this.§!!F§)
         {
            if(!this.§!!F§.§!#§(§2M§.§1?§.camera,param1 * 1000))
            {
               this.§!!F§ = null;
            }
         }
      }
      
      private function §?!P§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§;q§ != null)
         {
            this.§@!D§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§;q§ = param1;
            (§2M§.§`r§ as § use§).mouseEnabled = false;
            this.§0w§ = §,![§.§ !R§;
            §2M§.§1?§.camera.setAction(!!param2 ? int(§-E§.§9!m§) : int(§-E§.§=!b§));
            §2M§.§1?§.camera.manualScale = !!param2 ? Number(§2M§.§1?§.camera.§ !S§) : Number(§2M§.§1?§.camera.§[!`§);
         }
      }
      
      private function §6!m§() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:§5u§ = (§2M§.§1?§.slingshot as §6!%§).§<!f§[(§2M§.§1?§.slingshot as §6!%§).§0!6§];
         var _loc2_:Number = §,![§.§>!§;
         switch(_loc1_.name)
         {
            case "BIRD_BLACK":
               _loc2_ = §,![§.§9g§;
               break;
            case "BIRD_BLUE":
               _loc2_ = §,![§.§&A§;
               break;
            case "BIRD_GREEN":
               _loc2_ = §,![§.§69§;
               break;
            case "BIRD_WHITE":
               _loc2_ = §,![§.§7V§;
               break;
            case "BIRD_YELLOW":
               _loc2_ = §,![§.§^!Q§;
               break;
            case "BIRD_RED":
               _loc2_ = §,![§.§]B§;
         }
         §-#§.§4h§("Powerup_Grow","ChannelPowerups");
         (§2M§.§1?§.slingshot as §6!%§).§+?§(_loc2_);
         var _loc3_:Vector.<§5u§> = §2M§.§1?§.slingshot.§<!f§;
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
               §2M§.§1?§.particles.§3X§(§,]§.§"@§,§7!N§.§<!Z§,§,]§.§in §,§2M§.§1?§.slingshot.§=y§,§2M§.§1?§.slingshot.§#J§,1250,"",§,]§.§0!l§(_loc3_[0].name),_loc9_ * Math.cos(_loc8_) * _loc6_,-_loc9_ * Math.sin(_loc8_) * _loc6_,5,_loc9_ * 20,Math.sqrt(_loc6_));
               _loc7_++;
            }
         }
      }
      
      private function §7!=§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         §-#§.§4h§("Wood_Destroyed1","ChannelPowerups");
         (§2M§.§1?§.slingshot as §6!%§).§"#§();
         var _loc1_:Vector.<§5u§> = §2M§.§1?§.slingshot.§<!f§;
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
               §2M§.§1?§.particles.§3X§(§,]§.§&!§,§7!N§.§<!Z§,§,]§.§in §,§2M§.§1?§.slingshot.§=y§,§2M§.§1?§.slingshot.§#J§ + Math.random() * 6,1250 + Math.random() * 500,"",§,]§.§1&§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §,L§() : void
      {
         §-#§.§4h§("Menu_Confirm","ChannelPowerups");
         this.§&9§.enabled = !this.§&9§.enabled;
      }
      
      private function §@!B§() : void
      {
         var _loc1_:Point = this.§@!C§.§5!C§();
         _loc1_ = §2M§.§1?§.screenToBox2D(_loc1_.x,_loc1_.y);
         var _loc2_:§9M§ = §2M§.§1?§.§5!_§.§@!2§();
         if(_loc2_ == null)
         {
            return;
         }
         this.§]!A§ = §-#§.§4h§("Powerup_Bomb_Fuse","ChannelPowerups");
         var _loc3_:Number = _loc2_.§%J§ + (Math.random() - 0.5) * §,![§.§<!?§;
         var _loc4_:Number = §2M§.§1?§.camera.§2!;§;
         this.§8b§ = this.§#![§().§;T§(_loc3_,_loc4_,0);
         this.§8b§.§3!6§ = true;
         this.§+!1§ = §,![§.§2!K§ * 1000;
         this.§@!C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§,R§);
      }
      
      private function §>t§() : void
      {
         var _loc3_:§9M§ = null;
         this.§@!C§.§2;§(Math.round(1000 * §=a§.§4![§ * §,![§.§5!8§));
         §-#§.§4h§("Powerup_Earthquake","ChannelPowerups");
         this.§?!L§ = 0;
         this.§'4§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §2M§.§1?§.objects.§8!H§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §2M§.§1?§.objects.§=!&§(_loc2_);
            if(_loc3_ is §;!O§ || _loc3_ is §4y§)
            {
               _loc3_.§3H§().SetAwake(true);
               if(_loc3_ is §4y§)
               {
                  (_loc3_ as §4y§).§@K§();
               }
            }
            _loc2_++;
         }
         this.§!!F§ = new §,_§(§,![§.§=!D§,§,![§.§@!n§);
      }
      
      private function §#![§() : §@9§
      {
         return §2M§.§1?§.§5!_§ as §@9§;
      }
      
      public function §[!c§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §9!A§.§4r§:
               this.§?!P§(this.§6!m§,false);
               break;
            case §9!A§.§!b§:
               this.§?!P§(this.§7!=§,false);
               break;
            case §9!A§.§ !q§:
               this.§?!P§(this.§,L§,true);
               break;
            case §9!A§.§"S§:
               this.§?!P§(this.§>t§,true);
               break;
            case §9!A§.§<W§:
               this.§?!P§(this.§@!B§,true);
         }
         this.§4!e§(param1);
         §6!P§.§5!!§.§[!c§(param1);
         (§2M§.§1?§ as §"r§).§[!c§(param1);
         var _loc2_:String = §;_§.§2!Q§;
         §6!>§.§2!]§(param1,_loc2_);
         return true;
      }
      
      public function §4!e§(param1:String) : void
      {
         var _loc2_:int = (§2M§.§1?§ as §"r§).§6#§();
         var _loc3_:§@![§ = new §@![§(param1,_loc2_);
         if(this.§&!f§ != null)
         {
            this.§4!T§.push(_loc3_);
         }
         else
         {
            this.§#!P§(_loc3_);
         }
      }
      
      protected function §#!P§(param1:§@![§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§"!K§ = null;
         if(!§!t§.§0P§(§;_§.§2!Q§))
         {
            _loc2_ = "useItem";
            _loc3_ = {};
            _loc3_.type = param1.§3N§;
            _loc3_.count = 1;
            (_loc4_ = []).push(_loc3_);
            _loc5_ = §"!K§.§ §(§!t§.§<1§.email,_loc4_);
            _loc6_ = {
               "id":§!t§.§<1§.email,
               "items":_loc4_,
               "itemsSecurity":_loc5_
            };
            _loc7_ = new §"!K§(_loc6_,§3![§.§=![§ + _loc2_,this,§"!K§.§<!4§);
            this.§&!f§ = param1;
            this.§&!f§.§,6§ = _loc7_;
         }
         else
         {
            this.§&!f§ = null;
            this.§2>§(true);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §`!q§.§-`§((param1.currentTarget as URLLoader).data);
         this.§&!f§ = null;
         this.§2>§(true);
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §2>§(param1:Boolean) : void
      {
         var _loc2_:§@![§ = null;
         if(param1)
         {
         }
         if(this.§4!T§.length > 0)
         {
            _loc2_ = this.§4!T§.shift();
            this.§#!P§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §[%§() : Boolean
      {
         return this.§&!f§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§@!C§)
         {
            this.§@!C§.mouseEnabled = true;
            this.§@!C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,R§);
         }
         this.§?!L§ = -1;
         this.§+!1§ = -1;
         this.§0w§ = -1;
         this.§!!F§ = null;
         this.§8b§ = null;
         this.§;q§ = null;
         this.§@!D§ = [];
         if(this.§]!A§)
         {
            this.§]!A§.stop();
            this.§]!A§ = null;
         }
      }
   }
}
