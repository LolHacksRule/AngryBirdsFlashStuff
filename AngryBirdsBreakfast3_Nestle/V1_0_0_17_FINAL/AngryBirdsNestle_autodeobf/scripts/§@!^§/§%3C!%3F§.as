package §@!^§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §<!?§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §"m§:int = 0;
      
      public static const §8!z§:int = 1;
      
      public static const §@!N§:int = 2;
      
      public static const §0"2§:String = "SWFWheel.join";
      
      public static const § p§:String = "SWFWheel.getState";
      
      private static var §+"7§:Stage;
      
      private static var §7u§:int;
      
      private static var §>v§:Boolean = true;
       
      
      public function §<!?§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §#J§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §+"7§ = param1;
         ExternalInterface.call(§0"2§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §7u§ = ExternalInterface.call(§ p§,ExternalInterface.objectID);
         if(§7u§ == §"m§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §#J§() : Boolean
      {
         return §+"7§ != null;
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
      
      public static function get §1!j§() : int
      {
         return §7u§;
      }
      
      public static function get §;!G§() : Boolean
      {
         return §>v§;
      }
      
      public static function set §;!G§(param1:Boolean) : void
      {
         §>v§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§7u§ == §"m§)
         {
            return;
         }
         if(§7u§ == §8!z§ && §>v§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §+"7§.getObjectsUnderPoint(new Point(§+"7§.mouseX,§+"7§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §+"7§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §>v§;
      }
   }
}
