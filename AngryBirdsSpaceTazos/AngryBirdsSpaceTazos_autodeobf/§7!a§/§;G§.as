package §7!a§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §;G§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §#t§:int = 0;
      
      public static const §`!L§:int = 1;
      
      public static const §]?§:int = 2;
      
      public static const §!!G§:String = "SWFWheel.join";
      
      public static const §`!U§:String = "SWFWheel.getState";
      
      private static var §0x§:Stage;
      
      private static var §"m§:int;
      
      private static var §`c§:Boolean = true;
       
      
      public function §;G§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §+y§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §0x§ = param1;
         ExternalInterface.call(§!!G§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §"m§ = ExternalInterface.call(§`!U§,ExternalInterface.objectID);
         if(§"m§ == §#t§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §+y§() : Boolean
      {
         return §0x§ != null;
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
      
      public static function get §=M§() : int
      {
         return §"m§;
      }
      
      public static function get §&![§() : Boolean
      {
         return §`c§;
      }
      
      public static function set §&![§(param1:Boolean) : void
      {
         §`c§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§"m§ == §#t§)
         {
            return;
         }
         if(§"m§ == §`!L§ && §`c§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §0x§.getObjectsUnderPoint(new Point(§0x§.mouseX,§0x§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §0x§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §`c§;
      }
   }
}
