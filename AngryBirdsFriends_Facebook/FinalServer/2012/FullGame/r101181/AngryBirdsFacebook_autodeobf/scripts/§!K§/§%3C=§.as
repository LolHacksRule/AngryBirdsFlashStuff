package §!K§
{
   import §6o§.§5!C§;
   
   public class §<=§
   {
      
      public static const §]!=§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §<=§))
         {
            §]!=§ = §5",§;
         }
      }
      
      private var §?">§:Array;
      
      public function §<=§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?">§ = [];
            while(true)
            {
               super();
               while(_loc1_ || _loc1_)
               {
                  this.§8!k§();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr38:
               }
            }
         }
         §§goto(addr38);
      }
      
      public function §4"3§(param1:String) : §]q§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]q§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§]!6§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               if(_loc2_.§;!Y§ == param1)
               {
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §]!6§() : Array
      {
         return this.§?">§;
      }
      
      private function §8!k§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:§]q§ = null;
         var _loc4_:* = null;
         var _loc1_:XML = §5!C§.§9G§(§]!=§);
         if(!(_loc8_ && this))
         {
            this.§?">§ = [];
         }
         loop0:
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §]q§();
            if(!(_loc8_ && _loc2_))
            {
               _loc3_.§;!Y§ = _loc2_.@id;
               loop1:
               while(true)
               {
                  _loc3_.sId = _loc2_.@sid;
                  loop2:
                  while(true)
                  {
                     §§push(_loc2_.@activeScale);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    _loc3_.§;"D§ = Number(_loc4_);
                                    addr183:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr178:
                              }
                              while(true)
                              {
                                 §§push(_loc2_.@inactiveScale);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_ && _loc3_)
                                    {
                                       break;
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 loop9:
                                 for(; !_loc8_; while(true)
                                 {
                                    §§push(_loc2_.@snapshotScale);
                                    if(!(_loc7_ || _loc2_))
                                    {
                                       break;
                                    }
                                    if(!_loc7_)
                                    {
                                       continue loop5;
                                    }
                                    _loc4_ = §§pop();
                                    §§goto(addr106);
                                 })
                                 {
                                    if(§§pop())
                                    {
                                       loop10:
                                       for(; !_loc8_; if(_loc8_ && this)
                                       {
                                          continue;
                                       },if(!_loc8_)
                                       {
                                          continue loop2;
                                       },§§goto(addr183))
                                       {
                                          _loc3_.§+h§ = Number(_loc4_);
                                          loop11:
                                          while(true)
                                          {
                                             continue loop9;
                                             addr106:
                                             while(true)
                                             {
                                                if(_loc7_ || _loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop11;
                                                addr129:
                                                this.§?">§.push(_loc3_);
                                                if(!(_loc7_ || _loc1_))
                                                {
                                                   continue;
                                                }
                                                if(!_loc8_)
                                                {
                                                   while(false)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop0;
                                                   addr80:
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr183);
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                     }
                     if(_loc8_ && _loc1_)
                     {
                        continue;
                     }
                     §§goto(addr129);
                  }
               }
            }
            §§goto(addr80);
         }
      }
   }
}
