package §3D§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §8x§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §+X§:int = 0;
      
      public static const §&=§:int = 1;
      
      public static const §<!1§:int = 2;
      
      public static const §#!5§:String = "SWFWheel.join";
      
      public static const §^!m§:String = "SWFWheel.getState";
      
      private static var §4!k§:Stage;
      
      private static var §6!`§:int;
      
      private static var §#!H§:Boolean = true;
       
      
      public function §8x§()
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
         §4!k§ = param1;
         ExternalInterface.call(§#!5§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §6!`§ = ExternalInterface.call(§^!m§,ExternalInterface.objectID);
         if(§6!`§ == §+X§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §4!k§ != null;
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
      
      public static function get §8y§() : int
      {
         return §6!`§;
      }
      
      public static function get §[=§() : Boolean
      {
         return §#!H§;
      }
      
      public static function set §[=§(param1:Boolean) : void
      {
         §#!H§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§6!`§ == §+X§)
         {
            return;
         }
         if(§6!`§ == §&=§ && §#!H§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §4!k§.getObjectsUnderPoint(new Point(§4!k§.mouseX,§4!k§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §4!k§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §#!H§;
      }
   }
}
