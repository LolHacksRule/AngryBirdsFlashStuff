package §!R§
{
   import §&!I§.§9!C§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §#!L§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §<!>§:int = 2;
      
      public static const §!""§:int = 3;
       
      
      private var §4!f§:Sprite;
      
      public var §%!q§:int = 0;
      
      public var §"!X§:Array;
      
      private var §5!o§:EventDispatcher;
      
      private var §7!J§:Dictionary;
      
      public function §#!L§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§4!f§ = param1;
         }
         this.§"!X§ = new Array();
         this.§5!o§ = new EventDispatcher();
         this.§7!J§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§7>§();
         this.§4!f§ = param1;
         this.§<!@§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§4!f§ && this.§4!f§ is MovieClip)
         {
            if(param2)
            {
               (this.§4!f§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§4!f§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §0!U§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§%!q§ |= 1 << param1;
         this.§"!X§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§<!@§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §9!C§
      {
         var _loc3_:§9!C§ = new §9!C§(§9!C§.§;!F§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §<!@§() : void
      {
         this.§7>§();
         if((this.§%!q§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§4!f§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.§%!q§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§4!f§.addEventListener(MouseEvent.CLICK,this.mouseUp);
         }
         if((this.§%!q§ & 1 << §<!>§) != 0)
         {
            this.§4!f§.addEventListener(MouseEvent.ROLL_OVER,this.§1" §);
         }
         if((this.§%!q§ & 1 << §!""§) != 0)
         {
            this.§4!f§.addEventListener(MouseEvent.ROLL_OUT,this.§7r§);
         }
      }
      
      public function §7>§() : void
      {
         this.§4!f§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.§4!f§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.§4!f§.removeEventListener(MouseEvent.ROLL_OVER,this.§1" §);
         this.§4!f§.removeEventListener(MouseEvent.ROLL_OUT,this.§7r§);
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§"!X§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§"!X§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §1" §(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§<!>§,this.§"!X§[§<!>§]);
      }
      
      public function §7r§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§!""§,this.§"!X§[§!""§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§7>§();
         this.§4!f§ = null;
         this.§"!X§ = null;
         for(_loc1_ in this.§7!J§)
         {
            _loc2_ = this.§7!J§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§5!o§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§7!J§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§4!f§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§5!o§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§7!J§[param1])
         {
            this.§7!J§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§7!J§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§5!o§.removeEventListener(param1,param2,false);
         if(this.§7!J§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§7!J§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§5!o§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§5!o§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§5!o§.willTrigger(param1);
      }
   }
}
