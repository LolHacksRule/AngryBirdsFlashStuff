package §,!L§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class § !j§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §;h§:int = 0;
      
      public static const §7!1§:int = 1;
      
      public static const §`V§:int = 2;
      
      public static const §6!=§:String = "SWFWheel.join";
      
      public static const §^!e§:String = "SWFWheel.getState";
      
      private static var §&K§:Stage;
      
      private static var §!!!§:int;
      
      private static var §<r§:Boolean = true;
       
      
      public function § !j§()
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
         §&K§ = param1;
         ExternalInterface.call(§6!=§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §!!!§ = ExternalInterface.call(§^!e§,ExternalInterface.objectID);
         if(§!!!§ == §;h§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §&K§ != null;
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
      
      public static function get § !;§() : int
      {
         return §!!!§;
      }
      
      public static function get §0!U§() : Boolean
      {
         return §<r§;
      }
      
      public static function set §0!U§(param1:Boolean) : void
      {
         §<r§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§!!!§ == §;h§)
         {
            return;
         }
         if(§!!!§ == §7!1§ && §<r§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §&K§.getObjectsUnderPoint(new Point(§&K§.mouseX,§&K§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §&K§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §<r§;
      }
   }
}
