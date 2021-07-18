package §'!H§
{
   public class §"+§ implements §5,§
   {
       
      
      private var §=!4§:Array;
      
      private var §`!W§:Boolean;
      
      public function §"+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=!4§ = [];
            do
            {
               super();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §]F§(param1:§3^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!4§.push(param1);
         }
         do
         {
            this.§`!W§ = false;
         }
         while(_loc3_ && param1);
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§3^§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§=!4§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_ || _loc2_)
         {
            this.§=!4§ = [];
         }
      }
      
      public function §,2§(param1:String) : §?m§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§?m§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§=!4§.length)
         {
            _loc2_ = (this.§=!4§[_loc3_] as §3^§).§,2§(param1);
            if(_loc4_)
            {
               if(_loc2_ != null)
               {
                  if(_loc4_)
                  {
                     return _loc2_;
                  }
               }
               §§push(_loc3_);
               if(_loc4_ || this)
               {
                  §§push(§§pop() + 1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
         return null;
      }
      
      public function get §2"§() : int
      {
         return this.§=!4§.length;
      }
      
      public function §0!L§(param1:int) : §3^§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr124:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    return null;
                                 }
                                 while(true)
                                 {
                                    loop9:
                                    while(_loc3_ || this)
                                    {
                                       this.§`!W§ = true;
                                       if(_loc2_ && this)
                                       {
                                          continue;
                                       }
                                       addr46:
                                       if(!(_loc2_ && param1))
                                       {
                                          addr53:
                                          while(true)
                                          {
                                             §§push(this.§=!4§);
                                             if(_loc3_ || param1)
                                             {
                                                break;
                                             }
                                             §§goto(addr53);
                                          }
                                          return §§pop()[param1];
                                          addr20:
                                       }
                                       else
                                       {
                                          while(_loc3_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§=!4§);
                                             }
                                             §§goto(addr46);
                                          }
                                          continue loop0;
                                          addr62:
                                       }
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                          continue loop9;
                                       }
                                       §§goto(addr53);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§`!W§);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    break loop3;
                                 }
                                 if(!§§pop())
                                 {
                                    §§goto(addr62);
                                 }
                                 §§goto(addr20);
                              }
                           }
                           addr109:
                        }
                     }
                  }
                  addr144:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
   }
}
