package §6a§
{
   public class §+_§ extends UIContainerRovio
   {
       
      
      public function §+_§(param1:XML, param2:UIContainerRovio)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2,null);
            do
            {
               this.setVisibility(false);
            }
            while(_loc3_ && param1);
            
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.setVisibility(false);
         }
      }
   }
}
