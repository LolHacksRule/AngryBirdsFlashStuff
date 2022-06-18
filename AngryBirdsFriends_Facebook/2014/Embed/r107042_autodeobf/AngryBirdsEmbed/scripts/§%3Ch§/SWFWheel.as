package §<h§
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
      
      public static const §2!O§:int = 0;
      
      public static const §6!+§:int = 1;
      
      public static const §>q§:int = 2;
      
      public static const §`N§:String = "SWFWheel.join";
      
      public static const §@!I§:String = "SWFWheel.getState";
      
      private static var _stage:Stage;
      
      private static var §8K§:int;
      
      private static var §=!!§:Boolean = true;
       
      
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
         ExternalInterface.call(§`N§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §8K§ = ExternalInterface.call(§@!I§,ExternalInterface.objectID);
         if(§8K§ == §2!O§)
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
      
      public static function get §`4§() : int
      {
         return §8K§;
      }
      
      public static function get §'A§() : Boolean
      {
         return §=!!§;
      }
      
      public static function set §'A§(param1:Boolean) : void
      {
         §=!!§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§8K§ == §2!O§)
         {
            return;
         }
         if(§8K§ == §6!+§ && §=!!§)
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
         return §=!!§;
      }
   }
}
