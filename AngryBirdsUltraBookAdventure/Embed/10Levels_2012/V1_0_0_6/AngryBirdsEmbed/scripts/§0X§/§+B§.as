package §0X§
{
   import flash.events.Event;
   
   public class §+B§ extends Event
   {
      
      public static const §3!?§:String = "parseError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3!?§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §+B§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.text = param2;
            if(!_loc6_)
            {
               super(param1,param3,param4);
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §+B§(type,this.text,bubbles,cancelable);
      }
   }
}
