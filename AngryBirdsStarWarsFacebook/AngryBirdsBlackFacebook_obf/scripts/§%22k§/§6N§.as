package §"k§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §6N§ extends EventDispatcher
   {
       
      
      public var §9#U§:int;
      
      public var §3!D§:int;
      
      public var §@"<§:URLLoader;
      
      public var §1"@§:URLRequest;
      
      public function §6N§(param1:int, param2:int, param3:URLLoader, param4:URLRequest)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§3!D§ = param2;
               addr68:
               while(!_loc6_)
               {
                  this.§9#U§ = param1;
               }
            }
         }
         loop2:
         while(true)
         {
            this.§@"<§ = param3;
            while(!_loc6_)
            {
               this.§1"@§ = param4;
               if(_loc6_)
               {
                  continue;
               }
               if(_loc5_)
               {
                  break loop2;
               }
               §§goto(addr68);
            }
         }
      }
   }
}
