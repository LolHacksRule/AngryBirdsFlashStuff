package §_-0EZ§
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §_-UE§ extends EventDispatcher
   {
       
      
      public var §_-1E§:int;
      
      public var §_-6Q§:int;
      
      public var §_-5T§:URLLoader;
      
      public var §_-C1§:URLRequest;
      
      public function §_-UE§(param1:int, param2:int, param3:URLLoader, param4:URLRequest)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-6Q§ = param2;
               while(true)
               {
                  this.§_-1E§ = param1;
                  addr66:
                  while(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        this.§_-5T§ = param3;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§_-C1§ = param4;
            if(!_loc5_)
            {
               continue;
            }
            if(_loc5_ || param2)
            {
               break;
            }
            §§goto(addr66);
         }
      }
   }
}
