package §]!S§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §5s§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §@&§:int = 0;
      
      public static const §]W§:int = 1;
      
      public static const §-4§:int = 2;
      
      public static const §>Q§:String = "SWFWheel.join";
      
      public static const §"!f§:String = "SWFWheel.getState";
      
      private static var §1$§:Stage;
      
      private static var §#9§:int;
      
      private static var §=`§:Boolean = true;
       
      
      public function §5s§()
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
         §1$§ = param1;
         ExternalInterface.call(§>Q§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §#9§ = ExternalInterface.call(§"!f§,ExternalInterface.objectID);
         if(§#9§ == §@&§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §1$§ != null;
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
      
      public static function get §;![§() : int
      {
         return §#9§;
      }
      
      public static function get §>J§() : Boolean
      {
         return §=`§;
      }
      
      public static function set §>J§(param1:Boolean) : void
      {
         §=`§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§#9§ == §@&§)
         {
            return;
         }
         if(§#9§ == §]W§ && §=`§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §1$§.getObjectsUnderPoint(new Point(§1$§.mouseX,§1$§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §1$§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §=`§;
      }
   }
}
