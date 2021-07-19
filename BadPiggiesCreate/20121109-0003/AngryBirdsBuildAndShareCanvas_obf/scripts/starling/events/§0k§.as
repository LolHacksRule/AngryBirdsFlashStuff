package starling.events
{
   public class §0k§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            ENTER_FRAME = "enterFrame";
         }
      }
      
      private var § !h§:Number;
      
      public function §0k§(param1:String, param2:Number, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param3);
         }
         do
         {
            this.§ !h§ = param2;
         }
         while(_loc5_);
         
      }
      
      public function get §^C§() : Number
      {
         return this.§ !h§;
      }
   }
}
