package §@!P§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §'!Q§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §[!q§:int = 0;
      
      public static const §in§:int = 1;
      
      public static const §'Y§:int = 2;
      
      public static const §%!G§:String = "SWFWheel.join";
      
      public static const §!q§:String = "SWFWheel.getState";
      
      private static var §2u§:Stage;
      
      private static var §6!6§:int;
      
      private static var §1!d§:Boolean = true;
       
      
      public function §'!Q§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §,!o§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §2u§ = param1;
         ExternalInterface.call(§%!G§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §6!6§ = ExternalInterface.call(§!q§,ExternalInterface.objectID);
         if(§6!6§ == §[!q§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §,!o§() : Boolean
      {
         return §2u§ != null;
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
      
      public static function get §3H§() : int
      {
         return §6!6§;
      }
      
      public static function get §@!6§() : Boolean
      {
         return §1!d§;
      }
      
      public static function set §@!6§(param1:Boolean) : void
      {
         §1!d§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§6!6§ == §[!q§)
         {
            return;
         }
         if(§6!6§ == §in§ && §1!d§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §2u§.getObjectsUnderPoint(new Point(§2u§.mouseX,§2u§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §2u§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §1!d§;
      }
   }
}
