package starling.events
{
   public class §"!#§ extends Event
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
      
      private var §39§:Number;
      
      public function §"!#§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param3);
            if(!_loc5_)
            {
               addr24:
               this.§39§ = param2;
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function get §1!<§() : Number
      {
         return this.§39§;
      }
   }
}
