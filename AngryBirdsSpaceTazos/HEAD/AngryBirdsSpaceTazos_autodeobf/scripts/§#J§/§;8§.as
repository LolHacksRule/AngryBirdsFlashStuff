package §#J§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §;8§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §9d§:int = 0;
      
      public static const §6";§:int = 1;
      
      public static const §%!D§:int = 2;
      
      public static const §+!`§:String = "SWFWheel.join";
      
      public static const §2"?§:String = "SWFWheel.getState";
      
      private static var §;!p§:Stage;
      
      private static var §-!v§:int;
      
      private static var §2!K§:Boolean = true;
       
      
      public function §;8§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §;!!§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §;!p§ = param1;
         ExternalInterface.call(§+!`§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §-!v§ = ExternalInterface.call(§2"?§,ExternalInterface.objectID);
         if(§-!v§ == §9d§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §;!!§() : Boolean
      {
         return §;!p§ != null;
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
      
      public static function get §9!&§() : int
      {
         return §-!v§;
      }
      
      public static function get §6!g§() : Boolean
      {
         return §2!K§;
      }
      
      public static function set §6!g§(param1:Boolean) : void
      {
         §2!K§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§-!v§ == §9d§)
         {
            return;
         }
         if(§-!v§ == §6";§ && §2!K§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §;!p§.getObjectsUnderPoint(new Point(§;!p§.mouseX,§;!p§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §;!p§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §2!K§;
      }
   }
}
