package §&!O§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §19§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const native:int = 0;
      
      public static const §`!H§:int = 1;
      
      public static const §'?§:int = 2;
      
      public static const §]o§:String = "SWFWheel.join";
      
      public static const §implements§:String = "SWFWheel.getState";
      
      private static var §>M§:Stage;
      
      private static var §"g§:int;
      
      private static var §0v§:Boolean = true;
       
      
      public function §19§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §>!t§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §>M§ = param1;
         ExternalInterface.call(§]o§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §"g§ = ExternalInterface.call(§implements§,ExternalInterface.objectID);
         if(§"g§ == native)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §>!t§() : Boolean
      {
         return §>M§ != null;
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
      
      public static function get §##§() : int
      {
         return §"g§;
      }
      
      public static function get §`M§() : Boolean
      {
         return §0v§;
      }
      
      public static function set §`M§(param1:Boolean) : void
      {
         §0v§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§"g§ == native)
         {
            return;
         }
         if(§"g§ == §`!H§ && §0v§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §>M§.getObjectsUnderPoint(new Point(§>M§.mouseX,§>M§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §>M§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §0v§;
      }
   }
}
