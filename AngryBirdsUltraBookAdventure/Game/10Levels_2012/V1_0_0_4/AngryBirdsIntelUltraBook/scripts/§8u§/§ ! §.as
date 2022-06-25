package §8u§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class § ! § extends EventDispatcher
   {
       
      
      public var §9L§:int;
      
      public var §0&§:int;
      
      public var §case§:URLLoader;
      
      public var §"%§:URLRequest;
      
      public function § ! §(param1:int, param2:int, param3:URLLoader, param4:URLRequest)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super();
            while(true)
            {
               this.§0&§ = param2;
               loop1:
               for(; _loc5_ || param2; if(_loc5_ || this)
               {
                  addr73:
                  return;
               })
               {
                  this.§9L§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§case§ = param3;
                     addr78:
                     while(true)
                     {
                        this.§"%§ = param4;
                        if(!(_loc6_ && param2))
                        {
                           if(!(_loc6_ && this))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr73);
                  }
               }
            }
         }
         §§goto(addr78);
      }
   }
}
