package §[N§
{
   import §4;§.§5n§;
   import §8!6§.Item;
   import §[!I§.§<-§;
   import flash.display.Sprite;
   
   public class §@!H§ extends Sprite
   {
       
      
      public var §7!l§:§<!b§;
      
      public function §@!H§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function §38§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§7!l§);
            if(_loc2_ || _loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().§,U§(param1);
         }
         addr44:
         if(!_loc3_)
         {
            §§push(this.§7!l§);
         }
      }
      
      public function §@!<§(param1:Array) : §<!b§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         var _loc5_:* = 0;
         var _loc6_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_ || param1)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc8_)
                  {
                     if(_loc2_.§0!R§.toUpperCase() != "CATEGORYBIRDS")
                     {
                        continue;
                     }
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                  }
                  this.§6y§(_loc2_.§@H§,_loc2_.sId,_loc2_.§0!R§,§<-§.§;!]§,110,174);
                  continue;
               }
               if(!(_loc7_ && param1))
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        addr175:
                        §§push(0);
                        if(!(_loc7_ && _loc3_))
                        {
                           _loc5_ = §§pop();
                           if(!_loc7_)
                           {
                              §§push(param1);
                              if(!_loc7_)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(_loc8_ || param1)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop2:
                                 while(§§pop())
                                 {
                                    _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                    if(_loc8_ || param1)
                                    {
                                       this.§7!l§.§1!!§(_loc4_);
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 addr213:
                                 return this.§7!l§;
                                 addr212:
                                 addr211:
                                 addr147:
                                 addr210:
                              }
                              addr189:
                              _loc6_ = §§pop();
                              §§goto(addr209);
                           }
                           addr188:
                           §§goto(addr189);
                           §§push(param1);
                        }
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           §§goto(addr188);
                        }
                        §§goto(addr212);
                     }
                  }
                  §§goto(addr213);
               }
               §§goto(addr211);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(!(_loc7_ && _loc2_))
               {
                  if(_loc8_ || _loc3_)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr175);
                        §§push(0);
                     }
                  }
               }
               §§goto(addr213);
            }
            else
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc8_ || _loc3_)
               {
                  if(_loc3_.§0!R§.toUpperCase() == "CATEGORYBACKGROUNDS")
                  {
                     if(!_loc7_)
                     {
                        this.§38§(_loc3_.§@H§);
                     }
                  }
               }
               §§goto(addr147);
            }
         }
      }
      
      public function §6y§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §<!b§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:§<!b§ = null;
         loop0:
         for each(_loc8_ in param4)
         {
            §§push(_loc8_.§^6§());
            if(!_loc12_)
            {
               if(§§pop().§@H§ == param1)
               {
                  if(!(_loc12_ && param1))
                  {
                     §§push(_loc8_.§^6§());
                     if(_loc11_ || this)
                     {
                        addr54:
                        §§push(param2);
                        if(_loc11_ || this)
                        {
                           §§pop().sId = §§pop();
                           if(_loc11_ || param1)
                           {
                              addr155:
                              _loc8_.§^6§().§0!R§ = param3;
                              loop7:
                              while(true)
                              {
                                 _loc8_.show(param5,param6);
                                 loop6:
                                 while(true)
                                 {
                                    if(!param7)
                                    {
                                       if(!_loc12_)
                                       {
                                          §5n§.§%!_§ = _loc8_;
                                          addr145:
                                          while(true)
                                          {
                                          }
                                          addr145:
                                       }
                                       §§goto(addr145);
                                    }
                                    while(true)
                                    {
                                       this.§7!l§ = _loc8_;
                                       addr134:
                                       while(true)
                                       {
                                          if(!_loc12_)
                                          {
                                             loop1:
                                             while(this.numChildren > 0)
                                             {
                                                removeChildAt(0);
                                                while(true)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             addr107:
                                             this.addChild(_loc8_);
                                             continue loop0;
                                             addr102:
                                             addr110:
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr155);
                  }
               }
               else
               {
                  _loc8_.hide();
                  if(!(_loc12_ && param2))
                  {
                     if(!_loc12_)
                     {
                        if(!_loc12_)
                        {
                           if(_loc11_)
                           {
                              if(!_loc12_)
                              {
                                 if(true)
                                 {
                                    continue;
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr54);
         }
         return this.§7!l§;
      }
   }
}
