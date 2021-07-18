package §'!U§
{
   import §3!T§.§3">§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class §0!?§ implements IEventDispatcher
   {
      
      public static var §^"R§:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §1"j§:int = 2;
      
      public static const §`!O§:int = 3;
       
      
      private var §8#^§:Sprite;
      
      public var §;"S§:int = 0;
      
      public var §&"2§:Array;
      
      private var §1X§:EventDispatcher;
      
      private var §=#k§:Dictionary;
      
      public function §0!?§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§8#^§ = param1;
         }
         this.§&"2§ = new Array();
         this.§1X§ = new EventDispatcher();
         this.§=#k§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§"#]§();
         this.§8#^§ = param1;
         this.§"!+§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§8#^§ && this.§8#^§ is MovieClip)
         {
            if(param2)
            {
               (this.§8#^§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§8#^§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §7!7§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§;"S§ |= 1 << param1;
         this.§&"2§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§"!+§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §3">§
      {
         var _loc3_:§3">§ = new §3">§(§3">§.§6!3§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §"!+§() : void
      {
         this.§"#]§();
         if((this.§;"S§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            if(§^"R§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§8#^§.addEventListener(TouchEvent.TOUCH_BEGIN,this.§###§);
            }
            else
            {
               this.§8#^§.addEventListener(MouseEvent.MOUSE_DOWN,this.§###§);
            }
         }
         if((this.§;"S§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            if(§^"R§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§8#^§.addEventListener(TouchEvent.TOUCH_END,this.§@#u§);
            }
            else
            {
               this.§8#^§.addEventListener(MouseEvent.CLICK,this.§@#u§);
            }
         }
         if((this.§;"S§ & 1 << §1"j§) != 0)
         {
            this.§8#^§.addEventListener(MouseEvent.ROLL_OVER,this.§5#E§);
         }
         if((this.§;"S§ & 1 << §`!O§) != 0)
         {
            this.§8#^§.addEventListener(MouseEvent.ROLL_OUT,this.§["=§);
         }
      }
      
      public function §"#]§() : void
      {
         this.§8#^§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§###§);
         this.§8#^§.removeEventListener(TouchEvent.TOUCH_BEGIN,this.§###§);
         this.§8#^§.removeEventListener(MouseEvent.CLICK,this.§@#u§);
         this.§8#^§.removeEventListener(TouchEvent.TOUCH_END,this.§@#u§);
         this.§8#^§.removeEventListener(MouseEvent.ROLL_OVER,this.§5#E§);
         this.§8#^§.removeEventListener(MouseEvent.ROLL_OUT,this.§["=§);
      }
      
      public function §###§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§&"2§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §@#u§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§&"2§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §5#E§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§1"j§,this.§&"2§[§1"j§]);
      }
      
      public function §["=§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§`!O§,this.§&"2§[§`!O§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§"#]§();
         this.§8#^§ = null;
         this.§&"2§ = null;
         for(_loc1_ in this.§=#k§)
         {
            _loc2_ = this.§=#k§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§1X§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§=#k§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§8#^§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§1X§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§=#k§[param1])
         {
            this.§=#k§[param1] = new Vector.<Function>();
         }
         this.§=#k§[param1].push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§1X§.removeEventListener(param1,param2,false);
         if(this.§=#k§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§=#k§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§1X§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1X§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1X§.willTrigger(param1);
      }
   }
}
