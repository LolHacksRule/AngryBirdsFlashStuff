package §^!7§
{
   import §<u§.Log;
   import §>o§.§7b§;
   
   public class ResponseHandler
   {
       
      
      private var §9S§:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
         do
         {
            this.§9S§ = new Vector.<ServerCommand>();
         }
         while(!_loc1_);
         
      }
      
      public function §4!N§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
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
                        addr91:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           addr93:
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
            if(_loc6_ && _loc3_)
            {
               continue;
            }
            §§goto(addr34);
         }
      }
      
      public function §=c§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(!_loc6_)
         {
            param1.E = true;
         }
         var _loc2_:ServerCommand = this.§1![§(param1.C);
         if(!(_loc6_ && _loc3_))
         {
            if(_loc2_.§;!I§())
            {
               addr51:
               for each(_loc3_ in _loc2_.§6z§())
               {
                  if(!(_loc6_ && _loc2_))
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
      
      public function §]g§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ServerCommand = new ServerCommand(param1,param2);
         if(!(_loc4_ && this))
         {
            this.§9S§.push(_loc3_);
            do
            {
               §§push(Log);
               §§push("[ResponseHandler] Command: ");
               if(_loc5_)
               {
                  §§push(§§pop() + param1);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() + " added.");
                  }
               }
               §§pop().log(§§pop());
            }
            while(!_loc5_);
            
         }
      }
      
      public function §?!W§() : Vector.<ServerCommand>
      {
         return this.§9S§;
      }
      
      public function §1![§(param1:String) : ServerCommand
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:ServerCommand = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§9S§)
         {
            if(_loc5_ || _loc3_)
            {
               if(_loc2_.§#S§() == param1)
               {
                  if(_loc5_ || _loc2_)
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
