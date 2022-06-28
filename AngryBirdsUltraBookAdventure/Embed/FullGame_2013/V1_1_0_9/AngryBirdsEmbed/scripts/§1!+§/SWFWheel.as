package §1!+§
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
      
      public static const §4e§:int = 0;
      
      public static const §;U§:int = 1;
      
      public static const §0!6§:int = 2;
      
      public static const §1m§:String = "SWFWheel.join";
      
      public static const §#A§:String = "SWFWheel.getState";
      
      private static var _stage:Stage;
      
      private static var §2!F§:int;
      
      private static var §>Q§:Boolean = true;
       
      
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
         ExternalInterface.call(§1m§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §2!F§ = ExternalInterface.call(§#A§,ExternalInterface.objectID);
         if(§2!F§ == §4e§)
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
      
      public static function get §0s§() : int
      {
         return §2!F§;
      }
      
      public static function get §'Q§() : Boolean
      {
         return §>Q§;
      }
      
      public static function set §'Q§(param1:Boolean) : void
      {
         §>Q§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§2!F§ == §4e§)
         {
            return;
         }
         if(§2!F§ == §;U§ && §>Q§)
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
         return §>Q§;
      }
   }
}
