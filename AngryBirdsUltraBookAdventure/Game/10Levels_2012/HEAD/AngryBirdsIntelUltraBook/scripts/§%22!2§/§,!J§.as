package §"!2§
{
   public class §,!J§ extends UIContainerRovio
   {
       
      
      public function §,!J§(param1:XML, param2:UIContainerRovio)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2,null);
            do
            {
               this.setVisibility(false);
            }
            while(_loc4_ && _loc3_);
            
         }
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.setVisibility(false);
         }
      }
   }
}
