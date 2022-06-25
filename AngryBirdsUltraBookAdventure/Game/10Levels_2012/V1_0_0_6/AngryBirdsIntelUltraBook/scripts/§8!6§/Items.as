package §8!6§
{
   import §"x§.§3!v§;
   
   public class Items
   {
      
      private static var §-p§:XML;
       
      
      private var §,+§:Vector.<§"!K§> = null;
      
      private var §?V§:Vector.<String> = null;
      
      private var §6!§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            do
            {
               this.§-#§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get §;!`§() : Vector.<String>
      {
         return this.§?V§;
      }
      
      public function get §]!Q§() : Vector.<§"!K§>
      {
         return this.§,+§;
      }
      
      private function §-#§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         if(!_loc9_)
         {
            this.§,+§ = new Vector.<§"!K§>();
            while(true)
            {
               this.§6!§ = new Array();
               while(_loc10_ || this)
               {
                  loop2:
                  while(true)
                  {
                     this.§?V§ = new Vector.<String>();
                     do
                     {
                        §-p§ = §3!v§.§;!-§(§-!6§.§#c§);
                     }
                     while(!_loc10_);
                     
                     if(_loc10_)
                     {
                        while(false)
                        {
                           continue loop2;
                        }
                        loop5:
                        for each(_loc1_ in §-p§.items.category)
                        {
                           if(!_loc9_)
                           {
                              _loc2_ = _loc1_.@id;
                              loop6:
                              while(true)
                              {
                                 addr101:
                                 while(true)
                                 {
                                    this.§,+§.push(new §"!K§(_loc2_,_loc1_.@sid));
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 continue loop5;
                              }
                           }
                           while(false)
                           {
                              §§goto(addr101);
                           }
                           var _loc7_:int = 0;
                           if(_loc10_)
                           {
                              for each(_loc3_ in _loc1_.item)
                              {
                                 (_loc4_ = new Item()).§@H§ = _loc3_.@id;
                                 if(_loc10_)
                                 {
                                    _loc4_.sId = _loc3_.@sid;
                                    while(true)
                                    {
                                       _loc4_.mName = _loc3_.@name;
                                       loop11:
                                       for(; !_loc9_; while(!(_loc9_ && _loc3_))
                                       {
                                          this.§?V§.push(_loc4_.§^!,§);
                                          §§goto(addr201);
                                       })
                                       {
                                          _loc4_.§^!,§ = _loc3_.@anchor;
                                          loop12:
                                          while(true)
                                          {
                                             _loc4_.§0!R§ = _loc2_;
                                             while(true)
                                             {
                                                addr181:
                                                do
                                                {
                                                   if(this.§?V§.indexOf(_loc4_.§^!,§) == -1)
                                                   {
                                                      continue loop11;
                                                   }
                                                   addr161:
                                                   while(true)
                                                   {
                                                      this.§6!§[_loc2_].push(_loc4_);
                                                      if(_loc10_)
                                                      {
                                                         if(!(_loc9_ && _loc1_))
                                                         {
                                                            break;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                while(!_loc9_);
                                                
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(false)
                                 {
                                    §§goto(addr181);
                                 }
                              }
                           }
                        }
                        return;
                        addr43:
                     }
                     break;
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function get items() : Array
      {
         return this.§6!§;
      }
      
      public function §-!h§(param1:String) : Array
      {
         return this.§6!§[param1];
      }
      
      public function §4!^§(param1:String) : Item
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§"!K§ = null;
         var _loc3_:* = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§,+§)
         {
            if(_loc9_ || param1)
            {
               §§push(_loc2_.name);
               if(_loc9_ || param1)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               if(!_loc9_)
               {
                  continue;
               }
            }
            var _loc7_:int = 0;
            if(_loc9_ || this)
            {
               for each(_loc4_ in this.§6!§[_loc3_])
               {
                  if(_loc4_.§@H§.toUpperCase() == param1.toUpperCase())
                  {
                     if(_loc9_ || param1)
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
