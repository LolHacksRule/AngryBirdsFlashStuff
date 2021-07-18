package starling.events
{
   public class §5!E§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §6"@§:Number;
      
      public function §5!E§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param3);
            do
            {
               this.§6"@§ = param2;
            }
            while(!(_loc4_ || param3));
            
         }
      }
      
      public function get §'"Z§() : Number
      {
         return this.§6"@§;
      }
   }
}
