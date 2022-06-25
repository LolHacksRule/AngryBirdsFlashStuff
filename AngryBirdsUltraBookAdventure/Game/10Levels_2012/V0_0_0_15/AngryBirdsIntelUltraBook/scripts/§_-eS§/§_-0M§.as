package §_-eS§
{
   public class §_-0M§
   {
       
      
      public var category:String = "";
      
      public var action:String = "";
      
      public var §_-0-R§:String = "";
      
      public var value:int = 0;
      
      public function §_-0M§(param1:String, param2:String, param3:String, param4:int)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
            while(true)
            {
               this.category = param1;
               loop1:
               while(!_loc6_)
               {
                  this.action = param2;
                  loop2:
                  while(true)
                  {
                     this.§_-0-R§ = param3;
                     loop3:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           this.value = param4;
                           if(_loc5_ || param2)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr68);
      }
   }
}
