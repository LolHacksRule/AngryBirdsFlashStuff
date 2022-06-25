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
            loop0:
            while(true)
            {
               this.category = param1;
               while(true)
               {
                  this.action = param2;
                  loop2:
                  while(_loc6_ || param3)
                  {
                     this.label = param3;
                     while(_loc6_)
                     {
                        this.value = param4;
                        if(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              return;
                              addr57:
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr57);
      }
   }
}
