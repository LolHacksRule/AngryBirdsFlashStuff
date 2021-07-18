package starling.events
{
   public class §]!D§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var §2L§:Number;
      
      public function §]!D§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param3);
         }
         do
         {
            this.§2L§ = param2;
         }
         while(_loc4_ && this);
         
      }
      
      public function get §@!"§() : Number
      {
         return this.§2L§;
      }
   }
}
