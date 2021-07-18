package §1!i§
{
   public class §?O§
   {
       
      
      public var popup:§?!a§;
      
      public var useTransitionIn:Boolean;
      
      public var useTransitionOut:Boolean;
      
      public var §2!T§:Boolean;
      
      public var allowQueue:Boolean = true;
      
      public function §?O§(param1:§?!a§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
         }
         loop0:
         do
         {
            this.popup = param1;
            while(true)
            {
               this.useTransitionIn = param2;
               while(!_loc5_)
               {
                  this.useTransitionOut = param3;
                  do
                  {
                     this.§2!T§ = param4;
                  }
                  while(_loc5_);
                  
                  if(_loc6_ || param1)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc6_ || param1));
         
      }
   }
}
