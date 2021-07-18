package §`b§
{
   import flash.events.Event;
   
   public class § 1§ extends Event
   {
      
      public static const §!!!§:String = "parseError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §!!!§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function § 1§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.text = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(!(_loc5_ || this));
            
         }
      }
      
      override public function clone() : Event
      {
         return new § 1§(type,this.text,bubbles,cancelable);
      }
   }
}
