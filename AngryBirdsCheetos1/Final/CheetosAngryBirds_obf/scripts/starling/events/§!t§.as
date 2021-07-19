package starling.events
{
   public class §!t§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §`x§:Number;
      
      public function §!t§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1,param3);
         }
         do
         {
            this.§`x§ = param2;
         }
         while(_loc5_ && param3);
         
      }
      
      public function get §5!-§() : Number
      {
         return this.§`x§;
      }
   }
}
