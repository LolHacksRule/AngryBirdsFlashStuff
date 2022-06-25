package §6!Y§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §5t§ extends EventDispatcher
   {
       
      
      public var § !z§:int;
      
      public var §"A§:int;
      
      public var §9o§:URLLoader;
      
      public var §0!k§:URLRequest;
      
      public function §5t§(param1:int, param2:int, param3:URLLoader, param4:URLRequest)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super();
            while(true)
            {
               this.§"A§ = param2;
               addr83:
               while(_loc5_)
               {
                  this.§ !z§ = param1;
               }
            }
         }
         loop2:
         while(true)
         {
            this.§9o§ = param3;
            while(!(_loc6_ && param2))
            {
               this.§0!k§ = param4;
               if(!(_loc5_ || param3))
               {
                  continue;
               }
               if(_loc5_)
               {
                  break loop2;
               }
               §§goto(addr83);
            }
         }
      }
   }
}
