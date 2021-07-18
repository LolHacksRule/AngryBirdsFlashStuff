package §'"!§
{
   import §!""§.§]H§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §+§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §]'§:int = 2;
      
      public static const §<!H§:int = 3;
       
      
      private var §-"8§:Sprite;
      
      public var §`N§:int = 0;
      
      public var §7""§:Array;
      
      private var §=%§:EventDispatcher;
      
      private var §&,§:Dictionary;
      
      public function §+§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§-"8§ = param1;
         }
         this.§7""§ = new Array();
         this.§=%§ = new EventDispatcher();
         this.§&,§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§?<§();
         this.§-"8§ = param1;
         this.§8!c§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§-"8§ && this.§-"8§ is MovieClip)
         {
            if(param2)
            {
               (this.§-"8§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§-"8§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §^1§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§`N§ |= 1 << param1;
         this.§7""§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§8!c§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         var _loc3_:§]H§ = new §]H§(§]H§.§59§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §8!c§() : void
      {
         this.§?<§();
         if((this.§`N§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§-"8§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.§`N§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§-"8§.addEventListener(MouseEvent.CLICK,this.mouseUp);
         }
         if((this.§`N§ & 1 << §]'§) != 0)
         {
            this.§-"8§.addEventListener(MouseEvent.ROLL_OVER,this.§4"2§);
         }
         if((this.§`N§ & 1 << §<!H§) != 0)
         {
            this.§-"8§.addEventListener(MouseEvent.ROLL_OUT,this.§ "$§);
         }
      }
      
      public function §?<§() : void
      {
         this.§-"8§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.§-"8§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.§-"8§.removeEventListener(MouseEvent.ROLL_OVER,this.§4"2§);
         this.§-"8§.removeEventListener(MouseEvent.ROLL_OUT,this.§ "$§);
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§7""§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§7""§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §4"2§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§]'§,this.§7""§[§]'§]);
      }
      
      public function § "$§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§<!H§,this.§7""§[§<!H§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§?<§();
         this.§-"8§ = null;
         this.§7""§ = null;
         for(_loc1_ in this.§&,§)
         {
            _loc2_ = this.§&,§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§=%§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§&,§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§-"8§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§=%§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§&,§[param1])
         {
            this.§&,§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§&,§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§=%§.removeEventListener(param1,param2,false);
         if(this.§&,§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§&,§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§=%§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=%§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=%§.willTrigger(param1);
      }
   }
}
