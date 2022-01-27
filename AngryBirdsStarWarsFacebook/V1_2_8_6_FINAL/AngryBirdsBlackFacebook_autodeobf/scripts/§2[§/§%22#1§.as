package §2[§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §"#1§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §`!0§:int = 0;
      
      public static const §?!!§:int = 1;
      
      public static const §,y§:int = 2;
      
      public static const §8F§:String = "SWFWheel.join";
      
      public static const §;"r§:String = "SWFWheel.getState";
      
      private static var §,"e§:Stage;
      
      private static var §^u§:int;
      
      private static var §>!y§:Boolean = true;
       
      
      public function §"#1§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §#"r§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §,"e§ = param1;
         ExternalInterface.call(§8F§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §^u§ = ExternalInterface.call(§;"r§,ExternalInterface.objectID);
         if(§^u§ == §`!0§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §#"r§() : Boolean
      {
         return §,"e§ != null;
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
         return §^u§;
      }
      
      public static function get § R§() : Boolean
      {
         return §>!y§;
      }
      
      public static function set § R§(param1:Boolean) : void
      {
         §>!y§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§^u§ == §`!0§)
         {
            return;
         }
         if(§^u§ == §?!!§ && §>!y§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §,"e§.getObjectsUnderPoint(new Point(§,"e§.mouseX,§,"e§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §,"e§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §>!y§;
      }
   }
}
