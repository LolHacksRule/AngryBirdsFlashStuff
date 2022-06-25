package §`!0§
{
   import §;0§.§,!P§;
   import §;0§.Item;
   import §[c§.§5!?§;
   
   public class ServerIdParser
   {
       
      
      public function ServerIdParser()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
            do
            {
               super();
               while(_loc1_ && _loc1_)
               {
               }
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public static function §'! §(items:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         var item:Object = null;
         if(!_loc8_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr41:
                  while(true)
                  {
                     while(!_loc7_)
                     {
                     }
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr41);
         }
         §§push("");
         if(_loc7_ || items)
         {
         }
         var string:* = §§pop();
         if(_loc8_)
         {
         }
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         if(_loc8_)
         {
         }
         for each(item in items)
         {
            if(!_loc8_)
            {
               loop6:
               while(true)
               {
                  §§push(i);
                  loop7:
                  while(true)
                  {
                     if(§§pop() > 0)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(string);
                           addr214:
                           while(true)
                           {
                              §§push(§§pop() + "-");
                              addr217:
                              while(true)
                              {
                                 string = §§pop();
                                 loop11:
                                 while(_loc7_)
                                 {
                                    while(true)
                                    {
                                       addr184:
                                       while(true)
                                       {
                                          if(!(_loc8_ && ServerIdParser))
                                          {
                                             if(_loc7_ || ServerIdParser)
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                          continue loop11;
                                       }
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(string);
                        if(_loc7_ || ServerIdParser)
                        {
                           if(!(_loc8_ && items))
                           {
                              if(_loc7_)
                              {
                                 addr180:
                                 string = §§pop() + (§;D§(item.category) + item.sId);
                                 while(true)
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc8_ && ServerIdParser)
                                       {
                                          break;
                                          addr97:
                                       }
                                       while(true)
                                       {
                                          §§push(i);
                                          if(_loc7_ || string)
                                          {
                                             §§push(§§pop() + 1);
                                             if(!(_loc7_ || i))
                                             {
                                                continue loop7;
                                             }
                                          }
                                          continue loop7;
                                       }
                                       continue loop7;
                                       addr133:
                                       while(true)
                                       {
                                          if(!(_loc8_ && items))
                                          {
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop14;
                                       }
                                       §§goto(addr184);
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr214);
                              }
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr180);
                     }
                  }
               }
            }
            §§goto(addr220);
         }
         if(_loc8_ && ServerIdParser)
         {
         }
         return string;
      }
      
      public static function §9!&§(shortHand:String) : Array
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_ && returnArray)
         {
         }
         var itemStr:String = null;
         var ob:Item = null;
         if(!(_loc9_ && arr))
         {
            while(true)
            {
               loop1:
               for(; !_loc9_; if(!(_loc8_ || ServerIdParser))
               {
                  continue;
               })
               {
                  loop2:
                  while(true)
                  {
                     addr50:
                     while(true)
                     {
                        addr52:
                        while(!_loc9_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(_loc8_ || shortHand)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr50);
            }
            §§goto(addr52);
         }
         var arr:Array = shortHand.split("-");
         if(_loc8_ || shortHand)
         {
         }
         var returnArray:Array = [];
         if(_loc9_)
         {
         }
         loop6:
         for each(itemStr in arr)
         {
            loop7:
            while(true)
            {
               addr118:
               addr136:
               while(true)
               {
                  continue loop7;
               }
               ob = §5^§(itemStr);
               if(_loc8_)
               {
                  while(ob)
                  {
                     addr162:
                     if(!(_loc8_ || returnArray))
                     {
                        continue;
                     }
                     if(true)
                     {
                        break;
                     }
                     loop13:
                     while(true)
                     {
                        returnArray.push(ob);
                        while(_loc9_)
                        {
                        }
                        if(_loc8_ || arr)
                        {
                           addr155:
                           if(_loc9_ && returnArray)
                           {
                              break;
                           }
                           §§goto(addr162);
                        }
                        addr192:
                        while(true)
                        {
                           continue loop13;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr192);
                        §§goto(addr155);
                     }
                     addr191:
                  }
                  continue loop6;
               }
               §§goto(addr191);
            }
         }
         if(_loc8_ || ServerIdParser)
         {
         }
         return returnArray;
      }
      
      public static function §5^§(shortHand:String) : Item
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || itemTag)
         {
         }
         var categoryFull:String = null;
         var itemFull:String = null;
         var category:Object = null;
         var item:Item = null;
         if(_loc13_ || shortHand)
         {
            while(true)
            {
               while(_loc13_ || categoryTag)
               {
                  while(_loc13_ || ServerIdParser)
                  {
                     loop3:
                     for(; _loc13_; if(_loc14_ && itemTag)
                     {
                        continue;
                     },if(!_loc14_)
                     {
                        if(false)
                        {
                           addr51:
                           §§goto(addr98);
                        }
                        addr98:
                        while(true)
                        {
                           addr53:
                           while(true)
                           {
                              if(!_loc14_)
                              {
                                 if(!_loc13_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           continue loop4;
                        }
                        §§push(shortHand);
                        if(!_loc14_)
                        {
                           §§push(§§pop().substr(0,1));
                        }
                        var categoryTag:* = §§pop();
                        if(!_loc13_)
                        {
                        }
                        §§push(shortHand);
                        if(!(_loc14_ && categoryTag))
                        {
                           §§push(§§pop().substr(1));
                        }
                        var itemTag:* = §§pop();
                        if(_loc13_ || categoryTag)
                        {
                        }
                        var allItems:Array = §5!?§.§'%§().items;
                        if(!_loc13_)
                        {
                        }
                        for each(category in allItems)
                        {
                           if(_loc13_ || categoryTag)
                           {
                              if(!_loc14_)
                              {
                                 if(!_loc13_)
                                 {
                                    continue;
                                 }
                                 var _loc11_:int = 0;
                                 if(_loc13_ || ServerIdParser)
                                 {
                                    for each(item in category)
                                    {
                                       if(_loc14_ && shortHand)
                                       {
                                          return item;
                                       }
                                       addr237:
                                       while(item.sId == itemTag)
                                       {
                                          if(_loc14_)
                                          {
                                          }
                                          if(!(_loc13_ || ServerIdParser))
                                          {
                                             continue;
                                          }
                                          §§goto(addr237);
                                       }
                                    }
                                 }
                                 if(_loc14_)
                                 {
                                    continue;
                                 }
                              }
                           }
                        }
                        if(_loc14_ && categoryTag)
                        {
                        }
                        return null;
                     },§§goto(addr53))
                     {
                        while(true)
                        {
                           addr67:
                           while(true)
                           {
                              §§goto(addr51);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private static function §;D§(categoryId:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var category:§,!P§ = null;
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               addr33:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc6_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr33);
            }
            §§goto(addr35);
         }
         var _loc3_:int = 0;
         loop4:
         for each(category in §5!?§.§'%§().§if§)
         {
            if(!_loc5_)
            {
               while(true)
               {
                  addr108:
                  if(_loc6_ || categoryId)
                  {
                  }
                  if(!_loc5_)
                  {
                     addr118:
                     §§push(category.sid);
                     if(_loc5_ && _loc3_)
                     {
                        while(§§pop() == categoryId)
                        {
                           §§goto(addr108);
                           §§goto(addr118);
                        }
                        continue loop4;
                        addr96:
                     }
                     return §§pop();
                  }
               }
               addr120:
            }
            else if(true)
            {
               continue;
            }
            while(true)
            {
               §§goto(addr96);
               §§goto(addr120);
            }
         }
         §§push("");
         if(_loc5_ && categoryId)
         {
         }
         return §§pop();
      }
   }
}
