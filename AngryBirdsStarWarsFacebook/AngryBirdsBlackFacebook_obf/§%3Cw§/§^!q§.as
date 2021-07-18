package §<w§
{
   import flash.events.Event;
   
   public class §^!q§ extends Event
   {
      
      public static const §1c§:String = "update_Frame";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §1c§ = "update_Frame";
         }
      }
      
      public var §3+§:int;
      
      public function §^!q§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param3,param4);
            do
            {
               this.§3+§ = param2;
            }
            while(!_loc6_);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §^!q§(type,this.§3+§,bubbles,cancelable);
      }
   }
}
