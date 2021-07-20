package §@$'§
{
   import §8§.§#$+§;
   import §?"e§.§,##§;
   import com.rovio.assets.§@`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class SpinningWheel extends EventDispatcher
   {
      
      public static const §56§:String = "CHANNEL_SPINNING_WHEEL";
      
      private static const §,#t§:int = 40;
      
      private static const §7#;§:int = 20;
      
      private static const §#L§:Boolean = false;
      
      private static const §;!K§:uint = !!§#L§ ? uint(0) : uint(180);
      
      private static const §;!3§:uint = 1440;
      
      private static const §[#,§:uint = 1000;
      
      private static const §@>§:uint = 400;
      
      private static const §@#-§:uint = 800;
      
      private static const §'#I§:uint = 8;
      
      private static const §0!=§:int = -2;
      
      private static const §^#D§:uint = 50;
      
      private static const §>!2§:Number = 3;
      
      private static const §0#Q§:uint = 7;
      
      private static const §>!O§:Number = -60;
      
      private static const §@#B§:Number = 0;
      
      private static const §<";§:uint = 240;
      
      private static const §'"B§:uint = 4;
      
      private static const §="^§:uint = 1;
      
      private static const §^n§:uint = 0;
       
      
      private var §6"z§:int;
      
      private var §8#E§:Boolean;
      
      private var §9"D§:Number = 45;
      
      private var §14§:DisplayObject;
      
      private var §]!F§:DisplayObjectContainer;
      
      private var § #h§:Number;
      
      private var §%">§:Number = 0;
      
      private var §=s§:Number;
      
      private var §0#F§:Number;
      
      private var §[!d§:int;
      
      private var §-1§:Boolean;
      
      private var §0x§:uint;
      
      private var §7!T§:Number;
      
      private var §8#x§:Number;
      
      private var §`"J§:Number;
      
      private var §2K§:Boolean;
      
      private var §^"l§:Boolean;
      
      private var §#n§:Boolean;
      
      private var §]#-§:Number;
      
      private var §&P§:String;
      
      private var §!!1§:Number;
      
      private var § null§:Dictionary;
      
      private var §<#R§:Vector.<String>;
      
      private var §2"e§:String = null;
      
      private var §&"R§:uint;
      
      public function SpinningWheel(param1:DisplayObjectContainer, param2:DisplayObject, param3:String, param4:Number, param5:Vector.<String>)
      {
         super();
         this.§14§ = param2;
         this.§]!F§ = param1;
         this.§&P§ = param3;
         this.§!!1§ = param4;
         this.§<#R§ = param5;
         this.§5!m§(this.§<#R§);
         if(!param1.hasEventListener(Event.ENTER_FRAME))
         {
            param1.addEventListener(Event.ENTER_FRAME,this.§%"h§);
         }
         this.§&"R§ = §^n§;
      }
      
      private static function §9"§(param1:Number) : Number
      {
         return Math.PI * param1 / 180;
      }
      
      public function §5!m§(param1:Vector.<String>) : void
      {
         this.reset();
         this.§0x§ = param1.length;
         this.§ null§ = new Dictionary(true);
         this.§]!F§.removeChildren();
         this.§9"D§ = 360 / this.§0x§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0x§)
         {
            this.§<#%§(param1[_loc2_],_loc2_);
            _loc2_++;
         }
         §#$+§.§9"]§(§56§,§,#t§,1);
      }
      
      private function §<#%§(param1:String, param2:uint) : void
      {
         var _loc3_:Class = §@`§.§4!i§(this.§&P§);
         var _loc4_:DisplayObject;
         (_loc4_ = new _loc3_()).rotation = param2 * -this.§9"D§ + §;!K§;
         this.§]!F§.addChild(_loc4_);
         var _loc5_:Number = (this.§0x§ - param2) * this.§9"D§ - this.§9"D§ / 2 - 90 + §;!K§;
         var _loc7_:DisplayObject = new §@`§.§4!i§(param1)();
         var _loc8_:Number = this.§!!1§ * 0.7;
         if(this.§0x§ == 4)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.2;
            _loc8_ = this.§!!1§ * 0.65;
         }
         else if(this.§0x§ == 3)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.3;
            _loc8_ = this.§!!1§ * 0.6;
         }
         else if(this.§0x§ == 2)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.5;
            _loc8_ = this.§!!1§ * 0.5;
         }
         _loc7_.rotation = _loc5_ - 90;
         _loc7_.x = _loc8_ * Math.cos(§9"§(_loc5_));
         _loc7_.y = _loc8_ * Math.sin(§9"§(_loc5_));
         this.§]!F§.addChild(_loc7_);
         this.§ null§[param1] = new Segment(_loc7_,_loc4_,param1,param2);
      }
      
      public function §4"j§() : void
      {
         this.reset();
         this.§&"R§ = §="^§;
         this.§ #h§ = getTimer();
         this.§=s§ = §@>§;
         this.§#n§ = true;
      }
      
      public function §%!p§() : void
      {
         this.reset();
         this.§ null§ = null;
      }
      
      private function §5"^§() : void
      {
         var _loc1_:Segment = this.§ null§[this.§2"e§];
         var _loc2_:uint = _loc1_.id;
         this.§7!T§ = this.§%!g§(_loc2_);
         this.§8#x§ = this.§7!T§ - this.§]!F§.rotation;
         while(this.§8#x§ < §;!3§)
         {
            this.§8#x§ += 360;
         }
         this.§`"J§ = this.§8#x§;
         this.§2K§ = true;
         this.§#n§ = false;
      }
      
      private function §%!g§(param1:uint) : Number
      {
         var _loc2_:Number = this.§9"D§ / 2;
         var _loc3_:Number = this.§9"D§ - §>!2§;
         var _loc4_:Number = -(_loc3_ / 2) + Math.floor(Math.random() * (_loc3_ + 1));
         var _loc5_:Number = this.§9"D§ * (param1 + 1) - _loc2_ + _loc4_ + §0#Q§;
         return this.§1#I§(_loc5_);
      }
      
      private function §%"h§(param1:Event) : void
      {
         var _loc2_:Number = getTimer();
         var _loc3_:Number = _loc2_ - this.§ #h§;
         this.§ #h§ = _loc2_;
         switch(this.§&"R§)
         {
            case §="^§:
               if(_loc3_ > 0)
               {
                  this.§#8§(_loc3_);
                  this.§-!P§(_loc3_);
                  this.§>#9§(_loc3_);
                  if(this.§2K§)
                  {
                     this.§&!c§();
                  }
                  if(this.§^"l§)
                  {
                     this.§!!@§();
                  }
               }
               this.§3"Q§();
         }
      }
      
      private function §#8§(param1:Number) : void
      {
         if(this.§=s§ == §@#-§)
         {
            this.§%">§ += param1;
            if(this.§%">§ >= §[#,§ && this.§2"e§ && !this.§2K§)
            {
               this.§5"^§();
            }
         }
      }
      
      private function §3"Q§() : void
      {
         if(this.§=s§ == 0 && this.§14§.rotation == 0)
         {
            this.§&"R§ = §^n§;
            dispatchEvent(new §,##§(§,##§.§8$ §,this.§2"e§));
         }
      }
      
      private function §!!@§() : void
      {
         if(this.§`"J§ < 0)
         {
            this.§=s§ = Math.min(§0!=§,this.§]#-§ * this.§`"J§ / this.§8#x§);
            this.§`"J§ -= this.§0#F§;
         }
         else
         {
            this.§8#x§ = 0;
            this.§`"J§ = 0;
            this.§]!F§.rotation = this.§7!T§;
            this.§=s§ = 0;
            this.§^"l§ = false;
         }
      }
      
      private function §&!c§() : void
      {
         if(this.§`"J§ > 0)
         {
            this.§=s§ = §'#I§ + §@#-§ * (this.§`"J§ / this.§8#x§);
            this.§`"J§ -= this.§0#F§;
         }
         else
         {
            this.§`"J§ = 0;
            this.§8#x§ = 0;
            this.§]!F§.rotation = this.§7!T§;
            this.§=s§ = 0;
            this.§2K§ = false;
            if(this.§3!v§())
            {
               this.§1!Y§();
            }
         }
      }
      
      private function §1!Y§() : void
      {
         this.§^"l§ = true;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.§&!]§();
         if(_loc2_ < §0#Q§)
         {
            _loc1_ = _loc2_ + §>!2§;
         }
         else
         {
            _loc1_ = _loc2_ - (this.§9"D§ - §>!2§);
         }
         var _loc3_:Number = _loc1_ * -2;
         this.§8#x§ = this.§`"J§ = _loc3_;
         this.§7!T§ = this.§]!F§.rotation + this.§8#x§;
         var _loc4_:Number = -_loc1_;
         this.§]#-§ = this.§=s§ = _loc4_;
      }
      
      private function §>#9§(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(this.§-1§ || this.§3!v§())
         {
            _loc2_ = param1 / 1000 * this.§=s§ * -§'"B§;
         }
         else
         {
            _loc2_ = param1 / 1000 * §<";§;
         }
         var _loc3_:Number = this.§14§.rotation + _loc2_;
         _loc3_ = Math.min(_loc3_,§@#B§);
         _loc3_ = Math.max(_loc3_,§>!O§);
         this.§14§.rotation = _loc3_;
         if(this.§3!v§())
         {
            if(!this.§8#E§)
            {
               this.§%"=§();
               this.§8#E§ = true;
            }
         }
         else if(this.§8#E§)
         {
            this.§8#E§ = false;
         }
      }
      
      private function §-!P§(param1:Number) : void
      {
         this.§0#F§ = param1 / 1000 * this.§=s§;
         this.§]!F§.rotation += this.§0#F§;
         var _loc2_:int = this.§0!R§(this.§]!F§.rotation - §0#Q§) / this.§9"D§;
         if(this.§[!d§ != _loc2_)
         {
            this.§[!d§ = _loc2_;
            this.§-1§ = true;
         }
         else
         {
            this.§-1§ = false;
         }
         if(this.§#n§)
         {
            this.§=s§ += §^#D§;
            this.§=s§ = Math.min(this.§=s§,§@#-§);
         }
      }
      
      private function reset() : void
      {
         this.§[!d§ = 0;
         this.§=s§ = 0;
         this.§]#-§ = 0;
         this.§7!T§ = 0;
         this.§`"J§ = 0;
         this.§8#x§ = 0;
         this.§%">§ = 0;
         this.§ #h§ = 0;
         this.§2K§ = false;
         this.§^"l§ = false;
         this.§0x§ = 0;
         this.§2"e§ = null;
         this.§]!F§.rotation = 0;
      }
      
      private function §0!R§(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      private function §1#I§(param1:Number) : Number
      {
         var _loc2_:Number = param1;
         while(_loc2_ > 180)
         {
            _loc2_ -= 360;
         }
         while(_loc2_ < -180)
         {
            _loc2_ += 360;
         }
         return _loc2_;
      }
      
      private function §&!]§() : Number
      {
         return this.§0!R§(this.§]!F§.rotation) % this.§9"D§;
      }
      
      private function §3!v§() : Boolean
      {
         var _loc1_:Number = this.§&!]§();
         return _loc1_ < §0#Q§ || _loc1_ > this.§9"D§ - §>!2§;
      }
      
      public function §4" §(param1:String) : void
      {
         this.§2"e§ = param1;
      }
      
      public function §5!B§(param1:Boolean) : void
      {
         this.§14§.visible = param1;
      }
      
      public function dispose() : void
      {
         this.§%!p§();
         this.§]!F§.removeEventListener(Event.ENTER_FRAME,this.§%"h§);
      }
      
      private function §%"=§() : void
      {
         this.§6"z§ = this.§6"z§ < §7#;§ ? int(this.§6"z§ + 1) : 1;
         §#$+§.playSound("WheelClick_" + this.§6"z§,§56§);
      }
   }
}

import flash.display.DisplayObject;
import flash.display.Sprite;

class Segment
{
   
   private static const FADE_SPEED:Number = 0.03;
   
   private static const FADE_ACC:Number = 0.00005;
   
   private static const STATE_FADE_IN:uint = 1;
   
   private static const STATE_FADE_OUT:uint = 2;
   
   private static const MAX_TIME_INVISIBLE:uint = 100;
    
   
   public var itemDsp:DisplayObject;
   
   public var name:String;
   
   public var id:uint;
   
   public var separaterDsp:DisplayObject;
   
   private var mFadeState:uint;
   
   private var fadeVel:Number;
   
   private var timeSinceInvisible:int;
   
   function Segment(param1:DisplayObject, param2:DisplayObject, param3:String, param4:uint)
   {
      super();
      this.itemDsp = param1;
      this.separaterDsp = param2;
      this.itemDsp.name = param3;
      this.name = param3;
      this.id = param4;
   }
   
   public function showReadyToRemove() : void
   {
      (this.itemDsp as Sprite).buttonMode = true;
      this.itemDsp.cacheAsBitmap = true;
      this.mFadeState = STATE_FADE_OUT;
      this.fadeVel = 0;
      this.timeSinceInvisible = 0;
   }
   
   public function update(param1:Number) : void
   {
      if(this.mFadeState == STATE_FADE_IN)
      {
         this.itemDsp.alpha += FADE_SPEED;
         if(this.itemDsp.alpha >= 1)
         {
            this.itemDsp.alpha = 1;
            this.mFadeState = STATE_FADE_OUT;
            this.fadeVel = 0;
         }
      }
      else if(this.mFadeState == STATE_FADE_OUT)
      {
         this.itemDsp.alpha -= FADE_SPEED;
         if(this.itemDsp.alpha <= 0)
         {
            this.timeSinceInvisible += param1;
            if(this.timeSinceInvisible > MAX_TIME_INVISIBLE)
            {
               this.timeSinceInvisible = 0;
               this.itemDsp.alpha = 0;
               this.mFadeState = STATE_FADE_IN;
               this.fadeVel = 0;
            }
         }
      }
   }
}
