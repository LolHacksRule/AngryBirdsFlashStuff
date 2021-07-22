package §<"F§
{
   import flash.events.Event;
   
   public class §"^§ extends Event
   {
      
      public static const §65§:String = "eggCollected";
      
      public static const §^!3§:String = "modelUpdatedEggCount";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §65§ = "eggCollected";
            do
            {
               §^!3§ = "modelUpdatedEggCount";
            }
            while(_loc2_ && §"^§);
            
         }
      }
      
      public var §4^§:String;
      
      public function §"^§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§4^§ = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc6_);
         
      }
   }
}
