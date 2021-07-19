package §5!%§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §"!F§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §#!Z§:int = 0;
      
      public static const §4!,§:int = 1;
      
      public static const §7!t§:int = 2;
      
      public static const §?!$§:String = "SWFWheel.join";
      
      public static const §&S§:String = "SWFWheel.getState";
      
      private static var §7!h§:Stage;
      
      private static var §[!+§:int;
      
      private static var §`" §:Boolean = true;
       
      
      public function §"!F§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §;R§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §7!h§ = param1;
         ExternalInterface.call(§?!$§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §[!+§ = ExternalInterface.call(§&S§,ExternalInterface.objectID);
         if(§[!+§ == §#!Z§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §;R§() : Boolean
      {
         return §7!h§ != null;
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
      
      public static function get §"!f§() : int
      {
         return §[!+§;
      }
      
      public static function get §,P§() : Boolean
      {
         return §`" §;
      }
      
      public static function set §,P§(param1:Boolean) : void
      {
         §`" § = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§[!+§ == §#!Z§)
         {
            return;
         }
         if(§[!+§ == §4!,§ && §`" §)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §7!h§.getObjectsUnderPoint(new Point(§7!h§.mouseX,§7!h§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §7!h§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §`" §;
      }
   }
}
