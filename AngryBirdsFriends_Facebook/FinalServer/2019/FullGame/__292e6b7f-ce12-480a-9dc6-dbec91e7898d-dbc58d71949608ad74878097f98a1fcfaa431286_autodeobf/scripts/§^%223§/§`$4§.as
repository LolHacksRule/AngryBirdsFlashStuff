package §^"3§
{
   import §`§.§%#m§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class §`$4§ implements IEventDispatcher
   {
      
      public static var §,"H§:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §4$5§:int = 2;
      
      public static const §@"`§:int = 3;
       
      
      private var §+$-§:Sprite;
      
      public var §#"3§:int = 0;
      
      public var §6"1§:Array;
      
      private var §8#q§:EventDispatcher;
      
      private var §,w§:Dictionary;
      
      public function §`$4§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§+$-§ = param1;
         }
         this.§6"1§ = new Array();
         this.§8#q§ = new EventDispatcher();
         this.§,w§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§'#2§();
         this.§+$-§ = param1;
         this.§-#X§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§+$-§ && this.§+$-§ is MovieClip)
         {
            if(param2)
            {
               (this.§+$-§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§+$-§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §+"6§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§#"3§ |= 1 << param1;
         this.§6"1§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§-#X§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §%#m§
      {
         var _loc3_:§%#m§ = new §%#m§(§%#m§.§-!O§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §-#X§() : void
      {
         this.§'#2§();
         if((this.§#"3§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            if(§,"H§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§+$-§.addEventListener(TouchEvent.TOUCH_BEGIN,this.§[#+§);
            }
            else
            {
               this.§+$-§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[#+§);
            }
         }
         if((this.§#"3§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            if(§,"H§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§+$-§.addEventListener(TouchEvent.TOUCH_END,this.§+!M§);
            }
            else
            {
               this.§+$-§.addEventListener(MouseEvent.CLICK,this.§+!M§);
            }
         }
         if((this.§#"3§ & 1 << §4$5§) != 0)
         {
            this.§+$-§.addEventListener(MouseEvent.ROLL_OVER,this.§+3§);
         }
         if((this.§#"3§ & 1 << §@"`§) != 0)
         {
            this.§+$-§.addEventListener(MouseEvent.ROLL_OUT,this.§5"Y§);
         }
      }
      
      public function §'#2§() : void
      {
         this.§+$-§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[#+§);
         this.§+$-§.removeEventListener(TouchEvent.TOUCH_BEGIN,this.§[#+§);
         this.§+$-§.removeEventListener(MouseEvent.CLICK,this.§+!M§);
         this.§+$-§.removeEventListener(TouchEvent.TOUCH_END,this.§+!M§);
         this.§+$-§.removeEventListener(MouseEvent.ROLL_OVER,this.§+3§);
         this.§+$-§.removeEventListener(MouseEvent.ROLL_OUT,this.§5"Y§);
      }
      
      public function §[#+§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§6"1§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §+!M§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§6"1§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §+3§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§4$5§,this.§6"1§[§4$5§]);
      }
      
      public function §5"Y§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§@"`§,this.§6"1§[§@"`§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§'#2§();
         this.§+$-§ = null;
         this.§6"1§ = null;
         for(_loc1_ in this.§,w§)
         {
            _loc2_ = this.§,w§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§8#q§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§,w§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§+$-§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§8#q§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§,w§[param1])
         {
            this.§,w§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§,w§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§8#q§.removeEventListener(param1,param2,false);
         if(this.§,w§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§,w§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§8#q§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§8#q§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§8#q§.willTrigger(param1);
      }
   }
}
