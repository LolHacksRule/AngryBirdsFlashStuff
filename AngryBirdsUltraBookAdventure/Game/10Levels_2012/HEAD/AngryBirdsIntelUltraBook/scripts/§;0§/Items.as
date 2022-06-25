package §;0§
{
   import §'N§.§0d§;
   
   public class Items
   {
      
      private static var mItemDataTable:XML;
      
      {
         var mItemDataTable:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
      }
      
      private var §1§:Vector.<§,!P§> = null;
      
      private var §+l§:Vector.<String> = null;
      
      private var § !]§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     this.§&a§();
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function get §]K§() : Vector.<String>
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         return this.§+l§;
      }
      
      public function get §if§() : Vector.<§,!P§>
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         return this.§1§;
      }
      
      private function §&a§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || category)
         {
         }
         var category:XML = null;
         var categoryName:String = null;
         var item:XML = null;
         var itemObj:Item = null;
         if(_loc9_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§1§ = new Vector.<§,!P§>();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§ !]§ = new Array();
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              this.§+l§ = new Vector.<String>();
                              while(true)
                              {
                                 while(_loc9_)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(!_loc10_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                    while(!(_loc10_ && item))
                                    {
                                       continue loop2;
                                    }
                                 }
                                 continue loop5;
                                 addr44:
                                 if(!(_loc10_ && this))
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr60);
         }
      }
      
      public function get items() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§ !]§;
      }
      
      public function §4a§(category:String) : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc3_)
         {
         }
         while(_loc3_ && this)
         {
         }
         return this.§ !]§[category];
      }
      
      public function §><§(itemId:String) : Item
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc10_)
         {
         }
         var category:§,!P§ = null;
         var categoryId:* = null;
         var item:Item = null;
         if(_loc9_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc9_)
                  {
                  }
                  if(!(_loc10_ && category))
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     loop4:
                     for each(category in this.§1§)
                     {
                        if(!_loc10_)
                        {
                           if(_loc10_)
                           {
                              continue;
                           }
                        }
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              addr77:
                              addr181:
                              while(true)
                              {
                                 §§push(category.name);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop());
                                 }
                                 categoryId = §§pop();
                                 if(_loc10_ && category)
                                 {
                                    break;
                                 }
                                 if(_loc9_)
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              continue loop4;
                           }
                        }
                     }
                     if(_loc9_ || itemId)
                     {
                     }
                     return null;
                     addr43:
                  }
                  break;
               }
            }
         }
         §§goto(addr43);
      }
   }
}
