package §%4§
{
   public class §"e§ extends §4!=§
   {
       
      
      public function §"e§(param1:XML, param2:§4!=§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2,null);
            if(_loc3_ || this)
            {
               this.setVisibility(false);
            }
         }
      }
      
      public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.setVisibility(true);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.setVisibility(false);
         }
      }
   }
}
