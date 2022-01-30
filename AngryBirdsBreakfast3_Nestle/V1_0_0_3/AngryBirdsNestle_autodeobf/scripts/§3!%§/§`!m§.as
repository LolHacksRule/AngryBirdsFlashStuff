package §3!%§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §`!m§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §8H§:int = 0;
      
      public static const §9!n§:int = 1;
      
      public static const §=!=§:int = 2;
      
      public static const §"&§:String = "SWFWheel.join";
      
      public static const §,!y§:String = "SWFWheel.getState";
      
      private static var §1",§:Stage;
      
      private static var §'0§:int;
      
      private static var §="!§:Boolean = true;
       
      
      public function §`!m§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §,!D§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §1",§ = param1;
         ExternalInterface.call(§"&§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §'0§ = ExternalInterface.call(§,!y§,ExternalInterface.objectID);
         if(§'0§ == §8H§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §,!D§() : Boolean
      {
         return §1",§ != null;
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
      
      public static function get §?!F§() : int
      {
         return §'0§;
      }
      
      public static function get §`!?§() : Boolean
      {
         return §="!§;
      }
      
      public static function set §`!?§(param1:Boolean) : void
      {
         §="!§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§'0§ == §8H§)
         {
            return;
         }
         if(§'0§ == §9!n§ && §="!§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §1",§.getObjectsUnderPoint(new Point(§1",§.mouseX,§1",§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §1",§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §="!§;
      }
   }
}
