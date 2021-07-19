package §!""§
{
   import flash.events.Event;
   
   public class §5!8§ extends Event
   {
      
      public static const §7!`§:String = "engine_pause";
      
      public static const §<!F§:String = "engine_resume";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7!`§ = "engine_pause";
         }
         do
         {
            §<!F§ = "engine_resume";
         }
         while(!_loc1_);
         
      }
      
      public function §5!8§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
   }
}
