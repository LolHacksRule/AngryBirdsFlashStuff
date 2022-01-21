package §^O§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §7m§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §;@§:int = 0;
      
      public static const §-!5§:int = 1;
      
      public static const §"I§:int = 2;
      
      public static const §?!k§:String = "SWFWheel.join";
      
      public static const §!T§:String = "SWFWheel.getState";
      
      private static var §?c§:Stage;
      
      private static var §'!Y§:int;
      
      private static var §'$§:Boolean = true;
       
      
      public function §7m§()
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
         §?c§ = param1;
         ExternalInterface.call(§?!k§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §'!Y§ = ExternalInterface.call(§!T§,ExternalInterface.objectID);
         if(§'!Y§ == §;@§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §?c§ != null;
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
      
      public static function get §-!,§() : int
      {
         return §'!Y§;
      }
      
      public static function get §catch§() : Boolean
      {
         return §'$§;
      }
      
      public static function set §catch§(param1:Boolean) : void
      {
         §'$§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§'!Y§ == §;@§)
         {
            return;
         }
         if(§'!Y§ == §-!5§ && §'$§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §?c§.getObjectsUnderPoint(new Point(§?c§.mouseX,§?c§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §?c§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §'$§;
      }
   }
}
