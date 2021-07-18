package §;"Y§
{
   import §<w§.§6#'§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class §&#X§ implements IEventDispatcher
   {
      
      public static var §!"3§:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §;#V§:int = 2;
      
      public static const §<!^§:int = 3;
       
      
      private var §?!B§:Sprite;
      
      public var §6#=§:int = 0;
      
      public var § !_§:Array;
      
      private var §[4§:EventDispatcher;
      
      private var §8R§:Dictionary;
      
      public function §&#X§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§?!B§ = param1;
         }
         this.§ !_§ = new Array();
         this.§[4§ = new EventDispatcher();
         this.§8R§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§#0§();
         this.§?!B§ = param1;
         this.§<P§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§?!B§ && this.§?!B§ is MovieClip)
         {
            if(param2)
            {
               (this.§?!B§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§?!B§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function § #A§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§6#=§ |= 1 << param1;
         this.§ !_§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§<P§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         var _loc3_:§6#'§ = new §6#'§(§6#'§.§+!>§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §<P§() : void
      {
         this.§#0§();
         if((this.§6#=§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            if(§!"3§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§?!B§.addEventListener(TouchEvent.TOUCH_BEGIN,this.§^U§);
            }
            else
            {
               this.§?!B§.addEventListener(MouseEvent.MOUSE_DOWN,this.§^U§);
            }
         }
         if((this.§6#=§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            if(§!"3§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§?!B§.addEventListener(TouchEvent.TOUCH_END,this.§<"o§);
            }
            else
            {
               this.§?!B§.addEventListener(MouseEvent.CLICK,this.§<"o§);
            }
         }
         if((this.§6#=§ & 1 << §;#V§) != 0)
         {
            this.§?!B§.addEventListener(MouseEvent.ROLL_OVER,this.§<#7§);
         }
         if((this.§6#=§ & 1 << §<!^§) != 0)
         {
            this.§?!B§.addEventListener(MouseEvent.ROLL_OUT,this.§^!=§);
         }
      }
      
      public function §#0§() : void
      {
         this.§?!B§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^U§);
         this.§?!B§.removeEventListener(TouchEvent.TOUCH_BEGIN,this.§^U§);
         this.§?!B§.removeEventListener(MouseEvent.CLICK,this.§<"o§);
         this.§?!B§.removeEventListener(TouchEvent.TOUCH_END,this.§<"o§);
         this.§?!B§.removeEventListener(MouseEvent.ROLL_OVER,this.§<#7§);
         this.§?!B§.removeEventListener(MouseEvent.ROLL_OUT,this.§^!=§);
      }
      
      public function §^U§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§ !_§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §<"o§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§ !_§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §<#7§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§;#V§,this.§ !_§[§;#V§]);
      }
      
      public function §^!=§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§<!^§,this.§ !_§[§<!^§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§#0§();
         this.§?!B§ = null;
         this.§ !_§ = null;
         for(_loc1_ in this.§8R§)
         {
            _loc2_ = this.§8R§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§[4§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§8R§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§?!B§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§[4§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§8R§[param1])
         {
            this.§8R§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§8R§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§[4§.removeEventListener(param1,param2,false);
         if(this.§8R§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§8R§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§[4§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[4§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[4§.willTrigger(param1);
      }
   }
}
