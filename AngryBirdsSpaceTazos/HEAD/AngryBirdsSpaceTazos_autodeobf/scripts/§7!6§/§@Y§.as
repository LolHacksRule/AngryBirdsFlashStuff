package §7!6§
{
   import §#R§.§%!S§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §@Y§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §,G§:int = 2;
      
      public static const §>"5§:int = 3;
       
      
      private var §>!$§:Sprite;
      
      public var §^!t§:int = 0;
      
      public var §8!3§:Array;
      
      private var §'W§:EventDispatcher;
      
      private var §else §:Dictionary;
      
      public function §@Y§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§>!$§ = param1;
         }
         this.§8!3§ = new Array();
         this.§'W§ = new EventDispatcher();
         this.§else § = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§=!B§();
         this.§>!$§ = param1;
         this.§`!!§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§>!$§ && this.§>!$§ is MovieClip)
         {
            if(param2)
            {
               (this.§>!$§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§>!$§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §!!2§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§^!t§ |= 1 << param1;
         this.§8!3§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§`!!§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §%!S§
      {
         var _loc3_:§%!S§ = new §%!S§(§%!S§.§0!W§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §`!!§() : void
      {
         this.§=!B§();
         if((this.§^!t§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§>!$§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!""§);
         }
         if((this.§^!t§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§>!$§.addEventListener(MouseEvent.CLICK,this.§2'§);
         }
         if((this.§^!t§ & 1 << §,G§) != 0)
         {
            this.§>!$§.addEventListener(MouseEvent.ROLL_OVER,this.§'!4§);
         }
         if((this.§^!t§ & 1 << §>"5§) != 0)
         {
            this.§>!$§.addEventListener(MouseEvent.ROLL_OUT,this.§]!&§);
         }
      }
      
      public function §=!B§() : void
      {
         this.§>!$§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!""§);
         this.§>!$§.removeEventListener(MouseEvent.CLICK,this.§2'§);
         this.§>!$§.removeEventListener(MouseEvent.ROLL_OVER,this.§'!4§);
         this.§>!$§.removeEventListener(MouseEvent.ROLL_OUT,this.§]!&§);
      }
      
      public function §!""§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§8!3§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §2'§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§8!3§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §'!4§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§,G§,this.§8!3§[§,G§]);
      }
      
      public function §]!&§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§>"5§,this.§8!3§[§>"5§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§=!B§();
         this.§>!$§ = null;
         this.§8!3§ = null;
         for(_loc1_ in this.§else §)
         {
            _loc2_ = this.§else §[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§'W§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§else §[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§>!$§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§'W§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§else §[param1])
         {
            this.§else §[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§else §[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§'W§.removeEventListener(param1,param2,false);
         if(this.§else §[param1])
         {
            if((_loc5_ = (_loc4_ = this.§else §[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§'W§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§'W§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§'W§.willTrigger(param1);
      }
   }
}
