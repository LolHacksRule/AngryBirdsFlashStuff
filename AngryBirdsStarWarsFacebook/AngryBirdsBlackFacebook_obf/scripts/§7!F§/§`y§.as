package §7!F§
{
   import flash.utils.Dictionary;
   
   public class §`y§
   {
       
      
      private var §6V§:§7#5§;
      
      private var §#<§:Dictionary;
      
      public function §`y§(param1:§7#5§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§#<§ = new Dictionary();
            while(true)
            {
               super();
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§6V§ = param1;
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §0!8§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         if(!(_loc6_ && _loc1_))
         {
            this.§%#M§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
            loop0:
            while(true)
            {
               this.§%#M§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT","SLING_HOLDER","SLING_RUBBERBAND"]);
               while(true)
               {
                  this.§%#M§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                  addr97:
                  while(true)
                  {
                     this.§%#M§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]);
                     loop3:
                     while(true)
                     {
                        addr62:
                        while(true)
                        {
                           this.§%#M§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]);
                           addr70:
                           while(!_loc6_)
                           {
                           }
                           continue loop3;
                        }
                     }
                  }
                  addr46:
                  if(!(_loc6_ && this))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§%#M§("SMOKE_BUFF_SMALL",["SMOKE_BUFF_1","SMOKE_BUFF_2","SMOKE_BUFF_3"]);
            if(_loc5_ || _loc2_)
            {
               if(!_loc6_)
               {
                  §§goto(addr46);
               }
               §§goto(addr97);
            }
            §§goto(addr70);
         }
         §§goto(addr114);
      }
      
      public function §%#M§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §>"G§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§>"G§ = this.§<!Q§(param1,param2,param3,param4);
         if(!_loc6_)
         {
            this.§1",§(param1,_loc5_);
         }
         return _loc5_;
      }
      
      public function §;#L§(param1:String, param2:Array) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§%#D§ = this.§ "M§(param1,param2);
         if(!(_loc4_ && param1))
         {
            this.§1",§(param1,_loc3_);
         }
      }
      
      private function §<!Q§(param1:String, param2:Array, param3:Array = null, param4:String = null) : §>"G§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = null;
         var _loc8_:* = NaN;
         var _loc5_:§>"G§ = new §>"G§(param1,this.§6V§);
         var _loc6_:int = 0;
         loop0:
         while(true)
         {
            if(_loc6_ >= param2.length)
            {
               if(_loc9_ || this)
               {
                  if(_loc9_ || param1)
                  {
                     §§push(param4);
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || param1)
                           {
                              if(!_loc10_)
                              {
                                 if(!_loc10_)
                                 {
                                    _loc5_.§&!s§(param4);
                                    addr83:
                                    if(!_loc9_)
                                    {
                                       continue;
                                    }
                                    if(_loc9_ || param2)
                                    {
                                       break;
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          _loc5_.addFrame(_loc7_,_loc8_);
                                          addr101:
                                          while(_loc10_)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(param3);
                                                if(!_loc10_)
                                                {
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop7;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         break loop4;
                                                      }
                                                      addr151:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc10_)
                                                   {
                                                      break loop4;
                                                   }
                                                   §§push(Number(§§pop()[§§pop()]));
                                                   if(_loc9_)
                                                   {
                                                      addr124:
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         _loc8_ = §§pop();
                                                         continue loop11;
                                                      }
                                                      addr135:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         §§goto(addr124);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop()[§§pop()]);
                                                addr154:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                }
                                             }
                                          }
                                          _loc6_++;
                                          continue loop0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr135);
                                    §§goto(addr154);
                                 }
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr31);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr101);
               }
               §§goto(addr83);
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
      
      private function § "M§(param1:String, param2:Array) : §%#D§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc3_:§%#D§ = new §%#D§(param1,this.§6V§);
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_[0];
            §§push((_loc6_ = _loc4_[1]).length > 0);
            if(!_loc12_)
            {
               if(§§pop())
               {
                  if(!_loc12_)
                  {
                     addr70:
                     §§pop();
                     if(!(_loc12_ && param1))
                     {
                        addr83:
                        if(_loc6_[0] is Array)
                        {
                           if(_loc11_ || _loc3_)
                           {
                              addr101:
                              _loc3_.§%#M§(_loc5_,this.§ "M§(_loc5_,_loc6_));
                           }
                           continue;
                        }
                        _loc7_ = null;
                        if(!_loc12_)
                        {
                           §§push(null);
                           if(!(_loc12_ && param2))
                           {
                              _loc8_ = §§pop();
                              if(_loc11_)
                              {
                                 if(_loc4_.length > 2)
                                 {
                                    if(_loc12_ && this)
                                    {
                                       continue;
                                    }
                                    _loc7_ = _loc4_[2];
                                 }
                                 if(_loc4_.length > 3)
                                 {
                                    if(!_loc11_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc4_[3][0]);
                                 }
                                 _loc3_.§%#M§(_loc5_,this.§<!Q§(_loc5_,_loc6_,_loc7_,_loc8_));
                                 addr162:
                                 continue;
                              }
                              §§goto(addr162);
                           }
                           _loc8_ = §§pop();
                           if(!(_loc11_ || param1))
                           {
                              continue;
                           }
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr70);
         }
         return _loc3_;
      }
      
      private function §1",§(param1:String, param2:§>"G§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§#<§[param1])
            {
               if(!_loc3_)
               {
                  §§goto(addr65);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr34);
                  }
               }
            }
            addr34:
            while(true)
            {
               this.§#<§[param1] = param2;
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr65:
      }
      
      public function getAnimation(param1:String) : §>"G§
      {
         return this.§#<§[param1];
      }
   }
}
