package §?7§
{
   import § !Y§.§2#§;
   import §,i§.§7;§;
   import §0!8§.§;2§;
   import §0,§.b2Vec2;
   import §2G§.§;!j§;
   import §3!@§.§"R§;
   import §3!@§.§'!0§;
   import §3!@§.§'=§;
   import §3!@§.§>a§;
   import §3!@§.§^!c§;
   import §<Z§.§!!W§;
   import §<Z§.§"!8§;
   import §=b§.§,!G§;
   import §?!§.§%o§;
   import §?!§.§+X§;
   import §?!§.§-=§;
   import §?!P§.§4!-§;
   import §?!P§.§65§;
   import §?!g§.§ !d§;
   import §?!g§.§-!B§;
   import §?I§.§'k§;
   import §[!L§.§#!`§;
   import §^U§.§3$§;
   import §`R§.§8#§;
   import §`R§.§^!,§;
   import §finally§.§8k§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   
   public class §=!,§ extends EventDispatcher implements §!!W§
   {
      
      private static const §8!I§:Array = [§ 0§.§-H§,§ 0§.§#9§,§ 0§.§#!T§,§ 0§.§&$§,§ 0§.§#!K§,§ 0§.MIGHTY_EAGLE];
       
      
      private var §4!H§:§>a§;
      
      private var §%B§:Boolean = false;
      
      private var §,w§:§"R§;
      
      private var §6'§:int = -1;
      
      private var §6#§:Number;
      
      private var §#!R§:Function;
      
      private var §`t§:Array;
      
      private var §2!3§:Number = -1;
      
      private var §7m§:§;2§;
      
      private var §6"§:Number = -1;
      
      private var §1_§:§-!B§;
      
      private var §4!X§:Vector.<§<!B§>;
      
      private var §-O§:§<!B§;
      
      private var §,!c§:§#!`§;
      
      public function §=!,§()
      {
         this.§`t§ = [];
         this.§4!X§ = new Vector.<§<!B§>();
         super();
      }
      
      public static function §;!e§(param1:String) : int
      {
         return §8!I§.indexOf(param1);
      }
      
      public function get §+%§() : int
      {
         return this.§4!X§.length;
      }
      
      public function init() : void
      {
         this.§6'§ = -1;
         this.§2!3§ = -1;
         this.§,w§ = null;
         this.§6"§ = -1;
         this.§7m§ = null;
         this.§#!R§ = null;
         this.§`t§ = [];
         this.§,!c§.mouseEnabled = true;
         this.§4!H§ = new §>a§(§2#§.§"@§.mLevelEngine.mWorld.§!!2§().y);
      }
      
      public function reset() : void
      {
         while(this.§4!X§.length > 0)
         {
            this.§4!X§.shift();
         }
         if(this.§-O§)
         {
            try
            {
               this.§-O§.§<=§.dispose();
            }
            catch(e:Error)
            {
            }
            this.§-O§ = null;
         }
      }
      
      public function setController(param1:§#!`§) : void
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
         this.§&+§(param1);
         this.§5a§(param1);
         if(this.§2!3§ > 0)
         {
            this.§2!3§ -= param1;
            if(this.§2!3§ <= 0)
            {
               this.§#!R§();
               this.§#!R§ = null;
               (§2#§.§[I§ as §#!`§).mouseEnabled = true;
               if(this.§`t§.length > 0)
               {
                  _loc2_ = this.§`t§.shift();
                  this.§&Q§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function §5a§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Point = §2#§.§"@§.slingshot.§@&§();
         if(this.§4!H§.enabled && _loc2_ != null && §2#§.§"@§.slingshot.mDragging)
         {
            _loc3_ = -Math.cos(§2#§.§"@§.slingshot.§+§ / (180 / Math.PI));
            _loc4_ = Math.sin(§2#§.§"@§.slingshot.§+§ / (180 / Math.PI));
            this.§4!H§.§1j§(_loc2_,new Point(_loc3_,_loc4_),§2#§.§"@§.slingshot.getLaunchSpeed());
            if(!this.§%B§)
            {
               this.§%B§ = true;
               § !d§.§-h§("Powerup_Laser_Sight","ChannelPowerups");
            }
         }
         else
         {
            this.§4!H§.hide();
            this.§%B§ = false;
         }
      }
      
      protected function §&+§(param1:Number) : void
      {
         if(this.§7m§)
         {
            if(this.§7m§.§<r§)
            {
               this.§7m§ = null;
               this.§6"§ = -1;
            }
            else
            {
               this.§7m§.§&+§(param1);
               if(this.§7m§.§!!g§)
               {
                  if(this.§6"§ > 0)
                  {
                     if(!this.§7m§.§2!!§() || !this.§7m§.§2!!§().IsActive())
                     {
                        this.§6"§ = -1;
                        this.§7m§ = null;
                     }
                     else
                     {
                        this.§6"§ -= param1;
                        if(this.§6"§ <= 0)
                        {
                           this.§?!#§();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §%R§(param1:MouseEvent) : void
      {
         param1.preventDefault();
         this.§?!#§();
      }
      
      private function §?!#§() : void
      {
         if(this.§1_§)
         {
            this.§1_§.stop();
            this.§1_§ = null;
         }
         § !d§.§-h§("Powerup_Bomb_Bang","ChannelPowerups");
         §2#§.§"@§.§^!8§.§##§(this.§7m§,false,true,true);
         this.§6"§ = -1;
         this.§,!c§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%R§);
      }
      
      public function §!u§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§6'§ >= 0 && this.§6'§ < §'!0§.§+!U§)
         {
            _loc2_ = Math.sin(this.§6'§ / §'!0§.§+!U§ * (Math.PI * §'!0§.§6!p§) + this.§6#§);
            _loc3_ = _loc2_ * §'!0§.§+!T§;
            _loc4_ = new b2Vec2(_loc3_,§2#§.§"@§.mLevelEngine.mWorld.§!!2§().y);
            §2#§.§"@§.mLevelEngine.mWorld.§%!9§(_loc4_);
            ++this.§6'§;
         }
         else if(this.§6'§ == §'!0§.§+!U§)
         {
            this.§6'§ = -1;
            §2#§.§"@§.mLevelEngine.mWorld.§%!9§(new b2Vec2(0,§2#§.§"@§.mLevelEngine.mWorld.§!!2§().y));
         }
         if(this.§,w§)
         {
            if(!this.§,w§.§<!p§(§2#§.§"@§.camera,param1 * 1000))
            {
               this.§,w§ = null;
            }
         }
      }
      
      private function §&Q§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§#!R§ != null)
         {
            this.§`t§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§#!R§ = param1;
            (§2#§.§[I§ as §#!`§).mouseEnabled = false;
            this.§2!3§ = §'!0§.§53§;
            §2#§.§"@§.camera.setAction(!!param2 ? int(§3$§.§%8§) : int(§3$§.§0!I§));
            §2#§.§"@§.camera.manualScale = !!param2 ? Number(§2#§.§"@§.camera.§1f§) : Number(§2#§.§"@§.camera.§&P§);
         }
      }
      
      private function §[c§() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:§^!c§ = (§2#§.§"@§.slingshot as §^!,§).§0n§[(§2#§.§"@§.slingshot as §^!,§).§%2§];
         var _loc2_:Number = §'!0§.§'a§;
         switch(_loc1_.name)
         {
            case "BIRD_BLACK":
               _loc2_ = §'!0§.§[!e§;
               break;
            case "BIRD_BLUE":
               _loc2_ = §'!0§.§=>§;
               break;
            case "BIRD_GREEN":
               _loc2_ = §'!0§.§7!@§;
               break;
            case "BIRD_WHITE":
               _loc2_ = §'!0§.§,@§;
               break;
            case "BIRD_YELLOW":
               _loc2_ = §'!0§.§ !n§;
               break;
            case "BIRD_RED":
               _loc2_ = §'!0§.§'B§;
         }
         § !d§.§-h§("Powerup_Grow","ChannelPowerups");
         (§2#§.§"@§.slingshot as §^!,§).§^!W§(_loc2_);
         var _loc3_:Vector.<§^!c§> = §2#§.§"@§.slingshot.§0n§;
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
               §2#§.§"@§.particles.§ D§(§65§.§;!m§,§4!-§.§&#§,§65§.§ k§,§2#§.§"@§.slingshot.§ !^§,§2#§.§"@§.slingshot.§0p§,1250,"",§65§.§"!o§(_loc3_[0].name),_loc9_ * Math.cos(_loc8_) * _loc6_,-_loc9_ * Math.sin(_loc8_) * _loc6_,5,_loc9_ * 20,Math.sqrt(_loc6_));
               _loc7_++;
            }
         }
      }
      
      private function §^!"§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         § !d§.§-h§("Wood_Destroyed1","ChannelPowerups");
         (§2#§.§"@§.slingshot as §^!,§).§=0§();
         var _loc1_:Vector.<§^!c§> = §2#§.§"@§.slingshot.§0n§;
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
               §2#§.§"@§.particles.§ D§(§65§.§7!Z§,§4!-§.§&#§,§65§.§ k§,§2#§.§"@§.slingshot.§ !^§,§2#§.§"@§.slingshot.§0p§ + Math.random() * 6,1250 + Math.random() * 500,"",§65§.§9E§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §3!'§() : void
      {
         § !d§.§-h§("Menu_Confirm","ChannelPowerups");
         this.§4!H§.enabled = !this.§4!H§.enabled;
      }
      
      private function §?![§() : void
      {
         var _loc1_:Point = this.§,!c§.§8z§();
         _loc1_ = §2#§.§"@§.screenToBox2D(_loc1_.x,_loc1_.y);
         var _loc2_:§%o§ = §2#§.§"@§.§^!8§.§4!T§();
         if(_loc2_ == null)
         {
            return;
         }
         this.§1_§ = § !d§.§-h§("Powerup_Bomb_Fuse","ChannelPowerups");
         var _loc3_:Number = _loc2_.§'!^§ + (Math.random() - 0.5) * §'!0§.§#!e§;
         var _loc4_:Number = §2#§.§"@§.camera.§'!_§;
         this.§7m§ = this.§ o§().§@u§(_loc3_,_loc4_,0);
         this.§7m§.§ for§ = true;
         this.§6"§ = §'!0§.§"!F§ * 1000;
         this.§,!c§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%R§);
      }
      
      private function §"S§() : void
      {
         var _loc3_:§%o§ = null;
         this.§,!c§.§&!_§(Math.round(1000 * §'=§.§+o§ * §'!0§.§+!U§));
         § !d§.§-h§("Powerup_Earthquake","ChannelPowerups");
         this.§6'§ = 0;
         this.§6#§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §2#§.§"@§.objects.§?^§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §2#§.§"@§.objects.§2h§(_loc2_);
            if(_loc3_ is §-=§ || _loc3_ is §+X§)
            {
               _loc3_.§2!!§().SetAwake(true);
               if(_loc3_ is §+X§)
               {
                  (_loc3_ as §+X§).§3!B§();
               }
            }
            _loc2_++;
         }
         this.§,w§ = new §"R§(§'!0§.§%!C§,§'!0§.§&!b§);
      }
      
      private function § o§() : §;!j§
      {
         return §2#§.§"@§.§^!8§ as §;!j§;
      }
      
      public function §1![§(param1:String) : Boolean
      {
         switch(param1)
         {
            case § 0§.§-H§:
               this.§&Q§(this.§[c§,false);
               break;
            case § 0§.§#9§:
               this.§&Q§(this.§^!"§,false);
               break;
            case § 0§.§#!T§:
               this.§&Q§(this.§3!'§,true);
               break;
            case § 0§.§&$§:
               this.§&Q§(this.§"S§,true);
               break;
            case § 0§.§#!K§:
               this.§&Q§(this.§?![§,true);
         }
         this.§4!l§(param1);
         §87§.§@!7§.§1![§(param1);
         (§2#§.§"@§ as §8#§).§1![§(param1);
         var _loc2_:String = §8k§.§8h§;
         §'k§.§<"§(param1,_loc2_);
         return true;
      }
      
      public function §4!l§(param1:String) : void
      {
         var _loc2_:int = (§2#§.§"@§ as §8#§).§@!D§();
         var _loc3_:§<!B§ = new §<!B§(param1,_loc2_);
         if(this.§-O§ != null)
         {
            this.§4!X§.push(_loc3_);
         }
         else
         {
            this.§6!U§(_loc3_);
         }
      }
      
      protected function §6!U§(param1:§<!B§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§7;§ = null;
         if(!§,!G§.§0g§(§8k§.§8h§))
         {
            _loc2_ = "useItem";
            _loc3_ = {};
            _loc3_.type = param1.§0!;§;
            _loc3_.count = 1;
            (_loc4_ = []).push(_loc3_);
            _loc5_ = §7;§.§'![§(§,!G§.§-!8§.email,_loc4_);
            _loc6_ = {
               "id":§,!G§.§-!8§.email,
               "items":_loc4_,
               "itemsSecurity":_loc5_
            };
            _loc7_ = new §7;§(_loc6_,§2!M§.§`8§ + _loc2_,this,§7;§.§[%§);
            this.§-O§ = param1;
            this.§-O§.§<=§ = _loc7_;
         }
         else
         {
            this.§-O§ = null;
            this.§ R§(true);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §"!8§.§&!p§((param1.currentTarget as URLLoader).data);
         this.§-O§ = null;
         this.§ R§(true);
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
      }
      
      protected function § R§(param1:Boolean) : void
      {
         var _loc2_:§<!B§ = null;
         if(param1)
         {
         }
         if(this.§4!X§.length > 0)
         {
            _loc2_ = this.§4!X§.shift();
            this.§6!U§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §]T§() : Boolean
      {
         return this.§-O§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§,!c§)
         {
            this.§,!c§.mouseEnabled = true;
            this.§,!c§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%R§);
         }
         this.§6'§ = -1;
         this.§6"§ = -1;
         this.§2!3§ = -1;
         this.§,w§ = null;
         this.§7m§ = null;
         this.§#!R§ = null;
         this.§`t§ = [];
         if(this.§1_§)
         {
            this.§1_§.stop();
            this.§1_§ = null;
         }
      }
   }
}
