package §7!P§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §&I§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §&!$§:int = 0;
      
      public static const §>!v§:int = 1;
      
      public static const dynamic:int = 2;
      
      public static const §9R§:String = "SWFWheel.join";
      
      public static const §#" §:String = "SWFWheel.getState";
      
      private static var §^R§:Stage;
      
      private static var §#!Y§:int;
      
      private static var §&D§:Boolean = true;
       
      
      public function §&I§()
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
         §^R§ = param1;
         ExternalInterface.call(§9R§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §#!Y§ = ExternalInterface.call(§#" §,ExternalInterface.objectID);
         if(§#!Y§ == §&!$§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §^R§ != null;
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
      
      public static function get §"K§() : int
      {
         return §#!Y§;
      }
      
      public static function get §9!m§() : Boolean
      {
         return §&D§;
      }
      
      public static function set §9!m§(param1:Boolean) : void
      {
         §&D§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§#!Y§ == §&!$§)
         {
            return;
         }
         if(§#!Y§ == §>!v§ && §&D§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §^R§.getObjectsUnderPoint(new Point(§^R§.mouseX,§^R§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §^R§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §&D§;
      }
   }
}
