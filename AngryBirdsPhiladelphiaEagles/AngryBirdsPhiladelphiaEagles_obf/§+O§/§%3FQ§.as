package §+O§
{
   import flash.events.Event;
   
   public class §?Q§ extends Event
   {
      
      public static const §#!>§:String = "parseError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#!>§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §?Q§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.text = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc6_ && param3);
         
      }
      
      override public function clone() : Event
      {
         return new §?Q§(type,this.text,bubbles,cancelable);
      }
   }
}
