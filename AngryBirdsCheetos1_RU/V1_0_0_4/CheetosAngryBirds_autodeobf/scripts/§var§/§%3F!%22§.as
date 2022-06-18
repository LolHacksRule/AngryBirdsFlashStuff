package §var§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §?!"§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §,O§:int = 0;
      
      public static const §[@§:int = 1;
      
      public static const §&!_§:int = 2;
      
      public static const §<7§:String = "SWFWheel.join";
      
      public static const §0f§:String = "SWFWheel.getState";
      
      private static var § !,§:Stage;
      
      private static var §'!Y§:int;
      
      private static var §3,§:Boolean = true;
       
      
      public function §?!"§()
      {
         super();
      }
      
      public static function §7x§(param1:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         § !,§ = param1;
         ExternalInterface.call(§<7§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §'!Y§ = ExternalInterface.call(§0f§,ExternalInterface.objectID);
         if(§'!Y§ == §,O§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return § !,§ != null;
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
      
      public static function get §"z§() : int
      {
         return §'!Y§;
      }
      
      public static function get §0!K§() : Boolean
      {
         return §3,§;
      }
      
      public static function set §0!K§(param1:Boolean) : void
      {
         §3,§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§'!Y§ == §,O§)
         {
            return;
         }
         if(§'!Y§ == §[@§ && §3,§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = § !,§.getObjectsUnderPoint(new Point(§ !,§.mouseX,§ !,§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = § !,§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §3,§;
      }
   }
}
