package §=Z§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §1X§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §"!W§:int = 0;
      
      public static const §,a§:int = 1;
      
      public static const §9P§:int = 2;
      
      public static const §87§:String = "SWFWheel.join";
      
      public static const §<w§:String = "SWFWheel.getState";
      
      private static var §5!7§:Stage;
      
      private static var §@L§:int;
      
      private static var §#!-§:Boolean = true;
       
      
      public function §1X§()
      {
         super();
      }
      
      public static function §!f§(param1:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §5!7§ = param1;
         ExternalInterface.call(§87§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §@L§ = ExternalInterface.call(§<w§,ExternalInterface.objectID);
         if(§@L§ == §"!W§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §5!7§ != null;
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
      
      public static function get §,Q§() : int
      {
         return §@L§;
      }
      
      public static function get §@>§() : Boolean
      {
         return §#!-§;
      }
      
      public static function set §@>§(param1:Boolean) : void
      {
         §#!-§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§@L§ == §"!W§)
         {
            return;
         }
         if(§@L§ == §,a§ && §#!-§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §5!7§.getObjectsUnderPoint(new Point(§5!7§.mouseX,§5!7§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §5!7§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §#!-§;
      }
   }
}
