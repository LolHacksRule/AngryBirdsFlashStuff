package §@!`§
{
   public class §&!D§
   {
      
      private static var sInstance:§&!D§;
      
      {
         var sInstance:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §&!D§)
         {
         }
      }
      
      private var §0!9§:Array;
      
      private var §?!7§:Array;
      
      public function §&!D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               this.§0!9§ = [];
               while(true)
               {
                  addr92:
                  if(!_loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         loop2:
         while(true)
         {
            this.§?!7§ = [];
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  super();
                  loop5:
                  while(true)
                  {
                     loop6:
                     do
                     {
                        if(sInstance)
                        {
                           continue loop4;
                        }
                        addr39:
                        while(true)
                        {
                           sInstance = this;
                           addr47:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                           continue loop6;
                           addr76:
                        }
                        if(_loc2_)
                        {
                           return;
                        }
                        continue loop3;
                     }
                     while(!_loc2_);
                     
                     §§goto(addr92);
                  }
               }
            }
         }
      }
      
      public static function get §8!X§() : §&!D§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         loop0:
         while(true)
         {
            §§push(sInstance);
            do
            {
               if(!§§pop())
               {
                  if(_loc1_ || §&!D§)
                  {
                  }
                  do
                  {
                     sInstance = new §&!D§();
                     continue loop0;
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               return sInstance;
            }
            while(_loc2_);
            
            return §§pop();
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
         if(!(_loc7_ && §&!D§))
         {
            loop0:
            while(true)
            {
               addr57:
               while(true)
               {
                  addr52:
                  loop2:
                  while(!_loc7_)
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!(_loc8_ || listB))
            {
               continue;
            }
            if(_loc8_)
            {
               if(!_loc7_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr57);
               }
               §§goto(addr47);
            }
            §§goto(addr52);
         }
         var combined:Array = listA.concat();
         if(!_loc8_)
         {
         }
         loop5:
         for each(userID in listB)
         {
            loop6:
            while(true)
            {
               loop7:
               while(true)
               {
                  if(combined.indexOf(userID) != -1)
                  {
                     continue loop5;
                  }
                  loop8:
                  while(true)
                  {
                     while(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           loop10:
                           while(true)
                           {
                              combined.push(userID);
                              while(_loc8_)
                              {
                                 if(!(_loc7_ && listB))
                                 {
                                    continue loop10;
                                 }
                              }
                              continue loop8;
                           }
                           continue;
                        }
                        continue loop6;
                     }
                     continue loop7;
                  }
               }
            }
         }
         if(!_loc8_)
         {
         }
         return combined;
      }
      
      public function §01§(userId:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§0!9§);
                  while(true)
                  {
                     §§push(userId);
                     addr99:
                     while(§§pop().indexOf(§§pop()) == -1)
                     {
                        while(_loc3_)
                        {
                        }
                        continue loop1;
                     }
                     addr29:
                     return;
                     while(true)
                     {
                        §§push(this.§0!9§);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(userId);
                        if(!(_loc2_ && userId))
                        {
                           §§pop().push(§§pop());
                           while(_loc3_)
                           {
                              continue loop0;
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr29);
                              }
                              else
                              {
                                 §§goto(addr102);
                              }
                           }
                           continue;
                        }
                        §§goto(addr99);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr29);
         }
      }
      
      public function §7!b§(userId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§0!9§);
                  loop2:
                  while(true)
                  {
                     §§push(userId);
                     addr78:
                     addr60:
                     addr101:
                     while(true)
                     {
                        §§push(§§pop().indexOf(§§pop()) == -1);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc2_)
                           {
                              addr86:
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                           addr91:
                        }
                        §§goto(addr86);
                     }
                     addr60:
                     return §§pop();
                     while(true)
                     {
                        §§push(this.§?!7§);
                        if(!(_loc3_ || _loc2_))
                        {
                           continue loop2;
                        }
                        §§push(userId);
                        if(!_loc2_)
                        {
                           §§push(§§pop().indexOf(§§pop()) == -1);
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr60);
                                 §§push(Boolean(§§pop()));
                              }
                              else
                              {
                                 §§goto(addr91);
                              }
                           }
                           break;
                        }
                        §§goto(addr78);
                        §§goto(addr60);
                     }
                     §§goto(addr60);
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      public function §>1§(userId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && userId)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            while(!_loc3_)
            {
            }
         }
         return this.§?!7§.indexOf(userId) == -1;
      }
      
      public function §6d§(userId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && userId)
         {
         }
         if(_loc2_)
         {
         }
         while(_loc2_)
         {
         }
         return this.§?!7§.indexOf(userId) == -1;
      }
      
      public function §[C§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§0!9§;
      }
      
      public function §]L§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§?!7§;
      }
      
      public function §@!c§(dataObjects:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var alreadyRequestedId:String = null;
         if(!(_loc5_ && this))
         {
            loop0:
            while(true)
            {
               addr43:
               while(true)
               {
                  addr55:
                  while(_loc6_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc6_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr43);
            }
            §§goto(addr55);
         }
         loop4:
         for each(alreadyRequestedId in dataObjects)
         {
            while(true)
            {
               loop6:
               while(true)
               {
                  addr72:
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
      }
      
      public function §'!c§(dataObjects:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && uninstalledUIDs)
         {
         }
         var uninstalledUIDs:String = null;
         if(!_loc6_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc5_ && this)
               {
               }
               if(!_loc5_)
               {
                  if(true)
                  {
                     var _loc3_:int = 0;
                     loop3:
                     for each(uninstalledUIDs in dataObjects)
                     {
                        while(true)
                        {
                           loop5:
                           while(_loc6_ || dataObjects)
                           {
                              §§push(this.§?!7§);
                              loop6:
                              while(true)
                              {
                                 §§push(uninstalledUIDs);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop().indexOf(§§pop()) != -1)
                                    {
                                       continue loop3;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       loop9:
                                       while(_loc6_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§?!7§);
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             §§push(uninstalledUIDs);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§pop().push(§§pop());
                                                while(!(_loc6_ || _loc3_))
                                                {
                                                }
                                                if(!(_loc5_ && this))
                                                {
                                                   continue loop8;
                                                }
                                                continue loop9;
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(_loc5_)
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
