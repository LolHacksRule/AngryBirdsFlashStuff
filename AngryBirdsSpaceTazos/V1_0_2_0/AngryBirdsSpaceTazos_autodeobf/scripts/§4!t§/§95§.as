package §4!t§
{
   import §<!#§.§""§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §95§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §!!M§:int = 2;
      
      public static const §1>§:int = 3;
       
      
      private var §2!>§:Sprite;
      
      public var §+!M§:int = 0;
      
      public var §'!Q§:Array;
      
      private var §+!z§:EventDispatcher;
      
      private var §+!B§:Dictionary;
      
      public function §95§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§2!>§ = param1;
         }
         this.§'!Q§ = new Array();
         this.§+!z§ = new EventDispatcher();
         this.§+!B§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§-9§();
         this.§2!>§ = param1;
         this.§%">§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§2!>§ && this.§2!>§ is MovieClip)
         {
            if(param2)
            {
               (this.§2!>§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§2!>§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §^7§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§+!M§ |= 1 << param1;
         this.§'!Q§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§%">§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §""§
      {
         var _loc3_:§""§ = new §""§(§""§.§#!J§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §%">§() : void
      {
         this.§-9§();
         if((this.§+!M§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§2!>§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!y§);
         }
         if((this.§+!M§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§2!>§.addEventListener(MouseEvent.CLICK,this.§&1§);
         }
         if((this.§+!M§ & 1 << §!!M§) != 0)
         {
            this.§2!>§.addEventListener(MouseEvent.ROLL_OVER,this.§6!1§);
         }
         if((this.§+!M§ & 1 << §1>§) != 0)
         {
            this.§2!>§.addEventListener(MouseEvent.ROLL_OUT,this.§,!I§);
         }
      }
      
      public function §-9§() : void
      {
         this.§2!>§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!y§);
         this.§2!>§.removeEventListener(MouseEvent.CLICK,this.§&1§);
         this.§2!>§.removeEventListener(MouseEvent.ROLL_OVER,this.§6!1§);
         this.§2!>§.removeEventListener(MouseEvent.ROLL_OUT,this.§,!I§);
      }
      
      public function §5!y§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§'!Q§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §&1§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§'!Q§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §6!1§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§!!M§,this.§'!Q§[§!!M§]);
      }
      
      public function §,!I§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§1>§,this.§'!Q§[§1>§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§-9§();
         this.§2!>§ = null;
         this.§'!Q§ = null;
         for(_loc1_ in this.§+!B§)
         {
            _loc2_ = this.§+!B§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§+!z§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§+!B§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§2!>§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§+!z§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§+!B§[param1])
         {
            this.§+!B§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§+!B§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§+!z§.removeEventListener(param1,param2,false);
         if(this.§+!B§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§+!B§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§+!z§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§+!z§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§+!z§.willTrigger(param1);
      }
   }
}
