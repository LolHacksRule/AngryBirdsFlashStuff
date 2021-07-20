package §7"G§
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §7!n§ extends Event
   {
      
      public static const §+F§:String = "AnimationComplete";
      
      public static const §?"?§:String = "AnimationStarted";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §7!n§)
         {
            §+F§ = "AnimationComplete";
         }
         do
         {
            §?"?§ = "AnimationStarted";
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private var §&R§:MovieClip;
      
      public function §7!n§(param1:String, param2:MovieClip, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§&R§ = param2;
         }
         while(_loc5_ && param3);
         
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&R§;
      }
   }
}
