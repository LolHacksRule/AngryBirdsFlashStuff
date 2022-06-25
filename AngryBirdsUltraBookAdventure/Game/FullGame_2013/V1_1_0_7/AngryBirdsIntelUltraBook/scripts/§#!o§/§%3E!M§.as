package §#!o§
{
   import §1!B§.§>!s§;
   
   public class §>!M§
   {
      
      public static const §6!J§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §6!J§ = §!J§;
         }
      }
      
      private var §[!V§:Array;
      
      public function §>!M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§[!V§ = [];
            while(true)
            {
               super();
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            this.§^d§();
            if(_loc1_ || this)
            {
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get characters() : Array
      {
         return this.§[!V§;
      }
      
      private function §^d§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:§5#§ = null;
         var _loc4_:* = null;
         var _loc1_:XML = §>!s§.§;§(§6!J§);
         if(_loc7_ || _loc2_)
         {
            this.§[!V§ = [];
         }
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §5#§();
            if(!_loc8_)
            {
               _loc3_.§9!^§ = _loc2_.@id;
            }
            loop1:
            while(true)
            {
               _loc3_.sId = _loc2_.@sid;
               loop2:
               while(true)
               {
                  §§push(_loc2_.@activeScale);
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
                                 _loc3_.§[x§ = Number(_loc4_);
                                 addr247:
                                 while(_loc7_)
                                 {
                                 }
                                 continue loop2;
                              }
                              addr242:
                           }
                           while(true)
                           {
                              §§push(_loc2_.@inactiveScale);
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop10:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             _loc3_.§#q§ = Number(_loc4_);
                                             addr224:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr219:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_.@snapshotScale);
                                          if(_loc7_ || _loc2_)
                                          {
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop());
                                             while(_loc7_ || _loc2_)
                                             {
                                                _loc4_ = §§pop();
                                                §§push(§§pop());
                                                if(!(_loc8_ && _loc1_))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr150:
                                                      if(_loc7_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             continue loop10;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   _loc3_.§4!h§ = Number(_loc4_);
                                                   addr211:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr206:
                                             }
                                             else
                                             {
                                                _loc3_.§4!h§ = _loc3_.§[x§;
                                                while(!_loc8_)
                                                {
                                                }
                                                §§goto(addr247);
                                                addr180:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_.@profileImageScale);
                                                if(!_loc8_)
                                                {
                                                   continue loop16;
                                                }
                                                §§goto(addr150);
                                                §§goto(addr211);
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(_loc8_ && _loc3_)
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        loop23:
                        while(true)
                        {
                           _loc3_.§0m§ = Number(_loc4_);
                           loop21:
                           while(true)
                           {
                              addr90:
                              while(true)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    this.§[!V§.push(_loc3_);
                                    if(_loc7_ || this)
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop23;
                                       }
                                       if(!_loc8_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(!_loc8_)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr219);
                                          }
                                          break;
                                       }
                                       §§goto(addr180);
                                    }
                                    addr97:
                                    while(true)
                                    {
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             if(!_loc8_)
                                             {
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   continue loop20;
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr206);
                                          }
                                          break;
                                       }
                                       continue loop21;
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr224);
                              }
                           }
                        }
                     }
                     _loc3_.§4!h§ = _loc3_.§[x§;
                     §§goto(addr97);
                  }
               }
            }
         }
      }
   }
}
