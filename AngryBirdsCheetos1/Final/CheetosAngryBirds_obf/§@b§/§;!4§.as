package §@b§
{
   public class §;!4§ implements §;M§
   {
       
      
      private var §8H§:Array;
      
      private var §[+§:Boolean;
      
      public function §;!4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§8H§ = [];
         }
         do
         {
            super();
         }
         while(!_loc1_);
         
      }
      
      public function §[z§(param1:§;%§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8H§.push(param1);
         }
         do
         {
            this.§[+§ = false;
         }
         while(_loc3_);
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;%§ = null;
         for each(_loc1_ in this.§8H§)
         {
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.dispose();
            }
         }
         if(!_loc4_)
         {
            this.§8H§ = [];
         }
      }
      
      public function §3!]§(param1:String) : §0!W§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§0!W§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§8H§.length)
            {
               return null;
            }
            _loc2_ = (this.§8H§[_loc3_] as §;%§).§3!]§(param1);
            if(!_loc4_)
            {
               if(_loc2_ != null)
               {
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
                  continue;
               }
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr92:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr92);
            }
            break;
         }
         return _loc2_;
      }
      
      public function get §=_§() : int
      {
         return this.§8H§.length;
      }
      
      public function §"T§(param1:int) : §;%§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr115:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr116:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§[+§);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       addr24:
                                       while(true)
                                       {
                                          §§push(this.§8H§);
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop9;
                                       }
                                    }
                                    while(_loc2_ || _loc3_)
                                    {
                                       §§push(this.§8H§);
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                          do
                                          {
                                             this.§[+§ = true;
                                          }
                                          while(_loc3_);
                                          
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             return null;
                                             addr100:
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr24);
                                          }
                                       }
                                    }
                                    continue;
                                    return §§pop()[param1];
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                                 addr118:
                              }
                              while(!(_loc3_ && this))
                              {
                                 continue loop6;
                                 §§goto(addr47);
                              }
                              addr47:
                              continue loop2;
                              addr91:
                           }
                           §§goto(addr100);
                        }
                     }
                     §§goto(addr118);
                  }
               }
            }
         }
         §§goto(addr46);
      }
   }
}
