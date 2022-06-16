package org.libspark.ui
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class SWFWheel
   {
      
      public static const VERSION:String = "1.5";
      
      public static const STATE_NATIVE:int = 0;
      
      public static const STATE_IF_NEEDED:int = 1;
      
      public static const STATE_HACKED:int = 2;
      
      public static const EXECUTE_LIBRARY_FUNCTION:String = "SWFWheel.join";
      
      public static const GET_STATE_FUNCTION:String = "SWFWheel.getState";
      
      private static var _stage:Stage;
      
      private static var _state:int;
      
      private static var _browserScroll:Boolean = true;
       
      
      public function SWFWheel()
      {
         super();
      }
      
      public static function initialize(stage:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         _stage = stage;
         ExternalInterface.call(EXECUTE_LIBRARY_FUNCTION,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         _state = ExternalInterface.call(GET_STATE_FUNCTION,ExternalInterface.objectID);
         if(_state == STATE_NATIVE)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return _stage != null;
      }
      
      public static function get available() : Boolean
      {
         var f:Boolean = false;
         if(!ExternalInterface.available)
         {
            return f;
         }
         try
         {
            f = Boolean(ExternalInterface.call("function(){return true;}"));
         }
         catch(e:Error)
         {
         }
         return f;
      }
      
      public static function get state() : int
      {
         return _state;
      }
      
      public static function get browserScroll() : Boolean
      {
         return _browserScroll;
      }
      
      public static function set browserScroll(value:Boolean) : void
      {
         _browserScroll = value;
      }
      
      private static function triggerMouseEvent(delta:Number, ctrlKey:Boolean, altKey:Boolean, shiftKey:Boolean) : void
      {
         var target:InteractiveObject = null;
         if(_state == STATE_NATIVE)
         {
            return;
         }
         if(_state == STATE_IF_NEEDED && _browserScroll)
         {
            return;
         }
         var targets:Array = _stage.getObjectsUnderPoint(new Point(_stage.mouseX,_stage.mouseY));
         var tmp:DisplayObject = targets.pop() as DisplayObject;
         while(tmp != null)
         {
            target = tmp as InteractiveObject;
            if(target)
            {
               break;
            }
            tmp = tmp.parent;
         }
         if(!target)
         {
            target = _stage;
         }
         var event:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,target.mouseX,target.mouseY,null,ctrlKey,altKey,shiftKey,false,int(delta));
         target.dispatchEvent(event);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return _browserScroll;
      }
   }
}
