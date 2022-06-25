package §_-4§
{
   import §_-0BH§.§_-ZE§;
   
   public class Items
   {
      
      private static var §_-nY§:XML;
       
      
      private var §_-043§:Vector.<§_-044§> = null;
      
      private var §_-Or§:Vector.<String> = null;
      
      private var §_-057§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         do
         {
            this.§_-0-C§();
         }
         while(!_loc1_);
         
      }
      
      public function get §_-U4§() : Vector.<String>
      {
         return this.§_-Or§;
      }
      
      public function get §_-05v§() : Vector.<§_-044§>
      {
         return this.§_-043§;
      }
      
      private function §_-0-C§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         if(!_loc10_)
         {
            this.§_-043§ = new Vector.<§_-044§>();
            while(true)
            {
               this.§_-057§ = new Array();
               loop1:
               while(true)
               {
                  addr47:
                  while(true)
                  {
                     this.§_-Or§ = new Vector.<String>();
                     continue loop1;
                  }
               }
               if(_loc10_ && this)
               {
                  continue;
               }
               §_-nY§ = §_-ZE§.§_-ve§(§_-4H§.§_-mf§);
               if(_loc9_ || _loc1_)
               {
                  while(false)
                  {
                     §§goto(addr47);
                  }
                  loop5:
                  for each(_loc1_ in §_-nY§.items.category)
                  {
                     if(!(_loc10_ && _loc1_))
                     {
                        _loc2_ = _loc1_.@id;
                        while(true)
                        {
                           addr139:
                           addr120:
                           while(true)
                           {
                              this.§_-043§.push(new §_-044§(_loc2_,_loc1_.@sid));
                           }
                           if(!(_loc10_ && _loc2_))
                           {
                              if(false)
                              {
                                 §§goto(addr139);
                              }
                              var _loc7_:int = 0;
                              if(!(_loc10_ && this))
                              {
                                 loop9:
                                 for each(_loc3_ in _loc1_.item)
                                 {
                                    (_loc4_ = new Item()).§_-1h§ = _loc3_.@id;
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       _loc4_.sId = _loc3_.@sid;
                                       while(true)
                                       {
                                          _loc4_.mName = _loc3_.@name;
                                          while(!_loc10_)
                                          {
                                             _loc4_.§_-In§ = _loc3_.@anchor;
                                             while(_loc9_)
                                             {
                                                _loc4_.§_-4k§ = _loc2_;
                                             }
                                          }
                                       }
                                    }
                                    loop13:
                                    while(true)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          if(this.§_-Or§.indexOf(_loc4_.§_-In§) == -1)
                                          {
                                             if(_loc9_ || _loc3_)
                                             {
                                                this.§_-Or§.push(_loc4_.§_-In§);
                                             }
                                             loop15:
                                             while(_loc9_)
                                             {
                                                while(true)
                                                {
                                                   this.§_-057§[_loc2_].push(_loc4_);
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop15;
                                                }
                                                if(_loc10_)
                                                {
                                                   break loop14;
                                                }
                                                if(false)
                                                {
                                                   continue loop14;
                                                }
                                                continue loop9;
                                             }
                                             continue loop13;
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr251);
                                    }
                                 }
                              }
                              continue loop5;
                           }
                        }
                     }
                     while(true)
                     {
                        this.§_-057§[_loc2_] = new Array();
                        if(!(_loc9_ || _loc3_))
                        {
                           break;
                        }
                        if(!_loc9_)
                        {
                           continue;
                        }
                        §§goto(addr120);
                     }
                  }
                  return;
                  addr45:
               }
               §§goto(addr54);
            }
         }
         §§goto(addr45);
      }
      
      public function get items() : Array
      {
         return this.§_-057§;
      }
      
      public function §_-ng§(param1:String) : Array
      {
         return this.§_-057§[param1];
      }
      
      public function §_-yf§(param1:String) : Item
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:§_-044§ = null;
         var _loc3_:* = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§_-043§)
         {
            if(!(_loc9_ && param1))
            {
               §§push(_loc2_.name);
               if(_loc10_ || this)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               if(!(_loc10_ || _loc2_))
               {
                  continue;
               }
            }
            var _loc7_:int = 0;
            if(!(_loc9_ && param1))
            {
               for each(_loc4_ in this.§_-057§[_loc3_])
               {
                  if(_loc4_.§_-1h§.toUpperCase() == param1.toUpperCase())
                  {
                     if(!(_loc9_ && _loc2_))
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
