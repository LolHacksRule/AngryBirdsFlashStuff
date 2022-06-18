package §!"y§
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
      
      public static const §8!"§:int = 0;
      
      public static const §8#w§:int = 1;
      
      public static const §-$9§:int = 2;
      
      public static const §4X§:String = "SWFWheel.join";
      
      public static const §[#-§:String = "SWFWheel.getState";
      
      private static var §-"t§:Stage;
      
      private static var §"'§:int;
      
      private static var § "o§:Boolean = true;
       
      
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
         §-"t§ = param1;
         ExternalInterface.call(§4X§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §"'§ = ExternalInterface.call(§[#-§,ExternalInterface.objectID);
         if(§"'§ == §8!"§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §-"t§ != null;
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
         return §"'§;
      }
      
      public static function get §#!!§() : Boolean
      {
         return § "o§;
      }
      
      public static function set §#!!§(param1:Boolean) : void
      {
         § "o§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§"'§ == §8!"§)
         {
            return;
         }
         if(§"'§ == §8#w§ && § "o§)
         {
            return;
         }
         var _loc6_:DisplayObject = §-"t§.getObjectsUnderPoint(new Point(§-"t§.mouseX,§-"t§.mouseY)).pop() as DisplayObject;
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
            _loc7_ = §-"t§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return § "o§;
      }
   }
}
