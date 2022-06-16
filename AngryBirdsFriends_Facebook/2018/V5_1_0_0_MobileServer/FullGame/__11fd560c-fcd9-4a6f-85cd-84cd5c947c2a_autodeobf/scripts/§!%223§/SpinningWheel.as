package §!"3§
{
   import §5§.§9$6§;
   import §@!M§.§!"p§;
   import com.rovio.assets.§!"f§;
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
      
      public static const §8#u§:String = "CHANNEL_SPINNING_WHEEL";
      
      private static const §<"c§:int = 40;
      
      private static const §>#e§:int = 20;
      
      private static const §;"!§:Boolean = false;
      
      private static const §7U§:uint = !!§;"!§ ? uint(0) : uint(180);
      
      private static const §^#v§:uint = 1440;
      
      private static const §%"d§:uint = 1000;
      
      private static const §+f§:uint = 400;
      
      private static const §%-§:uint = 800;
      
      private static const §4!Q§:uint = 8;
      
      private static const §%!z§:int = -2;
      
      private static const §"!Z§:uint = 50;
      
      private static const §0!5§:Number = 3;
      
      private static const §4#J§:uint = 7;
      
      private static const §9#d§:Number = -60;
      
      private static const §?#8§:Number = 0;
      
      private static const §?N§:uint = 240;
      
      private static const §-!F§:uint = 4;
      
      private static const §2"<§:uint = 1;
      
      private static const §[5§:uint = 0;
       
      
      private var §'s§:int;
      
      private var §9$A§:Boolean;
      
      private var § !!§:Number = 45;
      
      private var §+">§:DisplayObject;
      
      private var §2#m§:DisplayObjectContainer;
      
      private var §,N§:Number;
      
      private var §9#1§:Number = 0;
      
      private var §]#y§:Number;
      
      private var §while§:Number;
      
      private var §6#t§:int;
      
      private var §@"R§:Boolean;
      
      private var §'"2§:uint;
      
      private var §2"W§:Number;
      
      private var §6"`§:Number;
      
      private var §+#O§:Number;
      
      private var §',§:Boolean;
      
      private var §4#T§:Boolean;
      
      private var §!""§:Boolean;
      
      private var §=g§:Number;
      
      private var §75§:String;
      
      private var §4#&§:Number;
      
      private var §]!v§:Dictionary;
      
      private var §9"l§:String = null;
      
      private var §+a§:uint;
      
      public function SpinningWheel(param1:DisplayObjectContainer, param2:DisplayObject, param3:String, param4:Number, param5:Vector.<Object>)
      {
         super();
         this.§+">§ = param2;
         this.§2#m§ = param1;
         this.§75§ = param3;
         this.§4#&§ = param4;
         this.§'!B§(param5);
         if(!param1.hasEventListener(Event.ENTER_FRAME))
         {
            param1.addEventListener(Event.ENTER_FRAME,this.§!!_§);
         }
         this.§+a§ = §[5§;
      }
      
      private static function §%$5§(param1:Number) : Number
      {
         return Math.PI * param1 / 180;
      }
      
      public function §'!B§(param1:Vector.<Object>) : void
      {
         this.reset();
         this.§'"2§ = param1.length;
         this.§]!v§ = new Dictionary(true);
         this.§2#m§.removeChildren();
         this.§ !!§ = 360 / this.§'"2§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'"2§)
         {
            this.§`"-§(param1[_loc2_],_loc2_);
            _loc2_++;
         }
         §!"p§.§5#4§(§8#u§,§<"c§,1);
      }
      
      private function §`"-§(param1:Object, param2:uint) : void
      {
         var _loc3_:Class = §!"f§.§##?§(this.§75§);
         var _loc4_:DisplayObject;
         (_loc4_ = new _loc3_()).rotation = param2 * -this.§ !!§ + §7U§;
         this.§2#m§.addChild(_loc4_);
         var _loc5_:Number = (this.§'"2§ - param2) * this.§ !!§ - this.§ !!§ / 2 - 90 + §7U§;
         var _loc7_:DisplayObject;
         var _loc6_:Class;
         (((_loc7_ = new (_loc6_ = §!"f§.§##?§(param1.n))()) as MovieClip).getChildByName("count") as TextField).text = "x" + param1.q;
         var _loc8_:Number = this.§4#&§ * 0.7;
         if(this.§'"2§ == 4)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.2;
            _loc8_ = this.§4#&§ * 0.65;
         }
         else if(this.§'"2§ == 3)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.3;
            _loc8_ = this.§4#&§ * 0.6;
         }
         else if(this.§'"2§ == 2)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.5;
            _loc8_ = this.§4#&§ * 0.5;
         }
         _loc7_.rotation = _loc5_ - 90;
         _loc7_.x = _loc8_ * Math.cos(§%$5§(_loc5_));
         _loc7_.y = _loc8_ * Math.sin(§%$5§(_loc5_));
         this.§2#m§.addChild(_loc7_);
         this.§]!v§[param1.n] = new Segment(_loc7_,_loc4_,param1.n,param2);
      }
      
      public function §]!N§() : void
      {
         this.reset();
         this.§+a§ = §2"<§;
         this.§,N§ = getTimer();
         this.§]#y§ = §+f§;
         this.§!""§ = true;
      }
      
      public function §7"y§() : void
      {
         this.reset();
         this.§]!v§ = null;
      }
      
      private function §<!+§() : void
      {
         var _loc1_:Segment = this.§]!v§[this.§9"l§];
         var _loc2_:uint = _loc1_.id;
         this.§2"W§ = this.§=$-§(_loc2_);
         this.§6"`§ = this.§2"W§ - this.§2#m§.rotation;
         while(this.§6"`§ < §^#v§)
         {
            this.§6"`§ += 360;
         }
         this.§+#O§ = this.§6"`§;
         this.§',§ = true;
         this.§!""§ = false;
      }
      
      private function §=$-§(param1:uint) : Number
      {
         var _loc2_:Number = this.§ !!§ / 2;
         var _loc3_:Number = this.§ !!§ - §0!5§;
         var _loc4_:Number = -(_loc3_ / 2) + Math.floor(Math.random() * (_loc3_ + 1));
         var _loc5_:Number = this.§ !!§ * (param1 + 1) - _loc2_ + _loc4_ + §4#J§;
         return this.§'";§(_loc5_);
      }
      
      private function §!!_§(param1:Event) : void
      {
         var _loc2_:Number = getTimer();
         var _loc3_:Number = _loc2_ - this.§,N§;
         this.§,N§ = _loc2_;
         switch(this.§+a§)
         {
            case §2"<§:
               if(_loc3_ > 0)
               {
                  this.§3!M§(_loc3_);
                  this.§="g§(_loc3_);
                  this.§&!S§(_loc3_);
                  if(this.§',§)
                  {
                     this.§4"i§();
                  }
                  if(this.§4#T§)
                  {
                     this.§;$&§();
                  }
               }
               this.§ #C§();
         }
      }
      
      private function §3!M§(param1:Number) : void
      {
         if(this.§]#y§ == §%-§)
         {
            this.§9#1§ += param1;
            if(this.§9#1§ >= §%"d§ && this.§9"l§ && !this.§',§)
            {
               this.§<!+§();
            }
         }
      }
      
      private function § #C§() : void
      {
         if(this.§]#y§ == 0 && this.§+">§.rotation == 0)
         {
            this.§+a§ = §[5§;
            dispatchEvent(new §9$6§(§9$6§.§`M§,this.§9"l§));
         }
      }
      
      private function §;$&§() : void
      {
         if(this.§+#O§ < 0)
         {
            this.§]#y§ = Math.min(§%!z§,this.§=g§ * this.§+#O§ / this.§6"`§);
            this.§+#O§ -= this.§while§;
         }
         else
         {
            this.§6"`§ = 0;
            this.§+#O§ = 0;
            this.§2#m§.rotation = this.§2"W§;
            this.§]#y§ = 0;
            this.§4#T§ = false;
         }
      }
      
      private function §4"i§() : void
      {
         if(this.§+#O§ > 0)
         {
            this.§]#y§ = §4!Q§ + §%-§ * (this.§+#O§ / this.§6"`§);
            this.§+#O§ -= this.§while§;
         }
         else
         {
            this.§+#O§ = 0;
            this.§6"`§ = 0;
            this.§2#m§.rotation = this.§2"W§;
            this.§]#y§ = 0;
            this.§',§ = false;
            if(this.§>#_§())
            {
               this.§,!r§();
            }
         }
      }
      
      private function §,!r§() : void
      {
         this.§4#T§ = true;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.§1&§();
         if(_loc2_ < §4#J§)
         {
            _loc1_ = _loc2_ + §0!5§;
         }
         else
         {
            _loc1_ = _loc2_ - (this.§ !!§ - §0!5§);
         }
         var _loc3_:Number = _loc1_ * -2;
         this.§6"`§ = this.§+#O§ = _loc3_;
         this.§2"W§ = this.§2#m§.rotation + this.§6"`§;
         var _loc4_:Number = -_loc1_;
         this.§=g§ = this.§]#y§ = _loc4_;
      }
      
      private function §&!S§(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(this.§@"R§ || this.§>#_§())
         {
            _loc2_ = param1 / 1000 * this.§]#y§ * -§-!F§;
         }
         else
         {
            _loc2_ = param1 / 1000 * §?N§;
         }
         var _loc3_:Number = this.§+">§.rotation + _loc2_;
         _loc3_ = Math.min(_loc3_,§?#8§);
         _loc3_ = Math.max(_loc3_,§9#d§);
         this.§+">§.rotation = _loc3_;
         if(this.§>#_§())
         {
            if(!this.§9$A§)
            {
               this.§-"B§();
               this.§9$A§ = true;
            }
         }
         else if(this.§9$A§)
         {
            this.§9$A§ = false;
         }
      }
      
      private function §="g§(param1:Number) : void
      {
         this.§while§ = param1 / 1000 * this.§]#y§;
         this.§2#m§.rotation += this.§while§;
         var _loc2_:int = this.§"#T§(this.§2#m§.rotation - §4#J§) / this.§ !!§;
         if(this.§6#t§ != _loc2_)
         {
            this.§6#t§ = _loc2_;
            this.§@"R§ = true;
         }
         else
         {
            this.§@"R§ = false;
         }
         if(this.§!""§)
         {
            this.§]#y§ += §"!Z§;
            this.§]#y§ = Math.min(this.§]#y§,§%-§);
         }
      }
      
      private function reset() : void
      {
         this.§6#t§ = 0;
         this.§]#y§ = 0;
         this.§=g§ = 0;
         this.§2"W§ = 0;
         this.§+#O§ = 0;
         this.§6"`§ = 0;
         this.§9#1§ = 0;
         this.§,N§ = 0;
         this.§',§ = false;
         this.§4#T§ = false;
         this.§'"2§ = 0;
         this.§9"l§ = null;
         this.§2#m§.rotation = 0;
      }
      
      private function §"#T§(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      private function §'";§(param1:Number) : Number
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
      
      private function §1&§() : Number
      {
         return this.§"#T§(this.§2#m§.rotation) % this.§ !!§;
      }
      
      private function §>#_§() : Boolean
      {
         var _loc1_:Number = this.§1&§();
         return _loc1_ < §4#J§ || _loc1_ > this.§ !!§ - §0!5§;
      }
      
      public function §>"O§(param1:String) : void
      {
         this.§9"l§ = param1;
      }
      
      public function §>!H§(param1:Boolean) : void
      {
         this.§+">§.visible = param1;
      }
      
      public function dispose() : void
      {
         this.§7"y§();
         this.§2#m§.removeEventListener(Event.ENTER_FRAME,this.§!!_§);
      }
      
      private function §-"B§() : void
      {
         this.§'s§ = this.§'s§ < §>#e§ ? int(this.§'s§ + 1) : 1;
         §!"p§.playSound("fortunewheel_click_" + this.§'s§,§8#u§);
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
