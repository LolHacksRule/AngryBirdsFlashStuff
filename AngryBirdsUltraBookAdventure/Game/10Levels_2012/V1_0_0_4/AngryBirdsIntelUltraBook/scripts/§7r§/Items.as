package §7r§
{
   import §^_§.§,>§;
   
   public class Items
   {
      
      private static var §+!0§:XML;
       
      
      private var §%O§:Vector.<§?V§> = null;
      
      private var §[F§:Vector.<String> = null;
      
      private var §>!!§:Array = null;
      
      public function Items()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
            do
            {
               this.§'!w§();
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function get §]n§() : Vector.<String>
      {
         return this.§[F§;
      }
      
      public function get §=!b§() : Vector.<§?V§>
      {
         return this.§%O§;
      }
      
      private function §'!w§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         if(!_loc10_)
         {
            this.§%O§ = new Vector.<§?V§>();
            while(true)
            {
               this.§>!!§ = new Array();
               loop1:
               while(_loc9_ || _loc2_)
               {
                  while(true)
                  {
                     this.§[F§ = new Vector.<String>();
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §+!0§ = §,>§.§%2§(§5e§.§'!f§);
                           if(_loc9_ || _loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     §§goto(addr45);
                  }
               }
            }
         }
         addr45:
         while(false)
         {
            continue loop2;
         }
         for each(_loc1_ in §+!0§.items.category)
         {
            if(!_loc10_)
            {
               _loc2_ = _loc1_.@id;
               if(!(_loc9_ || _loc2_))
               {
                  continue;
               }
            }
            while(true)
            {
               this.§%O§.push(new §?V§(_loc2_,_loc1_.@sid));
               if(_loc10_)
               {
                  break;
               }
               this.§>!!§[_loc2_] = new Array();
               if(!(_loc10_ && this))
               {
                  if(true)
                  {
                     var _loc7_:int = 0;
                     if(_loc9_)
                     {
                        loop7:
                        for each(_loc3_ in _loc1_.item)
                        {
                           (_loc4_ = new Item()).§&!X§ = _loc3_.@id;
                           if(_loc9_ || this)
                           {
                              _loc4_.sId = _loc3_.@sid;
                              while(true)
                              {
                                 _loc4_.mName = _loc3_.@name;
                                 addr246:
                                 while(true)
                                 {
                                    _loc4_.§-^§ = _loc3_.@anchor;
                                 }
                              }
                              addr251:
                           }
                           while(true)
                           {
                              _loc4_.§@§ = _loc2_;
                              loop11:
                              while(_loc9_)
                              {
                                 do
                                 {
                                    if(this.§[F§.indexOf(_loc4_.§-^§) == -1)
                                    {
                                       if(!(_loc10_ && _loc1_))
                                       {
                                          this.§[F§.push(_loc4_.§-^§);
                                       }
                                       while(_loc9_)
                                       {
                                          if(_loc9_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr251);
                                       }
                                       §§goto(addr246);
                                       addr213:
                                    }
                                    while(true)
                                    {
                                       this.§>!!§[_loc2_].push(_loc4_);
                                       if(!(_loc10_ && this))
                                       {
                                          break;
                                       }
                                       §§goto(addr213);
                                    }
                                    if(_loc9_)
                                    {
                                       continue;
                                    }
                                    continue loop11;
                                 }
                                 while(false);
                                 
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
                  continue;
                  break;
               }
               break;
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§>!!§;
      }
      
      public function § L§(param1:String) : Array
      {
         return this.§>!!§[param1];
      }
      
      public function §1]§(param1:String) : Item
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:§?V§ = null;
         var _loc3_:* = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§%O§)
         {
            if(!(_loc9_ && this))
            {
               §§push(_loc2_.name);
               if(_loc10_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               if(_loc10_)
               {
                  var _loc7_:int = 0;
                  if(_loc10_)
                  {
                     for each(_loc4_ in this.§>!!§[_loc3_])
                     {
                        if(_loc4_.§&!X§.toUpperCase() == param1.toUpperCase())
                        {
                           if(!(_loc9_ && _loc3_))
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
