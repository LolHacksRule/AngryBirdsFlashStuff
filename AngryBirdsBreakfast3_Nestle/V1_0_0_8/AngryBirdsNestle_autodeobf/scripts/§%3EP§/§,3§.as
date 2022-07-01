package §>P§
{
   import §<" §.§]!g§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §,3§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §%"+§:int = 2;
      
      public static const §-!^§:int = 3;
       
      
      private var §;"2§:Sprite;
      
      public var §86§:int = 0;
      
      public var §>b§:Array;
      
      private var §^!@§:EventDispatcher;
      
      private var §&!I§:Dictionary;
      
      public function §,3§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§;"2§ = param1;
         }
         this.§>b§ = new Array();
         this.§^!@§ = new EventDispatcher();
         this.§&!I§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§#!#§();
         this.§;"2§ = param1;
         this.§+"1§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§;"2§ && this.§;"2§ is MovieClip)
         {
            if(param2)
            {
               (this.§;"2§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§;"2§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §[!"§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§86§ |= 1 << param1;
         this.§>b§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§+"1§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §]!g§
      {
         var _loc3_:§]!g§ = new §]!g§(§]!g§.§&u§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §+"1§() : void
      {
         this.§#!#§();
         if((this.§86§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§;"2§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.§86§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§;"2§.addEventListener(MouseEvent.CLICK,this.mouseUp);
         }
         if((this.§86§ & 1 << §%"+§) != 0)
         {
            this.§;"2§.addEventListener(MouseEvent.ROLL_OVER,this.§2!C§);
         }
         if((this.§86§ & 1 << §-!^§) != 0)
         {
            this.§;"2§.addEventListener(MouseEvent.ROLL_OUT,this.§ !4§);
         }
      }
      
      public function §#!#§() : void
      {
         this.§;"2§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.§;"2§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.§;"2§.removeEventListener(MouseEvent.ROLL_OVER,this.§2!C§);
         this.§;"2§.removeEventListener(MouseEvent.ROLL_OUT,this.§ !4§);
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>b§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>b§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §2!C§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§%"+§,this.§>b§[§%"+§]);
      }
      
      public function § !4§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§-!^§,this.§>b§[§-!^§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§#!#§();
         this.§;"2§ = null;
         this.§>b§ = null;
         for(_loc1_ in this.§&!I§)
         {
            _loc2_ = this.§&!I§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§^!@§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§&!I§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§;"2§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§^!@§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§&!I§[param1])
         {
            this.§&!I§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§&!I§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§^!@§.removeEventListener(param1,param2,false);
         if(this.§&!I§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§&!I§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§^!@§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^!@§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§^!@§.willTrigger(param1);
      }
   }
}
