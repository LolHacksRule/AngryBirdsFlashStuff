package §,L§
{
   import §-!;§.§>!B§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §6!W§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §,!y§:int = 2;
      
      public static const §-g§:int = 3;
       
      
      private var §`!S§:Sprite;
      
      public var § !F§:int = 0;
      
      public var §8!=§:Array;
      
      private var §`!'§:EventDispatcher;
      
      private var §9!x§:Dictionary;
      
      public function §6!W§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§`!S§ = param1;
         }
         this.§8!=§ = new Array();
         this.§`!'§ = new EventDispatcher();
         this.§9!x§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§[!?§();
         this.§`!S§ = param1;
         this.§8l§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§`!S§ && this.§`!S§ is MovieClip)
         {
            if(param2)
            {
               (this.§`!S§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§`!S§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §9E§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§ !F§ |= 1 << param1;
         this.§8!=§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§8l§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         var _loc3_:§>!B§ = new §>!B§(§>!B§.§7"&§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §8l§() : void
      {
         this.§[!?§();
         if((this.§ !F§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§`!S§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.§ !F§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§`!S§.addEventListener(MouseEvent.CLICK,this.mouseUp);
         }
         if((this.§ !F§ & 1 << §,!y§) != 0)
         {
            this.§`!S§.addEventListener(MouseEvent.ROLL_OVER,this.§%!w§);
         }
         if((this.§ !F§ & 1 << §-g§) != 0)
         {
            this.§`!S§.addEventListener(MouseEvent.ROLL_OUT,this.§-!P§);
         }
      }
      
      public function §[!?§() : void
      {
         this.§`!S§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.§`!S§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.§`!S§.removeEventListener(MouseEvent.ROLL_OVER,this.§%!w§);
         this.§`!S§.removeEventListener(MouseEvent.ROLL_OUT,this.§-!P§);
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§8!=§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§8!=§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §%!w§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§,!y§,this.§8!=§[§,!y§]);
      }
      
      public function §-!P§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§-g§,this.§8!=§[§-g§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§[!?§();
         this.§`!S§ = null;
         this.§8!=§ = null;
         for(_loc1_ in this.§9!x§)
         {
            _loc2_ = this.§9!x§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§`!'§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§9!x§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§`!S§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§`!'§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§9!x§[param1])
         {
            this.§9!x§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§9!x§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§`!'§.removeEventListener(param1,param2,false);
         if(this.§9!x§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§9!x§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§`!'§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!'§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!'§.willTrigger(param1);
      }
   }
}
