package §^B§
{
   import §6b§.§^9§;
   
   public class Characters
   {
      
      public static const mCharacterDataTableBin:Class;
      
      {
         var mCharacterDataTableBin:Boolean = true;
         var _loc2_:Boolean = false;
         if(mCharacterDataTableBin || mCharacterDataTableBin)
         {
         }
         do
         {
            mCharacterDataTableBin = §%A§;
         }
         while(!(mCharacterDataTableBin || _loc2_));
         
      }
      
      private var §6!J§:Array;
      
      public function Characters()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         loop0:
         while(true)
         {
            this.§6!J§ = [];
            do
            {
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
            while(!(_loc2_ || _loc1_));
            
            return;
         }
      }
      
      public function get characters() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         return this.§6!J§;
      }
      
      private function §+[§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && character)
         {
         }
         var characterData:XML = null;
         var character:§[_§ = null;
         var scale:* = null;
         if(!_loc7_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(!_loc8_)
               {
                  if(!(_loc8_ && this))
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var mCharacterDataTable:XML = §^9§.§1<§(mCharacterDataTableBin);
            if(_loc7_)
            {
               loop3:
               while(true)
               {
                  addr73:
                  while(true)
                  {
                     this.§6!J§ = [];
                     continue loop3;
                  }
               }
               addr79:
            }
            while(true)
            {
               if(!_loc7_)
               {
                  continue;
               }
               if(!_loc8_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr79);
               }
               §§goto(addr73);
            }
            loop6:
            for each(characterData in mCharacterDataTable.characters.character)
            {
               if(_loc7_)
               {
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        while(_loc8_ && this)
                        {
                        }
                        if(_loc8_ && mCharacterDataTable)
                        {
                           break;
                        }
                        while(false)
                        {
                           continue loop8;
                        }
                        character = new §[_§();
                        if(_loc7_)
                        {
                           loop11:
                           while(true)
                           {
                              character.§<!B§ = characterData.@id;
                              loop12:
                              while(true)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    character.sId = characterData.@sid;
                                    loop14:
                                    while(_loc7_)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(characterData.@activeScale);
                                          loop16:
                                          while(true)
                                          {
                                             scale = §§pop();
                                             loop17:
                                             while(true)
                                             {
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(scale);
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               character.§1I§ = Number(scale);
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  while(!_loc8_)
                                                                  {
                                                                     addr203:
                                                                     if(_loc8_ && character)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     loop46:
                                                                     for(; !(_loc8_ && mCharacterDataTable); if(!(_loc7_ || mCharacterDataTable))
                                                                     {
                                                                        continue;
                                                                     },if(_loc7_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§goto(addr142);
                                                                     },§§goto(addr315))
                                                                     {
                                                                        addr174:
                                                                        if(!(_loc8_ && character))
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              loop47:
                                                                              while(true)
                                                                              {
                                                                                 this.§6!J§.push(character);
                                                                                 loop48:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr157:
                                                                                          if(!(_loc7_ || this))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop46;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    loop45:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr196:
                                                                                             if(!(_loc7_ || mCharacterDataTable))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop43:
                                                                                             while(!(_loc8_ && this))
                                                                                             {
                                                                                                addr280:
                                                                                                if(!(_loc7_ || mCharacterDataTable))
                                                                                                {
                                                                                                   while(!_loc8_)
                                                                                                   {
                                                                                                      §§push(scale);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         addr312:
                                                                                                         while(!_loc8_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               character.§2!P§ = character.§1I§;
                                                                                                               break loop46;
                                                                                                            }
                                                                                                            while(!_loc8_)
                                                                                                            {
                                                                                                               character.§2!P§ = Number(scale);
                                                                                                               while(_loc7_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(characterData.@profileImageScale);
                                                                                                                     addr265:
                                                                                                                     addr334:
                                                                                                                     while(_loc7_ || characterData)
                                                                                                                     {
                                                                                                                        scale = §§pop();
                                                                                                                        continue loop43;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        addr373:
                                                                                                                        addr373:
                                                                                                                        while(!(_loc8_ && character))
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr382);
                                                                                                                              }
                                                                                                                              §§goto(addr330);
                                                                                                                              addr235:
                                                                                                                              if(!(_loc8_ && characterData))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 character.§2!P§ = character.§1I§;
                                                                                                                                 continue loop45;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop16;
                                                                                                                        §§goto(addr265);
                                                                                                                     }
                                                                                                                     addr299:
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr387);
                                                                                                            }
                                                                                                            while(!(_loc8_ && mCharacterDataTable))
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr373);
                                                                                                               §§goto(addr344);
                                                                                                            }
                                                                                                            addr344:
                                                                                                         }
                                                                                                         addr215:
                                                                                                         continue loop20;
                                                                                                         if(_loc8_ && mCharacterDataTable)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§goto(addr235);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr312);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr280);
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                   addr327:
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   break loop48;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   character.§1!=§ = Number(scale);
                                                                                                   addr387:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr361:
                                                                                                      while(_loc7_)
                                                                                                      {
                                                                                                         if(_loc8_ && characterData)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(characterData.@snapshotScale);
                                                                                                         }
                                                                                                         §§goto(addr174);
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                }
                                                                                                addr382:
                                                                                                §§goto(addr334);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_ && characterData)
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                §§goto(addr299);
                                                                                             }
                                                                                             addr292:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop47;
                                                                                          }
                                                                                          addr255:
                                                                                       }
                                                                                    }
                                                                                    addr403:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr390);
                                                                                       §§goto(addr196);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(scale);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§goto(addr215);
                                                                                       }
                                                                                       §§goto(addr265);
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                    §§goto(addr157);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              continue loop6;
                                                                              addr142:
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        §§goto(addr361);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr292);
                                                                     }
                                                                  }
                                                                  continue loop14;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(characterData.@inactiveScale);
                                                            continue loop16;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop11;
                                 }
                              }
                           }
                        }
                        §§goto(addr308);
                     }
                  }
               }
               §§goto(addr113);
            }
            if(_loc8_)
            {
            }
            return;
         }
      }
   }
}
