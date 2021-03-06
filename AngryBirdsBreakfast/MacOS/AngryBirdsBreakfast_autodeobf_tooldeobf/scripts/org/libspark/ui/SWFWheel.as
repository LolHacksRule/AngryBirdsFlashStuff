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
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         _stage = param1;
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
      
      public static function set browserScroll(param1:Boolean) : void
      {
         _browserScroll = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(_state == STATE_NATIVE)
         {
            return;
         }
         if(_state == STATE_IF_NEEDED && _browserScroll)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = _stage.getObjectsUnderPoint(new Point(_stage.mouseX,_stage.mouseY))).pop() as DisplayObject;
         while(_loc6_ != null)
         {
            if(_loc7_ = _loc6_ as InteractiveObject)
            {
               break;
            }
            _loc6_ = _loc6_.parent;
         }
         if(!_loc7_)
         {
            _loc7_ = _stage;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return _browserScroll;
      }
   }
}
