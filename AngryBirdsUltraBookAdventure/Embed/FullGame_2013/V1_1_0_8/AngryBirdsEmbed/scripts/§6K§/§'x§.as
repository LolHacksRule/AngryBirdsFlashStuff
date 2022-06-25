package §6K§
{
   import flash.events.Event;
   
   public class §'x§ extends Event
   {
      
      public static const §2L§:String = "parseError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §2L§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §'x§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.text = param2;
            if(_loc5_ || param2)
            {
               super(param1,param3,param4);
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §'x§(type,this.text,bubbles,cancelable);
      }
   }
}
