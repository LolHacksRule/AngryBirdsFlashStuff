package §6!a§
{
   import §6b§.Log;
   import §?!G§.§8!-§;
   
   public class ResponseHandler
   {
       
      
      private var §%!%§:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         do
         {
            this.§%!%§ = new Vector.<ServerCommand>();
         }
         while(_loc1_);
         
      }
      
      public function §>8§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  §§pop().§§slot[2] = §§pop();
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        addr117:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           addr119:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
            if(!(_loc6_ || _loc2_))
            {
               continue;
            }
            §§goto(addr58);
         }
      }
      
      public function §0W§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(_loc7_)
         {
            param1.E = true;
         }
         var _loc2_:ServerCommand = this.§-!T§(param1.C);
         if(_loc7_ || _loc3_)
         {
            if(_loc2_.§4Y§())
            {
               addr51:
               for each(_loc3_ in _loc2_.§"!-§())
               {
                  if(_loc7_ || param1)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(!_loc7_)
               {
               }
            }
            else
            {
               Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §&H§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ServerCommand = new ServerCommand(param1,param2);
         if(!_loc5_)
         {
            this.§%!%§.push(_loc3_);
         }
         do
         {
            §§push(Log);
            §§push("[ResponseHandler] Command: ");
            if(_loc4_ || param2)
            {
               §§push(§§pop() + param1);
               if(_loc5_)
               {
                  continue;
               }
            }
         }
         while(§§pop().log(§§pop()), _loc5_);
         
      }
      
      public function §7G§() : Vector.<ServerCommand>
      {
         return this.§%!%§;
      }
      
      public function §-!T§(param1:String) : ServerCommand
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:ServerCommand = null;
         for each(_loc2_ in this.§%!%§)
         {
            if(!(_loc6_ && _loc2_))
            {
               if(_loc2_.§-!`§() == param1)
               {
                  if(!_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
