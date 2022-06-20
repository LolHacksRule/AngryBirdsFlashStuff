package § ">§
{
   import §#"R§.§?""§;
   import §3"V§.§ b§;
   import com.rovio.assets.§[a§;
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
      
      public static const §?#M§:String = "CHANNEL_SPINNING_WHEEL";
      
      private static const §@$5§:int = 40;
      
      private static const §&#u§:int = 20;
      
      private static const §>!O§:Boolean = false;
      
      private static const §!#e§:uint = !!§>!O§ ? uint(0) : uint(180);
      
      private static const §="=§:uint = 1440;
      
      private static const §0"3§:uint = 1000;
      
      private static const §9!z§:uint = 400;
      
      private static const §["x§:uint = 800;
      
      private static const §>!?§:uint = 8;
      
      private static const §7!1§:int = -2;
      
      private static const §8!J§:uint = 50;
      
      private static const §=#z§:Number = 3;
      
      private static const §2W§:uint = 7;
      
      private static const §+#8§:Number = -60;
      
      private static const §4!1§:Number = 0;
      
      private static const §%"l§:uint = 240;
      
      private static const §",§:uint = 4;
      
      private static const §"#+§:uint = 1;
      
      private static const § #X§:uint = 0;
       
      
      private var §use§:int;
      
      private var §#b§:Boolean;
      
      private var §]!5§:Number = 45;
      
      private var §=!P§:DisplayObject;
      
      private var §+"^§:DisplayObjectContainer;
      
      private var §5##§:Number;
      
      private var §,"n§:Number = 0;
      
      private var §%F§:Number;
      
      private var § "^§:Number;
      
      private var §-$>§:int;
      
      private var §6m§:Boolean;
      
      private var §%E§:uint;
      
      private var §>$4§:Number;
      
      private var §="q§:Number;
      
      private var §?"$§:Number;
      
      private var §7#_§:Boolean;
      
      private var §#$E§:Boolean;
      
      private var §`-§:Boolean;
      
      private var §2#>§:Number;
      
      private var §2!!§:String;
      
      private var §`!"§:Number;
      
      private var §2!V§:Dictionary;
      
      private var §0#[§:String = null;
      
      private var §7B§:uint;
      
      public function SpinningWheel(param1:DisplayObjectContainer, param2:DisplayObject, param3:String, param4:Number, param5:Vector.<Object>)
      {
         super();
         this.§=!P§ = param2;
         this.§+"^§ = param1;
         this.§2!!§ = param3;
         this.§`!"§ = param4;
         this.§^!M§(param5);
         if(!param1.hasEventListener(Event.ENTER_FRAME))
         {
            param1.addEventListener(Event.ENTER_FRAME,this.§7! §);
         }
         this.§7B§ = § #X§;
      }
      
      private static function §"#O§(param1:Number) : Number
      {
         return Math.PI * param1 / 180;
      }
      
      public function §^!M§(param1:Vector.<Object>) : void
      {
         this.reset();
         this.§%E§ = param1.length;
         this.§2!V§ = new Dictionary(true);
         this.§+"^§.removeChildren();
         this.§]!5§ = 360 / this.§%E§;
         var _loc2_:int = 0;
         while(_loc2_ < this.§%E§)
         {
            this.§,s§(param1[_loc2_],_loc2_);
            _loc2_++;
         }
         § b§.§%#C§(§?#M§,§@$5§,1);
      }
      
      private function §,s§(param1:Object, param2:uint) : void
      {
         var _loc3_:Class = §[a§.§8#k§(this.§2!!§);
         var _loc4_:DisplayObject;
         (_loc4_ = new _loc3_()).rotation = param2 * -this.§]!5§ + §!#e§;
         this.§+"^§.addChild(_loc4_);
         var _loc5_:Number = (this.§%E§ - param2) * this.§]!5§ - this.§]!5§ / 2 - 90 + §!#e§;
         var _loc7_:DisplayObject;
         var _loc6_:Class;
         (((_loc7_ = new (_loc6_ = §[a§.§8#k§(param1.n))()) as MovieClip).getChildByName("count") as TextField).text = "x" + param1.q;
         var _loc8_:Number = this.§`!"§ * 0.7;
         if(this.§%E§ == 4)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.2;
            _loc8_ = this.§`!"§ * 0.65;
         }
         else if(this.§%E§ == 3)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.3;
            _loc8_ = this.§`!"§ * 0.6;
         }
         else if(this.§%E§ == 2)
         {
            _loc7_.scaleX = _loc7_.scaleY = 1.5;
            _loc8_ = this.§`!"§ * 0.5;
         }
         _loc7_.rotation = _loc5_ - 90;
         _loc7_.x = _loc8_ * Math.cos(§"#O§(_loc5_));
         _loc7_.y = _loc8_ * Math.sin(§"#O§(_loc5_));
         this.§+"^§.addChild(_loc7_);
         this.§2!V§[param1.n] = new Segment(_loc7_,_loc4_,param1.n,param2);
      }
      
      public function §7#=§() : void
      {
         this.reset();
         this.§7B§ = §"#+§;
         this.§5##§ = getTimer();
         this.§%F§ = §9!z§;
         this.§`-§ = true;
      }
      
      public function §?#k§() : void
      {
         this.reset();
         this.§2!V§ = null;
      }
      
      private function §%!h§() : void
      {
         var _loc1_:Segment = this.§2!V§[this.§0#[§];
         var _loc2_:uint = _loc1_.id;
         this.§>$4§ = this.§1#U§(_loc2_);
         this.§="q§ = this.§>$4§ - this.§+"^§.rotation;
         while(this.§="q§ < §="=§)
         {
            this.§="q§ += 360;
         }
         this.§?"$§ = this.§="q§;
         this.§7#_§ = true;
         this.§`-§ = false;
      }
      
      private function §1#U§(param1:uint) : Number
      {
         var _loc2_:Number = this.§]!5§ / 2;
         var _loc3_:Number = this.§]!5§ - §=#z§;
         var _loc4_:Number = -(_loc3_ / 2) + Math.floor(Math.random() * (_loc3_ + 1));
         var _loc5_:Number = this.§]!5§ * (param1 + 1) - _loc2_ + _loc4_ + §2W§;
         return this.§ #?§(_loc5_);
      }
      
      private function §7! §(param1:Event) : void
      {
         var _loc2_:Number = getTimer();
         var _loc3_:Number = _loc2_ - this.§5##§;
         this.§5##§ = _loc2_;
         switch(this.§7B§)
         {
            case §"#+§:
               if(_loc3_ > 0)
               {
                  this.§!#k§(_loc3_);
                  this.§5"'§(_loc3_);
                  this.§#"[§(_loc3_);
                  if(this.§7#_§)
                  {
                     this.§!$"§();
                  }
                  if(this.§#$E§)
                  {
                     this.§3!j§();
                  }
               }
               this.§@#[§();
         }
      }
      
      private function §!#k§(param1:Number) : void
      {
         if(this.§%F§ == §["x§)
         {
            this.§,"n§ += param1;
            if(this.§,"n§ >= §0"3§ && this.§0#[§ && !this.§7#_§)
            {
               this.§%!h§();
            }
         }
      }
      
      private function §@#[§() : void
      {
         if(this.§%F§ == 0 && this.§=!P§.rotation == 0)
         {
            this.§7B§ = § #X§;
            dispatchEvent(new §?""§(§?""§.§7V§,this.§0#[§));
         }
      }
      
      private function §3!j§() : void
      {
         if(this.§?"$§ < 0)
         {
            this.§%F§ = Math.min(§7!1§,this.§2#>§ * this.§?"$§ / this.§="q§);
            this.§?"$§ -= this.§ "^§;
         }
         else
         {
            this.§="q§ = 0;
            this.§?"$§ = 0;
            this.§+"^§.rotation = this.§>$4§;
            this.§%F§ = 0;
            this.§#$E§ = false;
         }
      }
      
      private function §!$"§() : void
      {
         if(this.§?"$§ > 0)
         {
            this.§%F§ = §>!?§ + §["x§ * (this.§?"$§ / this.§="q§);
            this.§?"$§ -= this.§ "^§;
         }
         else
         {
            this.§?"$§ = 0;
            this.§="q§ = 0;
            this.§+"^§.rotation = this.§>$4§;
            this.§%F§ = 0;
            this.§7#_§ = false;
            if(this.§`#f§())
            {
               this.§'!o§();
            }
         }
      }
      
      private function §'!o§() : void
      {
         this.§#$E§ = true;
         var _loc1_:Number = 0;
         var _loc2_:Number = this.§5#^§();
         if(_loc2_ < §2W§)
         {
            _loc1_ = _loc2_ + §=#z§;
         }
         else
         {
            _loc1_ = _loc2_ - (this.§]!5§ - §=#z§);
         }
         var _loc3_:Number = _loc1_ * -2;
         this.§="q§ = this.§?"$§ = _loc3_;
         this.§>$4§ = this.§+"^§.rotation + this.§="q§;
         var _loc4_:Number = -_loc1_;
         this.§2#>§ = this.§%F§ = _loc4_;
      }
      
      private function §#"[§(param1:Number) : void
      {
         var _loc2_:Number = 0;
         if(this.§6m§ || this.§`#f§())
         {
            _loc2_ = param1 / 1000 * this.§%F§ * -§",§;
         }
         else
         {
            _loc2_ = param1 / 1000 * §%"l§;
         }
         var _loc3_:Number = this.§=!P§.rotation + _loc2_;
         _loc3_ = Math.min(_loc3_,§4!1§);
         _loc3_ = Math.max(_loc3_,§+#8§);
         this.§=!P§.rotation = _loc3_;
         if(this.§`#f§())
         {
            if(!this.§#b§)
            {
               this.§@!X§();
               this.§#b§ = true;
            }
         }
         else if(this.§#b§)
         {
            this.§#b§ = false;
         }
      }
      
      private function §5"'§(param1:Number) : void
      {
         this.§ "^§ = param1 / 1000 * this.§%F§;
         this.§+"^§.rotation += this.§ "^§;
         var _loc2_:int = this.§7"l§(this.§+"^§.rotation - §2W§) / this.§]!5§;
         if(this.§-$>§ != _loc2_)
         {
            this.§-$>§ = _loc2_;
            this.§6m§ = true;
         }
         else
         {
            this.§6m§ = false;
         }
         if(this.§`-§)
         {
            this.§%F§ += §8!J§;
            this.§%F§ = Math.min(this.§%F§,§["x§);
         }
      }
      
      private function reset() : void
      {
         this.§-$>§ = 0;
         this.§%F§ = 0;
         this.§2#>§ = 0;
         this.§>$4§ = 0;
         this.§?"$§ = 0;
         this.§="q§ = 0;
         this.§,"n§ = 0;
         this.§5##§ = 0;
         this.§7#_§ = false;
         this.§#$E§ = false;
         this.§%E§ = 0;
         this.§0#[§ = null;
         this.§+"^§.rotation = 0;
      }
      
      private function §7"l§(param1:Number) : Number
      {
         return (param1 + 360) % 360;
      }
      
      private function § #?§(param1:Number) : Number
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
      
      private function §5#^§() : Number
      {
         return this.§7"l§(this.§+"^§.rotation) % this.§]!5§;
      }
      
      private function §`#f§() : Boolean
      {
         var _loc1_:Number = this.§5#^§();
         return _loc1_ < §2W§ || _loc1_ > this.§]!5§ - §=#z§;
      }
      
      public function §@!5§(param1:String) : void
      {
         this.§0#[§ = param1;
      }
      
      public function §?!y§(param1:Boolean) : void
      {
         this.§=!P§.visible = param1;
      }
      
      public function dispose() : void
      {
         this.§?#k§();
         this.§+"^§.removeEventListener(Event.ENTER_FRAME,this.§7! §);
      }
      
      private function §@!X§() : void
      {
         this.§use§ = this.§use§ < §&#u§ ? int(this.§use§ + 1) : 1;
         § b§.playSound("fortunewheel_click_" + this.§use§,§?#M§);
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
