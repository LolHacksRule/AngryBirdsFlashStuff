package §6B§
{
   import §+=§.§?!Q§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §?"2§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §21§:int = 2;
      
      public static const §=!^§:int = 3;
       
      
      private var §=!Y§:Sprite;
      
      public var §7!P§:int = 0;
      
      public var §3#§:Array;
      
      private var §^!x§:EventDispatcher;
      
      private var §53§:Dictionary;
      
      public function §?"2§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§=!Y§ = param1;
         }
         this.§3#§ = new Array();
         this.§^!x§ = new EventDispatcher();
         this.§53§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§7L§();
         this.§=!Y§ = param1;
         this.§&3§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§=!Y§ && this.§=!Y§ is MovieClip)
         {
            if(param2)
            {
               (this.§=!Y§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§=!Y§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §7!B§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§7!P§ |= 1 << param1;
         this.§3#§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§&3§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §?!Q§
      {
         var _loc3_:§?!Q§ = new §?!Q§(§?!Q§.§ set§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §&3§() : void
      {
         this.§7L§();
         if((this.§7!P§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§=!Y§.addEventListener(MouseEvent.MOUSE_DOWN,this.§7"B§);
         }
         if((this.§7!P§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§=!Y§.addEventListener(MouseEvent.CLICK,this.§]z§);
         }
         if((this.§7!P§ & 1 << §21§) != 0)
         {
            this.§=!Y§.addEventListener(MouseEvent.ROLL_OVER,this.§4"#§);
         }
         if((this.§7!P§ & 1 << §=!^§) != 0)
         {
            this.§=!Y§.addEventListener(MouseEvent.ROLL_OUT,this.§5T§);
         }
      }
      
      public function §7L§() : void
      {
         this.§=!Y§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7"B§);
         this.§=!Y§.removeEventListener(MouseEvent.CLICK,this.§]z§);
         this.§=!Y§.removeEventListener(MouseEvent.ROLL_OVER,this.§4"#§);
         this.§=!Y§.removeEventListener(MouseEvent.ROLL_OUT,this.§5T§);
      }
      
      public function §7"B§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§3#§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §]z§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§3#§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §4"#§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§21§,this.§3#§[§21§]);
      }
      
      public function §5T§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§=!^§,this.§3#§[§=!^§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§7L§();
         this.§=!Y§ = null;
         this.§3#§ = null;
         for(_loc1_ in this.§53§)
         {
            _loc2_ = this.§53§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§^!x§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§53§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§=!Y§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§^!x§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§53§[param1])
         {
            this.§53§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§53§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§^!x§.removeEventListener(param1,param2,false);
         if(this.§53§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§53§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§^!x§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^!x§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§^!x§.willTrigger(param1);
      }
   }
}
