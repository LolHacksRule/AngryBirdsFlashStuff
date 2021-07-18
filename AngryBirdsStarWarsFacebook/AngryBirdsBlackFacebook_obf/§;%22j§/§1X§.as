package §;"j§
{
   import flash.events.Event;
   
   public class §1X§ extends Event
   {
      
      public static const §="`§:String = "parseError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §="`§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §1X§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.text = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(!_loc6_);
         
      }
      
      override public function clone() : Event
      {
         return new §1X§(type,this.text,bubbles,cancelable);
      }
   }
}
