package §1z§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §?!F§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §3x§:int = 0;
      
      public static const §2I§:int = 1;
      
      public static const §#]§:int = 2;
      
      public static const §6<§:String = "SWFWheel.join";
      
      public static const §34§:String = "SWFWheel.getState";
      
      private static var §+t§:Stage;
      
      private static var §5f§:int;
      
      private static var §-g§:Boolean = true;
       
      
      public function §?!F§()
      {
         super();
      }
      
      public static function §5M§(param1:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §+t§ = param1;
         ExternalInterface.call(§6<§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §5f§ = ExternalInterface.call(§34§,ExternalInterface.objectID);
         if(§5f§ == §3x§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §+t§ != null;
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
      
      public static function get § e§() : int
      {
         return §5f§;
      }
      
      public static function get §<B§() : Boolean
      {
         return §-g§;
      }
      
      public static function set §<B§(param1:Boolean) : void
      {
         §-g§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§5f§ == §3x§)
         {
            return;
         }
         if(§5f§ == §2I§ && §-g§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §+t§.getObjectsUnderPoint(new Point(§+t§.mouseX,§+t§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §+t§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §-g§;
      }
   }
}
