package §<!=§
{
   public class §@a§
   {
      
      private static var sInstance:§@a§;
      
      {
         var sInstance:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || sInstance)
         {
         }
      }
      
      private var §=!6§:Array;
      
      private var §@h§:Array;
      
      public function §@a§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               this.§=!6§ = [];
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§@h§ = [];
                     addr145:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  loop7:
                  while(_loc1_ || _loc2_)
                  {
                     if(!sInstance)
                     {
                        loop8:
                        while(true)
                        {
                           sInstance = this;
                           while(true)
                           {
                              if(!(_loc1_ || this))
                              {
                                 addr83:
                                 if(!(_loc1_ || this))
                                 {
                                    break loop8;
                                 }
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop8;
                              }
                              if(_loc2_)
                              {
                                 continue loop7;
                              }
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(_loc2_ && this)
                              {
                                 continue loop0;
                              }
                              if(_loc1_ || _loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                                 §§goto(addr145);
                              }
                           }
                           §§goto(addr133);
                        }
                        while(true)
                        {
                           continue loop7;
                           §§goto(addr83);
                        }
                        addr130:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            super();
            §§goto(addr130);
         }
         §§goto(addr106);
      }
      
      public static function get §&!'§() : §@a§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && §@a§))
         {
            while(true)
            {
               §§push(sInstance);
               §§goto(addr87);
            }
            addr92:
         }
         loop2:
         while(true)
         {
            while(true)
            {
               sInstance = new §@a§();
               while(true)
               {
                  if(_loc1_ && _loc1_)
                  {
                     continue loop2;
                  }
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr92);
               }
               addr87:
               while(true)
               {
                  if(§§pop())
                  {
                     continue;
                  }
               }
               return §§pop();
            }
         }
      }
      
      public static function §%!1§(listA:Array, listB:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         var userID:String = null;
         if(_loc8_ || combined)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(_loc8_)
                  {
                     while(true)
                     {
                        addr52:
                        while(_loc8_)
                        {
                        }
                        continue loop0;
                     }
                     if(!(_loc7_ && listA))
                     {
                        if(false)
                        {
                           §§goto(addr50);
                        }
                        var combined:Array = listA.concat();
                        §§goto(addr65);
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(!(_loc7_ && listB))
            {
               §§goto(addr41);
            }
            §§goto(addr52);
         }
         addr65:
         if(_loc8_ || §@a§)
         {
         }
         loop6:
         for each(userID in listB)
         {
            loop7:
            while(true)
            {
               addr143:
               while(true)
               {
                  if(combined.indexOf(userID) == -1)
                  {
                     continue loop7;
                  }
                  continue loop6;
               }
            }
         }
         if(_loc7_)
         {
         }
         return combined;
      }
      
      public function §,U§(userId:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            while(true)
            {
            }
            addr110:
         }
         while(true)
         {
            §§push(this.§=!6§);
            loop2:
            while(true)
            {
               §§push(userId);
               addr99:
               addr34:
               while(§§pop().indexOf(§§pop()) == -1)
               {
                  while(_loc3_)
                  {
                     continue loop2;
                  }
                  §§goto(addr110);
               }
               return;
            }
            while(!(_loc2_ && _loc2_))
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr52);
            }
         }
      }
      
      public function §<![§(userId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc2_ && this)
         {
         }
         while(true)
         {
            while(true)
            {
               §§push(this.§=!6§);
               while(true)
               {
                  §§push(userId);
                  addr80:
                  addr121:
                  while(true)
                  {
                     §§push(§§pop().indexOf(§§pop()) == -1);
                     §§goto(addr83);
                  }
                  §§push(this.§@h§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(userId);
                     if(!_loc2_)
                     {
                        §§push(§§pop().indexOf(§§pop()) == -1);
                        if(_loc3_ || this)
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr70);
                     }
                     else
                     {
                        §§goto(addr80);
                     }
                  }
                  continue;
                  return §§pop();
               }
            }
         }
      }
      
      public function §=!-§(userId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(!_loc2_)
         {
            while(_loc2_)
            {
            }
         }
         return this.§@h§.indexOf(userId) == -1;
      }
      
      public function §0w§(userId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_ || this)
         {
         }
         while(_loc2_)
         {
         }
         return this.§@h§.indexOf(userId) == -1;
      }
      
      public function §<!g§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§=!6§;
      }
      
      public function §3!E§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§@h§;
      }
      
      public function §;g§(dataObjects:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && dataObjects)
         {
         }
         var alreadyRequestedId:String = null;
         if(!_loc5_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(_loc5_)
               {
                  if(_loc5_ || this)
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
            var _loc3_:int = 0;
            loop3:
            for each(alreadyRequestedId in dataObjects)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     addr76:
                     while(true)
                     {
                        this.§,U§(alreadyRequestedId);
                        addr81:
                        while(!_loc6_)
                        {
                           continue loop4;
                        }
                        continue loop5;
                     }
                     continue loop3;
                  }
               }
            }
            if(_loc5_ || _loc3_)
            {
            }
            return;
         }
      }
      
      public function §64§(dataObjects:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var uninstalledUIDs:String = null;
         if(!(_loc6_ && dataObjects))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc6_ && this)
                  {
                  }
                  if(_loc5_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc3_:int = 0;
                     loop4:
                     for each(uninstalledUIDs in dataObjects)
                     {
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§@h§);
                              loop7:
                              while(true)
                              {
                                 §§push(uninstalledUIDs);
                                 loop8:
                                 while(true)
                                 {
                                    if(§§pop().indexOf(§§pop()) != -1)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc6_ && dataObjects)
                                    {
                                    }
                                    while(true)
                                    {
                                       addr80:
                                       while(true)
                                       {
                                          §§push(this.§@h§);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(uninstalledUIDs);
                                          if(!(_loc6_ && uninstalledUIDs))
                                          {
                                             §§pop().push(§§pop());
                                             continue loop6;
                                          }
                                          continue loop8;
                                       }
                                       addr59:
                                       continue loop7;
                                       if(!(_loc5_ || uninstalledUIDs))
                                       {
                                          continue;
                                       }
                                       if(_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       if(true)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr80);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(_loc6_)
                     {
                     }
                     return;
                     addr42:
                  }
                  break;
               }
            }
         }
         §§goto(addr42);
      }
   }
}
