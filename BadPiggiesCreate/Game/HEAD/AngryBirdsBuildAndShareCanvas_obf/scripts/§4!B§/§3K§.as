package §4!B§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §3K§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §2!y§:int = 0;
      
      public static const §?",§:int = 1;
      
      public static const §+!j§:int = 2;
      
      public static const §;!i§:String = "SWFWheel.join";
      
      public static const §5!X§:String = "SWFWheel.getState";
      
      private static var § 5§:Stage;
      
      private static var §"P§:int;
      
      private static var §'?§:Boolean = true;
       
      
      public function §3K§()
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
         § 5§ = param1;
         ExternalInterface.call(§;!i§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §"P§ = ExternalInterface.call(§5!X§,ExternalInterface.objectID);
         if(§"P§ == §2!y§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return § 5§ != null;
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
      
      public static function get §;!1§() : int
      {
         return §"P§;
      }
      
      public static function get §-$§() : Boolean
      {
         return §'?§;
      }
      
      public static function set §-$§(param1:Boolean) : void
      {
         §'?§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§"P§ == §2!y§)
         {
            return;
         }
         if(§"P§ == §?",§ && §'?§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = § 5§.getObjectsUnderPoint(new Point(§ 5§.mouseX,§ 5§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = § 5§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §'?§;
      }
   }
}
