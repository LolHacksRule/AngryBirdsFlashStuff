package §2`§
{
   import flash.utils.Dictionary;
   
   public class §+$§
   {
       
      
      private var §,%§:§%!!§;
      
      private var §[-§:Dictionary;
      
      public function §+$§(param1:§%!!§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[-§ = new Dictionary();
         }
         do
         {
            super();
            do
            {
               this.§,%§ = param1;
            }
            while(!_loc3_);
            
         }
         while(_loc2_);
         
      }
      
      public function initializeAnimations() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         if(!_loc6_)
         {
            this.§1A§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
            loop0:
            while(true)
            {
               this.§1A§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT","SLING_HOLDER","SLING_RUBBERBAND"]);
               while(true)
               {
                  this.§1A§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                  addr65:
                  while(!(_loc6_ && _loc1_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §1A§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §;!Q§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§;!Q§ = this.§&!X§(param1,param2,param3,param4);
         if(_loc6_ || param1)
         {
            this.§,!U§(param1,_loc5_);
         }
         return _loc5_;
      }
      
      public function §for§(param1:String, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§%K§ = this.§"!F§(param1,param2);
         if(_loc5_)
         {
            this.§,!U§(param1,_loc3_);
         }
      }
      
      private function §&!X§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §;!Q§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = null;
         var _loc8_:* = NaN;
         var _loc5_:§;!Q§ = new §;!Q§(param1,this.§,%§);
         var _loc6_:int = 0;
         while(true)
         {
            if(_loc6_ >= param2.length)
            {
               if(_loc9_ || this)
               {
                  §§push(param4);
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           if(!(_loc10_ && param3))
                           {
                              _loc5_.§!m§(param4);
                              addr64:
                              if(_loc9_)
                              {
                                 break;
                              }
                              addr130:
                              while(true)
                              {
                                 addr94:
                                 while(true)
                                 {
                                    _loc5_.addFrame(_loc7_,_loc8_);
                                    addr99:
                                    while(true)
                                    {
                                       _loc6_++;
                                    }
                                 }
                              }
                              addr130:
                           }
                           while(true)
                           {
                              if(!(_loc9_ || param2))
                              {
                                 continue;
                              }
                              if(_loc9_ || param1)
                              {
                                 break;
                              }
                              loop2:
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    §§push(param3);
                                    if(!_loc10_)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc9_ || this)
                                             {
                                                addr115:
                                                §§push(param3);
                                                §§push(_loc6_);
                                                if(!_loc10_)
                                                {
                                                   §§push(Number(§§pop()[§§pop()]));
                                                   if(!_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc9_ || param3)
                                                   {
                                                      _loc8_ = §§pop();
                                                      §§goto(addr130);
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop()[§§pop()]);
                                                      addr154:
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         addr155:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                         }
                                                      }
                                                   }
                                                   addr152:
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   continue loop2;
                                                }
                                             }
                                             §§goto(addr130);
                                          }
                                          break;
                                       }
                                       addr151:
                                       while(true)
                                       {
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr94);
                           }
                           continue;
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr31);
                  }
                  §§goto(addr154);
               }
               §§goto(addr64);
            }
            else
            {
               §§push(param2);
            }
            §§goto(addr151);
         }
         addr31:
         return _loc5_;
      }
      
      private function §"!F§(param1:String, param2:Array) : §%K§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc3_:§%K§ = new §%K§(param1,this.§,%§);
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            §§push((_loc6_ = _loc4_[1]).length > 0);
            if(!(_loc12_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc11_ || this)
                  {
                     §§pop();
                     if(!(_loc12_ && param2))
                     {
                        addr103:
                        if(_loc6_[0] is Array)
                        {
                           if(_loc11_ || param2)
                           {
                              addr111:
                              _loc3_.§1A§(_loc5_,this.§"!F§(_loc5_,_loc6_));
                           }
                           continue;
                        }
                        _loc7_ = null;
                        if(!_loc12_)
                        {
                           §§push(null);
                           if(!(_loc12_ && _loc3_))
                           {
                              _loc8_ = §§pop();
                              if(!(_loc12_ && _loc3_))
                              {
                                 addr141:
                                 if(_loc4_.length > 2)
                                 {
                                    if(!(_loc11_ || param1))
                                    {
                                       continue;
                                    }
                                    _loc7_ = _loc4_[2];
                                 }
                                 if(_loc4_.length > 3)
                                 {
                                    if(_loc12_)
                                    {
                                       continue;
                                    }
                                    addr169:
                                    _loc8_ = _loc4_[3][0];
                                    if(_loc12_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              _loc3_.§1A§(_loc5_,this.§&!X§(_loc5_,_loc6_,_loc7_,_loc8_));
                              continue;
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr111);
                  }
               }
            }
            §§goto(addr103);
         }
         return _loc3_;
      }
      
      private function §,!U§(param1:String, param2:§;!Q§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§[-§[param1])
            {
               if(_loc4_ || param1)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr24);
               }
            }
            addr24:
            §§goto(addr47);
         }
         addr47:
         while(true)
         {
            this.§[-§[param1] = param2;
            if(_loc4_ || this)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §6"%§(param1:String) : §;!Q§
      {
         return this.§[-§[param1];
      }
   }
}
