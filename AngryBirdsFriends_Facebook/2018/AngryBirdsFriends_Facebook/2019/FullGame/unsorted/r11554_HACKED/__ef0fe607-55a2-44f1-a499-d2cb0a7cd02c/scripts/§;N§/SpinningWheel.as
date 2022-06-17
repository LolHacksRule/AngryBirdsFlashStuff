package §;N§
{
   import §'$9§.§8!L§;
   import §>"9§.§[#%§;
   import com.rovio.assets.§2"O§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class SpinningWheel extends EventDispatcher
   {
      
      public static const §'!%§:String = "CHANNEL_SPINNING_WHEEL";
      
      private static const §8!'§:int = 40;
      
      private static const §!!4§:int = 20;
      
      private static const §%"3§:Boolean = false;
      
      private static const §7>§:uint = !!§%"3§ ? uint(0) : uint(180);
      
      private static const §1!U§:uint = 1440;
      
      private static const §6!Q§:uint = 1000;
      
      private static const §+#n§:uint = 400;
      
      private static const §!y§:uint = 800;
      
      private static const §9"x§:uint = 8;
      
      private static const §[$'§:int = -2;
      
      private static const §=!L§:uint = 50;
      
      private static const §?$A§:Number = 3;
      
      private static const §<"N§:uint = 7;
      
      private static const §"!7§:Number = -60;
      
      private static const §4"`§:Number = 0;
      
      private static const §`"K§:uint = 240;
      
      private static const §`!p§:uint = 4;
      
      private static const §7#p§:uint = 1;
      
      private static const §>"S§:uint = 0;
       
      
      private var §##o§:int;
      
      private var §;#Z§:Boolean;
      
      private var §%#j§:Number = 45;
      
      private var §0!V§:DisplayObject;
      
      private var §,$'§:DisplayObjectContainer;
      
      private var §-#p§:Number;
      
      private var §["f§:Number = 0;
      
      private var §<"4§:Number;
      
      private var §%%§:Number;
      
      private var §4"m§:int;
      
      private var §@$6§:Boolean;
      
      private var §=0§:uint;
      
      private var §'$7§:Number;
      
      private var §9!s§:Number;
      
      private var §6;§:Number;
      
      private var §%#K§:Boolean;
      
      private var §4#T§:Boolean;
      
      private var §5#D§:Boolean;
      
      private var §,#u§:Number;
      
      private var §3"K§:String;
      
      private var § "=§:Number;
      
      private var §'$+§:Dictionary;
      
      private var §2"g§:String = null;
      
      private var §0!+§:uint;
      
      public function SpinningWheel(param1:DisplayObjectContainer, param2:DisplayObject, param3:String, param4:Number, param5:Vector.<Object>)
      {
         super();
         this.§0!V§ = param2;
         this.§,$'§ = param1;
         this.§3"K§ = param3;
         this.§ "=§ = param4;
         this.§7w§(param5);
         if(!param1.hasEventListener(Event.ENTER_FRAME))
         {
            param1.addEventListener(Event.ENTER_FRAME,this.§6"N§);
         }
         this.§0!+§ = §>"S§;
      }
      
      private static function §4!6§(param1:Number) : Number
      {
         return Math.PI * param1 / 180;
      }
      
      public function §7w§(param1:Vector.<Object>) : void
      {
         this.reset();
         this.§=0§ = param1.length;
         this.§'$+§ = new Dictionary(true);
         this.§,$'§.removeChildren();
         this.§%#j§ = 360 / this.§=0§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=0§)
         {
            this.§!!'§(param1[_loc2_],_loc2_);
            _loc2_++;
         }
         §[#%§.§8!3§(§'!%§,§8!'§,1);
      }
      
      private function §!!'§(param1:Object, param2:uint) : void
      {
         var _loc3_:Class = §2"O§.§`>§(this.§3"K§);
         var _loc4_:DisplayObject;
         (_loc4_ = new _loc3_()).rotation = param2 * -this.§%#j§ + §7>§;
         this.§,$'§.addChild(_loc4_);
         var _loc5_:Number = (this.§=0§ - param2) * this.§%#j§ - this.§%#j§ / 2 - 90 + §7>§;
         var _loc7_:DisplayObject;
         (((_loc7_ = new §2"O§.§`>§(param1.n)()) as MovieClip).getChildByName("count") as TextField).text = "x" + param1.q;
         var _loc8_:Number = this.§ "=§ * 0.7;
         if(this.§=0§ == 4)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.2;
            _loc8_ = this.§ "=§ * 0.65;
         }
         else if(this.§=0§ == 3)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.3;
            _loc8_ = this.§ "=§ * 0.6;
         }
         else if(this.§=0§ == 2)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.5;
            _loc8_ = this.§ "=§ * 0.5;
         }
         _loc7_.rotation = _loc5_ - 90;
         _loc7_.x = _loc8_ * Math.cos(§4!6§(_loc5_));
         _loc7_.y = _loc8_ * Math.sin(§4!6§(_loc5_));
         this.§,$'§.addChild(_loc7_);
         this.§'$+§[param1.n] = new Segment(_loc7_,_loc4_,param1.n,param2);
      }
      
      public function §'"m§() : void
      {
         this.reset();
         this.§0!+§ = §7#p§;
         this.§-#p§ = getTimer();
         this.§<"4§ = §+#n§;
         this.§5#D§ = true;
      }
      
      public function §?!m§() : void
      {
         this.reset();
         this.§'$+§ = null;
      }
      
      private function § !_§() : void
      {
         var _loc1_:Segment = this.§'$+§[this.§2"g§];
         var _loc2_:uint = _loc1_.id;
         this.§'$7§ = this.§[!§(_loc2_);
         this.§9!s§ = this.§'$7§ - this.§,$'§.rotation;
         while(this.§9!s§ < §1!U§)
         {
            this.§9!s§ += 360;
         }
         this.§6;§ = this.§9!s§;
         this.§%#K§ = true;
         this.§5#D§ = false;
      }
      
      private function §[!§(param1:uint) : Number
      {
         var _loc2_:Number = this.§%#j§ / 2;
         var _loc3_:Number = this.§%#j§ - §?$A§;
         var _loc4_:Number = -(_loc3_ / 2) + Math.floor(Math.random() * (_loc3_ + 1));
         var _loc5_:Number = this.§%#j§ * (param1 + 1) - _loc2_ + _loc4_ + §<"N§;
         return this.§-"X§(_loc5_);
      }
      
      private function §6"N§(param1:Event) : void
      {
         var _loc2_:Number = getTimer();
         var _loc3_:Number = _loc2_ - this.§-#p§;
         this.§-#p§ = _loc2_;
         switch(this.§0!+§)
         {
            case §7#p§:
               if(_loc3_ > 0)
               {
                  this.§!T§(_loc3_);
                  this.§0! §(_loc3_);
                  this.§=!M§(_loc3_);
                  if(this.§%#K§)
                  {
                     this.§]i§();
                  }
                  if(this.§4#T§)
                  {
                     this.§>"c§();
                  }
               }
               this.§-#m§();
         }
      }
      
      private function §!T§(param1:Number) : void
      {
         if(this.§<"4§ == §!y§)
         {
            this.§["f§ += param1;
            if(this.§["f§ >= §6!Q§ && this.§2"g§ && !this.§%#K§)
            {
               this.§ !_§();
            }
         }
      }
      
      private function §-#m§() : void
      {
         if(this.§<"4§ == 0 && this.§0!V§.rotation == 0)
         {
            this.§0!+§ = §>"S§;
            dispatchEvent(new §8!L§(§8!L§.§%#$§,this.§2"g§));
         }
      }
      
      private function §>"c§() : void
      {
         if(this.§6;§ < 0)
         {
            this.§<"4§ = Math.min(§[$'§,this.§,#u§ * this.§6;§ / this.§9!s§);
            this.§6;§ -= this.§%%§;
         }
         else
         {
            this.§9!s§ = 0;
            this.§6;§ = 0;
            this.§,$'§.rotation = this.§'$7§;
            this.§<"4§ = 0;
            this.§4#T§ = false;
         }
      }
      
      private function §]i§() : void
      {
         if(this.§6;§ > 0)
         {
            this.§<"4§ = §9"x§ + §!y§ * (this.§6;§ / this.§9!s§);
            this.§6;§ -= this.§%%§;
         }
         else
         {
            this.§6;§ = 0;
            this.§9!s§ = 0;
            this.§,$'§.rotation = this.§'$7§;
            this.§<"4§ = 0;
            this.§%#K§ = false;
            if(this.§7" §())
            {
               this.§>?§();
            }
         }
      }
      
      private function §>?§() : void
      {
         this.§4#T§ = true;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.§^7§();
         if(_loc2_ < §<"N§)
         {
            _loc1_ = _loc2_ + §?$A§;
         }
         else
         {
            _loc1_ = _loc2_ - (this.§%#j§ - §?$A§);
         }
         var _loc3_:Number = _loc1_ * -2;
         this.§9!s§ = this.§6;§ = _loc3_;
         this.§'$7§ = this.§,$'§.rotation + this.§9!s§;
         var _loc4_:Number = -_loc1_;
         this.§,#u§ = this.§<"4§ = _loc4_;
      }
      
      private function §=!M§(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(this.§@$6§ || this.§7" §())
         {
            _loc2_ = param1 / 1000 * this.§<"4§ * -§`!p§;
         }
         else
         {
            _loc2_ = param1 / 1000 * §`"K§;
         }
         var _loc3_:Number = this.§0!V§.rotation + _loc2_;
         _loc3_ = Math.min(_loc3_,§4"`§);
         _loc3_ = Math.max(_loc3_,§"!7§);
         this.§0!V§.rotation = _loc3_;
         if(this.§7" §())
         {
            if(!this.§;#Z§)
            {
               this.§4#@§();
               this.§;#Z§ = true;
            }
         }
         else if(this.§;#Z§)
         {
            this.§;#Z§ = false;
         }
      }
      
      private function §0! §(param1:Number) : void
      {
         this.§%%§ = param1 / 1000 * this.§<"4§;
         this.§,$'§.rotation += this.§%%§;
         var _loc2_:int = this.§2#l§(this.§,$'§.rotation - §<"N§) / this.§%#j§;
         if(this.§4"m§ != _loc2_)
         {
            this.§4"m§ = _loc2_;
            this.§@$6§ = true;
         }
         else
         {
            this.§@$6§ = false;
         }
         if(this.§5#D§)
         {
            this.§<"4§ += §=!L§;
            this.§<"4§ = Math.min(this.§<"4§,§!y§);
         }
      }
      
      private function reset() : void
      {
         this.§4"m§ = 0;
         this.§<"4§ = 0;
         this.§,#u§ = 0;
         this.§'$7§ = 0;
         this.§6;§ = 0;
         this.§9!s§ = 0;
         this.§["f§ = 0;
         this.§-#p§ = 0;
         this.§%#K§ = false;
         this.§4#T§ = false;
         this.§=0§ = 0;
         this.§2"g§ = null;
         this.§,$'§.rotation = 0;
      }
      
      private function §2#l§(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      private function §-"X§(param1:Number) : Number
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
      
      private function §^7§() : Number
      {
         return this.§2#l§(this.§,$'§.rotation) % this.§%#j§;
      }
      
      private function §7" §() : Boolean
      {
         var _loc1_:Number = this.§^7§();
         return _loc1_ < §<"N§ || _loc1_ > this.§%#j§ - §?$A§;
      }
      
      public function §5"S§(param1:String) : void
      {
         this.§2"g§ = param1;
      }
      
      public function §<"P§(param1:Boolean) : void
      {
         this.§0!V§.visible = param1;
      }
      
      public function dispose() : void
      {
         this.§?!m§();
         this.§,$'§.removeEventListener(Event.ENTER_FRAME,this.§6"N§);
      }
      
      private function §4#@§() : void
      {
         this.§##o§ = this.§##o§ < §!!4§ ? int(this.§##o§ + 1) : 1;
         §[#%§.playSound("fortunewheel_click_" + this.§##o§,§'!%§);
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
