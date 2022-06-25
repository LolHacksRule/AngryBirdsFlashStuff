package §@!`§
{
   public class §&!D§
   {
      
      private static var sInstance:§&!D§;
      
      {
         var sInstance:Boolean = false;
         var _loc2_:Boolean = true;
         if(sInstance && _loc2_)
         {
         }
      }
      
      private var §0!9§:Array;
      
      private var §?!7§:Array;
      
      public function §&!D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               this.§0!9§ = [];
               addr159:
               while(true)
               {
                  addr154:
                  while(true)
                  {
                     this.§?!7§ = [];
                     continue loop0;
                     addr111:
                     if(!(_loc1_ && _loc2_))
                     {
                        throw new Error("Can\'t create more than one instance of a singleton.");
                        addr128:
                        addr129:
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      public static function get §8!X§() : §&!D§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               §§push(sInstance);
               §§goto(addr91);
            }
            addr96:
         }
         while(true)
         {
            if(_loc2_)
            {
               continue;
            }
            if(!(_loc2_ && _loc2_))
            {
               if(_loc1_ || §&!D§)
               {
                  if(_loc1_)
                  {
                     §§goto(addr28);
                  }
                  else
                  {
                     §§goto(addr96);
                  }
                  return §§pop();
               }
               §§goto(addr93);
            }
            §§goto(addr94);
         }
      }
      
      public static function §[!d§(listA:Array, listB:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         var userID:String = null;
         if(_loc8_ || listA)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr49:
                  if(_loc8_ || combined)
                  {
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr49);
                        }
                        else
                        {
                           while(true)
                           {
                              addr45:
                              addr65:
                              while(true)
                              {
                                 continue loop4;
                              }
                              var combined:Array = listA.concat();
                              if(!_loc8_)
                              {
                              }
                              loop5:
                              for each(userID in listB)
                              {
                                 while(true)
                                 {
                                    loop7:
                                    for(; !(_loc7_ && listA); while(!(_loc7_ && combined))
                                    {
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr92);
                                    })
                                    {
                                       if(combined.indexOf(userID) != -1)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc7_ && §&!D§)
                                       {
                                       }
                                       while(true)
                                       {
                                          addr101:
                                          addr92:
                                          while(true)
                                          {
                                             combined.push(userID);
                                             continue loop7;
                                          }
                                          if(!(_loc8_ || listA))
                                          {
                                             continue;
                                          }
                                          if(true)
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr101);
                                       }
                                    }
                                 }
                              }
                              if(!_loc8_)
                              {
                              }
                              return combined;
                           }
                           addr59:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §01§(userId:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               addr79:
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               addr86:
               if(_loc3_ || _loc3_)
               {
                  if(!_loc2_)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           §§push(this.§0!9§);
                           while(true)
                           {
                              §§push(userId);
                              addr91:
                              §§goto(addr24);
                           }
                        }
                        addr98:
                     }
                     addr24:
                     while(§§pop().indexOf(§§pop()) == -1)
                     {
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     return;
                  }
                  §§goto(addr95);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr98);
      }
      
      public function §7!b§(userId:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               addr108:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               addr115:
               §§push(this.§?!7§);
               if(_loc2_)
               {
                  §§push(userId);
                  if(!(_loc3_ && userId))
                  {
                     addr41:
                     §§push(§§pop().indexOf(§§pop()) == -1);
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!(_loc2_ || userId))
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr95:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_ || userId)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr108);
                                          §§goto(addr41);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§0!9§);
                                          addr80:
                                          while(true)
                                          {
                                             §§push(userId);
                                             addr91:
                                             while(true)
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr115);
                                          }
                                       }
                                       addr105:
                                       addr118:
                                    }
                                    break;
                                 }
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr91);
               }
               §§goto(addr80);
            }
         }
         §§goto(addr118);
      }
      
      public function §>1§(userId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            while(_loc2_ && _loc3_)
            {
            }
         }
         return this.§?!7§.indexOf(userId) == -1;
      }
      
      public function §6d§(userId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            while(!_loc3_)
            {
            }
         }
         return this.§?!7§.indexOf(userId) == -1;
      }
      
      public function §[C§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc2_)
         {
         }
         return this.§0!9§;
      }
      
      public function §]L§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         return this.§?!7§;
      }
      
      public function §@!c§(dataObjects:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc3_)
         {
         }
         var alreadyRequestedId:String = null;
         if(!(_loc5_ && this))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc6_)
                  {
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     loop4:
                     for each(alreadyRequestedId in dataObjects)
                     {
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              addr84:
                              while(true)
                              {
                                 this.§01§(alreadyRequestedId);
                                 continue loop6;
                              }
                              continue loop4;
                           }
                        }
                     }
                     if(_loc6_ || alreadyRequestedId)
                     {
                     }
                     return;
                     addr48:
                  }
                  break;
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §'!c§(dataObjects:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var uninstalledUIDs:String = null;
         if(_loc6_ || _loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc5_)
                  {
                  }
                  if(_loc6_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc3_:int = 0;
                     loop4:
                     for each(uninstalledUIDs in dataObjects)
                     {
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§?!7§);
                              loop7:
                              while(true)
                              {
                                 §§push(uninstalledUIDs);
                                 addr118:
                                 while(true)
                                 {
                                    if(§§pop().indexOf(§§pop()) != -1)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc5_)
                                    {
                                    }
                                    while(true)
                                    {
                                       continue loop7;
                                       addr101:
                                       §§pop().push(§§pop());
                                       while(!_loc6_)
                                       {
                                       }
                                       if(_loc6_ || _loc3_)
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(!_loc6_)
                     {
                     }
                     return;
                     addr38:
                  }
                  break;
               }
            }
         }
         §§goto(addr38);
      }
   }
}
