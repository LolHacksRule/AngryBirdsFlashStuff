package §4##§
{
   import §#!k§.§4!4§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §7!B§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §>"S§:int = 2;
      
      public static const §-"7§:int = 3;
       
      
      private var §47§:Sprite;
      
      public var §!1§:int = 0;
      
      public var §]A§:Array;
      
      private var §6#0§:EventDispatcher;
      
      private var §,"'§:Dictionary;
      
      public function §7!B§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§47§ = param1;
         }
         this.§]A§ = new Array();
         this.§6#0§ = new EventDispatcher();
         this.§,"'§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§"!Z§();
         this.§47§ = param1;
         this.§4X§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§47§ && this.§47§ is MovieClip)
         {
            if(param2)
            {
               (this.§47§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§47§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §#"]§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§!1§ |= 1 << param1;
         this.§]A§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§4X§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §4!4§
      {
         var _loc3_:§4!4§ = new §4!4§(§4!4§.§="n§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §4X§() : void
      {
         this.§"!Z§();
         if((this.§!1§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§47§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0#,§);
         }
         if((this.§!1§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§47§.addEventListener(MouseEvent.CLICK,this.§;!p§);
         }
         if((this.§!1§ & 1 << §>"S§) != 0)
         {
            this.§47§.addEventListener(MouseEvent.ROLL_OVER,this.§""$§);
         }
         if((this.§!1§ & 1 << §-"7§) != 0)
         {
            this.§47§.addEventListener(MouseEvent.ROLL_OUT,this.§]!6§);
         }
      }
      
      public function §"!Z§() : void
      {
         this.§47§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0#,§);
         this.§47§.removeEventListener(MouseEvent.CLICK,this.§;!p§);
         this.§47§.removeEventListener(MouseEvent.ROLL_OVER,this.§""$§);
         this.§47§.removeEventListener(MouseEvent.ROLL_OUT,this.§]!6§);
      }
      
      public function §0#,§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§]A§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §;!p§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§]A§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §""$§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§>"S§,this.§]A§[§>"S§]);
      }
      
      public function §]!6§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§-"7§,this.§]A§[§-"7§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§"!Z§();
         this.§47§ = null;
         this.§]A§ = null;
         for(_loc1_ in this.§,"'§)
         {
            _loc2_ = this.§,"'§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§6#0§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§,"'§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§47§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§6#0§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§,"'§[param1])
         {
            this.§,"'§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§,"'§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§6#0§.removeEventListener(param1,param2,false);
         if(this.§,"'§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§,"'§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§6#0§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6#0§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6#0§.willTrigger(param1);
      }
   }
}
