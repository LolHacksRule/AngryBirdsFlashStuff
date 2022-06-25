package §]_§
{
   import §<u§.§<y§;
   
   public class Items
   {
      
      private static var mItemDataTable:XML;
      
      {
         var mItemDataTable:Boolean = false;
         var _loc2_:Boolean = true;
         if(mItemDataTable)
         {
         }
      }
      
      private var §^! §:Vector.<§,v§> = null;
      
      private var §]9§:Vector.<String> = null;
      
      private var §]6§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  addr63:
                  if(!(_loc2_ && _loc1_))
                  {
                     if(_loc1_)
                     {
                        addr72:
                        if(_loc1_)
                        {
                           return;
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              §§goto(addr63);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§ !i§();
                                 continue loop3;
                              }
                              addr75:
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function get §4!3§() : Vector.<String>
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         return this.§]9§;
      }
      
      public function get §+@§() : Vector.<§,v§>
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         return this.§^! §;
      }
      
      private function § !i§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc10_)
         {
         }
         var category:XML = null;
         var categoryName:String = null;
         var item:XML = null;
         var itemObj:Item = null;
         if(_loc10_)
         {
            while(true)
            {
               while(!_loc9_)
               {
                  this.§^! § = new Vector.<§,v§>();
                  addr110:
                  if(!(_loc10_ || this))
                  {
                     continue;
                  }
                  loop5:
                  for(; !(_loc9_ && item); while(_loc10_ || item)
                  {
                     §§goto(addr47);
                  })
                  {
                     this.§]9§ = new Vector.<String>();
                     while(true)
                     {
                        continue loop5;
                        addr58:
                        if(_loc9_ && this)
                        {
                           continue;
                        }
                        if(_loc10_ || categoryName)
                        {
                           addr45:
                           if(false)
                           {
                              while(true)
                              {
                                 mItemDataTable = §<y§.§1P§(Characters.mCharacterDataTableBin);
                                 addr56:
                                 while(_loc10_)
                                 {
                                    §§goto(addr58);
                                 }
                                 continue loop5;
                                 §§goto(addr45);
                              }
                              addr47:
                           }
                           var _loc5_:int = 0;
                           var _loc6_:* = mItemDataTable.items.category;
                           addr464:
                           for each(category in _loc6_)
                           {
                              if(_loc10_)
                              {
                                 categoryName = category.@id;
                                 addr216:
                                 addr239:
                                 addr236:
                                 if(_loc10_ || item)
                                 {
                                    this.§^! §.push(new §,v§(categoryName,category.@sid));
                                    addr210:
                                    if(!_loc9_)
                                    {
                                       addr192:
                                       if(!_loc9_)
                                       {
                                          addr171:
                                          this.§]6§[categoryName] = new Array();
                                          if(_loc10_)
                                          {
                                             if(!(_loc9_ && item))
                                             {
                                                if(_loc10_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc10_ || item)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr171);
                                                            }
                                                            var _loc7_:int = 0;
                                                            if(_loc10_ || this)
                                                            {
                                                               var _loc8_:* = category.item;
                                                               addr452:
                                                               for each(item in _loc8_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        addr267:
                                                                     }
                                                                     itemObj = new Item();
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        itemObj.§7!D§ = item.@id;
                                                                        addr451:
                                                                     }
                                                                     addr431:
                                                                     addr449:
                                                                     if(!_loc9_)
                                                                     {
                                                                        itemObj.sId = item.@sid;
                                                                        itemObj.mName = item.@name;
                                                                        addr417:
                                                                        addr428:
                                                                        if(_loc10_)
                                                                        {
                                                                           itemObj.§-o§ = item.@anchor;
                                                                           itemObj.§[L§ = categoryName;
                                                                           addr385:
                                                                           addr402:
                                                                           addr408:
                                                                           addr411:
                                                                           if(!(_loc9_ && item))
                                                                           {
                                                                              if(_loc10_ || categoryName)
                                                                              {
                                                                                 addr378:
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(this.§]9§.indexOf(itemObj.§-o§) == -1)
                                                                                    {
                                                                                       addr356:
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!(_loc9_ && category))
                                                                                             {
                                                                                                addr368:
                                                                                                if(_loc10_ || item)
                                                                                                {
                                                                                                   this.§]9§.push(itemObj.§-o§);
                                                                                                   addr340:
                                                                                                   if(!(_loc9_ && categoryName))
                                                                                                   {
                                                                                                      addr323:
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            addr298:
                                                                                                            this.§]6§[categoryName].push(itemObj);
                                                                                                            if(_loc10_ || category)
                                                                                                            {
                                                                                                               if(!(_loc9_ && item))
                                                                                                               {
                                                                                                                  if(!(_loc9_ && category))
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && this))
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr298);
                                                                                                                        }
                                                                                                                        §§goto(addr452);
                                                                                                                     }
                                                                                                                     §§goto(addr323);
                                                                                                                  }
                                                                                                                  §§goto(addr298);
                                                                                                               }
                                                                                                               §§goto(addr356);
                                                                                                            }
                                                                                                            §§goto(addr340);
                                                                                                         }
                                                                                                         §§goto(addr431);
                                                                                                      }
                                                                                                      §§goto(addr368);
                                                                                                   }
                                                                                                   §§goto(addr385);
                                                                                                }
                                                                                                §§goto(addr402);
                                                                                             }
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                          §§goto(addr408);
                                                                                       }
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                 }
                                                                                 §§goto(addr411);
                                                                              }
                                                                              §§goto(addr449);
                                                                           }
                                                                           §§goto(addr428);
                                                                        }
                                                                        addr422:
                                                                        §§goto(addr422);
                                                                     }
                                                                     §§goto(addr451);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               addr455:
                                                               if(!(_loc9_ && item))
                                                               {
                                                                  addr463:
                                                               }
                                                               §§goto(addr464);
                                                            }
                                                            §§goto(addr455);
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr463);
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr236);
                                          }
                                          §§goto(addr463);
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr464);
                                 }
                                 addr241:
                                 §§goto(addr241);
                              }
                              §§goto(addr463);
                           }
                           if(!_loc10_)
                           {
                           }
                           return;
                        }
                        §§goto(addr56);
                     }
                  }
                  loop4:
                  while(true)
                  {
                     if(_loc10_ || this)
                     {
                        if(_loc9_)
                        {
                           break;
                        }
                        §§goto(addr110);
                     }
                     addr120:
                     while(true)
                     {
                        this.§]6§ = new Array();
                        continue loop4;
                     }
                  }
                  addr88:
                  while(true)
                  {
                     §§goto(addr120);
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      public function get items() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_ && this)
         {
         }
         return this.§]6§;
      }
      
      public function §#N§(category:String) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || category)
         {
         }
         if(!_loc3_)
         {
         }
         while(_loc2_)
         {
         }
         return this.§]6§[category];
      }
      
      public function §-`§(itemId:String) : Item
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || category)
         {
         }
         var category:§,v§ = null;
         var categoryId:* = null;
         var item:Item = null;
         if(_loc9_ || this)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc10_)
                  {
                  }
                  if(!(_loc10_ && itemId))
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     loop4:
                     for each(category in this.§^! §)
                     {
                        if(!_loc9_)
                        {
                           continue;
                        }
                        loop5:
                        while(true)
                        {
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 addr101:
                                 addr169:
                                 while(true)
                                 {
                                    §§push(category.name);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop());
                                    }
                                    categoryId = §§pop();
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 addr169:
                                 continue loop4;
                              }
                              if(!(_loc9_ || category))
                              {
                                 continue;
                              }
                              if(_loc10_)
                              {
                                 continue loop5;
                              }
                              if(false)
                              {
                                 §§goto(addr101);
                              }
                              var _loc7_:int = 0;
                              if(_loc9_)
                              {
                                 var _loc8_:* = this.§]6§[categoryId];
                                 addr163:
                                 for each(item in _loc8_)
                                 {
                                    if(item.§7!D§.toUpperCase() != itemId.toUpperCase())
                                    {
                                       §§goto(addr163);
                                    }
                                    return item;
                                 }
                              }
                              if(_loc10_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr169);
                           }
                        }
                     }
                     if(_loc9_ || this)
                     {
                     }
                     return null;
                     addr53:
                  }
                  break;
               }
            }
         }
         §§goto(addr53);
      }
   }
}
