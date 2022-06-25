package §"!i§
{
   public class §5>§
   {
      
      private static var sInstance:§5>§;
      
      {
         var sInstance:Boolean = true;
         var _loc2_:Boolean = false;
         if(!sInstance)
         {
         }
      }
      
      private var §=H§:Array;
      
      private var §`!'§:Array;
      
      public function §5>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               this.§=H§ = [];
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§`!'§ = [];
                     addr119:
                     if(!(_loc1_ && this))
                     {
                        continue loop1;
                     }
                  }
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               §§goto(addr99);
            }
         }
         §§goto(addr151);
      }
      
      public static function get §7!E§() : §5>§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && §5>§)
         {
         }
         loop0:
         while(true)
         {
            §§push(sInstance);
            loop1:
            do
            {
               if(§§pop())
               {
                  continue;
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(!_loc1_)
                  {
                     sInstance = new §5>§();
                     while(_loc2_ || _loc2_)
                     {
                        if(_loc2_ || §5>§)
                        {
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
            while(§§push(sInstance), !_loc2_);
            
            return §§pop();
         }
      }
      
      public static function §%^§(listA:Array, listB:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         var userID:String = null;
         if(_loc8_ || combined)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     addr43:
                     while(true)
                     {
                        addr45:
                        while(!_loc7_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc7_ && listA)
               {
                  continue;
               }
               while(true)
               {
                  if(_loc8_ || listB)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr45);
               }
               var combined:Array = listA.concat();
               if(_loc7_)
               {
               }
               loop6:
               for each(userID in listB)
               {
                  while(true)
                  {
                     do
                     {
                        if(combined.indexOf(userID) == -1)
                        {
                           if(!(_loc8_ || combined))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop6;
                     }
                     while(_loc7_ && listB);
                     
                     loop9:
                     for(; !_loc7_; while(true)
                     {
                        if(_loc8_ || listB)
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop9;
                     },if(true)
                     {
                        continue loop6;
                     },§§goto(addr99))
                     {
                        while(true)
                        {
                           combined.push(userID);
                           continue loop9;
                        }
                     }
                  }
               }
               if(!_loc8_)
               {
               }
               return combined;
               addr61:
            }
         }
         §§goto(addr61);
      }
      
      public function §[!0§(userId:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§=H§);
                  loop2:
                  while(true)
                  {
                     §§push(userId);
                     addr91:
                     loop3:
                     while(§§pop().indexOf(§§pop()) == -1)
                     {
                        loop4:
                        while(!_loc3_)
                        {
                           loop5:
                           while(!_loc3_)
                           {
                              continue loop2;
                              do
                              {
                                 if(_loc2_ || userId)
                                 {
                                    if(!(_loc3_ && userId))
                                    {
                                       continue;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              while(!(_loc2_ || this));
                              
                              break loop3;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public function §6!$§(userId:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               loop1:
               while(_loc2_)
               {
                  loop6:
                  while(true)
                  {
                     §§pop();
                     if(_loc3_ && userId)
                     {
                        continue loop1;
                     }
                     §§push(this.§`!'§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(userId);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop().indexOf(§§pop()) == -1);
                        if(_loc2_ || _loc2_)
                        {
                           addr66:
                           if(_loc2_ || _loc3_)
                           {
                              addr74:
                              §§push(Boolean(§§pop()));
                              if(_loc3_ && userId)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 continue loop6;
                                 §§goto(addr66);
                              }
                              addr105:
                           }
                           return §§pop();
                        }
                        §§goto(addr74);
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(§§pop().indexOf(§§pop()) == -1);
                           if(_loc3_)
                           {
                              continue loop6;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        addr99:
                     }
                     §§goto(addr105);
                  }
                  while(true)
                  {
                     §§goto(addr99);
                     §§goto(addr118);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr98);
         }
      }
      
      public function §3!6§(userId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && userId))
         {
            while(!(_loc3_ || this))
            {
            }
         }
         return this.§`!'§.indexOf(userId) == -1;
      }
      
      public function §87§(userId:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && userId)
         {
         }
         if(!_loc2_)
         {
         }
         while(_loc3_)
         {
         }
         return this.§`!'§.indexOf(userId) == -1;
      }
      
      public function §"M§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§=H§;
      }
      
      public function §'!X§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§`!'§;
      }
      
      public function §[F§(dataObjects:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var alreadyRequestedId:String = null;
         if(!_loc5_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc6_)
               {
               }
               if(!(_loc6_ && _loc3_))
               {
                  if(true)
                  {
                     loop3:
                     for each(alreadyRequestedId in dataObjects)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              addr95:
                              while(true)
                              {
                                 this.§[!0§(alreadyRequestedId);
                                 while(!(_loc5_ || this))
                                 {
                                 }
                                 if(_loc5_ || alreadyRequestedId)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                        }
                     }
                     if(!_loc5_)
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
      
      public function §+X§(dataObjects:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var uninstalledUIDs:String = null;
         if(_loc6_ || uninstalledUIDs)
         {
            loop0:
            while(true)
            {
               addr45:
               while(true)
               {
                  continue loop0;
               }
            }
            addr49:
         }
         while(true)
         {
            if(_loc5_)
            {
               continue;
            }
            if(_loc6_ || this)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr49);
            }
            §§goto(addr45);
         }
         loop3:
         for each(uninstalledUIDs in dataObjects)
         {
            loop4:
            while(true)
            {
               while(true)
               {
                  §§push(this.§`!'§);
                  loop6:
                  while(true)
                  {
                     §§push(uninstalledUIDs);
                     addr113:
                     while(true)
                     {
                        if(§§pop().indexOf(§§pop()) != -1)
                        {
                           continue loop3;
                        }
                        if(!_loc6_)
                        {
                        }
                        while(true)
                        {
                           continue loop6;
                        }
                     }
                  }
                  while(!(_loc5_ && dataObjects))
                  {
                     continue loop4;
                     if(_loc5_ && dataObjects)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           continue loop3;
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr129);
                  }
               }
            }
         }
         if(_loc5_ && dataObjects)
         {
         }
      }
   }
}
