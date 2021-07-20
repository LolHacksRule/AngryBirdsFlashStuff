package §@$=§
{
   import §8"g§.§^#$§;
   import §8#K§.§3Z§;
   import com.rovio.assets.§6$A§;
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
      
      public static const §3!X§:String = "CHANNEL_SPINNING_WHEEL";
      
      private static const §]I§:int = 40;
      
      private static const §^!Y§:int = 20;
      
      private static const §'T§:Boolean = false;
      
      private static const §@"?§:uint = !!§'T§ ? uint(0) : uint(180);
      
      private static const §]"m§:uint = 1440;
      
      private static const §9#S§:uint = 1000;
      
      private static const §[#D§:uint = 400;
      
      private static const §@#q§:uint = 800;
      
      private static const §2#]§:uint = 8;
      
      private static const §&!N§:int = -2;
      
      private static const §1#p§:uint = 50;
      
      private static const §3!O§:Number = 3;
      
      private static const §;"6§:uint = 7;
      
      private static const §#!7§:Number = -60;
      
      private static const §="s§:Number = 0;
      
      private static const §0#Y§:uint = 240;
      
      private static const §&$C§:uint = 4;
      
      private static const §%3§:uint = 1;
      
      private static const §?#[§:uint = 0;
       
      
      private var § !k§:int;
      
      private var §!!X§:Boolean;
      
      private var §%p§:Number = 45;
      
      private var §1"8§:DisplayObject;
      
      private var §+"2§:DisplayObjectContainer;
      
      private var §<#c§:Number;
      
      private var §+##§:Number = 0;
      
      private var §!!1§:Number;
      
      private var §>$,§:Number;
      
      private var §""H§:int;
      
      private var §`!v§:Boolean;
      
      private var §+"Z§:uint;
      
      private var §%!F§:Number;
      
      private var §;!Q§:Number;
      
      private var §1#"§:Number;
      
      private var §["-§:Boolean;
      
      private var §>$<§:Boolean;
      
      private var §5!S§:Boolean;
      
      private var §>"<§:Number;
      
      private var §;f§:String;
      
      private var §-!c§:Number;
      
      private var §'"u§:Dictionary;
      
      private var §<"_§:String = null;
      
      private var §<!C§:uint;
      
      public function SpinningWheel(param1:DisplayObjectContainer, param2:DisplayObject, param3:String, param4:Number, param5:Vector.<Object>)
      {
         super();
         this.§1"8§ = param2;
         this.§+"2§ = param1;
         this.§;f§ = param3;
         this.§-!c§ = param4;
         this.§^$=§(param5);
         if(!param1.hasEventListener(Event.ENTER_FRAME))
         {
            param1.addEventListener(Event.ENTER_FRAME,this.§`"F§);
         }
         this.§<!C§ = §?#[§;
      }
      
      private static function §8"T§(param1:Number) : Number
      {
         return Math.PI * param1 / 180;
      }
      
      public function §^$=§(param1:Vector.<Object>) : void
      {
         this.reset();
         this.§+"Z§ = param1.length;
         this.§'"u§ = new Dictionary(true);
         this.§+"2§.removeChildren();
         this.§%p§ = 360 / this.§+"Z§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+"Z§)
         {
            this.§["8§(param1[_loc2_],_loc2_);
            _loc2_++;
         }
         §3Z§.§'#E§(§3!X§,§]I§,1);
      }
      
      private function §["8§(param1:Object, param2:uint) : void
      {
         var _loc3_:Class = §6$A§.§1!m§(this.§;f§);
         var _loc4_:DisplayObject;
         (_loc4_ = new _loc3_()).rotation = param2 * -this.§%p§ + §@"?§;
         this.§+"2§.addChild(_loc4_);
         var _loc5_:Number = (this.§+"Z§ - param2) * this.§%p§ - this.§%p§ / 2 - 90 + §@"?§;
         var _loc7_:DisplayObject;
         var _loc6_:Class;
         (((_loc7_ = new (_loc6_ = §6$A§.§1!m§(param1.n))()) as MovieClip).getChildByName("count") as TextField).text = "x" + param1.q;
         var _loc8_:Number = this.§-!c§ * 0.7;
         if(this.§+"Z§ == 4)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.2;
            _loc8_ = this.§-!c§ * 0.65;
         }
         else if(this.§+"Z§ == 3)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.3;
            _loc8_ = this.§-!c§ * 0.6;
         }
         else if(this.§+"Z§ == 2)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.5;
            _loc8_ = this.§-!c§ * 0.5;
         }
         _loc7_.rotation = _loc5_ - 90;
         _loc7_.x = _loc8_ * Math.cos(§8"T§(_loc5_));
         _loc7_.y = _loc8_ * Math.sin(§8"T§(_loc5_));
         this.§+"2§.addChild(_loc7_);
         this.§'"u§[param1.n] = new Segment(_loc7_,_loc4_,param1.n,param2);
      }
      
      public function §="D§() : void
      {
         this.reset();
         this.§<!C§ = §%3§;
         this.§<#c§ = getTimer();
         this.§!!1§ = §[#D§;
         this.§5!S§ = true;
      }
      
      public function §,!"§() : void
      {
         this.reset();
         this.§'"u§ = null;
      }
      
      private function §8"0§() : void
      {
         var _loc1_:Segment = this.§'"u§[this.§<"_§];
         var _loc2_:uint = _loc1_.id;
         this.§%!F§ = this.§8"v§(_loc2_);
         this.§;!Q§ = this.§%!F§ - this.§+"2§.rotation;
         while(this.§;!Q§ < §]"m§)
         {
            this.§;!Q§ += 360;
         }
         this.§1#"§ = this.§;!Q§;
         this.§["-§ = true;
         this.§5!S§ = false;
      }
      
      private function §8"v§(param1:uint) : Number
      {
         var _loc2_:Number = this.§%p§ / 2;
         var _loc3_:Number = this.§%p§ - §3!O§;
         var _loc4_:Number = -(_loc3_ / 2) + Math.floor(Math.random() * (_loc3_ + 1));
         var _loc5_:Number = this.§%p§ * (param1 + 1) - _loc2_ + _loc4_ + §;"6§;
         return this.§]"p§(_loc5_);
      }
      
      private function §`"F§(param1:Event) : void
      {
         var _loc2_:Number = getTimer();
         var _loc3_:Number = _loc2_ - this.§<#c§;
         this.§<#c§ = _loc2_;
         switch(this.§<!C§)
         {
            case §%3§:
               if(_loc3_ > 0)
               {
                  this.§`2§(_loc3_);
                  this.§="7§(_loc3_);
                  this.§?!z§(_loc3_);
                  if(this.§["-§)
                  {
                     this.§ #L§();
                  }
                  if(this.§>$<§)
                  {
                     this.§;U§();
                  }
               }
               this.§-7§();
         }
      }
      
      private function §`2§(param1:Number) : void
      {
         if(this.§!!1§ == §@#q§)
         {
            this.§+##§ += param1;
            if(this.§+##§ >= §9#S§ && this.§<"_§ && !this.§["-§)
            {
               this.§8"0§();
            }
         }
      }
      
      private function §-7§() : void
      {
         if(this.§!!1§ == 0 && this.§1"8§.rotation == 0)
         {
            this.§<!C§ = §?#[§;
            dispatchEvent(new §^#$§(§^#$§.§<#=§,this.§<"_§));
         }
      }
      
      private function §;U§() : void
      {
         if(this.§1#"§ < 0)
         {
            this.§!!1§ = Math.min(§&!N§,this.§>"<§ * this.§1#"§ / this.§;!Q§);
            this.§1#"§ -= this.§>$,§;
         }
         else
         {
            this.§;!Q§ = 0;
            this.§1#"§ = 0;
            this.§+"2§.rotation = this.§%!F§;
            this.§!!1§ = 0;
            this.§>$<§ = false;
         }
      }
      
      private function § #L§() : void
      {
         if(this.§1#"§ > 0)
         {
            this.§!!1§ = §2#]§ + §@#q§ * (this.§1#"§ / this.§;!Q§);
            this.§1#"§ -= this.§>$,§;
         }
         else
         {
            this.§1#"§ = 0;
            this.§;!Q§ = 0;
            this.§+"2§.rotation = this.§%!F§;
            this.§!!1§ = 0;
            this.§["-§ = false;
            if(this.§6!T§())
            {
               this.§<!s§();
            }
         }
      }
      
      private function §<!s§() : void
      {
         this.§>$<§ = true;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.§%g§();
         if(_loc2_ < §;"6§)
         {
            _loc1_ = _loc2_ + §3!O§;
         }
         else
         {
            _loc1_ = _loc2_ - (this.§%p§ - §3!O§);
         }
         var _loc3_:Number = _loc1_ * -2;
         this.§;!Q§ = this.§1#"§ = _loc3_;
         this.§%!F§ = this.§+"2§.rotation + this.§;!Q§;
         var _loc4_:Number = -_loc1_;
         this.§>"<§ = this.§!!1§ = _loc4_;
      }
      
      private function §?!z§(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(this.§`!v§ || this.§6!T§())
         {
            _loc2_ = param1 / 1000 * this.§!!1§ * -§&$C§;
         }
         else
         {
            _loc2_ = param1 / 1000 * §0#Y§;
         }
         var _loc3_:Number = this.§1"8§.rotation + _loc2_;
         _loc3_ = Math.min(_loc3_,§="s§);
         _loc3_ = Math.max(_loc3_,§#!7§);
         this.§1"8§.rotation = _loc3_;
         if(this.§6!T§())
         {
            if(!this.§!!X§)
            {
               this.§=!V§();
               this.§!!X§ = true;
            }
         }
         else if(this.§!!X§)
         {
            this.§!!X§ = false;
         }
      }
      
      private function §="7§(param1:Number) : void
      {
         this.§>$,§ = param1 / 1000 * this.§!!1§;
         this.§+"2§.rotation += this.§>$,§;
         var _loc2_:int = this.§"!x§(this.§+"2§.rotation - §;"6§) / this.§%p§;
         if(this.§""H§ != _loc2_)
         {
            this.§""H§ = _loc2_;
            this.§`!v§ = true;
         }
         else
         {
            this.§`!v§ = false;
         }
         if(this.§5!S§)
         {
            this.§!!1§ += §1#p§;
            this.§!!1§ = Math.min(this.§!!1§,§@#q§);
         }
      }
      
      private function reset() : void
      {
         this.§""H§ = 0;
         this.§!!1§ = 0;
         this.§>"<§ = 0;
         this.§%!F§ = 0;
         this.§1#"§ = 0;
         this.§;!Q§ = 0;
         this.§+##§ = 0;
         this.§<#c§ = 0;
         this.§["-§ = false;
         this.§>$<§ = false;
         this.§+"Z§ = 0;
         this.§<"_§ = null;
         this.§+"2§.rotation = 0;
      }
      
      private function §"!x§(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      private function §]"p§(param1:Number) : Number
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
      
      private function §%g§() : Number
      {
         return this.§"!x§(this.§+"2§.rotation) % this.§%p§;
      }
      
      private function §6!T§() : Boolean
      {
         var _loc1_:Number = this.§%g§();
         return _loc1_ < §;"6§ || _loc1_ > this.§%p§ - §3!O§;
      }
      
      public function §7#l§(param1:String) : void
      {
         this.§<"_§ = param1;
      }
      
      public function §!N§(param1:Boolean) : void
      {
         this.§1"8§.visible = param1;
      }
      
      public function dispose() : void
      {
         this.§,!"§();
         this.§+"2§.removeEventListener(Event.ENTER_FRAME,this.§`"F§);
      }
      
      private function §=!V§() : void
      {
         this.§ !k§ = this.§ !k§ < §^!Y§ ? int(this.§ !k§ + 1) : 1;
         §3Z§.playSound("fortunewheel_click_" + this.§ !k§,§3!X§);
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
