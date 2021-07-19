package §<W§
{
   import flash.events.Event;
   
   public class §!!u§ extends Event
   {
      
      public static const §8!Q§:String = "update_Frame";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8!Q§ = "update_Frame";
         }
      }
      
      public var §^;§:int;
      
      public function §!!u§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param3,param4);
            do
            {
               this.§^;§ = param2;
            }
            while(!_loc6_);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §!!u§(type,this.§^;§,bubbles,cancelable);
      }
   }
}
