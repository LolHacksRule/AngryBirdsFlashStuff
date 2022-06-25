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
         if(!(_loc6_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§0&§ = param2;
               while(true)
               {
                  this.§9L§ = param1;
                  while(_loc5_)
                  {
                     this.§case§ = param3;
                     while(!_loc6_)
                     {
                        continue loop0;
                        this.§"%§ = param4;
                        if(!(_loc6_ && this))
                        {
                           return;
                           addr59:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
   }
}
