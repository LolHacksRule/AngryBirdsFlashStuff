package §#$§
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
      
      public static const §4!h§:int = 0;
      
      public static const §-#?§:int = 1;
      
      public static const §3#N§:int = 2;
      
      public static const §"#'§:String = "SWFWheel.join";
      
      public static const §7"M§:String = "SWFWheel.getState";
      
      private static var §2N§:Stage;
      
      private static var §]5§:int;
      
      private static var §`"Z§:Boolean = true;
       
      
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
         §2N§ = param1;
         ExternalInterface.call(§"#'§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §]5§ = ExternalInterface.call(§7"M§,ExternalInterface.objectID);
         if(§]5§ == §4!h§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §2N§ != null;
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
         return §]5§;
      }
      
      public static function get §7j§() : Boolean
      {
         return §`"Z§;
      }
      
      public static function set §7j§(param1:Boolean) : void
      {
         §`"Z§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§]5§ == §4!h§)
         {
            return;
         }
         if(§]5§ == §-#?§ && §`"Z§)
         {
            return;
         }
         var _loc6_:DisplayObject = §2N§.getObjectsUnderPoint(new Point(§2N§.mouseX,§2N§.mouseY)).pop() as DisplayObject;
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
            _loc7_ = §2N§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §`"Z§;
      }
   }
}
