package §!^§
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
      
      public static const §'$;§:int = 0;
      
      public static const §-!'§:int = 1;
      
      public static const §2"4§:int = 2;
      
      public static const §""L§:String = "SWFWheel.join";
      
      public static const §?"%§:String = "SWFWheel.getState";
      
      private static var §finally§:Stage;
      
      private static var §9!8§:int;
      
      private static var §9$ §:Boolean = true;
       
      
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
         §finally§ = param1;
         ExternalInterface.call(§""L§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §9!8§ = ExternalInterface.call(§?"%§,ExternalInterface.objectID);
         if(§9!8§ == §'$;§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §finally§ != null;
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
         return §9!8§;
      }
      
      public static function get §6$§() : Boolean
      {
         return §9$ §;
      }
      
      public static function set §6$§(param1:Boolean) : void
      {
         §9$ § = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§9!8§ == §'$;§)
         {
            return;
         }
         if(§9!8§ == §-!'§ && §9$ §)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §finally§.getObjectsUnderPoint(new Point(§finally§.mouseX,§finally§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §finally§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §9$ §;
      }
   }
}
