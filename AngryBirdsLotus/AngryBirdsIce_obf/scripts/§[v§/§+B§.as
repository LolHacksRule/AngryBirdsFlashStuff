package §[v§
{
   public class §+B§ extends §&F§
   {
       
      
      public function §+B§(param1:XML, param2:§&F§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
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
         if(!_loc1_)
         {
            this.setVisibility(false);
         }
      }
   }
}
