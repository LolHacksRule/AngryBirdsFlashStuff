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
         if(_loc1_)
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
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr48:
                     this.§=W§.§3!p§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function §[F§(param1:Array) : §!I§
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
            if(_loc8_ || this)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(!_loc7_)
                  {
                     if(_loc2_.§^w§.toUpperCase() == "CATEGORYBIRDS")
                     {
                        if(_loc8_)
                        {
                           this.§+e§(_loc2_.§9!^§,_loc2_.sId,_loc2_.§^w§,§6" §.§;!O§,110,174);
                        }
                     }
                  }
                  continue;
               }
               if(!(_loc7_ && param1))
               {
                  if(!(_loc7_ && this))
                  {
                     if(_loc8_ || _loc2_)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           _loc5_ = §§pop();
                           if(_loc8_ || _loc3_)
                           {
                              §§push(param1);
                              if(_loc8_ || this)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(_loc8_ || _loc3_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop2:
                                 while(§§pop())
                                 {
                                    _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                    if(_loc8_)
                                    {
                                       this.§=W§.§'<§(_loc4_);
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 addr213:
                                 return this.§=W§;
                                 addr212:
                                 addr211:
                                 addr152:
                                 addr210:
                              }
                              addr194:
                              _loc6_ = §§pop();
                              §§goto(addr209);
                           }
                           addr171:
                           if(_loc8_)
                           {
                              addr175:
                              _loc5_ = 0;
                              if(_loc8_ || _loc2_)
                              {
                                 §§goto(addr194);
                                 §§push(param1);
                              }
                              §§goto(addr212);
                           }
                           §§goto(addr213);
                        }
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr171);
               }
               §§goto(addr211);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(_loc8_)
               {
                  if(!(_loc7_ && this))
                  {
                     §§goto(addr171);
                  }
               }
               §§goto(addr213);
            }
            else
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(!(_loc7_ && this))
               {
                  if(_loc3_.§^w§.toUpperCase() == "CATEGORYBACKGROUNDS")
                  {
                     if(_loc8_ || _loc3_)
                     {
                        this.§>!§(_loc3_.§9!^§);
                     }
                  }
               }
               §§goto(addr152);
            }
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
                        §§push(param2);
                        if(_loc11_)
                        {
                           §§pop().sId = §§pop();
                           addr130:
                           if(_loc11_)
                           {
                              addr139:
                              §§push(_loc8_.§&o§());
                              §§push(param3);
                           }
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 this.§=W§ = _loc8_;
                                 addr121:
                                 while(true)
                                 {
                                    addr78:
                                    addr99:
                                    while(true)
                                    {
                                       if(this.numChildren <= 0)
                                       {
                                          if(_loc11_)
                                          {
                                             if(_loc11_)
                                             {
                                                if(_loc11_)
                                                {
                                                   if(_loc11_ || param2)
                                                   {
                                                      this.addChild(_loc8_);
                                                      break;
                                                   }
                                                   addr141:
                                                   while(true)
                                                   {
                                                      _loc8_.show(param5,param6);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!param7)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         §;?§.§,K§ = _loc8_;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       removeChildAt(0);
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr130:
                        }
                        §§pop().§^w§ = §§pop();
                        §§goto(addr141);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr130);
               }
               else
               {
                  _loc8_.hide();
                  if(!(_loc12_ && param2))
                  {
                     if(_loc11_)
                     {
                        if(!_loc12_)
                        {
                           if(true)
                           {
                              continue;
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr121);
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr139);
         }
         return this.§=W§;
      }
   }
}
