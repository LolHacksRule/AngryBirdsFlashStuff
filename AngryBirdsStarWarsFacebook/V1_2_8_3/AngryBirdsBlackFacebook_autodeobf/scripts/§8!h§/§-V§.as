package §8!h§
{
   import §=!4§.§8"U§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §-V§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §7!j§:int = 2;
      
      public static const §?"N§:int = 3;
       
      
      private var §-#1§:Sprite;
      
      public var §7!w§:int = 0;
      
      public var §'!y§:Array;
      
      private var §`"=§:EventDispatcher;
      
      private var § "^§:Dictionary;
      
      public function §-V§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§-#1§ = param1;
         }
         this.§'!y§ = new Array();
         this.§`"=§ = new EventDispatcher();
         this.§ "^§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§,!M§();
         this.§-#1§ = param1;
         this.§[!-§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§-#1§ && this.§-#1§ is MovieClip)
         {
            if(param2)
            {
               (this.§-#1§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§-#1§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §="B§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§7!w§ |= 1 << param1;
         this.§'!y§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§[!-§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §8"U§
      {
         var _loc3_:§8"U§ = new §8"U§(§8"U§.§`n§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §[!-§() : void
      {
         this.§,!M§();
         if((this.§7!w§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§-#1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!j§);
         }
         if((this.§7!w§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§-#1§.addEventListener(MouseEvent.CLICK,this.§ ! §);
         }
         if((this.§7!w§ & 1 << §7!j§) != 0)
         {
            this.§-#1§.addEventListener(MouseEvent.ROLL_OVER,this.§4"G§);
         }
         if((this.§7!w§ & 1 << §?"N§) != 0)
         {
            this.§-#1§.addEventListener(MouseEvent.ROLL_OUT,this.§2!S§);
         }
      }
      
      public function §,!M§() : void
      {
         this.§-#1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!j§);
         this.§-#1§.removeEventListener(MouseEvent.CLICK,this.§ ! §);
         this.§-#1§.removeEventListener(MouseEvent.ROLL_OVER,this.§4"G§);
         this.§-#1§.removeEventListener(MouseEvent.ROLL_OUT,this.§2!S§);
      }
      
      public function §9!j§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§'!y§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function § ! §(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§'!y§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §4"G§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§7!j§,this.§'!y§[§7!j§]);
      }
      
      public function §2!S§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§?"N§,this.§'!y§[§?"N§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§,!M§();
         this.§-#1§ = null;
         this.§'!y§ = null;
         for(_loc1_ in this.§ "^§)
         {
            _loc2_ = this.§ "^§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§`"=§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§ "^§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§-#1§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§`"=§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§ "^§[param1])
         {
            this.§ "^§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§ "^§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§`"=§.removeEventListener(param1,param2,false);
         if(this.§ "^§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§ "^§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§`"=§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`"=§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`"=§.willTrigger(param1);
      }
   }
}
