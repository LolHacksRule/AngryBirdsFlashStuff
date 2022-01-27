package §2!B§
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class §>!^§
   {
      
      public static const VERSION:String = "1.5";
      
      public static const §]r§:int = 0;
      
      public static const §?!6§:int = 1;
      
      public static const §3!i§:int = 2;
      
      public static const §;z§:String = "SWFWheel.join";
      
      public static const §'$§:String = "SWFWheel.getState";
      
      private static var §"!6§:Stage;
      
      private static var §^!;§:int;
      
      private static var §2!Y§:Boolean = true;
       
      
      public function §>!^§()
      {
         super();
      }
      
      public static function §,a§(param1:Stage) : void
      {
         if(!available || isReady)
         {
            return;
         }
         if(ExternalInterface.call("function(){ return SWFWheel == null || SWFWheel == undefined; }"))
         {
            return;
         }
         §"!6§ = param1;
         ExternalInterface.call(§;z§,ExternalInterface.objectID);
         ExternalInterface.addCallback("checkBrowserScroll",checkBrowserScroll);
         §^!;§ = ExternalInterface.call(§'$§,ExternalInterface.objectID);
         if(§^!;§ == §]r§)
         {
            return;
         }
         ExternalInterface.addCallback("triggerMouseEvent",triggerMouseEvent);
      }
      
      public static function get isReady() : Boolean
      {
         return §"!6§ != null;
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
      
      public static function get §`!J§() : int
      {
         return §^!;§;
      }
      
      public static function get §0!f§() : Boolean
      {
         return §2!Y§;
      }
      
      public static function set §0!f§(param1:Boolean) : void
      {
         §2!Y§ = param1;
      }
      
      private static function triggerMouseEvent(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         var _loc7_:InteractiveObject = null;
         if(§^!;§ == §]r§)
         {
            return;
         }
         if(§^!;§ == §?!6§ && §2!Y§)
         {
            return;
         }
         var _loc5_:Array;
         var _loc6_:DisplayObject = (_loc5_ = §"!6§.getObjectsUnderPoint(new Point(§"!6§.mouseX,§"!6§.mouseY))).pop() as DisplayObject;
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
            _loc7_ = §"!6§;
         }
         var _loc8_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL,true,false,_loc7_.mouseX,_loc7_.mouseY,null,param2,param3,param4,false,int(param1));
         _loc7_.dispatchEvent(_loc8_);
      }
      
      private static function checkBrowserScroll() : Boolean
      {
         return §2!Y§;
      }
   }
}
