package §!!C§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §#!^§ extends EventDispatcher
   {
       
      
      public var §7A§:int;
      
      public var §%!K§:int;
      
      public var §1!e§:URLLoader;
      
      public var §'"&§:URLRequest;
      
      public function §#!^§(param1:int, param2:int, param3:URLLoader, param4:URLRequest)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§%!K§ = param2;
               while(true)
               {
                  this.§7A§ = param1;
                  loop2:
                  for(; _loc5_ || this; while(!(_loc6_ && param2))
                  {
                     this.§'"&§ = param4;
                     if(_loc5_ || param2)
                     {
                        return;
                     }
                  })
                  {
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§1!e§ = param3;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
   }
}
