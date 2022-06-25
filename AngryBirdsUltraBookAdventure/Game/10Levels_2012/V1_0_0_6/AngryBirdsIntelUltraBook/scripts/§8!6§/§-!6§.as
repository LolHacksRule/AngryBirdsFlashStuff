package §8!6§
{
   import §"x§.§3!v§;
   
   public class §-!6§
   {
      
      public static const §#c§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §#c§ = §"!S§;
         }
      }
      
      private var §3!P§:Array;
      
      public function §-!6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3!P§ = [];
            while(true)
            {
               super();
               §§goto(addr49);
            }
         }
         addr49:
         while(true)
         {
            this.§'w§();
            if(_loc1_ || _loc1_)
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
         return this.§3!P§;
      }
      
      private function §'w§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:§&!S§ = null;
         var _loc4_:* = null;
         var _loc1_:XML = §3!v§.§;!-§(§#c§);
         if(_loc8_ || _loc2_)
         {
            this.§3!P§ = [];
         }
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §&!S§();
            if(_loc8_ || this)
            {
               _loc3_.§@H§ = _loc2_.@id;
               while(true)
               {
                  _loc3_.sId = _loc2_.@sid;
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
                                    _loc3_.§;Y§ = Number(_loc4_);
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
                                 while(_loc8_)
                                 {
                                    §§push(§§pop());
                                    loop10:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       addr232:
                                       while(!(_loc7_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             addr240:
                                             while(true)
                                             {
                                                _loc3_.§>N§ = Number(_loc4_);
                                                addr245:
                                                while(true)
                                                {
                                                   if(!(_loc8_ || _loc1_))
                                                   {
                                                      §§goto(addr275);
                                                   }
                                                   else
                                                   {
                                                      addr262:
                                                   }
                                                }
                                             }
                                             addr240:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_.@snapshotScale);
                                             addr201:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                continue loop10;
                                             }
                                             §§goto(addr262);
                                          }
                                       }
                                       continue loop5;
                                    }
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop());
                                    if(_loc8_ || this)
                                    {
                                       if(_loc7_ && _loc3_)
                                       {
                                          continue loop4;
                                       }
                                       _loc4_ = §§pop();
                                       §§goto(addr157);
                                    }
                                    §§goto(addr202);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     if(!(_loc8_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr116);
                  }
                  while(!(_loc7_ && this))
                  {
                     _loc3_.§-!o§ = Number(_loc4_);
                     §§goto(addr223);
                  }
               }
            }
            §§goto(addr240);
         }
      }
   }
}
