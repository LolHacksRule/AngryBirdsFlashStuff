package §-!;§
{
   import flash.events.Event;
   
   public class §^!!§ extends Event
   {
      
      public static const §&o§:String = "update_Frame";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&o§ = "update_Frame";
         }
      }
      
      public var §%!b§:int;
      
      public function §^!!§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§%!b§ = param2;
         }
         while(!_loc5_);
         
      }
      
      override public function clone() : Event
      {
         return new §^!!§(type,this.§%!b§,bubbles,cancelable);
      }
   }
}
