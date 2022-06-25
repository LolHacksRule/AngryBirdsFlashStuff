package §,@§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §;!r§ extends EventDispatcher
   {
       
      
      public var §2!W§:int;
      
      public var § !#§:int;
      
      public var §[!,§:URLLoader;
      
      public var §%%§:URLRequest;
      
      public function §;!r§(param1:int, param2:int, param3:URLLoader, param4:URLRequest)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super();
         }
         while(true)
         {
            this.§ !#§ = param2;
            loop1:
            for(; !_loc6_; if(_loc6_ && param2)
            {
               continue;
            },§§goto(addr78))
            {
               this.§2!W§ = param1;
               loop2:
               while(true)
               {
                  this.§[!,§ = param3;
                  while(true)
                  {
                     if(_loc5_ || param2)
                     {
                        continue loop1;
                     }
                     continue loop2;
                     addr78:
                     this.§%%§ = param4;
                     if(!(_loc6_ && param2))
                     {
                        return;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
   }
}
