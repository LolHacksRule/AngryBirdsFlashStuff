package §0o§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §]!^§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §`J§:int = 0;
      
      public static const § 0§:int = 1;
      
      public static const §!$§:int = 2;
      
      public static const §;u§:String = "SWFWheel.join";
      
      public static const §6!G§:String = "SWFWheel.getState";
      
      private static var §^!d§:Stage;
      
      private static var §"!W§:int;
      
      private static var §&!0§:Boolean = true;
       
      
      public function §]!^§()
      {
         super();
      }
      
      public static function §=D§(param1:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §^!d§ = param1;
         ExternalInterface.call(§;u§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §"!W§ = ExternalInterface.call(§6!G§,ExternalInterface.objectID);
         if(§"!W§ == §`J§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §^!d§ != null;
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
      
      public static function get §[!S§() : int
      {
         return §"!W§;
      }
      
      public static function get §+!,§() : Boolean
      {
         return §&!0§;
      }
      
      public static function set §+!,§(param1:Boolean) : void
      {
         §&!0§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§"!W§ == §`J§)
         {
            return;
         }
         if(§"!W§ == § 0§ && §&!0§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §^!d§.getObjectsUnderPoint(new Point(§^!d§.mouseX,§^!d§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §^!d§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §&!0§;
      }
   }
}
