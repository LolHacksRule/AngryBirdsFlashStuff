package §-! §
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §#!W§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §+"1§:int = 0;
      
      public static const §'!i§:int = 1;
      
      public static const §;d§:int = 2;
      
      public static const §-"$§:String = "SWFWheel.join";
      
      public static const §6! §:String = "SWFWheel.getState";
      
      private static var §6=§:Stage;
      
      private static var §&!i§:int;
      
      private static var §^#§:Boolean = true;
       
      
      public function §#!W§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || include)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §6=§ = param1;
         ExternalInterface.call(§-"$§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §&!i§ = ExternalInterface.call(§6! §,ExternalInterface.objectID);
         if(§&!i§ == §+"1§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get include() : Boolean
      {
         return §6=§ != null;
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
      
      public static function get §4f§() : int
      {
         return §&!i§;
      }
      
      public static function get §2K§() : Boolean
      {
         return §^#§;
      }
      
      public static function set §2K§(param1:Boolean) : void
      {
         §^#§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§&!i§ == §+"1§)
         {
            return;
         }
         if(§&!i§ == §'!i§ && §^#§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §6=§.getObjectsUnderPoint(new Point(§6=§.mouseX,§6=§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §6=§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §^#§;
      }
   }
}
