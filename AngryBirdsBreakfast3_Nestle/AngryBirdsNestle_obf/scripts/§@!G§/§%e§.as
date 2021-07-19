package §@!G§
{
   import flash.events.Event;
   
   public class §%e§ extends Event
   {
      
      public static const §@!f§:String = "parseError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §@!f§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §%e§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
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
         return new §%e§(type,this.text,bubbles,cancelable);
      }
   }
}
