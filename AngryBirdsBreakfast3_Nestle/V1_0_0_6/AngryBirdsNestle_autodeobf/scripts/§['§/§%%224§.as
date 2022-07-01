package §['§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §%"4§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §<F§:int = 0;
      
      public static const §0S§:int = 1;
      
      public static const §1-§:int = 2;
      
      public static const §=c§:String = "SWFWheel.join";
      
      public static const §]#§:String = "SWFWheel.getState";
      
      private static var §'B§:Stage;
      
      private static var §!!a§:int;
      
      private static var §8!A§:Boolean = true;
       
      
      public function §%"4§()
      {
         super();
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!available || §!$§)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §'B§ = param1;
         ExternalInterface.call(§=c§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §!!a§ = ExternalInterface.call(§]#§,ExternalInterface.objectID);
         if(§!!a§ == §<F§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get §!$§() : Boolean
      {
         return §'B§ != null;
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
      
      public static function get §8y§() : int
      {
         return §!!a§;
      }
      
      public static function get § u§() : Boolean
      {
         return §8!A§;
      }
      
      public static function set § u§(param1:Boolean) : void
      {
         §8!A§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§!!a§ == §<F§)
         {
            return;
         }
         if(§!!a§ == §0S§ && §8!A§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §'B§.getObjectsUnderPoint(new Point(§'B§.mouseX,§'B§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §'B§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §8!A§;
      }
   }
}
