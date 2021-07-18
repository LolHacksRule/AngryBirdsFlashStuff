package §%"$§
{
   import §+!o§.§?"-§;
   import §3§.§5§;
   import flash.display.DisplayObject;
   
   public class §"s§ extends §^!U§
   {
       
      
      private const §-"'§:int = 3000;
      
      private const §?"'§:int = 3000;
      
      private var §6#§:int;
      
      private var §4o§:§5§;
      
      private var §3"6§:int;
      
      public function §"s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         while(true)
         {
            this.§4o§ = new §5§();
            while(_loc2_ || this)
            {
               §9!7§ = "Check stability";
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
      }
      
      override public function update(param1:§?"-§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§6#§ -= param2;
            loop0:
            while(true)
            {
               §§push(!§#[§);
               if(_loc3_ || param2)
               {
                  if(§§pop())
                  {
                     loop16:
                     while(true)
                     {
                        §§pop();
                        loop17:
                        while(true)
                        {
                           §§push(this.§6#§);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                                 addr143:
                                 §§push(§§pop() <= §§pop());
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       addr173:
                                       if(!_loc4_)
                                       {
                                          §3!P§(this.§?"'§);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§4o§);
                                          addr128:
                                          while(true)
                                          {
                                             §§pop().§]"8§();
                                             addr129:
                                             while(true)
                                             {
                                                §#[§ = true;
                                                addr117:
                                                while(true)
                                                {
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop17;
                                                   }
                                                }
                                                continue loop17;
                                             }
                                          }
                                       }
                                       addr173:
                                    }
                                    else
                                    {
                                       §§push(param1.isWorldAtSleep());
                                       if(_loc4_ && this)
                                       {
                                          addr144:
                                          while(_loc4_ && param1)
                                          {
                                             continue loop16;
                                             §§goto(addr143);
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr144);
                                          }
                                          addr144:
                                          continue loop0;
                                          addr151:
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      finish(this.§?"'§);
                                                      while(true)
                                                      {
                                                         §§push(this.§4o§);
                                                         while(true)
                                                         {
                                                            §§pop().§81§();
                                                            while(true)
                                                            {
                                                               §#[§ = true;
                                                               addr61:
                                                               §§goto(addr70);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr108:
                                                }
                                                else
                                                {
                                                   §§goto(addr173);
                                                }
                                                §§goto(addr128);
                                             }
                                             §§goto(addr129);
                                          }
                                       }
                                    }
                                    addr70:
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue loop15;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§4o§);
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue loop14;
                                       }
                                       if(_loc3_)
                                       {
                                          §§pop().update(param2);
                                          do
                                          {
                                             super.update(param1,param2);
                                          }
                                          while(!_loc3_);
                                          
                                          if(_loc3_)
                                          {
                                             if(_loc4_ && param2)
                                             {
                                                continue loop12;
                                             }
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr61);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr128);
                                       }
                                       §§goto(addr117);
                                       §§goto(addr70);
                                    }
                                    return;
                                 }
                                 addr166:
                              }
                              §§goto(addr144);
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop17;
                              }
                              addr164:
                           }
                           §§goto(addr166);
                        }
                     }
                     addr196:
                  }
                  §§goto(addr151);
               }
               §§goto(addr196);
            }
         }
         §§goto(addr108);
      }
      
      override public function startCheck(param1:§?"-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.startCheck(param1);
            while(true)
            {
               this.§6#§ = this.§-"'§;
               §§goto(addr64);
            }
         }
         addr64:
         while(true)
         {
            this.§3"6§ = param1.getPigCount();
            if(!_loc2_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         return Vector.<DisplayObject>([this.§4o§]);
      }
   }
}
