package §<"1§
{
   import §<o§.§3h§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class §'"S§ implements IEventDispatcher
   {
      
      public static var §4$1§:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §1#+§:int = 2;
      
      public static const §+#"§:int = 3;
       
      
      private var § #T§:Sprite;
      
      public var §^#H§:int = 0;
      
      public var §+#E§:Array;
      
      private var §^#>§:EventDispatcher;
      
      private var §5!a§:Dictionary;
      
      public function §'"S§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§ #T§ = param1;
         }
         this.§+#E§ = new Array();
         this.§^#>§ = new EventDispatcher();
         this.§5!a§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§"!O§();
         this.§ #T§ = param1;
         this.§@!m§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§ #T§ && this.§ #T§ is MovieClip)
         {
            if(param2)
            {
               (this.§ #T§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§ #T§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §<!t§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§^#H§ |= 1 << param1;
         this.§+#E§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§@!m§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §3h§
      {
         var _loc3_:§3h§ = new §3h§(§3h§.§9"L§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §@!m§() : void
      {
         this.§"!O§();
         if((this.§^#H§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            if(§4$1§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§ #T§.addEventListener(TouchEvent.TOUCH_BEGIN,this.§9#q§);
            }
            else
            {
               this.§ #T§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9#q§);
            }
         }
         if((this.§^#H§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            if(§4$1§ && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.§ #T§.addEventListener(TouchEvent.TOUCH_END,this.§4!E§);
            }
            else
            {
               this.§ #T§.addEventListener(MouseEvent.CLICK,this.§4!E§);
            }
         }
         if((this.§^#H§ & 1 << §1#+§) != 0)
         {
            this.§ #T§.addEventListener(MouseEvent.ROLL_OVER,this.§=#N§);
         }
         if((this.§^#H§ & 1 << §+#"§) != 0)
         {
            this.§ #T§.addEventListener(MouseEvent.ROLL_OUT,this.§+!Z§);
         }
      }
      
      public function §"!O§() : void
      {
         this.§ #T§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9#q§);
         this.§ #T§.removeEventListener(TouchEvent.TOUCH_BEGIN,this.§9#q§);
         this.§ #T§.removeEventListener(MouseEvent.CLICK,this.§4!E§);
         this.§ #T§.removeEventListener(TouchEvent.TOUCH_END,this.§4!E§);
         this.§ #T§.removeEventListener(MouseEvent.ROLL_OVER,this.§=#N§);
         this.§ #T§.removeEventListener(MouseEvent.ROLL_OUT,this.§+!Z§);
      }
      
      public function §9#q§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§+#E§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function §4!E§(param1:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§+#E§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §=#N§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§1#+§,this.§+#E§[§1#+§]);
      }
      
      public function §+!Z§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§+#"§,this.§+#E§[§+#"§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§"!O§();
         this.§ #T§ = null;
         this.§+#E§ = null;
         for(_loc1_ in this.§5!a§)
         {
            _loc2_ = this.§5!a§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§^#>§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§5!a§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§ #T§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§^#>§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§5!a§[param1])
         {
            this.§5!a§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§5!a§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§^#>§.removeEventListener(param1,param2,false);
         if(this.§5!a§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§5!a§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§^#>§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^#>§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§^#>§.willTrigger(param1);
      }
   }
}
