package §#!o§
{
   import §1!B§.§>!s§;
   
   public class §>!M§
   {
      
      public static const §6!J§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6!J§ = §!J§;
         }
      }
      
      private var §[!V§:Array;
      
      public function §>!M§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§[!V§ = [];
            while(true)
            {
               super();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§^d§();
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function get characters() : Array
      {
         return this.§[!V§;
      }
      
      private function §^d§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:§5#§ = null;
         var _loc4_:* = null;
         var _loc1_:XML = §>!s§.§;§(§6!J§);
         if(!(_loc7_ && _loc3_))
         {
            this.§[!V§ = [];
         }
         loop0:
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §5#§();
            if(!(_loc7_ && _loc2_))
            {
               _loc3_.§9!^§ = _loc2_.@id;
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
                                    _loc3_.§[x§ = Number(_loc4_);
                                    continue loop2;
                                 }
                                 addr258:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_.@inactiveScale);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(!_loc7_)
                                       {
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   _loc3_.§#q§ = Number(_loc4_);
                                                   addr240:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr235:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_.@snapshotScale);
                                                addr210:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr211:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             addr145:
                                             if(_loc7_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc8_ || _loc2_))
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop());
                                             if(_loc8_ || this)
                                             {
                                                if(!_loc7_)
                                                {
                                                   _loc4_ = §§pop();
                                                   addr170:
                                                   if(!(_loc7_ && _loc1_))
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop10;
                                             }
                                             §§goto(addr211);
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 addr226:
                              }
                           }
                        }
                     }
                  }
                  if(_loc7_ && _loc1_)
                  {
                     continue;
                  }
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr92);
               }
            }
            §§goto(addr126);
         }
      }
   }
}
