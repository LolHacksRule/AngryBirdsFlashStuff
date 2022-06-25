package §7p§
{
   public class §7u§
   {
       
      
      public var category:String = "";
      
      public var action:String = "";
      
      public var label:String = "";
      
      public var value:int = 0;
      
      public function §7u§(param1:String, param2:String, param3:String, param4:int)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super();
            while(true)
            {
               this.category = param1;
               loop2:
               while(!(_loc5_ && param2))
               {
                  this.label = param3;
                  do
                  {
                     this.value = param4;
                  }
                  while(!(_loc6_ || param1));
                  
                  if(!(_loc5_ && this))
                  {
                     addr67:
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           this.action = param2;
                           continue loop2;
                           §§goto(addr67);
                        }
                        addr91:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr91);
      }
   }
}
