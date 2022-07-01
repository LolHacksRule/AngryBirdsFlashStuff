package §@f§
{
   import §>!L§.§?!d§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §&!"§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const § !@§:int = 2;
      
      public static const §<![§:int = 3;
       
      
      private var §]!Z§:Sprite;
      
      public var §<_§:int = 0;
      
      public var §=;§:Array;
      
      private var §>Z§:EventDispatcher;
      
      private var §`w§:Dictionary;
      
      public function §&!"§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§]!Z§ = param1;
         }
         this.§=;§ = new Array();
         this.§>Z§ = new EventDispatcher();
         this.§`w§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§`E§();
         this.§]!Z§ = param1;
         this.§^!s§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§]!Z§ && this.§]!Z§ is MovieClip)
         {
            if(param2)
            {
               (this.§]!Z§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§]!Z§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §8y§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§<_§ |= 1 << param1;
         this.§=;§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§^!s§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §?!d§
      {
         var _loc3_:§?!d§ = new §?!d§(§?!d§.§@q§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §^!s§() : void
      {
         this.§`E§();
         if((this.§<_§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§]!Z§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.§<_§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§]!Z§.addEventListener(MouseEvent.CLICK,this.mouseUp);
         }
         if((this.§<_§ & 1 << § !@§) != 0)
         {
            this.§]!Z§.addEventListener(MouseEvent.ROLL_OVER,this.§3!x§);
         }
         if((this.§<_§ & 1 << §<![§) != 0)
         {
            this.§]!Z§.addEventListener(MouseEvent.ROLL_OUT,this.§ i§);
         }
      }
      
      public function §`E§() : void
      {
         this.§]!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.§]!Z§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.§]!Z§.removeEventListener(MouseEvent.ROLL_OVER,this.§3!x§);
         this.§]!Z§.removeEventListener(MouseEvent.ROLL_OUT,this.§ i§);
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=;§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=;§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §3!x§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§ !@§,this.§=;§[§ !@§]);
      }
      
      public function § i§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§<![§,this.§=;§[§<![§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§`E§();
         this.§]!Z§ = null;
         this.§=;§ = null;
         for(_loc1_ in this.§`w§)
         {
            _loc2_ = this.§`w§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§>Z§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§`w§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§]!Z§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§>Z§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§`w§[param1])
         {
            this.§`w§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§`w§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§>Z§.removeEventListener(param1,param2,false);
         if(this.§`w§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§`w§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§>Z§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§>Z§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§>Z§.willTrigger(param1);
      }
   }
}
