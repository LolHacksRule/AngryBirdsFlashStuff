package §4&§
{
   import flash.utils.Dictionary;
   
   public class §'!,§
   {
       
      
      private var §7!T§:§,C§;
      
      private var §&M§:Dictionary;
      
      public function §'!,§(param1:§,C§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&M§ = new Dictionary();
         }
         while(true)
         {
            super();
            while(_loc3_)
            {
               this.§7!T§ = param1;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function initializeAnimations() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Object = null;
         var _loc2_:* = 0;
         if(!_loc5_)
         {
            this.§["7§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
         }
         loop0:
         while(true)
         {
            this.§["7§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT","SLING_HOLDER","SLING_RUBBERBAND"]);
            while(true)
            {
               this.§["7§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
               while(true)
               {
                  if(_loc5_)
                  {
                     break;
                     addr44:
                  }
                  loop3:
                  while(true)
                  {
                     this.§["7§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                     while(_loc6_)
                     {
                        this.§["7§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                        if(!_loc5_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
                  if(_loc6_ || this)
                  {
                     if(false)
                     {
                        §§goto(addr44);
                     }
                     var _loc3_:int = 0;
                     var _loc4_:* = [{
                        "name":"TRAIL_",
                        "count":3
                     },{
                        "name":"PARTICLE_WOOD_",
                        "count":3
                     },{
                        "name":"PARTICLE_STONE_",
                        "count":3
                     },{
                        "name":"PARTICLE_ICE_",
                        "count":5
                     },{
                        "name":"PARTICLE_BIRDWHITE_",
                        "count":3
                     },{
                        "name":"PARTICLE_BIRDBLUE_",
                        "count":3
                     },{
                        "name":"PARTICLE_BIRDBLACK_",
                        "count":3
                     },{
                        "name":"PARTICLE_BIRDRED_",
                        "count":3
                     },{
                        "name":"PARTICLE_BIRDYELLOW_",
                        "count":3
                     },{
                        "name":"PARTICLE_BIRDGREEN_",
                        "count":3
                     },{
                        "name":"SMOKE_BIG_",
                        "count":6
                     },{
                        "name":"SMOKE_SMALL_",
                        "count":3
                     },{
                        "name":"EXPLOSION_",
                        "count":7
                     }];
                     addr238:
                     for each(_loc1_ in _loc4_)
                     {
                        if(_loc6_ || this)
                        {
                           §§push(1);
                           if(!(_loc5_ && _loc1_))
                           {
                              _loc2_ = §§pop();
                              if(_loc6_ || _loc3_)
                              {
                                 addr234:
                                 addr235:
                                 if(_loc2_ > _loc1_.count)
                                 {
                                    §§goto(addr238);
                                 }
                                 this.§["7§(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
                                 addr195:
                                 if(_loc6_ || _loc3_)
                                 {
                                    _loc2_++;
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(false)
                                       {
                                          §§goto(addr195);
                                       }
                                       §§goto(addr234);
                                    }
                                 }
                                 addr233:
                              }
                              §§goto(addr238);
                           }
                           §§goto(addr235);
                        }
                        §§goto(addr233);
                     }
                     if(!(_loc5_ && _loc2_))
                     {
                        this.§["7§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
                        this.§["7§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
                        addr288:
                        if(_loc5_)
                        {
                           §§goto(addr288);
                        }
                     }
                     return;
                  }
               }
            }
         }
      }
      
      public function §["7§(param1:String, param2:Array, param3:Array = null, param4:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§#r§ = this.§^"E§(param1,param2,param3,param4);
         if(!(_loc7_ && param1))
         {
            this.§^M§(param1,_loc5_);
         }
      }
      
      public function §'x§(param1:String, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]!R§ = this.§'!G§(param1,param2);
         if(_loc5_ || this)
         {
            this.§^M§(param1,_loc3_);
         }
      }
      
      private function §^"E§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §#r§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = null;
         var _loc8_:* = NaN;
         var _loc5_:§#r§ = new §#r§(param1,this.§7!T§);
         var _loc6_:int = 0;
         loop0:
         while(true)
         {
            if(_loc6_ >= param2.length)
            {
               if(_loc10_)
               {
                  if(!_loc9_)
                  {
                     if(!_loc9_)
                     {
                        if(!_loc9_)
                        {
                           §§push(param4);
                           if(!(_loc9_ && param1))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc9_ && param3))
                                 {
                                    addr66:
                                    if(_loc10_ || this)
                                    {
                                       break;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc10_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          loop3:
                                          while(true)
                                          {
                                             §§push(param3);
                                             if(_loc10_ || param3)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param3);
                                                      addr116:
                                                      while(true)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc9_ && param2)
                                                            {
                                                               break loop3;
                                                            }
                                                            §§push(Number(§§pop()[§§pop()]));
                                                            if(!_loc10_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            _loc8_ = §§pop();
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               break loop3;
                                                            }
                                                            addr152:
                                                         }
                                                      }
                                                   }
                                                   addr115:
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   _loc5_.addFrame(_loc7_,_loc8_);
                                                   addr97:
                                                   while(true)
                                                   {
                                                      if(_loc10_ || this)
                                                      {
                                                         _loc6_++;
                                                         while(!_loc10_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue loop0;
                                                         addr89:
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             §§goto(addr116);
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop()[§§pop()]);
                                             addr155:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr86:
                              }
                              return _loc5_;
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr89);
               }
               §§goto(addr66);
            }
            else
            {
               §§push(param2);
            }
            §§goto(addr152);
         }
         _loc5_.§-!6§(param4);
         §§goto(addr86);
      }
      
      private function §'!G§(param1:String, param2:Array) : §]!R§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc3_:§]!R§ = new §]!R§(param1,this.§7!T§);
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            §§push((_loc6_ = _loc4_[1]).length > 0);
            if(_loc11_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc12_)
                  {
                     addr75:
                     §§pop();
                     if(_loc11_)
                     {
                        addr93:
                        if(_loc6_[0] is Array)
                        {
                           if(!(_loc12_ && param2))
                           {
                              addr101:
                              _loc3_.§["7§(_loc5_,this.§'!G§(_loc5_,_loc6_));
                           }
                           continue;
                        }
                        _loc7_ = null;
                        if(_loc12_)
                        {
                           continue;
                        }
                        §§push(null);
                        if(_loc11_)
                        {
                           _loc8_ = §§pop();
                           if(!_loc12_)
                           {
                              if(_loc4_.length > 2)
                              {
                                 if(_loc11_)
                                 {
                                    _loc7_ = _loc4_[2];
                                 }
                                 addr144:
                                 _loc8_ = _loc4_[3][0];
                                 addr138:
                                 if(_loc11_)
                                 {
                                    _loc3_.§["7§(_loc5_,this.§^"E§(_loc5_,_loc6_,_loc7_,_loc8_));
                                    addr147:
                                 }
                                 continue;
                              }
                              if(_loc4_.length > 3)
                              {
                                 if(_loc11_)
                                 {
                                    §§goto(addr138);
                                 }
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr75);
         }
         return _loc3_;
      }
      
      private function §^M§(param1:String, param2:§#r§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(this.§&M§[param1])
            {
               if(!_loc4_)
               {
                  return;
               }
               addr65:
               while(true)
               {
               }
               addr65:
            }
            while(true)
            {
               this.§&M§[param1] = param2;
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function getAnimation(param1:String) : §#r§
      {
         return this.§&M§[param1];
      }
   }
}
