package §class§
{
   public class §0r§ extends §3C§
   {
       
      
      public function §0r§(param1:XML, param2:§3C§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2,null);
            if(_loc3_ || this)
            {
               addr45:
               this.setVisibility(false);
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.setVisibility(true);
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.setVisibility(false);
         }
      }
   }
}
