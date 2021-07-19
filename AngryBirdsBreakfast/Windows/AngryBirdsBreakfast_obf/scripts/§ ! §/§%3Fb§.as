package § ! §
{
   import flash.utils.Dictionary;
   
   public class §?b§
   {
       
      
      private var §`8§:§5!x§;
      
      private var §2Y§:Dictionary;
      
      public function §?b§(param1:§5!x§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2Y§ = new Dictionary();
            while(true)
            {
               super();
               while(_loc3_)
               {
                  this.§`8§ = param1;
                  if(_loc3_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function initializeAnimations() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Object = null;
         var _loc2_:* = 0;
         if(!(_loc6_ && this))
         {
            this.§!!#§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
            while(true)
            {
               this.§!!#§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT","SLING_HOLDER","SLING_RUBBERBAND"]);
            }
            addr113:
         }
         while(true)
         {
            this.§!!#§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
            loop2:
            for(; _loc5_; if(!(_loc6_ && _loc1_))
            {
               if(false)
               {
                  §§goto(addr53);
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
               addr258:
               for each(_loc1_ in _loc4_)
               {
                  if(!_loc6_)
                  {
                     §§push(1);
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc2_ = §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           addr254:
                           addr255:
                           if(_loc2_ > _loc1_.count)
                           {
                              §§goto(addr258);
                           }
                           this.§!!#§(_loc1_.name + _loc2_,[_loc1_.name + _loc2_]);
                           _loc2_++;
                           addr222:
                           addr236:
                           if(!(_loc6_ && _loc1_))
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(false)
                                 {
                                    §§goto(addr222);
                                 }
                                 §§goto(addr254);
                              }
                              §§goto(addr236);
                           }
                           addr253:
                        }
                        §§goto(addr258);
                     }
                     §§goto(addr255);
                  }
                  §§goto(addr253);
               }
               if(!_loc6_)
               {
                  this.§!!#§("NUMBERS",["0","1","2","3","4","5","6","7","8","9"]);
               }
               this.§!!#§("SPARKLES",["PARTICLE_ICE_1","PARTICLE_ICE_3"]);
               addr303:
               if(!_loc5_)
               {
                  §§goto(addr303);
               }
               return;
            })
            {
               this.§!!#§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
               loop3:
               while(true)
               {
                  addr53:
                  while(true)
                  {
                     this.§!!#§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                     continue loop3;
                  }
                  continue loop2;
               }
            }
            §§goto(addr113);
         }
      }
      
      public function §!!#§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §5!v§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§5!v§ = this.§%s§(param1,param2,param3,param4);
         if(!_loc6_)
         {
            this.§#;§(param1,_loc5_);
         }
         return _loc5_;
      }
      
      public function §2O§(param1:String, param2:Array) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>!H§ = this.§7u§(param1,param2);
         if(_loc4_)
         {
            this.§#;§(param1,_loc3_);
         }
      }
      
      private function §%s§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §5!v§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = null;
         var _loc8_:* = NaN;
         var _loc5_:§5!v§ = new §5!v§(param1,this.§`8§);
         var _loc6_:int = 0;
         loop0:
         while(true)
         {
            if(_loc6_ >= param2.length)
            {
               if(!(_loc9_ && param3))
               {
                  if(!(_loc9_ && param3))
                  {
                     §§push(param4);
                     if(!(_loc9_ && param3))
                     {
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              addr67:
                              if(!_loc9_)
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    addr100:
                                    while(true)
                                    {
                                       _loc5_.addFrame(_loc7_,_loc8_);
                                       addr105:
                                       while(true)
                                       {
                                          _loc6_++;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr129:
                              }
                              while(true)
                              {
                                 if(!(_loc9_ && param2))
                                 {
                                    continue loop0;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(param3);
                                       if(!_loc9_)
                                       {
                                          if(_loc10_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc10_ || param3)
                                                {
                                                   addr121:
                                                   §§push(param3);
                                                   §§push(_loc6_);
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Number(§§pop()[§§pop()]));
                                                   if(_loc10_)
                                                   {
                                                      _loc8_ = §§pop();
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         continue loop4;
                                                      }
                                                      addr140:
                                                   }
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr100);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                break loop4;
                                             }
                                             addr157:
                                          }
                                       }
                                       §§goto(addr121);
                                    }
                                    addr161:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc10_ || param3)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§§pop()[§§pop()]);
                                    addr160:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       §§goto(addr161);
                                       continue loop10;
                                    }
                                 }
                              }
                           }
                           addr89:
                        }
                        return _loc5_;
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr105);
               }
               §§goto(addr67);
            }
            else
            {
               §§push(param2);
            }
            §§goto(addr157);
         }
         _loc5_.§6!&§(param4);
         §§goto(addr89);
      }
      
      private function §7u§(param1:String, param2:Array) : §>!H§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc3_:§>!H§ = new §>!H§(param1,this.§`8§);
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            §§push((_loc6_ = _loc4_[1]).length > 0);
            if(_loc11_)
            {
               if(§§pop())
               {
                  if(_loc11_ || param1)
                  {
                     addr75:
                     §§pop();
                     if(_loc11_)
                     {
                        addr83:
                        if(_loc6_[0] is Array)
                        {
                           if(_loc11_ || this)
                           {
                              _loc3_.§!!#§(_loc5_,this.§7u§(_loc5_,_loc6_));
                           }
                        }
                        else
                        {
                           _loc7_ = null;
                           if(_loc12_ && param1)
                           {
                              continue;
                           }
                           §§push(null);
                           if(!(_loc12_ && param2))
                           {
                              _loc8_ = §§pop();
                              if(!_loc12_)
                              {
                                 if(_loc4_.length > 2)
                                 {
                                    if(!_loc12_)
                                    {
                                       _loc7_ = _loc4_[2];
                                    }
                                    _loc3_.§!!#§(_loc5_,this.§%s§(_loc5_,_loc6_,_loc7_,_loc8_));
                                    addr162:
                                    continue;
                                 }
                                 if(_loc4_.length > 3)
                                 {
                                    if(!_loc11_)
                                    {
                                       continue;
                                    }
                                    addr154:
                                    _loc8_ = _loc4_[3][0];
                                    if(_loc12_ && this)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr154);
                        }
                     }
                     continue;
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr75);
         }
         return _loc3_;
      }
      
      private function §#;§(param1:String, param2:§5!v§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§2Y§[param1])
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
               this.§2Y§[param1] = param2;
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §#w§(param1:String) : §5!v§
      {
         return this.§2Y§[param1];
      }
   }
}
