package §]!6§
{
   public class §1B§ extends UIContainerRovio
   {
       
      
      public function §1B§(param1:XML, param2:UIContainerRovio)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2,null);
         }
         do
         {
            this.setVisibility(false);
         }
         while(!_loc3_);
         
      }
      
      public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.setVisibility(true);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.setVisibility(false);
         }
      }
   }
}
