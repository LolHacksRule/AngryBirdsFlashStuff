package §3!@§
{
   import §<_§.§5!2§;
   import §]_§.§,v§;
   import §]_§.Item;
   
   public class ServerIdParser
   {
       
      
      public function ServerIdParser()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && this))
         {
            do
            {
               super();
               while(!_loc1_)
               {
               }
            }
            while(_loc2_);
            
         }
      }
      
      public static function §?T§(items:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         var item:Object = null;
         if(_loc8_)
         {
         }
         while(true)
         {
            while(_loc7_)
            {
               while(true)
               {
                  while(_loc8_ && items)
                  {
                  }
                  if(!(_loc8_ && items))
                  {
                     if(true)
                     {
                        §§push("");
                        if(!_loc7_)
                        {
                        }
                        var string:* = §§pop();
                        if(_loc8_ && items)
                        {
                        }
                        §§push(0);
                        if(_loc7_ || items)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     continue;
                     var i:* = §§pop();
                     if(!_loc7_)
                     {
                     }
                     loop4:
                     for each(item in items)
                     {
                        if(!_loc8_)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(i);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() > 0)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop5;
                                    }
                                    while(true)
                                    {
                                       addr201:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr230:
                                 }
                                 while(true)
                                 {
                                    §§push(string);
                                    if(!(_loc8_ && string))
                                    {
                                       §§push(§§pop() + (§+Y§(item.category) + item.sId));
                                    }
                                    if(_loc7_ || ServerIdParser)
                                    {
                                       if(!_loc8_)
                                       {
                                          string = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             addr162:
                                             addr152:
                                             while(true)
                                             {
                                                if(!(_loc7_ || items))
                                                {
                                                   break loop11;
                                                   addr126:
                                                }
                                                while(true)
                                                {
                                                   §§push(i);
                                                   if(!(_loc8_ && items))
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!(_loc7_ || string))
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop6;
                                             }
                                             while(_loc7_ || ServerIdParser)
                                             {
                                                if(!(_loc7_ || i))
                                                {
                                                   continue;
                                                }
                                                if(_loc7_)
                                                {
                                                   if(_loc7_ || string)
                                                   {
                                                      if(true)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr201);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr126);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop() + "-");
                                             addr229:
                                             while(true)
                                             {
                                                string = §§pop();
                                             }
                                          }
                                          addr226:
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr229);
                                 }
                              }
                           }
                        }
                        §§goto(addr201);
                     }
                     if(_loc7_ || i)
                     {
                     }
                     return string;
                  }
                  break;
               }
            }
         }
      }
      
      public static function §,1§(shortHand:String) : Array
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_)
         {
         }
         var itemStr:String = null;
         var ob:Item = null;
         if(!_loc9_)
         {
            while(true)
            {
               while(_loc8_)
               {
                  loop2:
                  while(true)
                  {
                     addr40:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  if(!(_loc9_ && shortHand))
                  {
                     while(true)
                     {
                        if(_loc8_ || returnArray)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr40);
                        }
                        §§goto(addr42);
                     }
                     var arr:Array = shortHand.split("-");
                     if(_loc8_ || shortHand)
                     {
                     }
                     var returnArray:Array = [];
                     if(_loc8_ || arr)
                     {
                     }
                     loop6:
                     for each(itemStr in arr)
                     {
                        loop7:
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              while(!_loc9_)
                              {
                                 if(_loc8_)
                                 {
                                    if(true)
                                    {
                                       break loop8;
                                    }
                                    continue loop8;
                                 }
                              }
                              continue loop7;
                           }
                           ob = §9_§(itemStr);
                           if(!_loc9_)
                           {
                              do
                              {
                                 if(ob)
                                 {
                                    if(_loc9_ && shortHand)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop6;
                              }
                              while(!(_loc8_ || ServerIdParser));
                              
                              loop11:
                              while(true)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    returnArray.push(ob);
                                    while(_loc9_)
                                    {
                                    }
                                    if(_loc8_ || ServerIdParser)
                                    {
                                       while(false)
                                       {
                                          continue loop12;
                                       }
                                       continue loop6;
                                       addr145:
                                    }
                                    continue loop11;
                                 }
                              }
                           }
                           §§goto(addr145);
                        }
                     }
                     if(_loc8_ || returnArray)
                     {
                     }
                     return returnArray;
                     addr56:
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public static function §9_§(shortHand:String) : Item
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc14_ && itemTag)
         {
         }
         var categoryFull:String = null;
         var itemFull:String = null;
         var category:Object = null;
         var item:Item = null;
         if(_loc13_ || itemTag)
         {
            while(true)
            {
               addr67:
               if(!(_loc13_ || ServerIdParser))
               {
                  continue;
               }
               if(_loc13_ || categoryTag)
               {
                  addr54:
                  if(_loc13_ || categoryTag)
                  {
                     if(false)
                     {
                        loop6:
                        while(true)
                        {
                           addr65:
                           while(!_loc14_)
                           {
                              §§goto(addr67);
                           }
                           loop3:
                           while(true)
                           {
                              addr82:
                              while(true)
                              {
                                 if(_loc13_)
                                 {
                                    break loop6;
                                 }
                                 break;
                              }
                              addr90:
                              while(!(_loc14_ && itemTag))
                              {
                                 continue loop3;
                              }
                              while(true)
                              {
                                 §§goto(addr90);
                              }
                           }
                           §§goto(addr54);
                        }
                        while(true)
                        {
                           if(!_loc14_)
                           {
                              §§goto(addr63);
                           }
                           break;
                           §§goto(addr54);
                        }
                        addr63:
                        §§goto(addr82);
                        addr77:
                     }
                     §§push(shortHand);
                     if(!_loc14_)
                     {
                        §§push(§§pop().substr(0,1));
                     }
                     var categoryTag:* = §§pop();
                     if(_loc14_)
                     {
                     }
                     §§push(shortHand);
                     if(_loc13_ || categoryTag)
                     {
                        §§push(§§pop().substr(1));
                     }
                     var itemTag:* = §§pop();
                     if(_loc13_ || itemTag)
                     {
                     }
                     var allItems:Array = §5!2§.§]W§().items;
                     if(_loc13_ || itemTag)
                     {
                     }
                     var _loc9_:int = 0;
                     var _loc10_:* = allItems;
                     addr268:
                     for each(category in _loc10_)
                     {
                        if(!_loc14_)
                        {
                           if(_loc13_ || ServerIdParser)
                           {
                              addr180:
                              if(_loc13_ || itemTag)
                              {
                                 addr188:
                                 var _loc11_:int = 0;
                                 if(!(_loc14_ && shortHand))
                                 {
                                    var _loc12_:* = category;
                                    addr256:
                                    for each(item in _loc12_)
                                    {
                                       if(_loc13_ || ServerIdParser)
                                       {
                                          if(item.sId != itemTag)
                                          {
                                             §§goto(addr256);
                                          }
                                       }
                                       return item;
                                    }
                                    addr259:
                                    if(_loc14_ && ServerIdParser)
                                    {
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr268);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr180);
                     }
                     if(_loc14_ && shortHand)
                     {
                     }
                     return null;
                  }
                  §§goto(addr77);
               }
               §§goto(addr65);
            }
         }
         §§goto(addr90);
      }
      
      private static function §+Y§(categoryId:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && category)
         {
         }
         var category:§,v§ = null;
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               addr44:
               while(true)
               {
                  continue loop0;
               }
            }
            addr48:
         }
         while(true)
         {
            if(_loc6_)
            {
               continue;
            }
            if(!(_loc6_ && category))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr48);
            }
            §§goto(addr44);
         }
         var _loc3_:int = 0;
         loop3:
         for each(category in §5!2§.§]W§().§+@§)
         {
            if(_loc5_)
            {
               loop4:
               while(true)
               {
                  loop5:
                  for(§§push(category.name); §§pop() == categoryId; return §§pop())
                  {
                     continue loop4;
                     while(true)
                     {
                        §§push(category.sid);
                        if(_loc5_ || categoryId)
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  continue loop3;
               }
            }
            §§goto(addr121);
         }
         §§push("");
         if(_loc5_ || category)
         {
         }
         return §§pop();
      }
   }
}
