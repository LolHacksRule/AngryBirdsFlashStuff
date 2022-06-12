package §,!Q§
{
   import §!"'§.§0"Z§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class §6"n§ implements IEventDispatcher
   {
      
      public static var § #q§:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §0!5§:int = 2;
      
      public static const §<!$§:int = 3;
       
      
      private var §,#$§:Sprite;
      
      public var §^A§:int = 0;
      
      public var §3#o§:Array;
      
      private var §8!A§:EventDispatcher;
      
      private var §]#V§:Dictionary;
      
      public function §6"n§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§,#$§ = param1;
         }
         this.§3#o§ = new Array();
         this.§8!A§ = new EventDispatcher();
         this.§]#V§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§1#@§();
         this.§,#$§ = param1;
         this.§4!B§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§,#$§ && this.§,#$§ is MovieClip)
         {
            if(param2)
            {
               (this.§,#$§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§,#$§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §1r§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§^A§ |= 1 << param1;
         this.§3#o§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§4!B§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §0"Z§
      {
         var _loc3_:§0"Z§ = new §0"Z§(§0"Z§.§0#,§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §4!B§() : void
      {
         this.§1#@§();
         if((this.§^A§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            if(§ #q§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§,#$§.addEventListener(TouchEvent.TOUCH_BEGIN,this.§"!m§);
            }
            else
            {
               this.§,#$§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"!m§);
            }
         }
         if((this.§^A§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            if(§ #q§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§,#$§.addEventListener(TouchEvent.TOUCH_END,this.§3"B§);
            }
            else
            {
               this.§,#$§.addEventListener(MouseEvent.CLICK,this.§3"B§);
            }
         }
         if((this.§^A§ & 1 << §0!5§) != 0)
         {
            this.§,#$§.addEventListener(MouseEvent.ROLL_OVER,this.§"$-§);
         }
         if((this.§^A§ & 1 << §<!$§) != 0)
         {
            this.§,#$§.addEventListener(MouseEvent.ROLL_OUT,this.§-"2§);
         }
      }
      
      public function §1#@§() : void
      {
         this.§,#$§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"!m§);
         this.§,#$§.removeEventListener(TouchEvent.TOUCH_BEGIN,this.§"!m§);
         this.§,#$§.removeEventListener(MouseEvent.CLICK,this.§3"B§);
         this.§,#$§.removeEventListener(TouchEvent.TOUCH_END,this.§3"B§);
         this.§,#$§.removeEventListener(MouseEvent.ROLL_OVER,this.§"$-§);
         this.§,#$§.removeEventListener(MouseEvent.ROLL_OUT,this.§-"2§);
      }
      
      public function §"!m§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§3#o§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §3"B§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§3#o§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §"$-§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§0!5§,this.§3#o§[§0!5§]);
      }
      
      public function §-"2§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§<!$§,this.§3#o§[§<!$§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§1#@§();
         this.§,#$§ = null;
         this.§3#o§ = null;
         for(_loc1_ in this.§]#V§)
         {
            _loc2_ = this.§]#V§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§8!A§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§]#V§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§,#$§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§8!A§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§]#V§[param1])
         {
            this.§]#V§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§]#V§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§8!A§.removeEventListener(param1,param2,false);
         if(this.§]#V§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§]#V§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§8!A§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§8!A§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§8!A§.willTrigger(param1);
      }
   }
}
