package §8!P§
{
   import § !1§.§8!Y§;
   import § !1§.§[n§;
   import §!!g§.§8d§;
   import §!R§.b2Vec2;
   import §&!K§.§3b§;
   import §&!K§.§^!3§;
   import §'Y§.§6Q§;
   import §-!#§.§5!6§;
   import §-!#§.§;'§;
   import §1!D§.§]!§;
   import §2o§.§<H§;
   import §5!G§.§6!Y§;
   import §5!G§.§8L§;
   import §5!G§.§;p§;
   import §5!o§.§0!V§;
   import §;!-§.§#Y§;
   import §;!-§.§++§;
   import §?;§.§ !8§;
   import §?H§.§>!!§;
   import §@!b§.§0]§;
   import §@!b§.§3!C§;
   import §@!b§.§7!@§;
   import §@!b§.§>f§;
   import §@!b§.§^j§;
   import §`!d§.§7!§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import §throw§.§3M§;
   
   public class §;!5§ extends EventDispatcher implements §[n§
   {
      
      private static const §2;§:Array = [§;S§.§4I§,§;S§.§2!_§,§;S§.§1?§,§;S§.§<I§,§;S§.§',§,§;S§.MIGHTY_EAGLE];
       
      
      private var §2p§:§3!C§;
      
      private var §^Q§:Boolean = false;
      
      private var §6>§:§>f§;
      
      private var §'Z§:int = -1;
      
      private var §>!D§:Number;
      
      private var §@"§:Function;
      
      private var §;! §:Array;
      
      private var §?F§:Number = -1;
      
      private var §3=§:§3M§;
      
      private var §&!_§:Number = -1;
      
      private var § !e§:§;'§;
      
      private var §!Y§:Vector.<§?!G§>;
      
      private var §`I§:§?!G§;
      
      private var § Q§:§ !8§;
      
      public function §;!5§()
      {
         this.§;! § = [];
         this.§!Y§ = new Vector.<§?!G§>();
         super();
      }
      
      public static function §<!#§(param1:String) : int
      {
         return §2;§.indexOf(param1);
      }
      
      public function get §'G§() : int
      {
         return this.§!Y§.length;
      }
      
      public function init() : void
      {
         this.§'Z§ = -1;
         this.§?F§ = -1;
         this.§6>§ = null;
         this.§&!_§ = -1;
         this.§3=§ = null;
         this.§@"§ = null;
         this.§;! § = [];
         this.§ Q§.mouseEnabled = true;
         this.§2p§ = new §3!C§(§<H§.§=3§.mLevelEngine.mWorld.§-d§().y);
      }
      
      public function reset() : void
      {
         while(this.§!Y§.length > 0)
         {
            this.§!Y§.shift();
         }
         if(this.§`I§)
         {
            try
            {
               this.§`I§.§6!-§.dispose();
            }
            catch(e:Error)
            {
            }
            this.§`I§ = null;
         }
      }
      
      public function setController(param1:§ !8§) : void
      {
         if(this.§ Q§ == param1)
         {
            return;
         }
         if(!this.§ Q§)
         {
         }
         this.§ Q§ = param1;
         this.init();
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(!this.§ Q§)
         {
            return;
         }
         this.§=!S§(param1);
         this.§2P§(param1);
         if(this.§?F§ > 0)
         {
            this.§?F§ -= param1;
            if(this.§?F§ <= 0)
            {
               this.§@"§();
               this.§@"§ = null;
               (§<H§.§ u§ as § !8§).mouseEnabled = true;
               if(this.§;! §.length > 0)
               {
                  _loc2_ = this.§;! §.shift();
                  this.§+!'§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function §2P§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Point = §<H§.§=3§.slingshot.§6D§();
         if(this.§2p§.enabled && _loc2_ != null && §<H§.§=3§.slingshot.mDragging)
         {
            _loc3_ = -Math.cos(§<H§.§=3§.slingshot.§'!"§ / (180 / Math.PI));
            _loc4_ = Math.sin(§<H§.§=3§.slingshot.§'!"§ / (180 / Math.PI));
            this.§2p§.§3!&§(_loc2_,new Point(_loc3_,_loc4_),§<H§.§=3§.slingshot.getLaunchSpeed());
            if(!this.§^Q§)
            {
               this.§^Q§ = true;
               §5!6§.§8!G§("Powerup_Laser_Sight","ChannelPowerups");
            }
         }
         else
         {
            this.§2p§.hide();
            this.§^Q§ = false;
         }
      }
      
      protected function §=!S§(param1:Number) : void
      {
         if(this.§3=§)
         {
            if(this.§3=§.§@e§)
            {
               this.§3=§ = null;
               this.§&!_§ = -1;
            }
            else
            {
               this.§3=§.§=!S§(param1);
               if(this.§3=§.§=!+§)
               {
                  if(this.§&!_§ > 0)
                  {
                     if(!this.§3=§.§>j§() || !this.§3=§.§>j§().IsActive())
                     {
                        this.§&!_§ = -1;
                        this.§3=§ = null;
                     }
                     else
                     {
                        this.§&!_§ -= param1;
                        if(this.§&!_§ <= 0)
                        {
                           this.§3`§();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §?!X§(param1:MouseEvent) : void
      {
         param1.preventDefault();
         this.§3`§();
      }
      
      private function §3`§() : void
      {
         if(this.§ !e§)
         {
            this.§ !e§.stop();
            this.§ !e§ = null;
         }
         §5!6§.§8!G§("Powerup_Bomb_Bang","ChannelPowerups");
         §<H§.§=3§.§`q§.§&9§(this.§3=§,false,true,true);
         this.§&!_§ = -1;
         this.§ Q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?!X§);
      }
      
      public function §!E§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§'Z§ >= 0 && this.§'Z§ < §0]§.§22§)
         {
            _loc2_ = Math.sin(this.§'Z§ / §0]§.§22§ * (Math.PI * §0]§.§4!n§) + this.§>!D§);
            _loc3_ = _loc2_ * §0]§.§ else§;
            _loc4_ = new b2Vec2(_loc3_,§<H§.§=3§.mLevelEngine.mWorld.§-d§().y);
            §<H§.§=3§.mLevelEngine.mWorld.§1l§(_loc4_);
            ++this.§'Z§;
         }
         else if(this.§'Z§ == §0]§.§22§)
         {
            this.§'Z§ = -1;
            §<H§.§=3§.mLevelEngine.mWorld.§1l§(new b2Vec2(0,§<H§.§=3§.mLevelEngine.mWorld.§-d§().y));
         }
         if(this.§6>§)
         {
            if(!this.§6>§.§7;§(§<H§.§=3§.camera,param1 * 1000))
            {
               this.§6>§ = null;
            }
         }
      }
      
      private function §+!'§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§@"§ != null)
         {
            this.§;! §.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§@"§ = param1;
            (§<H§.§ u§ as § !8§).mouseEnabled = false;
            this.§?F§ = §0]§.§;i§;
            §<H§.§=3§.camera.setAction(!!param2 ? int(§8d§.§@`§) : int(§8d§.§1Z§));
            §<H§.§=3§.camera.manualScale = !!param2 ? Number(§<H§.§=3§.camera.§=%§) : Number(§<H§.§=3§.camera.§]J§);
         }
      }
      
      private function §2i§() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:§^j§ = (§<H§.§=3§.slingshot as §#Y§).§ N§[(§<H§.§=3§.slingshot as §#Y§).§7!2§];
         var _loc2_:Number = §0]§.§-!K§;
         switch(_loc1_.name)
         {
            case "BIRD_BLACK":
               _loc2_ = §0]§.§[!b§;
               break;
            case "BIRD_BLUE":
               _loc2_ = §0]§.§`!%§;
               break;
            case "BIRD_GREEN":
               _loc2_ = §0]§.§%!b§;
               break;
            case "BIRD_WHITE":
               _loc2_ = §0]§.§,!_§;
               break;
            case "BIRD_YELLOW":
               _loc2_ = §0]§.§5!0§;
               break;
            case "BIRD_RED":
               _loc2_ = §0]§.§"!;§;
         }
         §5!6§.§8!G§("Powerup_Grow","ChannelPowerups");
         (§<H§.§=3§.slingshot as §#Y§).§07§(_loc2_);
         var _loc3_:Vector.<§^j§> = §<H§.§=3§.slingshot.§ N§;
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
               §<H§.§=3§.particles.§"!S§(§^!3§.§!!d§,§3b§.§;-§,§^!3§.§@<§,§<H§.§=3§.slingshot.§;b§,§<H§.§=3§.slingshot.§[!5§,1250,"",§^!3§.§ !N§(_loc3_[0].name),_loc9_ * Math.cos(_loc8_) * _loc6_,-_loc9_ * Math.sin(_loc8_) * _loc6_,5,_loc9_ * 20,Math.sqrt(_loc6_));
               _loc7_++;
            }
         }
      }
      
      private function §;!$§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         §5!6§.§8!G§("Wood_Destroyed1","ChannelPowerups");
         (§<H§.§=3§.slingshot as §#Y§).§=G§();
         var _loc1_:Vector.<§^j§> = §<H§.§=3§.slingshot.§ N§;
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
               §<H§.§=3§.particles.§"!S§(§^!3§.§21§,§3b§.§;-§,§^!3§.§@<§,§<H§.§=3§.slingshot.§;b§,§<H§.§=3§.slingshot.§[!5§ + Math.random() * 6,1250 + Math.random() * 500,"",§^!3§.§^!S§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §%!G§() : void
      {
         §5!6§.§8!G§("Menu_Confirm","ChannelPowerups");
         this.§2p§.enabled = !this.§2p§.enabled;
      }
      
      private function §1!S§() : void
      {
         var _loc1_:Point = this.§ Q§.§^n§();
         _loc1_ = §<H§.§=3§.screenToBox2D(_loc1_.x,_loc1_.y);
         var _loc2_:§6!Y§ = §<H§.§=3§.§`q§.§2G§();
         if(_loc2_ == null)
         {
            return;
         }
         this.§ !e§ = §5!6§.§8!G§("Powerup_Bomb_Fuse","ChannelPowerups");
         var _loc3_:Number = _loc2_.§ k§ + (Math.random() - 0.5) * §0]§.§0r§;
         var _loc4_:Number = §<H§.§=3§.camera.§finally§;
         this.§3=§ = this.§ 6§().§=!a§(_loc3_,_loc4_,0);
         this.§3=§.§5?§ = true;
         this.§&!_§ = §0]§.§ +§ * 1000;
         this.§ Q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!X§);
      }
      
      private function §9;§() : void
      {
         var _loc3_:§6!Y§ = null;
         this.§ Q§.§`! §(Math.round(1000 * §7!@§.§15§ * §0]§.§22§));
         §5!6§.§8!G§("Powerup_Earthquake","ChannelPowerups");
         this.§'Z§ = 0;
         this.§>!D§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §<H§.§=3§.objects.§9!]§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §<H§.§=3§.objects.§'r§(_loc2_);
            if(_loc3_ is §;p§ || _loc3_ is §8L§)
            {
               _loc3_.§>j§().SetAwake(true);
               if(_loc3_ is §8L§)
               {
                  (_loc3_ as §8L§).§@3§();
               }
            }
            _loc2_++;
         }
         this.§6>§ = new §>f§(§0]§.§3I§,§0]§.§@!]§);
      }
      
      private function § 6§() : §0!V§
      {
         return §<H§.§=3§.§`q§ as §0!V§;
      }
      
      public function §9H§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §;S§.§4I§:
               this.§+!'§(this.§2i§,false);
               break;
            case §;S§.§2!_§:
               this.§+!'§(this.§;!$§,false);
               break;
            case §;S§.§1?§:
               this.§+!'§(this.§%!G§,true);
               break;
            case §;S§.§<I§:
               this.§+!'§(this.§9;§,true);
               break;
            case §;S§.§',§:
               this.§+!'§(this.§1!S§,true);
         }
         this.§#p§(param1);
         §5e§.§>E§.§9H§(param1);
         (§<H§.§=3§ as §++§).§9H§(param1);
         var _loc2_:String = §7!§.§+e§;
         §]!§.§7!;§(param1,_loc2_);
         return true;
      }
      
      public function §#p§(param1:String) : void
      {
         var _loc2_:int = (§<H§.§=3§ as §++§).§ !S§();
         var _loc3_:§?!G§ = new §?!G§(param1,_loc2_);
         if(this.§`I§ != null)
         {
            this.§!Y§.push(_loc3_);
         }
         else
         {
            this.§ 8§(_loc3_);
         }
      }
      
      protected function § 8§(param1:§?!G§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§6Q§ = null;
         if(!§>!!§.§8S§(§7!§.§+e§))
         {
            _loc2_ = "useItem";
            _loc3_ = {};
            _loc3_.type = param1.§continue§;
            _loc3_.count = 1;
            (_loc4_ = []).push(_loc3_);
            _loc5_ = §6Q§.§+$§(§>!!§.§^!4§.email,_loc4_);
            _loc6_ = {
               "id":§>!!§.§^!4§.email,
               "items":_loc4_,
               "itemsSecurity":_loc5_
            };
            _loc7_ = new §6Q§(_loc6_,§;!4§.§'!O§ + _loc2_,this,§6Q§.§&!0§);
            this.§`I§ = param1;
            this.§`I§.§6!-§ = _loc7_;
         }
         else
         {
            this.§`I§ = null;
            this.§9!h§(true);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §8!Y§.§%f§((param1.currentTarget as URLLoader).data);
         this.§`I§ = null;
         this.§9!h§(true);
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §9!h§(param1:Boolean) : void
      {
         var _loc2_:§?!G§ = null;
         if(param1)
         {
         }
         if(this.§!Y§.length > 0)
         {
            _loc2_ = this.§!Y§.shift();
            this.§ 8§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §]y§() : Boolean
      {
         return this.§`I§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§ Q§)
         {
            this.§ Q§.mouseEnabled = true;
            this.§ Q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?!X§);
         }
         this.§'Z§ = -1;
         this.§&!_§ = -1;
         this.§?F§ = -1;
         this.§6>§ = null;
         this.§3=§ = null;
         this.§@"§ = null;
         this.§;! § = [];
         if(this.§ !e§)
         {
            this.§ !e§.stop();
            this.§ !e§ = null;
         }
      }
   }
}
