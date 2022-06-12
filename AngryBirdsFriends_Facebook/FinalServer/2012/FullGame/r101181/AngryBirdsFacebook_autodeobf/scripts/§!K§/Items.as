package §!K§
{
   import §6o§.§5!C§;
   
   public class Items
   {
      
      private static var §!i§:XML;
       
      
      private var §]!z§:Vector.<§use §> = null;
      
      private var § !S§:Vector.<String> = null;
      
      private var §&!Z§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         do
         {
            this.§%!e§();
         }
         while(_loc2_ && this);
         
      }
      
      public function get §1!2§() : Vector.<String>
      {
         return this.§ !S§;
      }
      
      public function get §-S§() : Vector.<§use §>
      {
         return this.§]!z§;
      }
      
      private function §%!e§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         if(_loc9_ || this)
         {
            this.§]!z§ = new Vector.<§use §>();
            while(true)
            {
               this.§&!Z§ = new Array();
            }
            addr81:
         }
         loop1:
         while(true)
         {
            addr54:
            addr82:
            while(true)
            {
               this.§ !S§ = new Vector.<String>();
               continue loop1;
            }
            addr266:
            loop4:
            for each(_loc1_ in §!i§.items.category)
            {
               if(_loc9_ || _loc2_)
               {
                  _loc2_ = _loc1_.@id;
                  loop5:
                  while(true)
                  {
                     addr115:
                     while(true)
                     {
                        this.§]!z§.push(new §use §(_loc2_,_loc1_.@sid));
                        if(!(_loc9_ || this))
                        {
                           break;
                        }
                        continue loop5;
                     }
                     continue loop4;
                  }
               }
               while(false)
               {
                  §§goto(addr115);
               }
               var _loc7_:int = 0;
               if(_loc9_)
               {
                  loop8:
                  for each(_loc3_ in _loc1_.item)
                  {
                     (_loc4_ = new Item()).§;!Y§ = _loc3_.@id;
                     if(!(_loc10_ && _loc2_))
                     {
                        _loc4_.sId = _loc3_.@sid;
                        loop9:
                        while(true)
                        {
                           _loc4_.mName = _loc3_.@name;
                           while(true)
                           {
                              _loc4_.§=!q§ = _loc3_.@anchor;
                              loop11:
                              for(; !_loc10_; if(_loc10_ && _loc3_)
                              {
                                 continue;
                              },if(!_loc9_)
                              {
                                 continue loop9;
                              },this.§ !S§.push(_loc4_.§=!q§))
                              {
                                 _loc4_.§[C§ = _loc2_;
                                 loop12:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(this.§ !S§.indexOf(_loc4_.§=!q§) == -1)
                                       {
                                          if(_loc9_)
                                          {
                                             continue loop11;
                                          }
                                          addr227:
                                          while(true)
                                          {
                                          }
                                       }
                                       do
                                       {
                                          this.§&!Z§[_loc2_].push(_loc4_);
                                       }
                                       while(_loc10_ && _loc1_);
                                       
                                       if(_loc9_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop12;
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr227);
                  }
               }
            }
            return;
         }
      }
      
      public function get §-">§() : Array
      {
         return this.§&!Z§;
      }
      
      public function §8!=§(param1:String) : Array
      {
         return this.§&!Z§[param1];
      }
      
      public function §1!P§(param1:String) : Item
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:§use § = null;
         var _loc3_:* = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§]!z§)
         {
            if(_loc10_)
            {
               §§push(_loc2_.name);
               if(!(_loc9_ && this))
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               if(!(_loc10_ || param1))
               {
                  continue;
               }
            }
            var _loc7_:int = 0;
            if(!_loc9_)
            {
               for each(_loc4_ in this.§&!Z§[_loc3_])
               {
                  if(_loc4_.§;!Y§.toUpperCase() == param1.toUpperCase())
                  {
                     if(!(_loc9_ && param1))
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
