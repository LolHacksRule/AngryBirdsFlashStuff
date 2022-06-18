package §>#d§
{
   import §1#W§.§!#&§;
   import §?!@§.§%§;
   import com.rovio.assets.§+$#§;
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
      
      public static const §2"U§:String = "CHANNEL_SPINNING_WHEEL";
      
      private static const §9$2§:int = 40;
      
      private static const §+m§:int = 20;
      
      private static const §%#C§:Boolean = false;
      
      private static const §+#G§:uint = !!§%#C§ ? uint(0) : uint(180);
      
      private static const §`"N§:uint = 1440;
      
      private static const §`#C§:uint = 1000;
      
      private static const §-$-§:uint = 400;
      
      private static const §32§:uint = 800;
      
      private static const §]!m§:uint = 8;
      
      private static const §,"5§:int = -2;
      
      private static const §#!§:uint = 50;
      
      private static const §<#j§:Number = 3;
      
      private static const §+#l§:uint = 7;
      
      private static const §!$1§:Number = -60;
      
      private static const §3x§:Number = 0;
      
      private static const §0#0§:uint = 240;
      
      private static const §;#4§:uint = 4;
      
      private static const §,"?§:uint = 1;
      
      private static const §-"A§:uint = 0;
       
      
      private var §4"'§:int;
      
      private var §="i§:Boolean;
      
      private var §>!D§:Number = 45;
      
      private var §%"f§:DisplayObject;
      
      private var §^#m§:DisplayObjectContainer;
      
      private var §^#+§:Number;
      
      private var §+"d§:Number = 0;
      
      private var §'#B§:Number;
      
      private var §'#Q§:Number;
      
      private var §;#j§:int;
      
      private var §8"N§:Boolean;
      
      private var §@w§:uint;
      
      private var §4#!§:Number;
      
      private var §&x§:Number;
      
      private var §##=§:Number;
      
      private var §#!?§:Boolean;
      
      private var §6#G§:Boolean;
      
      private var §?#9§:Boolean;
      
      private var §4#5§:Number;
      
      private var §!"m§:String;
      
      private var §7!@§:Number;
      
      private var §;#]§:Dictionary;
      
      private var § !u§:String = null;
      
      private var §-"W§:uint;
      
      public function SpinningWheel(param1:DisplayObjectContainer, param2:DisplayObject, param3:String, param4:Number, param5:Vector.<Object>)
      {
         super();
         this.§%"f§ = param2;
         this.§^#m§ = param1;
         this.§!"m§ = param3;
         this.§7!@§ = param4;
         this.§@0§(param5);
         if(!param1.hasEventListener(Event.ENTER_FRAME))
         {
            param1.addEventListener(Event.ENTER_FRAME,this.§##a§);
         }
         this.§-"W§ = §-"A§;
      }
      
      private static function §^#p§(param1:Number) : Number
      {
         return Math.PI * param1 / 180;
      }
      
      public function §@0§(param1:Vector.<Object>) : void
      {
         this.reset();
         this.§@w§ = param1.length;
         this.§;#]§ = new Dictionary(true);
         this.§^#m§.removeChildren();
         this.§>!D§ = 360 / this.§@w§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@w§)
         {
            this.§!#J§(param1[_loc2_],_loc2_);
            _loc2_++;
         }
         §!#&§.§!"k§(§2"U§,§9$2§,1);
      }
      
      private function §!#J§(param1:Object, param2:uint) : void
      {
         var _loc3_:Class = §+$#§.§["`§(this.§!"m§);
         var _loc4_:DisplayObject;
         (_loc4_ = new _loc3_()).rotation = param2 * -this.§>!D§ + §+#G§;
         this.§^#m§.addChild(_loc4_);
         var _loc5_:Number = (this.§@w§ - param2) * this.§>!D§ - this.§>!D§ / 2 - 90 + §+#G§;
         var _loc7_:DisplayObject;
         var _loc6_:Class;
         (((_loc7_ = new (_loc6_ = §+$#§.§["`§(param1.n))()) as MovieClip).getChildByName("count") as TextField).text = "x" + param1.q;
         var _loc8_:Number = this.§7!@§ * 0.7;
         if(this.§@w§ == 4)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.2;
            _loc8_ = this.§7!@§ * 0.65;
         }
         else if(this.§@w§ == 3)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.3;
            _loc8_ = this.§7!@§ * 0.6;
         }
         else if(this.§@w§ == 2)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.5;
            _loc8_ = this.§7!@§ * 0.5;
         }
         _loc7_.rotation = _loc5_ - 90;
         _loc7_.x = _loc8_ * Math.cos(§^#p§(_loc5_));
         _loc7_.y = _loc8_ * Math.sin(§^#p§(_loc5_));
         this.§^#m§.addChild(_loc7_);
         this.§;#]§[param1.n] = new Segment(_loc7_,_loc4_,param1.n,param2);
      }
      
      public function §3!#§() : void
      {
         this.reset();
         this.§-"W§ = §,"?§;
         this.§^#+§ = getTimer();
         this.§'#B§ = §-$-§;
         this.§?#9§ = true;
      }
      
      public function § #t§() : void
      {
         this.reset();
         this.§;#]§ = null;
      }
      
      private function §-";§() : void
      {
         var _loc1_:Segment = this.§;#]§[this.§ !u§];
         var _loc2_:uint = _loc1_.id;
         this.§4#!§ = this.§<#N§(_loc2_);
         this.§&x§ = this.§4#!§ - this.§^#m§.rotation;
         while(this.§&x§ < §`"N§)
         {
            this.§&x§ += 360;
         }
         this.§##=§ = this.§&x§;
         this.§#!?§ = true;
         this.§?#9§ = false;
      }
      
      private function §<#N§(param1:uint) : Number
      {
         var _loc2_:Number = this.§>!D§ / 2;
         var _loc3_:Number = this.§>!D§ - §<#j§;
         var _loc4_:Number = -(_loc3_ / 2) + Math.floor(Math.random() * (_loc3_ + 1));
         var _loc5_:Number = this.§>!D§ * (param1 + 1) - _loc2_ + _loc4_ + §+#l§;
         return this.§!j§(_loc5_);
      }
      
      private function §##a§(param1:Event) : void
      {
         var _loc2_:Number = getTimer();
         var _loc3_:Number = _loc2_ - this.§^#+§;
         this.§^#+§ = _loc2_;
         switch(this.§-"W§)
         {
            case §,"?§:
               if(_loc3_ > 0)
               {
                  this.§'!^§(_loc3_);
                  this.§@"'§(_loc3_);
                  this.§1Z§(_loc3_);
                  if(this.§#!?§)
                  {
                     this.§6"d§();
                  }
                  if(this.§6#G§)
                  {
                     this.§!$5§();
                  }
               }
               this.§6"o§();
         }
      }
      
      private function §'!^§(param1:Number) : void
      {
         if(this.§'#B§ == §32§)
         {
            this.§+"d§ += param1;
            if(this.§+"d§ >= §`#C§ && this.§ !u§ && !this.§#!?§)
            {
               this.§-";§();
            }
         }
      }
      
      private function §6"o§() : void
      {
         if(this.§'#B§ == 0 && this.§%"f§.rotation == 0)
         {
            this.§-"W§ = §-"A§;
            dispatchEvent(new §%#2§(§%#2§.§,#t§,this.§ !u§));
         }
      }
      
      private function §!$5§() : void
      {
         if(this.§##=§ < 0)
         {
            this.§'#B§ = Math.min(§,"5§,this.§4#5§ * this.§##=§ / this.§&x§);
            this.§##=§ -= this.§'#Q§;
         }
         else
         {
            this.§&x§ = 0;
            this.§##=§ = 0;
            this.§^#m§.rotation = this.§4#!§;
            this.§'#B§ = 0;
            this.§6#G§ = false;
         }
      }
      
      private function §6"d§() : void
      {
         if(this.§##=§ > 0)
         {
            this.§'#B§ = §]!m§ + §32§ * (this.§##=§ / this.§&x§);
            this.§##=§ -= this.§'#Q§;
         }
         else
         {
            this.§##=§ = 0;
            this.§&x§ = 0;
            this.§^#m§.rotation = this.§4#!§;
            this.§'#B§ = 0;
            this.§#!?§ = false;
            if(this.§%;§())
            {
               this.§<e§();
            }
         }
      }
      
      private function §<e§() : void
      {
         this.§6#G§ = true;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.§4"%§();
         if(_loc2_ < §+#l§)
         {
            _loc1_ = _loc2_ + §<#j§;
         }
         else
         {
            _loc1_ = _loc2_ - (this.§>!D§ - §<#j§);
         }
         var _loc3_:Number = _loc1_ * -2;
         this.§&x§ = this.§##=§ = _loc3_;
         this.§4#!§ = this.§^#m§.rotation + this.§&x§;
         var _loc4_:Number = -_loc1_;
         this.§4#5§ = this.§'#B§ = _loc4_;
      }
      
      private function §1Z§(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(this.§8"N§ || this.§%;§())
         {
            _loc2_ = param1 / 1000 * this.§'#B§ * -§;#4§;
         }
         else
         {
            _loc2_ = param1 / 1000 * §0#0§;
         }
         var _loc3_:Number = this.§%"f§.rotation + _loc2_;
         _loc3_ = Math.min(_loc3_,§3x§);
         _loc3_ = Math.max(_loc3_,§!$1§);
         this.§%"f§.rotation = _loc3_;
         if(this.§%;§())
         {
            if(!this.§="i§)
            {
               this.§9!n§();
               this.§="i§ = true;
            }
         }
         else if(this.§="i§)
         {
            this.§="i§ = false;
         }
      }
      
      private function §@"'§(param1:Number) : void
      {
         this.§'#Q§ = param1 / 1000 * this.§'#B§;
         this.§^#m§.rotation += this.§'#Q§;
         var _loc2_:int = this.§ for§(this.§^#m§.rotation - §+#l§) / this.§>!D§;
         if(this.§;#j§ != _loc2_)
         {
            this.§;#j§ = _loc2_;
            this.§8"N§ = true;
         }
         else
         {
            this.§8"N§ = false;
         }
         if(this.§?#9§)
         {
            this.§'#B§ += §#!§;
            this.§'#B§ = Math.min(this.§'#B§,§32§);
         }
      }
      
      private function reset() : void
      {
         this.§;#j§ = 0;
         this.§'#B§ = 0;
         this.§4#5§ = 0;
         this.§4#!§ = 0;
         this.§##=§ = 0;
         this.§&x§ = 0;
         this.§+"d§ = 0;
         this.§^#+§ = 0;
         this.§#!?§ = false;
         this.§6#G§ = false;
         this.§@w§ = 0;
         this.§ !u§ = null;
         this.§^#m§.rotation = 0;
      }
      
      private function § for§(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      private function §!j§(param1:Number) : Number
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
      
      private function §4"%§() : Number
      {
         return this.§ for§(this.§^#m§.rotation) % this.§>!D§;
      }
      
      private function §%;§() : Boolean
      {
         var _loc1_:Number = this.§4"%§();
         return _loc1_ < §+#l§ || _loc1_ > this.§>!D§ - §<#j§;
      }
      
      public function §4U§(param1:String) : void
      {
         this.§ !u§ = param1;
      }
      
      public function §="<§(param1:Boolean) : void
      {
         this.§%"f§.visible = param1;
      }
      
      public function dispose() : void
      {
         this.§ #t§();
         this.§^#m§.removeEventListener(Event.ENTER_FRAME,this.§##a§);
      }
      
      private function §9!n§() : void
      {
         this.§4"'§ = this.§4"'§ < §+m§ ? int(this.§4"'§ + 1) : 1;
         §!#&§.playSound("fortunewheel_click_" + this.§4"'§,§2"U§);
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
