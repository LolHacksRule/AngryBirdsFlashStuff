package starling.events
{
   public class §83§ extends Event
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
      
      private var §'!3§:Number;
      
      public function §83§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param3);
            do
            {
               this.§'!3§ = param2;
            }
            while(_loc5_);
            
         }
      }
      
      public function get §!-§() : Number
      {
         return this.§'!3§;
      }
   }
}
