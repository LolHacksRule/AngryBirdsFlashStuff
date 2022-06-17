package §<8§
{
   import §=X§.§3§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class §8!g§ implements IEventDispatcher
   {
      
      public static var §["<§:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §="?§:int = 2;
      
      public static const §7[§:int = 3;
       
      
      private var § $@§:Sprite;
      
      public var §5"=§:int = 0;
      
      public var §%"Q§:Array;
      
      private var §4$<§:EventDispatcher;
      
      private var §@"j§:Dictionary;
      
      public function §8!g§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§ $@§ = param1;
         }
         this.§%"Q§ = new Array();
         this.§4$<§ = new EventDispatcher();
         this.§@"j§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§2"K§();
         this.§ $@§ = param1;
         this.§0$7§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§ $@§ && this.§ $@§ is MovieClip)
         {
            if(param2)
            {
               (this.§ $@§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§ $@§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §!#=§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§5"=§ |= 1 << param1;
         this.§%"Q§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§0$7§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §3#6§
      {
         var _loc3_:§3#6§ = new §3#6§(§3#6§.§[!$§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §0$7§() : void
      {
         this.§2"K§();
         if((this.§5"=§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            if(§["<§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§ $@§.addEventListener(TouchEvent.TOUCH_BEGIN,this.§28§);
            }
            else
            {
               this.§ $@§.addEventListener(MouseEvent.MOUSE_DOWN,this.§28§);
            }
         }
         if((this.§5"=§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            if(§["<§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§ $@§.addEventListener(TouchEvent.TOUCH_END,this.§-`§);
            }
            else
            {
               this.§ $@§.addEventListener(MouseEvent.CLICK,this.§-`§);
            }
         }
         if((this.§5"=§ & 1 << §="?§) != 0)
         {
            this.§ $@§.addEventListener(MouseEvent.ROLL_OVER,this.§7"V§);
         }
         if((this.§5"=§ & 1 << §7[§) != 0)
         {
            this.§ $@§.addEventListener(MouseEvent.ROLL_OUT,this.§%#5§);
         }
      }
      
      public function §2"K§() : void
      {
         this.§ $@§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§28§);
         this.§ $@§.removeEventListener(TouchEvent.TOUCH_BEGIN,this.§28§);
         this.§ $@§.removeEventListener(MouseEvent.CLICK,this.§-`§);
         this.§ $@§.removeEventListener(TouchEvent.TOUCH_END,this.§-`§);
         this.§ $@§.removeEventListener(MouseEvent.ROLL_OVER,this.§7"V§);
         this.§ $@§.removeEventListener(MouseEvent.ROLL_OUT,this.§%#5§);
      }
      
      public function §28§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§%"Q§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §-`§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§%"Q§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §7"V§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§="?§,this.§%"Q§[§="?§]);
      }
      
      public function §%#5§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§7[§,this.§%"Q§[§7[§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§2"K§();
         this.§ $@§ = null;
         this.§%"Q§ = null;
         for(_loc1_ in this.§@"j§)
         {
            _loc2_ = this.§@"j§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§4$<§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§@"j§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§ $@§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§4$<§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§@"j§[param1])
         {
            this.§@"j§[param1] = new Vector.<Function>();
         }
         this.§@"j§[param1].push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§4$<§.removeEventListener(param1,param2,false);
         if(this.§@"j§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§@"j§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§4$<§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§4$<§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§4$<§.willTrigger(param1);
      }
   }
}
