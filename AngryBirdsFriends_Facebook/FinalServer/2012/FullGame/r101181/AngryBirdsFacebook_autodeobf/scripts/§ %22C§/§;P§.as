package § "C§
{
   import § !9§.§'!J§;
   import §6o§.§+!k§;
   
   public class §;P§
   {
       
      
      private var §=!z§:Vector.<§<r§>;
      
      public function §;P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§=!z§ = new Vector.<§<r§>();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §?k§(param1:Object) : void
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
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           addr103:
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(_loc5_)
                              {
                                 §§push(null);
                                 while(_loc5_ || param1)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop());
                                    if(_loc6_ && _loc2_)
                                    {
                                       continue loop2;
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    while(true)
                                    {
                                       addr59:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(!(_loc6_ && _loc2_))
                                          {
                                             §§push(null);
                                             if(_loc5_)
                                             {
                                                §§pop().§§slot[6] = §§pop();
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc5_ || param1)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop11;
                                                }
                                                continue loop4;
                                                addr73:
                                             }
                                             §§goto(addr79);
                                          }
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §>=§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(!(_loc6_ && _loc2_))
         {
            param1.E = true;
         }
         var _loc2_:§<r§ = this.§0!`§(param1.C);
         if(!_loc6_)
         {
            if(_loc2_.§7!i§())
            {
               addr51:
               for each(_loc3_ in _loc2_.§6^§())
               {
                  if(_loc7_)
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
               §+!k§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §'!x§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<r§ = new §<r§(param1,param2);
         if(!(_loc5_ && this))
         {
            this.§=!z§.push(_loc3_);
         }
         do
         {
            §§push(§+!k§);
            §§push("[ResponseHandler] Command: ");
            if(!(_loc5_ && this))
            {
               §§push(§§pop() + param1);
               if(_loc5_ && this)
               {
                  continue;
               }
            }
         }
         while(§§pop().log(§§pop()), _loc5_ && param1);
         
      }
      
      public function §&!O§() : Vector.<§<r§>
      {
         return this.§=!z§;
      }
      
      public function §0!`§(param1:String) : §<r§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<r§ = null;
         for each(_loc2_ in this.§=!z§)
         {
            if(_loc6_)
            {
               if(_loc2_.§]`§() == param1)
               {
                  if(!_loc5_)
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
