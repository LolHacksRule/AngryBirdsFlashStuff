package §_-6C§
{
   public class §_-SW§ extends §_-gt§
   {
       
      
      public function §_-SW§(param1:XML, param2:§_-gt§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2,null);
         }
         do
         {
            this.setVisibility(false);
         }
         while(_loc4_ && param1);
         
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
         if(_loc1_ || this)
         {
            this.setVisibility(false);
         }
      }
   }
}
