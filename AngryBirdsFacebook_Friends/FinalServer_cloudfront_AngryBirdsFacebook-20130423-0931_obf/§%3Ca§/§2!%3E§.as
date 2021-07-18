package §<a§
{
   import flash.events.Event;
   
   public class §2!>§ extends Event
   {
      
      public static const §'"W§:String = "parseError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'"W§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §2!>§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
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
         while(_loc5_);
         
      }
      
      override public function clone() : Event
      {
         return new §2!>§(type,this.text,bubbles,cancelable);
      }
   }
}
