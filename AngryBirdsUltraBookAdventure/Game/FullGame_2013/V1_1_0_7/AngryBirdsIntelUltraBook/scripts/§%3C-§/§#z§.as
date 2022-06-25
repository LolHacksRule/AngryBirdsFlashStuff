package §<-§
{
   public class §#z§
   {
       
      
      public var category:String = "";
      
      public var action:String = "";
      
      public var §#@§:String = "";
      
      public var value:int = 0;
      
      public function §#z§(param1:String, param2:String, param3:String, param4:int)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super();
            while(true)
            {
               this.category = param1;
               loop3:
               while(_loc5_ || param2)
               {
                  this.value = param4;
                  if(_loc5_)
                  {
                     addr44:
                     if(_loc6_ && param1)
                     {
                        loop2:
                        while(true)
                        {
                           if(!(_loc6_ && param3))
                           {
                              this.§#@§ = param3;
                              continue loop3;
                           }
                           addr90:
                           while(true)
                           {
                              this.action = param2;
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr90);
      }
   }
}
