package §#!c§
{
   import §"+§.§6" §;
   import §#!o§.Item;
   import §;#§.§;?§;
   import flash.display.Sprite;
   
   public class §#!Z§ extends Sprite
   {
       
      
      public var §=W§:§!I§;
      
      public function §#!Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function §>!§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§=W§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     addr43:
                     this.§=W§.§3!p§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §[F§(param1:Array) : §!I§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         var _loc5_:* = 0;
         var _loc6_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!(_loc8_ && param1))
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc7_ || _loc2_)
                  {
                     if(_loc2_.§^w§.toUpperCase() == "CATEGORYBIRDS")
                     {
                        if(_loc7_)
                        {
                           this.§+e§(_loc2_.§9!^§,_loc2_.sId,_loc2_.§^w§,§6" §.§;!O§,110,174);
                        }
                     }
                  }
                  continue;
               }
               if(!(_loc8_ && param1))
               {
                  if(_loc7_ || _loc2_)
                  {
                     if(_loc7_)
                     {
                        §§push(0);
                        if(!_loc8_)
                        {
                           _loc5_ = §§pop();
                           if(_loc7_)
                           {
                              addr106:
                              §§push(param1);
                              if(!(_loc8_ && param1))
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(!(_loc8_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             if(_loc3_.§^w§.toUpperCase() != "CATEGORYBACKGROUNDS")
                                             {
                                                continue;
                                             }
                                             if(!(_loc7_ || _loc2_))
                                             {
                                                continue;
                                             }
                                          }
                                          this.§>!§(_loc3_.§9!^§);
                                          continue;
                                       }
                                       if(!_loc8_)
                                       {
                                          addr157:
                                          if(_loc7_ || param1)
                                          {
                                             if(!_loc8_)
                                             {
                                                addr179:
                                                _loc5_ = 0;
                                                if(_loc7_)
                                                {
                                                   addr183:
                                                   _loc6_ = param1;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc6_,_loc5_));
                                                      break loop0;
                                                   }
                                                   addr198:
                                                }
                                                addr202:
                                                return this.§=W§;
                                                addr201:
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr202);
                                    }
                                    break loop0;
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr202);
                        }
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr106);
               }
               §§goto(addr157);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc4_ = §§nextvalue(_loc5_,_loc6_);
               if(!_loc8_)
               {
                  this.§=W§.§'<§(_loc4_);
               }
               continue;
            }
            §§goto(addr200);
         }
      }
      
      public function §+e§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §!I§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:§!I§ = null;
         loop0:
         for each(_loc8_ in param4)
         {
            §§push(_loc8_.§&o§());
            if(_loc11_)
            {
               if(§§pop().§9!^§ == param1)
               {
                  if(_loc11_)
                  {
                     §§push(_loc8_.§&o§());
                     if(!_loc12_)
                     {
                        addr44:
                        §§push(param2);
                        if(!(_loc12_ && this))
                        {
                           §§pop().sId = §§pop();
                           if(_loc11_)
                           {
                              addr145:
                              _loc8_.§&o§().§^w§ = param3;
                           }
                           loop7:
                           while(true)
                           {
                              _loc8_.show(param5,param6);
                              addr141:
                              while(true)
                              {
                                 if(!param7)
                                 {
                                    while(true)
                                    {
                                       §;?§.§,K§ = _loc8_;
                                       addr135:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr132:
                                 }
                                 while(true)
                                 {
                                    this.§=W§ = _loc8_;
                                    addr126:
                                    addr83:
                                    while(!_loc11_)
                                    {
                                       continue loop7;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       if(this.numChildren <= 0)
                                       {
                                          if(_loc11_ || param1)
                                          {
                                             if(_loc11_)
                                             {
                                                this.addChild(_loc8_);
                                                while(!_loc11_)
                                                {
                                                   §§goto(addr135);
                                                }
                                                addr100:
                                                continue loop0;
                                                addr100:
                                             }
                                             else
                                             {
                                                §§goto(addr126);
                                             }
                                          }
                                          §§goto(addr100);
                                       }
                                       else
                                       {
                                          removeChildAt(0);
                                          while(true)
                                          {
                                             if(_loc11_)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr132);
                                          }
                                          addr109:
                                       }
                                       §§goto(addr135);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr135);
               }
               else
               {
                  _loc8_.hide();
                  if(_loc11_)
                  {
                     if(_loc11_)
                     {
                        if(!(_loc12_ && param2))
                        {
                           if(true)
                           {
                              continue;
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr109);
                  }
               }
               §§goto(addr100);
            }
            §§goto(addr44);
         }
         return this.§=W§;
      }
   }
}
