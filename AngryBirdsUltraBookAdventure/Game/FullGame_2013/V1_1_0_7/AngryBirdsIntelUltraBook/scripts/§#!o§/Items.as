package §#!o§
{
   import §1!B§.§>!s§;
   
   public class Items
   {
      
      private static var §set §:XML;
       
      
      private var §#!B§:Vector.<§>!,§> = null;
      
      private var §7!4§:Vector.<String> = null;
      
      private var §&O§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               this.§=$§();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get §9!B§() : Vector.<String>
      {
         return this.§7!4§;
      }
      
      public function get §>!J§() : Vector.<§>!,§>
      {
         return this.§#!B§;
      }
      
      private function §=$§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         if(_loc9_)
         {
            this.§#!B§ = new Vector.<§>!,§>();
            while(true)
            {
               this.§&O§ = new Array();
               addr64:
               loop1:
               while(true)
               {
                  addr51:
                  while(true)
                  {
                     this.§7!4§ = new Vector.<String>();
                     continue loop1;
                  }
               }
            }
            addr71:
         }
         while(true)
         {
            §set § = §>!s§.§;§(§>!M§.§6!J§);
            if(!_loc9_)
            {
               continue;
            }
            if(!(_loc10_ && _loc3_))
            {
               if(_loc9_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr71);
               }
               §§goto(addr51);
            }
            §§goto(addr64);
         }
         for each(_loc1_ in §set §.items.category)
         {
            if(!_loc10_)
            {
               _loc2_ = _loc1_.@id;
               if(!(_loc10_ && _loc2_))
               {
                  do
                  {
                     this.§#!B§.push(new §>!,§(_loc2_,_loc1_.@sid));
                     if(!_loc9_)
                     {
                        break;
                     }
                     this.§&O§[_loc2_] = new Array();
                  }
                  while(!_loc10_);
                  
                  addr100:
               }
               continue;
            }
            while(false)
            {
               §§goto(addr100);
            }
            var _loc7_:int = 0;
            if(!_loc10_)
            {
               loop7:
               for each(_loc3_ in _loc1_.item)
               {
                  (_loc4_ = new Item()).§9!^§ = _loc3_.@id;
                  if(!_loc10_)
                  {
                     _loc4_.sId = _loc3_.@sid;
                     loop8:
                     while(true)
                     {
                        _loc4_.mName = _loc3_.@name;
                        loop9:
                        while(true)
                        {
                           _loc4_.§>!i§ = _loc3_.@anchor;
                           while(true)
                           {
                              _loc4_.§^w§ = _loc2_;
                              loop13:
                              while(!(_loc10_ && _loc2_))
                              {
                                 if(!_loc9_)
                                 {
                                    continue loop8;
                                 }
                                 this.§7!4§.push(_loc4_.§>!i§);
                                 loop14:
                                 while(!_loc10_)
                                 {
                                    continue loop9;
                                    addr160:
                                    while(true)
                                    {
                                       this.§&O§[_loc2_].push(_loc4_);
                                       if(_loc9_ || _loc1_)
                                       {
                                          if(!(_loc10_ && _loc1_))
                                          {
                                             break;
                                          }
                                          continue loop13;
                                       }
                                       continue loop14;
                                    }
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          if(this.§7!4§.indexOf(_loc4_.§>!i§) == -1)
                                          {
                                             continue loop13;
                                          }
                                          §§goto(addr160);
                                       }
                                       addr183:
                                    }
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr183);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr229);
               }
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§&O§;
      }
      
      public function §7!§(param1:String) : Array
      {
         return this.§&O§[param1];
      }
      
      public function §`!H§(param1:String) : Item
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§>!,§ = null;
         var _loc3_:* = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§#!B§)
         {
            if(_loc9_)
            {
               §§push(_loc2_.name);
               if(_loc9_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               if(!(_loc9_ || _loc3_))
               {
                  continue;
               }
            }
            var _loc7_:int = 0;
            if(!_loc10_)
            {
               for each(_loc4_ in this.§&O§[_loc3_])
               {
                  if(_loc4_.§9!^§.toUpperCase() == param1.toUpperCase())
                  {
                     if(!(_loc10_ && _loc2_))
                     {
                        return _loc4_;
                     }
                  }
               }
            }
         }
         return null;
      }
   }
}
