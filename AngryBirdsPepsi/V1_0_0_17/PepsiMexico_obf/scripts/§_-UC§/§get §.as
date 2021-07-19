package §_-UC§
{
   import flash.events.Event;
   
   public class §get § extends Event
   {
      
      public static const §_-Vm§:String = "parseError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-Vm§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §get §(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            this.text = param2;
            if(_loc6_)
            {
               super(param1,param3,param4);
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §get §(type,this.text,bubbles,cancelable);
      }
   }
}
