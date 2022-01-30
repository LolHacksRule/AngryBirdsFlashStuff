package §0n§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §9!I§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §;"4§:int = 0;
      
      public static const §!!3§:int = 1;
      
      public static const §;!j§:int = 2;
      
      public static const §1"3§:String = "SWFWheel.join";
      
      public static const §^1§:String = "SWFWheel.getState";
      
      private static var §else §:Stage;
      
      private static var §-"%§:int;
      
      private static var §`B§:Boolean = true;
       
      
      public function §9!I§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §5"1§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §else § = param1;
         ExternalInterface.call(§1"3§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §-"%§ = ExternalInterface.call(§^1§,ExternalInterface.objectID);
         if(§-"%§ == §;"4§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §5"1§() : Boolean
      {
         return §else § != null;
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
      
      public static function get §>!<§() : int
      {
         return §-"%§;
      }
      
      public static function get §;"1§() : Boolean
      {
         return §`B§;
      }
      
      public static function set §;"1§(param1:Boolean) : void
      {
         §`B§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§-"%§ == §;"4§)
         {
            return;
         }
         if(§-"%§ == §!!3§ && §`B§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §else §.getObjectsUnderPoint(new Point(§else §.mouseX,§else §.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §else §;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §`B§;
      }
   }
}
