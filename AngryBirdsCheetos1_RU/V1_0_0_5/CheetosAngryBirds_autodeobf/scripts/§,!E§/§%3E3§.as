package §,!E§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §>3§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §<!!§:int = 0;
      
      public static const §48§:int = 1;
      
      public static const §?!'§:int = 2;
      
      public static const §0>§:String = "SWFWheel.join";
      
      public static const §+f§:String = "SWFWheel.getState";
      
      private static var §5!=§:Stage;
      
      private static var §4_§:int;
      
      private static var §&!O§:Boolean = true;
       
      
      public function §>3§()
      {
         super();
      }
      
      public static function §]!^§(param1:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §5!=§ = param1;
         ExternalInterface.call(§0>§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §4_§ = ExternalInterface.call(§+f§,ExternalInterface.objectID);
         if(§4_§ == §<!!§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §5!=§ != null;
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
      
      public static function get §75§() : int
      {
         return §4_§;
      }
      
      public static function get §;8§() : Boolean
      {
         return §&!O§;
      }
      
      public static function set §;8§(param1:Boolean) : void
      {
         §&!O§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§4_§ == §<!!§)
         {
            return;
         }
         if(§4_§ == §48§ && §&!O§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §5!=§.getObjectsUnderPoint(new Point(§5!=§.mouseX,§5!=§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §5!=§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §&!O§;
      }
   }
}
