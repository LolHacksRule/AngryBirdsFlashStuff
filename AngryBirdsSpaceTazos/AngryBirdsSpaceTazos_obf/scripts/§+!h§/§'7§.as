package §+!h§
{
   import §,!3§.§#"C§;
   import §0N§.§2!@§;
   
   public class §'7§
   {
       
      
      private var §<"-§:Vector.<§5!6§>;
      
      public function §'7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.§<"-§ = new Vector.<§5!6§>();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §`!i§(param1:Object) : void
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
                        addr90:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           addr92:
                           while(_loc6_)
                           {
                              §§push(§§newactivation());
                              continue loop0;
                           }
                           continue loop3;
                        }
                        loop11:
                        while(_loc6_ || _loc2_)
                        {
                           §§push(null);
                           if(!_loc5_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§pop().§§slot[6] = §§pop();
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    continue loop11;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           addr75:
                           while(_loc6_ || this)
                           {
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              §§pop().§§slot[5] = §§pop();
                              §§goto(addr86);
                           }
                           §§goto(addr90);
                           §§goto(addr92);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §1!J§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(!(_loc7_ && param1))
         {
            param1.E = true;
         }
         var _loc2_:§5!6§ = this.§1"B§(param1.C);
         if(!_loc7_)
         {
            if(_loc2_.§7"B§())
            {
               addr50:
               for each(_loc3_ in _loc2_.§7P§())
               {
                  if(!_loc7_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc7_)
               {
               }
            }
            else
            {
               §2!@§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §!r§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§5!6§ = new §5!6§(param1,param2);
         if(_loc5_ || param2)
         {
            this.§<"-§.push(_loc3_);
            do
            {
               §§push(§2!@§);
               §§push("[ResponseHandler] Command: " + param1);
               if(_loc5_)
               {
                  §§push(§§pop() + " added.");
               }
               §§pop().log(§§pop());
            }
            while(!_loc5_);
            
         }
      }
      
      public function §,!b§() : Vector.<§5!6§>
      {
         return this.§<"-§;
      }
      
      public function §1"B§(param1:String) : §5!6§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§5!6§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§<"-§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc2_.§&!8§() == param1)
               {
                  if(_loc6_ || param1)
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
