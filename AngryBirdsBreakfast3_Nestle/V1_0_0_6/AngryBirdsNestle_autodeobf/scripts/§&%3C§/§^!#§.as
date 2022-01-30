package §&<§
{
   import §8,§.§8!h§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §^!#§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^!2§:int = 2;
      
      public static const §+!b§:int = 3;
       
      
      private var §4T§:Sprite;
      
      public var §9!^§:int = 0;
      
      public var §!!@§:Array;
      
      private var §>V§:EventDispatcher;
      
      private var §,!4§:Dictionary;
      
      public function §^!#§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§4T§ = param1;
         }
         this.§!!@§ = new Array();
         this.§>V§ = new EventDispatcher();
         this.§,!4§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§?!_§();
         this.§4T§ = param1;
         this.§2!i§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§4T§ && this.§4T§ is MovieClip)
         {
            if(param2)
            {
               (this.§4T§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§4T§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §0!0§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§9!^§ |= 1 << param1;
         this.§!!@§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§2!i§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §8!h§
      {
         var _loc3_:§8!h§ = new §8!h§(§8!h§.§>2§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §2!i§() : void
      {
         this.§?!_§();
         if((this.§9!^§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§4T§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.§9!^§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§4T§.addEventListener(MouseEvent.CLICK,this.mouseUp);
         }
         if((this.§9!^§ & 1 << §^!2§) != 0)
         {
            this.§4T§.addEventListener(MouseEvent.ROLL_OVER,this.§#!A§);
         }
         if((this.§9!^§ & 1 << §+!b§) != 0)
         {
            this.§4T§.addEventListener(MouseEvent.ROLL_OUT,this.§!F§);
         }
      }
      
      public function §?!_§() : void
      {
         this.§4T§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.§4T§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.§4T§.removeEventListener(MouseEvent.ROLL_OVER,this.§#!A§);
         this.§4T§.removeEventListener(MouseEvent.ROLL_OUT,this.§!F§);
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§!!@§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§!!@§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §#!A§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§^!2§,this.§!!@§[§^!2§]);
      }
      
      public function §!F§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§+!b§,this.§!!@§[§+!b§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§?!_§();
         this.§4T§ = null;
         this.§!!@§ = null;
         for(_loc1_ in this.§,!4§)
         {
            _loc2_ = this.§,!4§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§>V§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§,!4§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§4T§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§>V§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§,!4§[param1])
         {
            this.§,!4§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§,!4§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§>V§.removeEventListener(param1,param2,false);
         if(this.§,!4§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§,!4§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§>V§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§>V§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§>V§.willTrigger(param1);
      }
   }
}
