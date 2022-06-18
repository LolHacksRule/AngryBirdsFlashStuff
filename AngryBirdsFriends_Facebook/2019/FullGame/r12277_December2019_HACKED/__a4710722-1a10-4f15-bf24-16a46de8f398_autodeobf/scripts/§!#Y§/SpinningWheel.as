package §!#Y§
{
   import § "v§.§4$4§;
   import §5#<§.§-"q§;
   import com.rovio.assets.§=@§;
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
      
      public static const §#N§:String = "CHANNEL_SPINNING_WHEEL";
      
      private static const §^"?§:int = 40;
      
      private static const §<#N§:int = 20;
      
      private static const §=!x§:Boolean = false;
      
      private static const §@p§:uint = !!§=!x§ ? uint(0) : uint(180);
      
      private static const §%"Z§:uint = 1440;
      
      private static const §0!Y§:uint = 1000;
      
      private static const §6"L§:uint = 400;
      
      private static const §7$"§:uint = 800;
      
      private static const §'!`§:uint = 8;
      
      private static const §[X§:int = -2;
      
      private static const §[";§:uint = 50;
      
      private static const §<"q§:Number = 3;
      
      private static const §;`§:uint = 7;
      
      private static const §8#-§:Number = -60;
      
      private static const §&^§:Number = 0;
      
      private static const §^!U§:uint = 240;
      
      private static const §%"4§:uint = 4;
      
      private static const §3?§:uint = 1;
      
      private static const §1$ §:uint = 0;
       
      
      private var §#a§:int;
      
      private var §3"_§:Boolean;
      
      private var §'"o§:Number = 45;
      
      private var §`!G§:DisplayObject;
      
      private var §1Q§:DisplayObjectContainer;
      
      private var §]$'§:Number;
      
      private var §+#^§:Number = 0;
      
      private var §`#5§:Number;
      
      private var §>G§:Number;
      
      private var §-!?§:int;
      
      private var §+"-§:Boolean;
      
      private var §7"X§:uint;
      
      private var §9#"§:Number;
      
      private var §>P§:Number;
      
      private var §5#0§:Number;
      
      private var §=!E§:Boolean;
      
      private var §,"v§:Boolean;
      
      private var §0"l§:Boolean;
      
      private var §7,§:Number;
      
      private var §;#!§:String;
      
      private var §"!'§:Number;
      
      private var §9!#§:Dictionary;
      
      private var §^#C§:String = null;
      
      private var §`"Y§:uint;
      
      public function SpinningWheel(param1:DisplayObjectContainer, param2:DisplayObject, param3:String, param4:Number, param5:Vector.<Object>)
      {
         super();
         this.§`!G§ = param2;
         this.§1Q§ = param1;
         this.§;#!§ = param3;
         this.§"!'§ = param4;
         this.§"!@§(param5);
         if(!param1.hasEventListener(Event.ENTER_FRAME))
         {
            param1.addEventListener(Event.ENTER_FRAME,this.§6$-§);
         }
         this.§`"Y§ = §1$ §;
      }
      
      private static function §%0§(param1:Number) : Number
      {
         return Math.PI * param1 / 180;
      }
      
      public function §"!@§(param1:Vector.<Object>) : void
      {
         this.reset();
         this.§7"X§ = param1.length;
         this.§9!#§ = new Dictionary(true);
         this.§1Q§.removeChildren();
         this.§'"o§ = 360 / this.§7"X§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7"X§)
         {
            this.§=!s§(param1[_loc2_],_loc2_);
            _loc2_++;
         }
         §4$4§.§<!A§(§#N§,§^"?§,1);
      }
      
      private function §=!s§(param1:Object, param2:uint) : void
      {
         var _loc3_:Class = §=@§.§9!x§(this.§;#!§);
         var _loc4_:DisplayObject;
         (_loc4_ = new _loc3_()).rotation = param2 * -this.§'"o§ + §@p§;
         this.§1Q§.addChild(_loc4_);
         var _loc5_:Number = (this.§7"X§ - param2) * this.§'"o§ - this.§'"o§ / 2 - 90 + §@p§;
         var _loc7_:DisplayObject;
         (((_loc7_ = new §=@§.§9!x§(param1.n)()) as MovieClip).getChildByName("count") as TextField).text = "x" + param1.q;
         var _loc8_:Number = this.§"!'§ * 0.7;
         if(this.§7"X§ == 4)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.2;
            _loc8_ = this.§"!'§ * 0.65;
         }
         else if(this.§7"X§ == 3)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.3;
            _loc8_ = this.§"!'§ * 0.6;
         }
         else if(this.§7"X§ == 2)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.5;
            _loc8_ = this.§"!'§ * 0.5;
         }
         _loc7_.rotation = _loc5_ - 90;
         _loc7_.x = _loc8_ * Math.cos(§%0§(_loc5_));
         _loc7_.y = _loc8_ * Math.sin(§%0§(_loc5_));
         this.§1Q§.addChild(_loc7_);
         this.§9!#§[param1.n] = new Segment(_loc7_,_loc4_,param1.n,param2);
      }
      
      public function §8"Q§() : void
      {
         this.reset();
         this.§`"Y§ = §3?§;
         this.§]$'§ = getTimer();
         this.§`#5§ = §6"L§;
         this.§0"l§ = true;
      }
      
      public function §+!t§() : void
      {
         this.reset();
         this.§9!#§ = null;
      }
      
      private function § #i§() : void
      {
         var _loc1_:Segment = this.§9!#§[this.§^#C§];
         var _loc2_:uint = _loc1_.id;
         this.§9#"§ = this.§1I§(_loc2_);
         this.§>P§ = this.§9#"§ - this.§1Q§.rotation;
         while(this.§>P§ < §%"Z§)
         {
            this.§>P§ += 360;
         }
         this.§5#0§ = this.§>P§;
         this.§=!E§ = true;
         this.§0"l§ = false;
      }
      
      private function §1I§(param1:uint) : Number
      {
         var _loc2_:Number = this.§'"o§ / 2;
         var _loc3_:Number = this.§'"o§ - §<"q§;
         var _loc4_:Number = -(_loc3_ / 2) + Math.floor(Math.random() * (_loc3_ + 1));
         var _loc5_:Number = this.§'"o§ * (param1 + 1) - _loc2_ + _loc4_ + §;`§;
         return this.§'#,§(_loc5_);
      }
      
      private function §6$-§(param1:Event) : void
      {
         var _loc2_:Number = getTimer();
         var _loc3_:Number = _loc2_ - this.§]$'§;
         this.§]$'§ = _loc2_;
         switch(this.§`"Y§)
         {
            case §3?§:
               if(_loc3_ > 0)
               {
                  this.§7"w§(_loc3_);
                  this.§&!z§(_loc3_);
                  this.§6#6§(_loc3_);
                  if(this.§=!E§)
                  {
                     this.§%!S§();
                  }
                  if(this.§,"v§)
                  {
                     this.§9"[§();
                  }
               }
               this.§"4§();
         }
      }
      
      private function §7"w§(param1:Number) : void
      {
         if(this.§`#5§ == §7$"§)
         {
            this.§+#^§ += param1;
            if(this.§+#^§ >= §0!Y§ && this.§^#C§ && !this.§=!E§)
            {
               this.§ #i§();
            }
         }
      }
      
      private function §"4§() : void
      {
         if(this.§`#5§ == 0 && this.§`!G§.rotation == 0)
         {
            this.§`"Y§ = §1$ §;
            dispatchEvent(new §-"q§(§-"q§.§=!i§,this.§^#C§));
         }
      }
      
      private function §9"[§() : void
      {
         if(this.§5#0§ < 0)
         {
            this.§`#5§ = Math.min(§[X§,this.§7,§ * this.§5#0§ / this.§>P§);
            this.§5#0§ -= this.§>G§;
         }
         else
         {
            this.§>P§ = 0;
            this.§5#0§ = 0;
            this.§1Q§.rotation = this.§9#"§;
            this.§`#5§ = 0;
            this.§,"v§ = false;
         }
      }
      
      private function §%!S§() : void
      {
         if(this.§5#0§ > 0)
         {
            this.§`#5§ = §'!`§ + §7$"§ * (this.§5#0§ / this.§>P§);
            this.§5#0§ -= this.§>G§;
         }
         else
         {
            this.§5#0§ = 0;
            this.§>P§ = 0;
            this.§1Q§.rotation = this.§9#"§;
            this.§`#5§ = 0;
            this.§=!E§ = false;
            if(this.§8#m§())
            {
               this.§9#x§();
            }
         }
      }
      
      private function §9#x§() : void
      {
         this.§,"v§ = true;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.§2"P§();
         if(_loc2_ < §;`§)
         {
            _loc1_ = _loc2_ + §<"q§;
         }
         else
         {
            _loc1_ = _loc2_ - (this.§'"o§ - §<"q§);
         }
         var _loc3_:Number = _loc1_ * -2;
         this.§>P§ = this.§5#0§ = _loc3_;
         this.§9#"§ = this.§1Q§.rotation + this.§>P§;
         var _loc4_:Number = -_loc1_;
         this.§7,§ = this.§`#5§ = _loc4_;
      }
      
      private function §6#6§(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(this.§+"-§ || this.§8#m§())
         {
            _loc2_ = param1 / 1000 * this.§`#5§ * -§%"4§;
         }
         else
         {
            _loc2_ = param1 / 1000 * §^!U§;
         }
         var _loc3_:Number = this.§`!G§.rotation + _loc2_;
         _loc3_ = Math.min(_loc3_,§&^§);
         _loc3_ = Math.max(_loc3_,§8#-§);
         this.§`!G§.rotation = _loc3_;
         if(this.§8#m§())
         {
            if(!this.§3"_§)
            {
               this.§]#V§();
               this.§3"_§ = true;
            }
         }
         else if(this.§3"_§)
         {
            this.§3"_§ = false;
         }
      }
      
      private function §&!z§(param1:Number) : void
      {
         this.§>G§ = param1 / 1000 * this.§`#5§;
         this.§1Q§.rotation += this.§>G§;
         var _loc2_:int = this.§>"H§(this.§1Q§.rotation - §;`§) / this.§'"o§;
         if(this.§-!?§ != _loc2_)
         {
            this.§-!?§ = _loc2_;
            this.§+"-§ = true;
         }
         else
         {
            this.§+"-§ = false;
         }
         if(this.§0"l§)
         {
            this.§`#5§ += §[";§;
            this.§`#5§ = Math.min(this.§`#5§,§7$"§);
         }
      }
      
      private function reset() : void
      {
         this.§-!?§ = 0;
         this.§`#5§ = 0;
         this.§7,§ = 0;
         this.§9#"§ = 0;
         this.§5#0§ = 0;
         this.§>P§ = 0;
         this.§+#^§ = 0;
         this.§]$'§ = 0;
         this.§=!E§ = false;
         this.§,"v§ = false;
         this.§7"X§ = 0;
         this.§^#C§ = null;
         this.§1Q§.rotation = 0;
      }
      
      private function §>"H§(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      private function §'#,§(param1:Number) : Number
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
      
      private function §2"P§() : Number
      {
         return this.§>"H§(this.§1Q§.rotation) % this.§'"o§;
      }
      
      private function §8#m§() : Boolean
      {
         var _loc1_:Number = this.§2"P§();
         return _loc1_ < §;`§ || _loc1_ > this.§'"o§ - §<"q§;
      }
      
      public function §^M§(param1:String) : void
      {
         this.§^#C§ = param1;
      }
      
      public function §9>§(param1:Boolean) : void
      {
         this.§`!G§.visible = param1;
      }
      
      public function dispose() : void
      {
         this.§+!t§();
         this.§1Q§.removeEventListener(Event.ENTER_FRAME,this.§6$-§);
      }
      
      private function §]#V§() : void
      {
         this.§#a§ = this.§#a§ < §<#N§ ? int(this.§#a§ + 1) : 1;
         §4$4§.playSound("fortunewheel_click_" + this.§#a§,§#N§);
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
