package §,!7§
{
   import flash.events.Event;
   
   public class §?!Y§ extends Event
   {
      
      public static const §-0§:String = "parseError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-0§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §?!Y§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
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
         return new §?!Y§(type,this.text,bubbles,cancelable);
      }
   }
}
