package §7!>§
{
   import § e§.§?`§;
   import §"!g§.§`!B§;
   import §"2§.§9-§;
   import §"2§.§>!G§;
   import §#M§.§+!Z§;
   import §5!L§.§"!T§;
   import §5!L§.§,!&§;
   import §5!L§.§-!2§;
   import §7!Q§.§[!5§;
   import §7_§.§^d§;
   import §8!§.§'F§;
   import §8!§.§9!-§;
   import §<L§.§!!e§;
   import §<L§.§&E§;
   import §<L§.§+5§;
   import §<L§.§6H§;
   import §<L§.§95§;
   import §>!<§.§-E§;
   import §@![§.b2Vec2;
   import §@!^§.§`§;
   import §[!V§.§]J§;
   import §[!_§.§8U§;
   import §^!K§.§ !$§;
   import §^!K§.§9N§;
   import §`!@§.§!!Y§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   
   public class §"!B§ extends EventDispatcher implements §[!X§
   {
      
      private static const § !a§:Array = [§4y§.§`]§,§4y§.§9K§,§4y§.§%C§,§4y§.§+&§,§4y§.§-!m§,§4y§.MIGHTY_EAGLE];
       
      
      private var §=M§:§!!e§;
      
      private var §@!1§:Boolean = false;
      
      private var §6x§:§+5§;
      
      private var §]!o§:int = -1;
      
      private var §>!]§:Number;
      
      private var §,!Q§:Function;
      
      private var §5!Z§:Array;
      
      private var §<D§:Number = -1;
      
      private var §?^§:§`§;
      
      private var §?!]§:Number = -1;
      
      private var §"c§:§9N§;
      
      private var §1!$§:Vector.<§4!&§>;
      
      private var §[4§:§4!&§;
      
      private var §&!N§:§`!B§;
      
      public function §"!B§()
      {
         this.§5!Z§ = [];
         this.§1!$§ = new Vector.<§4!&§>();
         super();
      }
      
      public static function §'3§(param1:String) : int
      {
         return § !a§.indexOf(param1);
      }
      
      public function get §!P§() : int
      {
         return this.§1!$§.length;
      }
      
      public function init() : void
      {
         this.§]!o§ = -1;
         this.§<D§ = -1;
         this.§6x§ = null;
         this.§?!]§ = -1;
         this.§?^§ = null;
         this.§,!Q§ = null;
         this.§5!Z§ = [];
         this.§&!N§.mouseEnabled = true;
         this.§=M§ = new §!!e§(§+!Z§.§?!<§.mLevelEngine.mWorld.§<e§().y);
      }
      
      public function reset() : void
      {
         while(this.§1!$§.length > 0)
         {
            this.§1!$§.shift();
         }
         if(this.§[4§)
         {
            try
            {
               this.§[4§.§`!F§.dispose();
            }
            catch(e:Error)
            {
            }
            this.§[4§ = null;
         }
      }
      
      public function setController(param1:§`!B§) : void
      {
         if(this.§&!N§ == param1)
         {
            return;
         }
         if(!this.§&!N§)
         {
         }
         this.§&!N§ = param1;
         this.init();
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Object = null;
         if(!this.§&!N§)
         {
            return;
         }
         this.§"!_§(param1);
         this.§1!Z§(param1);
         if(this.§<D§ > 0)
         {
            this.§<D§ -= param1;
            if(this.§<D§ <= 0)
            {
               this.§,!Q§();
               this.§,!Q§ = null;
               (§+!Z§.§8j§ as §`!B§).mouseEnabled = true;
               if(this.§5!Z§.length > 0)
               {
                  _loc2_ = this.§5!Z§.shift();
                  this.§1!X§(_loc2_.powerupFunction,_loc2_.gotoCastleSide);
               }
            }
         }
      }
      
      protected function §1!Z§(param1:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Point = §+!Z§.§?!<§.slingshot.§5B§();
         if(this.§=M§.enabled && _loc2_ != null && §+!Z§.§?!<§.slingshot.mDragging)
         {
            _loc3_ = -Math.cos(§+!Z§.§?!<§.slingshot.§-!M§ / (180 / Math.PI));
            _loc4_ = Math.sin(§+!Z§.§?!<§.slingshot.§-!M§ / (180 / Math.PI));
            this.§=M§.§1^§(_loc2_,new Point(_loc3_,_loc4_),§+!Z§.§?!<§.slingshot.getLaunchSpeed());
            if(!this.§@!1§)
            {
               this.§@!1§ = true;
               § !$§.§-N§("Powerup_Laser_Sight","ChannelPowerups");
            }
         }
         else
         {
            this.§=M§.hide();
            this.§@!1§ = false;
         }
      }
      
      protected function §"!_§(param1:Number) : void
      {
         if(this.§?^§)
         {
            if(this.§?^§.§[!<§)
            {
               this.§?^§ = null;
               this.§?!]§ = -1;
            }
            else
            {
               this.§?^§.§"!_§(param1);
               if(this.§?^§.§?O§)
               {
                  if(this.§?!]§ > 0)
                  {
                     if(!this.§?^§.§;G§() || !this.§?^§.§;G§().IsActive())
                     {
                        this.§?!]§ = -1;
                        this.§?^§ = null;
                     }
                     else
                     {
                        this.§?!]§ -= param1;
                        if(this.§?!]§ <= 0)
                        {
                           this.§-!H§();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function § !k§(param1:MouseEvent) : void
      {
         param1.preventDefault();
         this.§-!H§();
      }
      
      private function §-!H§() : void
      {
         if(this.§"c§)
         {
            this.§"c§.stop();
            this.§"c§ = null;
         }
         § !$§.§-N§("Powerup_Bomb_Bang","ChannelPowerups");
         §+!Z§.§?!<§.§5G§.§;1§(this.§?^§,false,true,true);
         this.§?!]§ = -1;
         this.§&!N§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !k§);
      }
      
      public function §]!=§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§]!o§ >= 0 && this.§]!o§ < §6H§.§9I§)
         {
            _loc2_ = Math.sin(this.§]!o§ / §6H§.§9I§ * (Math.PI * §6H§.§+!;§) + this.§>!]§);
            _loc3_ = _loc2_ * §6H§.§`!M§;
            _loc4_ = new b2Vec2(_loc3_,§+!Z§.§?!<§.mLevelEngine.mWorld.§<e§().y);
            §+!Z§.§?!<§.mLevelEngine.mWorld.§7!;§(_loc4_);
            ++this.§]!o§;
         }
         else if(this.§]!o§ == §6H§.§9I§)
         {
            this.§]!o§ = -1;
            §+!Z§.§?!<§.mLevelEngine.mWorld.§7!;§(new b2Vec2(0,§+!Z§.§?!<§.mLevelEngine.mWorld.§<e§().y));
         }
         if(this.§6x§)
         {
            if(!this.§6x§.§+E§(§+!Z§.§?!<§.camera,param1 * 1000))
            {
               this.§6x§ = null;
            }
         }
      }
      
      private function §1!X§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§,!Q§ != null)
         {
            this.§5!Z§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§,!Q§ = param1;
            (§+!Z§.§8j§ as §`!B§).mouseEnabled = false;
            this.§<D§ = §6H§.§`!;§;
            §+!Z§.§?!<§.camera.setAction(!!param2 ? int(§8U§.§"L§) : int(§8U§.§"t§));
            §+!Z§.§?!<§.camera.manualScale = !!param2 ? Number(§+!Z§.§?!<§.camera.§ !M§) : Number(§+!Z§.§?!<§.camera.§2f§);
         }
      }
      
      private function §[!f§() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc1_:§&E§ = (§+!Z§.§?!<§.slingshot as §>!G§).§ &§[(§+!Z§.§?!<§.slingshot as §>!G§).§'J§];
         var _loc2_:Number = §6H§.§ 2§;
         switch(_loc1_.name)
         {
            case "BIRD_BLACK":
               _loc2_ = §6H§.§%A§;
               break;
            case "BIRD_BLUE":
               _loc2_ = §6H§.§'+§;
               break;
            case "BIRD_GREEN":
               _loc2_ = §6H§.§[D§;
               break;
            case "BIRD_WHITE":
               _loc2_ = §6H§.§]m§;
               break;
            case "BIRD_YELLOW":
               _loc2_ = §6H§.§3x§;
               break;
            case "BIRD_RED":
               _loc2_ = §6H§.§0!S§;
         }
         § !$§.§-N§("Powerup_Grow","ChannelPowerups");
         (§+!Z§.§?!<§.slingshot as §>!G§).§"!N§(_loc2_);
         var _loc3_:Vector.<§&E§> = §+!Z§.§?!<§.slingshot.§ &§;
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
               §+!Z§.§?!<§.particles.§]!5§(§9!-§.§`!f§,§'F§.§8e§,§9!-§.§7=§,§+!Z§.§?!<§.slingshot.§+p§,§+!Z§.§?!<§.slingshot.§,,§,1250,"",§9!-§.§4!^§(_loc3_[0].name),_loc9_ * Math.cos(_loc8_) * _loc6_,-_loc9_ * Math.sin(_loc8_) * _loc6_,5,_loc9_ * 20,Math.sqrt(_loc6_));
               _loc7_++;
            }
         }
      }
      
      private function §@!9§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         § !$§.§-N§("Wood_Destroyed1","ChannelPowerups");
         (§+!Z§.§?!<§.slingshot as §>!G§).§set §();
         var _loc1_:Vector.<§&E§> = §+!Z§.§?!<§.slingshot.§ &§;
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
               §+!Z§.§?!<§.particles.§]!5§(§9!-§.§00§,§'F§.§8e§,§9!-§.§7=§,§+!Z§.§?!<§.slingshot.§+p§,§+!Z§.§?!<§.slingshot.§,,§ + Math.random() * 6,1250 + Math.random() * 500,"",§9!-§.§'2§,_loc7_ * Math.cos(_loc6_) * _loc4_,-_loc7_ * Math.sin(_loc6_) * _loc4_,5,_loc7_ * 20,Math.sqrt(_loc4_));
               _loc5_++;
            }
         }
      }
      
      private function §'_§() : void
      {
         § !$§.§-N§("Menu_Confirm","ChannelPowerups");
         this.§=M§.enabled = !this.§=M§.enabled;
      }
      
      private function §@§() : void
      {
         var _loc1_:Point = this.§&!N§.§?!b§();
         _loc1_ = §+!Z§.§?!<§.screenToBox2D(_loc1_.x,_loc1_.y);
         var _loc2_:§,!&§ = §+!Z§.§?!<§.§5G§.§<!o§();
         if(_loc2_ == null)
         {
            return;
         }
         this.§"c§ = § !$§.§-N§("Powerup_Bomb_Fuse","ChannelPowerups");
         var _loc3_:Number = _loc2_.§0!4§ + (Math.random() - 0.5) * §6H§.§;!A§;
         var _loc4_:Number = §+!Z§.§?!<§.camera.§,!'§;
         this.§?^§ = this.§+k§().§]V§(_loc3_,_loc4_,0);
         this.§?^§.§,y§ = true;
         this.§?!]§ = §6H§.§+a§ * 1000;
         this.§&!N§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !k§);
      }
      
      private function §,3§() : void
      {
         var _loc3_:§,!&§ = null;
         this.§&!N§.§[8§(Math.round(1000 * §95§.§;E§ * §6H§.§9I§));
         § !$§.§-N§("Powerup_Earthquake","ChannelPowerups");
         this.§]!o§ = 0;
         this.§>!]§ = Math.random() * (Math.PI * 2);
         var _loc1_:int = §+!Z§.§?!<§.objects.§=p§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §+!Z§.§?!<§.objects.§8K§(_loc2_);
            if(_loc3_ is §"!T§ || _loc3_ is §-!2§)
            {
               _loc3_.§;G§().SetAwake(true);
               if(_loc3_ is §-!2§)
               {
                  (_loc3_ as §-!2§).§-!k§();
               }
            }
            _loc2_++;
         }
         this.§6x§ = new §+5§(§6H§.§&!H§,§6H§.§%!m§);
      }
      
      private function §+k§() : §]J§
      {
         return §+!Z§.§?!<§.§5G§ as §]J§;
      }
      
      public function §,<§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §4y§.§`]§:
               this.§1!X§(this.§[!f§,false);
               break;
            case §4y§.§9K§:
               this.§1!X§(this.§@!9§,false);
               break;
            case §4y§.§%C§:
               this.§1!X§(this.§'_§,true);
               break;
            case §4y§.§+&§:
               this.§1!X§(this.§,3§,true);
               break;
            case §4y§.§-!m§:
               this.§1!X§(this.§@§,true);
         }
         this.§3V§(param1);
         §0!_§.§+j§.§,<§(param1);
         (§+!Z§.§?!<§ as §9-§).§,<§(param1);
         var _loc2_:String = §^d§.§@P§;
         §?`§.§+'§(param1,_loc2_);
         return true;
      }
      
      public function §3V§(param1:String) : void
      {
         var _loc2_:int = (§+!Z§.§?!<§ as §9-§).§8"§();
         var _loc3_:§4!&§ = new §4!&§(param1,_loc2_);
         if(this.§[4§ != null)
         {
            this.§1!$§.push(_loc3_);
         }
         else
         {
            this.§4!K§(_loc3_);
         }
      }
      
      protected function §4!K§(param1:§4!&§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§-E§ = null;
         if(!§[!5§.§1G§(§^d§.§@P§))
         {
            _loc2_ = "useItem";
            _loc3_ = {};
            _loc3_.type = param1.§>j§;
            _loc3_.count = 1;
            (_loc4_ = []).push(_loc3_);
            _loc5_ = §-E§.§#!;§(§[!5§.§7!h§.email,_loc4_);
            _loc6_ = {
               "id":§[!5§.§7!h§.email,
               "items":_loc4_,
               "itemsSecurity":_loc5_
            };
            _loc7_ = new §-E§(_loc6_,§ 4§.§=R§ + _loc2_,this,§-E§.§]!,§);
            this.§[4§ = param1;
            this.§[4§.§`!F§ = _loc7_;
         }
         else
         {
            this.§[4§ = null;
            this.§use §(true);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §!!Y§.§@M§((param1.currentTarget as URLLoader).data);
         this.§[4§ = null;
         this.§use §(true);
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §use §(param1:Boolean) : void
      {
         var _loc2_:§4!&§ = null;
         if(param1)
         {
         }
         if(this.§1!$§.length > 0)
         {
            _loc2_ = this.§1!$§.shift();
            this.§4!K§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function get §90§() : Boolean
      {
         return this.§[4§ != null;
      }
      
      public function dispose() : void
      {
         if(this.§&!N§)
         {
            this.§&!N§.mouseEnabled = true;
            this.§&!N§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !k§);
         }
         this.§]!o§ = -1;
         this.§?!]§ = -1;
         this.§<D§ = -1;
         this.§6x§ = null;
         this.§?^§ = null;
         this.§,!Q§ = null;
         this.§5!Z§ = [];
         if(this.§"c§)
         {
            this.§"c§.stop();
            this.§"c§ = null;
         }
      }
   }
}
