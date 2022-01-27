package §<!o§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §[#3§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §>#E§:int = 0;
      
      public static const §>!I§:int = 1;
      
      public static const §+e§:int = 2;
      
      public static const §%F§:String = "SWFWheel.join";
      
      public static const §+!?§:String = "SWFWheel.getState";
      
      private static var §`#2§:Stage;
      
      private static var §9#X§:int;
      
      private static var §^O§:Boolean = true;
       
      
      public function §[#3§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §4"8§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §`#2§ = param1;
         ExternalInterface.call(§%F§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §9#X§ = ExternalInterface.call(§+!?§,ExternalInterface.objectID);
         if(§9#X§ == §>#E§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §4"8§() : Boolean
      {
         return §`#2§ != null;
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
         return §9#X§;
      }
      
      public static function get §&!`§() : Boolean
      {
         return §^O§;
      }
      
      public static function set §&!`§(param1:Boolean) : void
      {
         §^O§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§9#X§ == §>#E§)
         {
            return;
         }
         if(§9#X§ == §>!I§ && §^O§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §`#2§.getObjectsUnderPoint(new Point(§`#2§.mouseX,§`#2§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §`#2§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §^O§;
      }
   }
}
