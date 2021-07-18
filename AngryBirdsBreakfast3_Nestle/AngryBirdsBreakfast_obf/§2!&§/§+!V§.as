package §2!&§
{
   import §,j§.§'u§;
   import §24§.;
   
   public class §+!V§
   {
       
      
      private var §!w§:Vector.<§?M§>;
      
      public function §+!V§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            do
            {
               this.§!w§ = new Vector.<§?M§>();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §2=§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§push(null);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(null);
                                 loop8:
                                 while(!_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       continue loop2;
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       addr52:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          addr54:
                                          while(!_loc6_)
                                          {
                                             §§push(null);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§pop().§§slot[6] = §§pop();
                                                   continue loop9;
                                                }
                                                continue loop5;
                                             }
                                             continue loop8;
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        §§goto(addr34);
                     }
                  }
               }
            }
         }
      }
      
      public function §#8§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(!_loc6_)
         {
            param1.E = true;
         }
         var _loc2_:§?M§ = this.§;C§(param1.C);
         if(!_loc6_)
         {
            if(_loc2_.§5"5§())
            {
               addr46:
               for each(_loc3_ in _loc2_.§@!,§())
               {
                  if(!_loc6_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc6_)
               {
               }
            }
            else
            {
               §#7§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §2!W§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§?M§ = new §?M§(param1,param2);
         if(_loc4_)
         {
            this.§!w§.push(_loc3_);
            do
            {
               §§push(§#7§);
               §§push("[ResponseHandler] Command: " + param1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + " added.");
               }
               §§pop().log(§§pop());
            }
            while(!_loc4_);
            
         }
      }
      
      public function §%!v§() : Vector.<§?M§>
      {
         return this.§!w§;
      }
      
      public function §;C§(param1:String) : §?M§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?M§ = null;
         for each(_loc2_ in this.§!w§)
         {
            if(_loc5_ || _loc2_)
            {
               if(_loc2_.§0Y§() == param1)
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
