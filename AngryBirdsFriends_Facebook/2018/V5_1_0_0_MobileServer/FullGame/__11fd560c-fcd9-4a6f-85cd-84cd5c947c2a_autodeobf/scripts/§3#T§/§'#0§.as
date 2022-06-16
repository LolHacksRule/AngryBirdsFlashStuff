package §3#T§
{
   import §3"I§.§ E§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class §'#0§ implements IEventDispatcher
   {
      
      public static var §`"q§:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^$?§:int = 2;
      
      public static const §5x§:int = 3;
       
      
      private var §`!;§:Sprite;
      
      public var §3$ §:int = 0;
      
      public var §]"E§:Array;
      
      private var §=#R§:EventDispatcher;
      
      private var §4I§:Dictionary;
      
      public function §'#0§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§`!;§ = param1;
         }
         this.§]"E§ = new Array();
         this.§=#R§ = new EventDispatcher();
         this.§4I§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§,#v§();
         this.§`!;§ = param1;
         this.§2q§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§`!;§ && this.§`!;§ is MovieClip)
         {
            if(param2)
            {
               (this.§`!;§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§`!;§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §<!4§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§3$ § |= 1 << param1;
         this.§]"E§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§2q§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : § E§
      {
         var _loc3_:§ E§ = new § E§(§ E§.§=$1§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §2q§() : void
      {
         this.§,#v§();
         if((this.§3$ § & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            if(§`"q§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§`!;§.addEventListener(TouchEvent.TOUCH_BEGIN,this.§2# §);
            }
            else
            {
               this.§`!;§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2# §);
            }
         }
         if((this.§3$ § & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            if(§`"q§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§`!;§.addEventListener(TouchEvent.TOUCH_END,this.§[!_§);
            }
            else
            {
               this.§`!;§.addEventListener(MouseEvent.CLICK,this.§[!_§);
            }
         }
         if((this.§3$ § & 1 << §^$?§) != 0)
         {
            this.§`!;§.addEventListener(MouseEvent.ROLL_OVER,this.§9!3§);
         }
         if((this.§3$ § & 1 << §5x§) != 0)
         {
            this.§`!;§.addEventListener(MouseEvent.ROLL_OUT,this.§;!d§);
         }
      }
      
      public function §,#v§() : void
      {
         this.§`!;§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2# §);
         this.§`!;§.removeEventListener(TouchEvent.TOUCH_BEGIN,this.§2# §);
         this.§`!;§.removeEventListener(MouseEvent.CLICK,this.§[!_§);
         this.§`!;§.removeEventListener(TouchEvent.TOUCH_END,this.§[!_§);
         this.§`!;§.removeEventListener(MouseEvent.ROLL_OVER,this.§9!3§);
         this.§`!;§.removeEventListener(MouseEvent.ROLL_OUT,this.§;!d§);
      }
      
      public function §2# §(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§]"E§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §[!_§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§]"E§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §9!3§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§^$?§,this.§]"E§[§^$?§]);
      }
      
      public function §;!d§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§5x§,this.§]"E§[§5x§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§,#v§();
         this.§`!;§ = null;
         this.§]"E§ = null;
         for(_loc1_ in this.§4I§)
         {
            _loc2_ = this.§4I§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§=#R§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§4I§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§`!;§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§=#R§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§4I§[param1])
         {
            this.§4I§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§4I§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§=#R§.removeEventListener(param1,param2,false);
         if(this.§4I§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§4I§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§=#R§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=#R§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=#R§.willTrigger(param1);
      }
   }
}
