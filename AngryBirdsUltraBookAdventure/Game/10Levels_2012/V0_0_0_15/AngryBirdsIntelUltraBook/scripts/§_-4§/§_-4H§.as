package §_-4§
{
   import §_-0BH§.§_-ZE§;
   
   public class §_-4H§
   {
      
      public static const §_-mf§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §_-mf§ = §_-04M§;
         }
      }
      
      private var §_-x§:Array;
      
      public function §_-4H§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§_-x§ = [];
            while(true)
            {
               super();
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            this.§_-09O§();
            if(_loc1_ || _loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get characters() : Array
      {
         return this.§_-x§;
      }
      
      private function §_-09O§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:§_-nq§ = null;
         var _loc4_:* = null;
         var _loc1_:XML = §_-ZE§.§_-ve§(§_-mf§);
         if(_loc8_ || _loc1_)
         {
            this.§_-x§ = [];
         }
         loop0:
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §_-nq§();
            if(_loc8_ || _loc1_)
            {
               _loc3_.§_-1h§ = _loc2_.@id;
               loop1:
               while(true)
               {
                  _loc3_.sId = _loc2_.@sid;
                  loop2:
                  while(true)
                  {
                     §§push(_loc2_.@activeScale);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    _loc3_.§_-P9§ = Number(_loc4_);
                                    addr275:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr270:
                              }
                              while(true)
                              {
                                 §§push(_loc2_.@inactiveScale);
                                 if(_loc8_ || this)
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                    }
                                    addr245:
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          _loc3_.§_-RG§ = Number(_loc4_);
                                          addr262:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr247:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_.@snapshotScale);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop10;
                                       }
                                       loop15:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             _loc3_.§_-ws§ = _loc3_.§_-P9§;
                                             loop16:
                                             while(true)
                                             {
                                                addr114:
                                                while(true)
                                                {
                                                   §§push(_loc2_.@profileImageScale);
                                                   if(_loc8_)
                                                   {
                                                      if(!(_loc8_ || _loc2_))
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr129:
                                                      §§push(§§pop());
                                                      if(!(_loc7_ && this))
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!(_loc8_ || this))
                                                            {
                                                               continue loop4;
                                                            }
                                                            _loc4_ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr245);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            continue loop15;
                                                            §§goto(addr129);
                                                         }
                                                         addr216:
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         if(!(_loc8_ || _loc3_))
                                                         {
                                                            break loop16;
                                                         }
                                                         _loc3_.§_-wO§ = Number(_loc4_);
                                                      }
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(_loc8_ || this)
                                                         {
                                                            loop19:
                                                            do
                                                            {
                                                               addr67:
                                                               while(true)
                                                               {
                                                                  this.§_-x§.push(_loc3_);
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     if(_loc7_ && _loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     §§goto(addr275);
                                                                  }
                                                               }
                                                               addr223:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     break loop18;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            while(false);
                                                            
                                                            continue loop0;
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   else
                                                   {
                                                      _loc3_.§_-ws§ = _loc3_.§_-P9§;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr270);
                                          }
                                          while(true)
                                          {
                                             _loc3_.§_-ws§ = Number(_loc4_);
                                             §§goto(addr223);
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr67);
            }
         }
      }
   }
}
