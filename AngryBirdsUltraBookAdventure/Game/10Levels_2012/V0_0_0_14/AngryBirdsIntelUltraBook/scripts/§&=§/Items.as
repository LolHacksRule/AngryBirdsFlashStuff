package §&=§
{
   import §6z§.§`!<§;
   
   public class Items
   {
      
      private static var §0!3§:XML;
       
      
      private var §-L§:Vector.<§>!-§> = null;
      
      private var §2!$§:Vector.<String> = null;
      
      private var §0!i§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            do
            {
               this.§`!5§();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function get §"!n§() : Vector.<String>
      {
         return this.§2!$§;
      }
      
      public function get §1K§() : Vector.<§>!-§>
      {
         return this.§-L§;
      }
      
      private function §`!5§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         if(_loc10_ || this)
         {
            this.§-L§ = new Vector.<§>!-§>();
            while(true)
            {
               this.§0!i§ = new Array();
               addr65:
               loop1:
               while(true)
               {
                  addr52:
                  while(true)
                  {
                     this.§2!$§ = new Vector.<String>();
                     continue loop1;
                  }
               }
            }
            addr72:
         }
         while(true)
         {
            §0!3§ = §`!<§.§ !0§(§0!>§.§>z§);
            if(!_loc10_)
            {
               continue;
            }
            if(!_loc9_)
            {
               if(!_loc9_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr72);
               }
               §§goto(addr52);
            }
            §§goto(addr65);
         }
         for each(_loc1_ in §0!3§.items.category)
         {
            if(_loc10_)
            {
               _loc2_ = _loc1_.@id;
               if(_loc10_ || this)
               {
                  do
                  {
                     this.§-L§.push(new §>!-§(_loc2_,_loc1_.@sid));
                     if(!_loc10_)
                     {
                        break;
                     }
                     this.§0!i§[_loc2_] = new Array();
                  }
                  while(!_loc9_);
                  
                  addr101:
               }
               continue;
            }
            while(false)
            {
               §§goto(addr101);
            }
            var _loc7_:int = 0;
            if(_loc10_)
            {
               loop7:
               for each(_loc3_ in _loc1_.item)
               {
                  (_loc4_ = new Item()).§49§ = _loc3_.@id;
                  if(!(_loc9_ && _loc2_))
                  {
                     _loc4_.sId = _loc3_.@sid;
                     while(true)
                     {
                        _loc4_.mName = _loc3_.@name;
                        loop9:
                        while(_loc10_ || _loc3_)
                        {
                           while(true)
                           {
                              _loc4_.§]!C§ = _loc3_.@anchor;
                              while(true)
                              {
                                 _loc4_.§5H§ = _loc2_;
                                 loop12:
                                 for(; _loc10_ || _loc3_; while(_loc10_ || this)
                                 {
                                    continue loop9;
                                 })
                                 {
                                    do
                                    {
                                       if(this.§2!$§.indexOf(_loc4_.§]!C§) != -1)
                                       {
                                          do
                                          {
                                             this.§0!i§[_loc2_].push(_loc4_);
                                             if(_loc9_)
                                             {
                                                continue loop12;
                                             }
                                          }
                                          while(_loc9_ && _loc2_);
                                          
                                          continue;
                                          addr166:
                                       }
                                       while(true)
                                       {
                                          this.§2!$§.push(_loc4_.§]!C§);
                                          continue loop12;
                                       }
                                    }
                                    while(false);
                                    
                                    continue loop7;
                                 }
                              }
                           }
                           if(_loc9_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr166);
                        }
                     }
                  }
                  §§goto(addr252);
               }
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§0!i§;
      }
      
      public function §#$§(param1:String) : Array
      {
         return this.§0!i§[param1];
      }
      
      public function § !`§(param1:String) : Item
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:§>!-§ = null;
         var _loc3_:* = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§-L§)
         {
            if(!(_loc10_ && _loc3_))
            {
               §§push(_loc2_.name);
               if(!_loc10_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               if(!_loc10_)
               {
                  var _loc7_:int = 0;
                  if(_loc9_ || _loc3_)
                  {
                     for each(_loc4_ in this.§0!i§[_loc3_])
                     {
                        if(_loc4_.§49§.toUpperCase() == param1.toUpperCase())
                        {
                           if(!(_loc10_ && this))
                           {
                              return _loc4_;
                           }
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
   }
}
