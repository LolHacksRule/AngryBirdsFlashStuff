package § w§
{
   import §%!n§.§;!'§;
   import §`!#§.§[!s§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §]!u§ extends §[!s§
   {
       
      
      private var §[l§:DisplayObject;
      
      private var §9!#§:DisplayObjectContainer;
      
      public function §]!u§(param1:§;!'§, param2:DisplayObject, param3:DisplayObjectContainer)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super(param1);
            while(true)
            {
               this.§[l§ = param2;
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     this.§9!#§ = param3;
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get target() : DisplayObject
      {
         return this.§[l§;
      }
      
      override protected function rollback() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§[l§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§9!#§ == null);
                              if(_loc1_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    addr81:
                                    if(!(_loc1_ || _loc2_))
                                    {
                                       break;
                                       addr88:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop5:
                                          while(_loc1_ || _loc2_)
                                          {
                                             §§pop();
                                             while(!(_loc2_ && this))
                                             {
                                                continue loop5;
                                                while(true)
                                                {
                                                   §§push(this.§[l§.parent == this.§9!#§);
                                                   if(_loc2_ && this)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   this.§9!#§.removeChild(this.§[l§);
                                                   addr24:
                                                   return;
                                                   addr70:
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                          addr93:
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc1_)
                                          {
                                             §§goto(addr48);
                                          }
                                          §§goto(addr70);
                                       }
                                       §§goto(addr24);
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr81);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr88);
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      override protected function action() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§[l§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§9!#§ == null);
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(_loc2_ || _loc1_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   this.§9!#§.addChild(this.§[l§);
                                                }
                                                if(!_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§[l§.parent == this.§9!#§);
                                                      if(_loc2_ || this)
                                                      {
                                                         addr38:
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            §§push(!§§pop());
                                                            continue loop5;
                                                         }
                                                         addr102:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop3;
                                                            §§goto(addr38);
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr112:
                                                }
                                                else
                                                {
                                                   addr83:
                                                }
                                             }
                                             return;
                                          }
                                          addr55:
                                       }
                                    }
                                    continue loop2;
                                    addr97:
                                 }
                                 §§goto(addr102);
                              }
                           }
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§9!#§;
      }
   }
}
