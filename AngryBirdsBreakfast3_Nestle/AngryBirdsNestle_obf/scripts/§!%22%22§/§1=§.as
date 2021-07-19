package §!""§
{
   import flash.events.Event;
   
   public class §1=§ extends Event
   {
      
      public static const §]!l§:String = "update_Frame";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §]!l§ = "update_Frame";
         }
      }
      
      public var §>"1§:int;
      
      public function §1=§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§>"1§ = param2;
         }
         while(!(_loc6_ || param2));
         
      }
      
      override public function clone() : Event
      {
         return new §1=§(type,this.§>"1§,bubbles,cancelable);
      }
   }
}
