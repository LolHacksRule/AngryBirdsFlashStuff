package §^B§
{
   import §6b§.§^9§;
   
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
      
      private var §<h§:Vector.<§1!b§> = null;
      
      private var §@6§:Vector.<String> = null;
      
      private var §4!W§:Array = null;
      
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
                     this.§&N§();
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
      
      public function get §#!h§() : Vector.<String>
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         return this.§@6§;
      }
      
      public function get §,!#§() : Vector.<§1!b§>
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         return this.§<h§;
      }
      
      private function §&N§() : void
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
                  this.§<h§ = new Vector.<§1!b§>();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§4!W§ = new Array();
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              this.§@6§ = new Vector.<String>();
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
         return this.§4!W§;
      }
      
      public function §-t§(category:String) : Array
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
         return this.§4!W§[category];
      }
      
      public function §&!i§(itemId:String) : Item
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc10_)
         {
         }
         var category:§1!b§ = null;
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
                     for each(category in this.§<h§)
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
