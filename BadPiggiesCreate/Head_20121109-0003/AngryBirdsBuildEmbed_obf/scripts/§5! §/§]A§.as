package §5! §
{
   import flash.events.Event;
   
   public class §]A§ extends Event
   {
      
      public static const §&!3§:String = "parseError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §&!3§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §]A§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.text = param2;
            if(_loc5_ || this)
            {
               super(param1,param3,param4);
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §]A§(type,this.text,bubbles,cancelable);
      }
   }
}
