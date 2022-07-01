package §<!0§
{
   import §"V§.§]j§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §'!%§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §+!1§:int = 2;
      
      public static const §?!_§:int = 3;
       
      
      private var §8W§:Sprite;
      
      public var §#n§:int = 0;
      
      public var §&!l§:Array;
      
      private var §!!"§:EventDispatcher;
      
      private var §^"$§:Dictionary;
      
      public function §'!%§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§8W§ = param1;
         }
         this.§&!l§ = new Array();
         this.§!!"§ = new EventDispatcher();
         this.§^"$§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§;!§();
         this.§8W§ = param1;
         this.§6s§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§8W§ && this.§8W§ is MovieClip)
         {
            if(param2)
            {
               (this.§8W§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§8W§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §&!4§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§#n§ |= 1 << param1;
         this.§&!l§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§6s§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §]j§
      {
         var _loc3_:§]j§ = new §]j§(§]j§.§+q§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §6s§() : void
      {
         this.§;!§();
         if((this.§#n§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§8W§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.§#n§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§8W§.addEventListener(MouseEvent.CLICK,this.mouseUp);
         }
         if((this.§#n§ & 1 << §+!1§) != 0)
         {
            this.§8W§.addEventListener(MouseEvent.ROLL_OVER,this.§6!c§);
         }
         if((this.§#n§ & 1 << §?!_§) != 0)
         {
            this.§8W§.addEventListener(MouseEvent.ROLL_OUT,this.§>!n§);
         }
      }
      
      public function §;!§() : void
      {
         this.§8W§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.§8W§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.§8W§.removeEventListener(MouseEvent.ROLL_OVER,this.§6!c§);
         this.§8W§.removeEventListener(MouseEvent.ROLL_OUT,this.§>!n§);
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§&!l§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§&!l§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §6!c§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§+!1§,this.§&!l§[§+!1§]);
      }
      
      public function §>!n§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§?!_§,this.§&!l§[§?!_§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§;!§();
         this.§8W§ = null;
         this.§&!l§ = null;
         for(_loc1_ in this.§^"$§)
         {
            _loc2_ = this.§^"$§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§!!"§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§^"$§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§8W§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§!!"§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§^"$§[param1])
         {
            this.§^"$§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§^"$§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§!!"§.removeEventListener(param1,param2,false);
         if(this.§^"$§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§^"$§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§!!"§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§!!"§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§!!"§.willTrigger(param1);
      }
   }
}
