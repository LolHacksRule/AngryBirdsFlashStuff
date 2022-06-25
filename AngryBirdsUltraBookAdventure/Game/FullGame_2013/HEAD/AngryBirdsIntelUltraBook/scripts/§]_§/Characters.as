package §]_§
{
   import §<u§.§<y§;
   
   public class Characters
   {
      
      public static const mCharacterDataTableBin:Class;
      
      {
         var mCharacterDataTableBin:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(mCharacterDataTableBin && mCharacterDataTableBin))
         {
            do
            {
               mCharacterDataTableBin = §?!c§;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §<a§:Array;
      
      public function Characters()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               this.§<a§ = [];
            }
            addr99:
         }
         loop1:
         do
         {
            loop2:
            while(true)
            {
               super();
               loop3:
               do
               {
                  while(!_loc1_)
                  {
                     this.§^I§();
                     continue loop2;
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop3;
                     }
                  }
                  §§goto(addr99);
               }
               while(!_loc2_);
               
               continue loop1;
            }
         }
         while(_loc1_);
         
      }
      
      public function get characters() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         return this.§<a§;
      }
      
      private function §^I§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         var characterData:XML = null;
         var character:§%1§ = null;
         var scale:* = null;
         if(!(_loc7_ && characterData))
         {
            loop0:
            while(true)
            {
               addr44:
               while(true)
               {
                  addr46:
                  while(_loc8_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc8_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr44);
            }
            §§goto(addr46);
         }
         var mCharacterDataTable:XML = §<y§.§1P§(mCharacterDataTableBin);
         if(_loc8_ || this)
         {
         }
         while(true)
         {
            while(true)
            {
               this.§<a§ = [];
               while(!(_loc8_ || characterData))
               {
               }
               if(_loc8_ || characterData)
               {
                  if(true)
                  {
                     loop7:
                     for each(characterData in mCharacterDataTable.characters.character)
                     {
                        if(_loc8_ || this)
                        {
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 while(_loc7_)
                                 {
                                 }
                                 if(!(_loc8_ || mCharacterDataTable))
                                 {
                                    break;
                                 }
                                 while(false)
                                 {
                                    continue loop9;
                                 }
                                 character = new §%1§();
                                 if(!_loc7_)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       character.§7!D§ = characterData.@id;
                                       loop13:
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             character.sId = characterData.@sid;
                                             while(true)
                                             {
                                                while(_loc8_ || character)
                                                {
                                                   §§push(characterData.@activeScale);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      scale = §§pop();
                                                      loop18:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(scale);
                                                            addr415:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr416:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(!_loc7_)
                                                                     {
                                                                        character.§!5§ = Number(scale);
                                                                        while(true)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                     addr417:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr390:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(characterData.@inactiveScale);
                                                                     continue loop17;
                                                                  }
                                                               }
                                                            }
                                                            loop37:
                                                            while(_loc8_ || mCharacterDataTable)
                                                            {
                                                               §§push(scale);
                                                               loop38:
                                                               while(!_loc7_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop39:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!(_loc7_ && character))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop52:
                                                                              while(true)
                                                                              {
                                                                                 character.§?-§ = Number(scale);
                                                                                 loop53:
                                                                                 while(true)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(characterData.@profileImageScale);
                                                                                       loop43:
                                                                                       while(!_loc7_)
                                                                                       {
                                                                                          scale = §§pop();
                                                                                          loop44:
                                                                                          while(!(_loc7_ && characterData))
                                                                                          {
                                                                                             loop45:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(scale);
                                                                                                if(_loc7_ && this)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop38;
                                                                                                }
                                                                                                addr254:
                                                                                                if(!(_loc7_ && mCharacterDataTable))
                                                                                                {
                                                                                                   continue loop39;
                                                                                                }
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr378:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(!_loc7_)
                                                                                                         {
                                                                                                            character.§#M§ = Number(scale);
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               break loop44;
                                                                                                               addr270:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc8_ || characterData))
                                                                                                                  {
                                                                                                                     continue loop32;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     character.§%!h§ = Number(scale);
                                                                                                                     loop50:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr163:
                                                                                                                        loop48:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§<a§.push(character);
                                                                                                                           addr169:
                                                                                                                           while(!_loc7_)
                                                                                                                           {
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 addr178:
                                                                                                                                 if(!(_loc7_ && mCharacterDataTable))
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || this)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && character))
                                                                                                                                       {
                                                                                                                                          if(_loc7_ && characterData)
                                                                                                                                          {
                                                                                                                                             continue loop52;
                                                                                                                                          }
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                          §§goto(addr163);
                                                                                                                                       }
                                                                                                                                       §§goto(addr270);
                                                                                                                                    }
                                                                                                                                    §§goto(addr169);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ && characterData))
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    continue loop18;
                                                                                                                                    §§goto(addr178);
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                                 addr314:
                                                                                                                              }
                                                                                                                              continue loop44;
                                                                                                                           }
                                                                                                                           addr188:
                                                                                                                           while(_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop48;
                                                                                                                                 }
                                                                                                                                 continue loop37;
                                                                                                                              }
                                                                                                                              continue loop50;
                                                                                                                           }
                                                                                                                           continue loop45;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         addr379:
                                                                                                         addr389:
                                                                                                      }
                                                                                                      addr360:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(characterData.@snapshotScale);
                                                                                                         break loop43;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop43;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr360);
                                                                                             §§goto(addr293);
                                                                                          }
                                                                                          addr293:
                                                                                       }
                                                                                       while(_loc8_)
                                                                                       {
                                                                                          scale = §§pop();
                                                                                          §§goto(addr367);
                                                                                       }
                                                                                       §§goto(addr415);
                                                                                       continue loop53;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              character.§?-§ = character.§!5§;
                                                                              §§goto(addr314);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  §§goto(addr416);
                                                               }
                                                               continue loop17;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr277);
                              }
                           }
                        }
                        §§goto(addr124);
                     }
                     if(!_loc8_)
                     {
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
   }
}
