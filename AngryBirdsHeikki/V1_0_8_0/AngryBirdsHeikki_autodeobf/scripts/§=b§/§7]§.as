package §=b§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §7]§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §!S§:int = 0;
      
      public static const §;N§:int = 1;
      
      public static const §4!4§:int = 2;
      
      public static const §6!e§:String = "SWFWheel.join";
      
      public static const §1V§:String = "SWFWheel.getState";
      
      private static var §^F§:Stage;
      
      private static var §?!`§:int;
      
      private static var §;L§:Boolean = true;
       
      
      public function §7]§()
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
         §^F§ = param1;
         ExternalInterface.call(§6!e§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §?!`§ = ExternalInterface.call(§1V§,ExternalInterface.objectID);
         if(§?!`§ == §!S§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §^F§ != null;
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
      
      public static function get §[!=§() : int
      {
         return §?!`§;
      }
      
      public static function get §?!&§() : Boolean
      {
         return §;L§;
      }
      
      public static function set §?!&§(param1:Boolean) : void
      {
         §;L§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§?!`§ == §!S§)
         {
            return;
         }
         if(§?!`§ == §;N§ && §;L§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §^F§.getObjectsUnderPoint(new Point(§^F§.mouseX,§^F§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §^F§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §;L§;
      }
   }
}
