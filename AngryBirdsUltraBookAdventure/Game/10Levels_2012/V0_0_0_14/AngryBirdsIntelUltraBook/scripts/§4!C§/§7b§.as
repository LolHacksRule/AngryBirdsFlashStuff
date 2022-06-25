package §4!C§
{
   import §&!4§.§ !J§;
   import §6z§.§[g§;
   
   public class §7b§
   {
       
      
      private var §3K§:Vector.<§!!^§>;
      
      public function §7b§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            do
            {
               this.§3K§ = new Vector.<§!!^§>();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §8Z§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
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
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           while(_loc6_ || this)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(null);
                                 addr85:
                                 while(!_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       continue loop2;
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    while(true)
                                    {
                                       addr58:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop7;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                        if(!(_loc5_ && this))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §5!<§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(!_loc7_)
         {
            param1.E = true;
         }
         var _loc2_:§!!^§ = this.§;!A§(param1.C);
         if(_loc6_)
         {
            if(_loc2_.§>%§())
            {
               for each(_loc3_ in _loc2_.§]9§())
               {
                  if(_loc6_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc6_ || _loc3_)
               {
               }
               addr45:
            }
            else
            {
               §[g§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §1!,§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!!^§ = new §!!^§(param1,param2);
         if(_loc5_)
         {
            this.§3K§.push(_loc3_);
         }
         do
         {
            §§push(§[g§);
            §§push("[ResponseHandler] Command: ");
            if(_loc5_)
            {
               §§push(§§pop() + param1);
               if(!_loc4_)
               {
                  §§push(§§pop() + " added.");
               }
            }
            §§pop().log(§§pop());
         }
         while(!_loc5_);
         
      }
      
      public function §+<§() : Vector.<§!!^§>
      {
         return this.§3K§;
      }
      
      public function §;!A§(param1:String) : §!!^§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!!^§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§3K§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.§>3§() == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            throw new Error("[ResponseHandler] Command not found: " + param1);
         }
         return _loc2_;
      }
   }
}
