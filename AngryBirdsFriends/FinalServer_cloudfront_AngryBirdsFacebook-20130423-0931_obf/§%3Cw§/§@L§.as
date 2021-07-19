package §<w§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §@L§ extends EventDispatcher
   {
       
      
      public var §7?§:int;
      
      public var §@"C§:int;
      
      public var §;"5§:URLLoader;
      
      public var §9!X§:URLRequest;
      
      public function §@L§(param1:int, param2:int, param3:URLLoader, param4:URLRequest)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§@"C§ = param2;
               loop1:
               while(true)
               {
                  this.§7?§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§;"5§ = param3;
                     loop3:
                     while(!_loc6_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§9!X§ = param4;
                           if(_loc5_)
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
         §§goto(addr75);
      }
   }
}
