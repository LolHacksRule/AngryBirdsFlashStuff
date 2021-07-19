package §<w§
{
   import flash.events.Event;
   
   public class §9"G§ extends Event
   {
      
      public static const §`!V§:String = "engine_pause";
      
      public static const §,#T§:String = "engine_resume";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`!V§ = "engine_pause";
         }
         do
         {
            §,#T§ = "engine_resume";
         }
         while(!_loc1_);
         
      }
      
      public function §9"G§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
   }
}
