package §]!6§
{
   public class §1B§ extends UIContainerRovio
   {
       
      
      public function §1B§(param1:XML, param2:UIContainerRovio)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2,null);
         }
         do
         {
            this.setVisibility(false);
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.setVisibility(true);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.setVisibility(false);
         }
      }
   }
}
