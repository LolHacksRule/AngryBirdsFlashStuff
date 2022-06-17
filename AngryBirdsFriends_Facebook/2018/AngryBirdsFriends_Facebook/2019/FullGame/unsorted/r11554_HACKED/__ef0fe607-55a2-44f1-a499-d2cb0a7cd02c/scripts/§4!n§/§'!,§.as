package §4!n§
{
   import §5"G§.§8"`§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class §'!,§ implements IEventDispatcher
   {
      
      public static var §9!Z§:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §[!P§:int = 2;
      
      public static const §`[§:int = 3;
       
      
      private var §^##§:Sprite;
      
      public var §,!l§:int = 0;
      
      public var §@"m§:Array;
      
      private var §?'§:EventDispatcher;
      
      private var §^!^§:Dictionary;
      
      public function §'!,§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§^##§ = param1;
         }
         this.§@"m§ = new Array();
         this.§?'§ = new EventDispatcher();
         this.§^!^§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§7P§();
         this.§^##§ = param1;
         this.§7#_§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§^##§ && this.§^##§ is MovieClip)
         {
            if(param2)
            {
               (this.§^##§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§^##§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §4M§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§,!l§ |= 1 << param1;
         this.§@"m§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§7#_§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §8"`§
      {
         var _loc3_:§8"`§ = new §8"`§(§8"`§.§,$A§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §7#_§() : void
      {
         this.§7P§();
         if((this.§,!l§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            if(§9!Z§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§^##§.addEventListener(TouchEvent.TOUCH_BEGIN,this.§4!M§);
            }
            else
            {
               this.§^##§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4!M§);
            }
         }
         if((this.§,!l§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            if(§9!Z§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§^##§.addEventListener(TouchEvent.TOUCH_END,this.§1$@§);
            }
            else
            {
               this.§^##§.addEventListener(MouseEvent.CLICK,this.§1$@§);
            }
         }
         if((this.§,!l§ & 1 << §[!P§) != 0)
         {
            this.§^##§.addEventListener(MouseEvent.ROLL_OVER,this.§5#@§);
         }
         if((this.§,!l§ & 1 << §`[§) != 0)
         {
            this.§^##§.addEventListener(MouseEvent.ROLL_OUT,this.§2$%§);
         }
      }
      
      public function §7P§() : void
      {
         this.§^##§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4!M§);
         this.§^##§.removeEventListener(TouchEvent.TOUCH_BEGIN,this.§4!M§);
         this.§^##§.removeEventListener(MouseEvent.CLICK,this.§1$@§);
         this.§^##§.removeEventListener(TouchEvent.TOUCH_END,this.§1$@§);
         this.§^##§.removeEventListener(MouseEvent.ROLL_OVER,this.§5#@§);
         this.§^##§.removeEventListener(MouseEvent.ROLL_OUT,this.§2$%§);
      }
      
      public function §4!M§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§@"m§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §1$@§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§@"m§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §5#@§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§[!P§,this.§@"m§[§[!P§]);
      }
      
      public function §2$%§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§`[§,this.§@"m§[§`[§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§7P§();
         this.§^##§ = null;
         this.§@"m§ = null;
         for(_loc1_ in this.§^!^§)
         {
            _loc2_ = this.§^!^§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§?'§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§^!^§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§^##§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§?'§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§^!^§[param1])
         {
            this.§^!^§[param1] = new Vector.<Function>();
         }
         this.§^!^§[param1].push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§?'§.removeEventListener(param1,param2,false);
         if(this.§^!^§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§^!^§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§?'§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?'§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?'§.willTrigger(param1);
      }
   }
}
