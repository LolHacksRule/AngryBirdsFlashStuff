package §[!b§
{
   import §?!4§.§^!S§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §'!R§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §9y§:int = 2;
      
      public static const §3!W§:int = 3;
       
      
      private var §!!x§:Sprite;
      
      public var §5<§:int = 0;
      
      public var §[!'§:Array;
      
      private var §6!X§:EventDispatcher;
      
      private var §+""§:Dictionary;
      
      public function §'!R§(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.§!!x§ = param1;
         }
         this.§[!'§ = new Array();
         this.§6!X§ = new EventDispatcher();
         this.§+""§ = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.§&"1§();
         this.§!!x§ = param1;
         this.§!!W§();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.§!!x§ && this.§!!x§ is MovieClip)
         {
            if(param2)
            {
               (this.§!!x§ as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.§!!x§ as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function §1!@§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.§5<§ |= 1 << param1;
         this.§[!'§[param1] = param2.toUpperCase();
         if(param3)
         {
            this.§!!W§();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §^!S§
      {
         var _loc3_:§^!S§ = new §^!S§(§^!S§.§?!p§,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function §!!W§() : void
      {
         this.§&"1§();
         if((this.§5<§ & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.§!!x§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.§5<§ & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.§!!x§.addEventListener(MouseEvent.CLICK,this.mouseUp);
         }
         if((this.§5<§ & 1 << §9y§) != 0)
         {
            this.§!!x§.addEventListener(MouseEvent.ROLL_OVER,this.§,]§);
         }
         if((this.§5<§ & 1 << §3!W§) != 0)
         {
            this.§!!x§.addEventListener(MouseEvent.ROLL_OUT,this.§%r§);
         }
      }
      
      public function §&"1§() : void
      {
         this.§!!x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.§!!x§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.§!!x§.removeEventListener(MouseEvent.ROLL_OVER,this.§,]§);
         this.§!!x§.removeEventListener(MouseEvent.ROLL_OUT,this.§%r§);
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§[!'§[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§[!'§[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function §,]§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§9y§,this.§[!'§[§9y§]);
      }
      
      public function §%r§(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(§3!W§,this.§[!'§[§3!W§]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.§&"1§();
         this.§!!x§ = null;
         this.§[!'§ = null;
         for(_loc1_ in this.§+""§)
         {
            _loc2_ = this.§+""§[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.§6!X§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.§+""§[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§!!x§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§6!X§.addEventListener(param1,param2,false,param4,param5);
         if(!this.§+""§[param1])
         {
            this.§+""§[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§+""§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.§6!X§.removeEventListener(param1,param2,false);
         if(this.§+""§[param1])
         {
            if((_loc5_ = (_loc4_ = this.§+""§[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§6!X§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6!X§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6!X§.willTrigger(param1);
      }
   }
}
