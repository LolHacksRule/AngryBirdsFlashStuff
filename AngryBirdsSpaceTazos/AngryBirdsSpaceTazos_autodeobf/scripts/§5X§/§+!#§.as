package §5X§
{
   import §<W§.§]"+§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §+!#§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §3!R§:int = 2;
      
      public static const § h§:int = 3;
       
      
      private var §'K§:Sprite;
      
      public var §#!$§:int = 0;
      
      public var §"d§:Array;
      
      private var §`!<§:EventDispatcher;
      
      private var §0z§:Dictionary;
      
      public function §+!#§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§'K§ = param1;
         }
         this.§"d§ = new Array();
         this.§`!<§ = new EventDispatcher();
         this.§0z§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§'I§();
         this.§'K§ = param1;
         this.§#!#§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§'K§ && this.§'K§ is MovieClip)
         {
            if(param2)
            {
               (this.§'K§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§'K§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §]!d§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§#!$§ |= 1 << param1;
         this.§"d§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§#!#§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         var _loc3_:§]"+§ = new §]"+§(§]"+§.§`!C§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §#!#§() : void
      {
         this.§'I§();
         if((this.§#!$§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§'K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!,§);
         }
         if((this.§#!$§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§'K§.addEventListener(MouseEvent.CLICK,this.§!!x§);
         }
         if((this.§#!$§ & 1 << §3!R§) != 0)
         {
            this.§'K§.addEventListener(MouseEvent.ROLL_OVER,this.§?5§);
         }
         if((this.§#!$§ & 1 << § h§) != 0)
         {
            this.§'K§.addEventListener(MouseEvent.ROLL_OUT,this.§'!x§);
         }
      }
      
      public function §'I§() : void
      {
         this.§'K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-!,§);
         this.§'K§.removeEventListener(MouseEvent.CLICK,this.§!!x§);
         this.§'K§.removeEventListener(MouseEvent.ROLL_OVER,this.§?5§);
         this.§'K§.removeEventListener(MouseEvent.ROLL_OUT,this.§'!x§);
      }
      
      public function §-!,§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§"d§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §!!x§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§"d§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §?5§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§3!R§,this.§"d§[§3!R§]);
      }
      
      public function §'!x§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§ h§,this.§"d§[§ h§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§'I§();
         this.§'K§ = null;
         this.§"d§ = null;
         for(_loc1_ in this.§0z§)
         {
            _loc2_ = this.§0z§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§`!<§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§0z§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§'K§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§`!<§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§0z§[param1])
         {
            this.§0z§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§0z§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§`!<§.removeEventListener(param1,param2,false);
         if(this.§0z§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§0z§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§`!<§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!<§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!<§.willTrigger(param1);
      }
   }
}
