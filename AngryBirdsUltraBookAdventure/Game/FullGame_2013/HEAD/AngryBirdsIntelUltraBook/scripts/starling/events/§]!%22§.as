package starling.events
{
   public class §]!"§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §]!"§)
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §&!j§:Number;
      
      public function §]!"§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param3);
            do
            {
               this.§&!j§ = param2;
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      public function get §3G§() : Number
      {
         return this.§&!j§;
      }
   }
}
