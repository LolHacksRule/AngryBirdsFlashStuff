package §75§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §<_§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §]G§:int = 0;
      
      public static const §-d§:int = 1;
      
      public static const §!!L§:int = 2;
      
      public static const §#!I§:String = "SWFWheel.join";
      
      public static const §'![§:String = "SWFWheel.getState";
      
      private static var §9?§:Stage;
      
      private static var §8#§:int;
      
      private static var § b§:Boolean = true;
       
      
      public function §<_§()
      {
         super();
      }
      
      public static function §8j§(param1:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §9?§ = param1;
         ExternalInterface.call(§#!I§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §8#§ = ExternalInterface.call(§'![§,ExternalInterface.objectID);
         if(§8#§ == §]G§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §9?§ != null;
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
      
      public static function get §<g§() : int
      {
         return §8#§;
      }
      
      public static function get §2p§() : Boolean
      {
         return § b§;
      }
      
      public static function set §2p§(param1:Boolean) : void
      {
         § b§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§8#§ == §]G§)
         {
            return;
         }
         if(§8#§ == §-d§ && § b§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §9?§.getObjectsUnderPoint(new Point(§9?§.mouseX,§9?§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §9?§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return § b§;
      }
   }
}
