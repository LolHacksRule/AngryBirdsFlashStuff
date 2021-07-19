package §;&§
{
   public class §1!n§
   {
       
      
      public var x:int;
      
      public var y:int;
      
      public var width:int;
      
      public var height:int;
      
      public var right:int;
      
      public var bottom:int;
      
      public var id:int;
      
      public function §1!n§(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.x = param1;
               while(true)
               {
                  this.y = param2;
                  while(_loc6_ || param1)
                  {
                     this.width = param3;
                     loop3:
                     while(_loc6_)
                     {
                        this.height = param4;
                        loop4:
                        while(true)
                        {
                           this.right = param1 + param3;
                           while(true)
                           {
                              if(!(_loc5_ && param3))
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr44);
      }
   }
}
