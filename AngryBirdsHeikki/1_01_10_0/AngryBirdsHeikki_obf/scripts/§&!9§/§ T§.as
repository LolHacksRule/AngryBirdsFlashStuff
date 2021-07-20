package §&!9§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class § T§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §7K§:int = 0;
      
      public static const §?C§:int = 1;
      
      public static const §%!V§:int = 2;
      
      public static const § k§:String = "SWFWheel.join";
      
      public static const §<! §:String = "SWFWheel.getState";
      
      private static var §9!%§:Stage;
      
      private static var §7!Z§:int;
      
      private static var § W§:Boolean = true;
       
      
      public function § T§()
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
         §9!%§ = param1;
         ExternalInterface.call(§ k§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §7!Z§ = ExternalInterface.call(§<! §,ExternalInterface.objectID);
         if(§7!Z§ == §7K§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §9!%§ != null;
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
      
      public static function get §[!,§() : int
      {
         return §7!Z§;
      }
      
      public static function get §7!#§() : Boolean
      {
         return § W§;
      }
      
      public static function set §7!#§(param1:Boolean) : void
      {
         § W§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§7!Z§ == §7K§)
         {
            return;
         }
         if(§7!Z§ == §?C§ && § W§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §9!%§.getObjectsUnderPoint(new Point(§9!%§.mouseX,§9!%§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §9!%§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return § W§;
      }
   }
}
