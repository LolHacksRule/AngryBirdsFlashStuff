package §>U§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §3u§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §6!]§:int = 0;
      
      public static const §5,§:int = 1;
      
      public static const §2v§:int = 2;
      
      public static const §extends§:String = "SWFWheel.join";
      
      public static const §9@§:String = "SWFWheel.getState";
      
      private static var §"§:Stage;
      
      private static var §=0§:int;
      
      private static var §>T§:Boolean = true;
       
      
      public function §3u§()
      {
         super();
      }
      
      public static function §>!W§(param1:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §"§ = param1;
         ExternalInterface.call(§extends§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §=0§ = ExternalInterface.call(§9@§,ExternalInterface.objectID);
         if(§=0§ == §6!]§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §"§ != null;
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
      
      public static function get §<!D§() : int
      {
         return §=0§;
      }
      
      public static function get §`!L§() : Boolean
      {
         return §>T§;
      }
      
      public static function set §`!L§(param1:Boolean) : void
      {
         §>T§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§=0§ == §6!]§)
         {
            return;
         }
         if(§=0§ == §5,§ && §>T§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §"§.getObjectsUnderPoint(new Point(§"§.mouseX,§"§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §"§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §>T§;
      }
   }
}
