package §5u§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class § !J§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §1!Y§:int = 0;
      
      public static const §@"3§:int = 1;
      
      public static const §%a§:int = 2;
      
      public static const §-!l§:String = "SWFWheel.join";
      
      public static const §[v§:String = "SWFWheel.getState";
      
      private static var §'!w§:Stage;
      
      private static var §7!f§:int;
      
      private static var §;Z§:Boolean = true;
       
      
      public function § !J§()
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
         §'!w§ = param1;
         ExternalInterface.call(§-!l§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §7!f§ = ExternalInterface.call(§[v§,ExternalInterface.objectID);
         if(§7!f§ == §1!Y§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §'!w§ != null;
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
      
      public static function get §3"§() : int
      {
         return §7!f§;
      }
      
      public static function get §'1§() : Boolean
      {
         return §;Z§;
      }
      
      public static function set §'1§(param1:Boolean) : void
      {
         §;Z§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§7!f§ == §1!Y§)
         {
            return;
         }
         if(§7!f§ == §@"3§ && §;Z§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §'!w§.getObjectsUnderPoint(new Point(§'!w§.mouseX,§'!w§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §'!w§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §;Z§;
      }
   }
}
