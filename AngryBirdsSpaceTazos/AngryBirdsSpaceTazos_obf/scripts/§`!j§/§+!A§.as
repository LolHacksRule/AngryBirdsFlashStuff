package §`!j§
{
   import §"!&§.§-!M§;
   import §"!&§.§8X§;
   
   public class §+!A§ extends §2!7§
   {
       
      
      public function §+!A§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §<!P§(param1:String) : §+!A§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+!A§ = new §+!A§();
         if(_loc4_)
         {
            _loc2_.§[!j§(param1);
         }
         return _loc2_;
      }
      
      override protected function initNameHACK() : void
      {
      }
      
      override protected function calculateSpawnedObjectScores(param1:§-!M§, param2:String, param3:int) : int
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:String = null;
         var _loc7_:§8X§ = null;
         var _loc8_:§8X§ = null;
         var _loc4_:Array = [];
         var _loc5_:* = 0;
         if(_loc12_)
         {
            §§push(param2);
            if(_loc12_ || param3)
            {
               if(§§pop() == "BLOCK_ASTEROID_ICE_1")
               {
                  if(_loc12_)
                  {
                     addr45:
                     §§push(param1.getItem("BLOCK_ASTEROID_ICE_2"));
                     if(_loc12_ || param1)
                     {
                        _loc7_ = §§pop();
                        if(_loc12_)
                        {
                           _loc4_.push(_loc7_);
                           while(true)
                           {
                              addr72:
                              while(true)
                              {
                                 _loc4_.push(_loc7_);
                              }
                           }
                           addr80:
                        }
                        while(true)
                        {
                           _loc4_.push(_loc7_);
                           if(!_loc11_)
                           {
                              if(_loc11_)
                              {
                                 continue;
                              }
                              if(_loc12_)
                              {
                                 if(true)
                                 {
                                    addr117:
                                    if(param2 == "BLOCK_ASTEROID_BURNING_1")
                                    {
                                       break;
                                    }
                                    §§goto(addr192);
                                 }
                              }
                              else
                              {
                                 §§goto(addr80);
                              }
                              §§goto(addr72);
                           }
                           break;
                        }
                        _loc7_ = param1.getItem("BLOCK_ASTEROID_BURNING_PIECE_1");
                        if(!(_loc11_ && param2))
                        {
                           _loc4_.push(_loc7_);
                           loop4:
                           while(true)
                           {
                              addr146:
                              while(true)
                              {
                                 _loc4_.push(_loc7_);
                                 addr150:
                                 while(_loc12_)
                                 {
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           _loc4_.push(_loc7_);
                           if(_loc12_ || param1)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr150);
                        }
                        _loc7_ = param1.getItem("BLOCK_ASTEROID_BURNING_PIECE_2");
                        if(_loc12_)
                        {
                           _loc4_.push(_loc7_);
                        }
                        _loc7_ = param1.getItem("BLOCK_ASTEROID_BURNING_PIECE_3");
                        if(!(_loc11_ && param1))
                        {
                           _loc4_.push(_loc7_);
                        }
                        addr192:
                        for each(_loc6_ in _loc4_)
                        {
                           if(_loc8_ = param1.getItem(param2))
                           {
                              if(_loc12_ || param2)
                              {
                                 §§push(_loc5_);
                                 if(!_loc11_)
                                 {
                                    §§push(_loc8_.score);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc12_ || param3)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc12_)
                                          {
                                             addr236:
                                             _loc5_ = §§pop();
                                             if(!(_loc11_ && this))
                                             {
                                                if(isDamageAwardingScore(_loc8_))
                                                {
                                                   if(_loc11_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                addr293:
                                                §§push(_loc5_);
                                                if(!_loc11_)
                                                {
                                                   addr312:
                                                   §§push(int(§§pop() + this.calculateSpawnedObjectScores(param1,_loc6_,param3)));
                                                }
                                                _loc5_ = §§pop();
                                                continue;
                                             }
                                             §§push(_loc5_);
                                             if(_loc12_)
                                             {
                                                §§push(_loc8_.healthMax);
                                                if(_loc12_ || param1)
                                                {
                                                   §§push(§§pop() * param3);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc11_ && this))
                                                {
                                                   §§push(int(§§pop()));
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      addr285:
                                                      _loc5_ = §§pop();
                                                      if(!(_loc12_ || param3))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr293);
                                                   }
                                                }
                                             }
                                             §§goto(addr312);
                                          }
                                          §§goto(addr285);
                                       }
                                    }
                                    §§goto(addr312);
                                 }
                                 §§goto(addr236);
                              }
                           }
                           §§goto(addr293);
                        }
                        return _loc5_;
                     }
                     §§goto(addr117);
                  }
                  else
                  {
                     addr85:
                     §§push(param1.getItem("BLOCK_ASTEROID_ICE_3"));
                  }
                  _loc7_ = §§pop();
                  if(_loc12_)
                  {
                     _loc4_.push(_loc7_);
                     loop0:
                     while(true)
                     {
                        addr101:
                        while(true)
                        {
                           _loc4_.push(_loc7_);
                           continue loop0;
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr101);
                  }
               }
               else
               {
                  addr83:
                  if(param2 == "BLOCK_ASTEROID_ICE_2")
                  {
                     §§goto(addr85);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr83);
         }
         §§goto(addr45);
      }
   }
}
