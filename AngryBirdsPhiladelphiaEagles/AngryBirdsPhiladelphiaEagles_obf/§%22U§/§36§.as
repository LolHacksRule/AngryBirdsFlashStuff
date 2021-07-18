package §"U§
{
   public class §36§ extends §[Q§
   {
       
      
      public function §36§(param1:XML, param2:§[Q§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2,null);
            do
            {
               this.setVisibility(false);
            }
            while(_loc4_);
            
         }
      }
      
      public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.setVisibility(true);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.setVisibility(false);
         }
      }
   }
}
