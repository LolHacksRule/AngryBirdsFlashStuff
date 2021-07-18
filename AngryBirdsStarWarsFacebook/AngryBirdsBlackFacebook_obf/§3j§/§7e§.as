package §3j§
{
   import §+!J§.§""A§;
   import §,!k§.Assistant;
   import §1"b§.§7",§;
   import §7g§.§,!B§;
   import §87§.§?§;
   import §]"T§.§'"N§;
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import flash.geom.Rectangle;
   
   public class §7e§ extends §9#'§
   {
       
      
      public var assistant:Assistant;
      
      public var §9!O§:§,!B§;
      
      public var input:§'"N§;
      
      public var output:§?#8§;
      
      private var §#L§:DConsole;
      
      private var § 7§:Rectangle;
      
      private var §7#O§:Rectangle;
      
      public function §7e§(param1:DConsole)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§#L§ = param1;
            loop1:
            while(true)
            {
               this.§9!O§ = new §,!B§(param1);
               loop2:
               while(true)
               {
                  this.output = new §?#8§(param1);
                  loop3:
                  while(true)
                  {
                     this.input = new §'"N§(param1);
                     loop4:
                     while(true)
                     {
                        this.assistant = new Assistant(param1);
                        loop5:
                        for(; !_loc2_; if(!(_loc2_ && _loc3_))
                        {
                           continue loop3;
                        })
                        {
                           addChild(this.§9!O§);
                           loop6:
                           while(!_loc2_)
                           {
                              addChild(this.output);
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                                 addr58:
                                 loop8:
                                 while(_loc3_ || param1)
                                 {
                                    addChild(this.input);
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop8;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop5;
                           }
                           continue loop4;
                        }
                        continue loop1;
                     }
                     if(!(_loc2_ && param1))
                     {
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private function §?!#§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ 7§ = this.§7#O§.clone();
            do
            {
               this.update();
            }
            while(!_loc3_);
            
         }
      }
      
      override public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7#O§ = param1.clone();
            while(true)
            {
               this.§ 7§ = this.§7#O§.clone();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.update();
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function update() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            if(!this.§ 7§)
            {
               if(!(_loc9_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc1_:Number = this.§ 7§.height;
         var _loc2_:Number = this.§ 7§.width;
         if(!(_loc9_ && _loc3_))
         {
            §§push(0);
            if(_loc10_ || _loc2_)
            {
               _loc3_ = §§pop();
               addr62:
               §§push(0);
            }
            var _loc4_:Number = §§pop();
            var _loc5_:Number = this.§ 7§.x;
            if(!_loc9_)
            {
               §§push(Number(this.§ 7§.y));
               if(_loc10_ || _loc1_)
               {
                  _loc6_ = §§pop();
                  if(!(_loc9_ && this))
                  {
                     loop0:
                     while(true)
                     {
                        x = _loc5_;
                        if(_loc10_ || _loc3_)
                        {
                           y = _loc6_;
                           if(!(_loc9_ && this))
                           {
                              if(false)
                              {
                                 continue;
                              }
                              §§push(this.§9!O§);
                              if(_loc10_ || _loc3_)
                              {
                                 §§push(this.output);
                                 §§push(this.assistant.visible = false);
                                 if(_loc10_ || this)
                                 {
                                    var _loc8_:*;
                                    §§push(_loc8_ = §§pop());
                                 }
                                 §§pop().visible = §§pop();
                                 §§push(_loc8_);
                                 if(!(_loc9_ && this))
                                 {
                                    §§pop().visible = §§pop();
                                    if(!_loc9_)
                                    {
                                       addr159:
                                       this.§ 7§.x = this.§ 7§.y = 0;
                                       if(!(_loc9_ && _loc1_))
                                       {
                                          §§push(this.assistant);
                                          loop61:
                                          while(true)
                                          {
                                             §§pop().visible = _loc1_ > 2 * §>"!§.§6R§;
                                             addr617:
                                             loop40:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                loop30:
                                                while(true)
                                                {
                                                   §§push(3);
                                                   loop58:
                                                   while(true)
                                                   {
                                                      §§push(§>"!§.§6R§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr586:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr596:
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr597:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#L§.§="b§.§9!Y§);
                                                                        addr569:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           addr570:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr596:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§9!O§);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(true);
                                                                           addr578:
                                                                           while(true)
                                                                           {
                                                                              §§pop().visible = §§pop();
                                                                              addr579:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§9!O§);
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr575:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     addr512:
                                                                     addr323:
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.assistant);
                                                                        loop52:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop().visible)
                                                                           {
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§>"!§.§6R§);
                                                                                             if(_loc9_ && _loc1_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop58;
                                                                                             }
                                                                                             §§push(§§pop() - §§pop());
                                                                                          }
                                                                                          addr340:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop30;
                                                                                                }
                                                                                                §§push(int(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_ || _loc3_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     break loop9;
                                                                                                                  }
                                                                                                                  addr388:
                                                                                                               }
                                                                                                               loop10:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§9!O§);
                                                                                                                  if(!(_loc9_ && this))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop().visible)
                                                                                                                        {
                                                                                                                           loop11:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc10_ || _loc1_))
                                                                                                                              {
                                                                                                                                 continue loop40;
                                                                                                                              }
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                    loop12:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       addr499:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr457:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.assistant);
                                                                                                                                             addr460:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop().visible)
                                                                                                                                                {
                                                                                                                                                   loop20:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      addr463:
                                                                                                                                                      addr442:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                         addr464:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                            addr465:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop11;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc10_ || this))
                                                                                                                                                         {
                                                                                                                                                            continue loop20;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc9_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.output);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().onParentUpdate(this.§ 7§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  addr391:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc10_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           addr405:
                                                                                                                                                                           §§push(int(§§pop() + this.output.height));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop12;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr463);
                                                                                                                                                                           }
                                                                                                                                                                           addr405:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr535);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr464);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr431:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().visible = true;
                                                                                                                                                                  addr532:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§ 7§.y = _loc3_;
                                                                                                                                                                     break loop0;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr530:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr575);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr535);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§ 7§.height = _loc1_ - _loc7_ * §>"!§.§6R§;
                                                                                                                                                   §§goto(addr442);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr498:
                                                                                                                                 }
                                                                                                                                 §§goto(addr546);
                                                                                                                              }
                                                                                                                              §§goto(addr498);
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        §§goto(addr457);
                                                                                                                     }
                                                                                                                     addr478:
                                                                                                                  }
                                                                                                                  §§goto(addr551);
                                                                                                                  addr502:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr381:
                                                                                                         }
                                                                                                         §§goto(addr569);
                                                                                                      }
                                                                                                      §§goto(addr391);
                                                                                                   }
                                                                                                   §§goto(addr405);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr545);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr512);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr442);
                                                                                 }
                                                                                 §§goto(addr415);
                                                                                 continue loop52;
                                                                              }
                                                                              addr328:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§ 7§.y = _loc3_;
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 this.input.onParentUpdate(this.§ 7§);
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!(_loc9_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr280:
                                                                                                   _loc3_ = int(§§pop() + this.input.height);
                                                                                                   loop5:
                                                                                                   while(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(this.assistant);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc10_ || _loc2_))
                                                                                                            {
                                                                                                               continue loop52;
                                                                                                            }
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               continue loop61;
                                                                                                            }
                                                                                                            if(!§§pop().visible)
                                                                                                            {
                                                                                                               §§goto(addr178);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc10_ || _loc3_)
                                                                                                               {
                                                                                                                  this.§ 7§.y = _loc3_;
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               §§goto(addr431);
                                                                                                            }
                                                                                                            §§goto(addr381);
                                                                                                            addr261:
                                                                                                            §§push(this.assistant);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               addr194:
                                                                                                               §§pop().onParentUpdate(this.§ 7§);
                                                                                                               if(!(_loc10_ || _loc1_))
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  if(_loc9_ && _loc2_)
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  addr178:
                                                                                                                  return;
                                                                                                               }
                                                                                                               §§goto(addr228);
                                                                                                            }
                                                                                                            §§goto(addr460);
                                                                                                         }
                                                                                                         continue loop52;
                                                                                                      }
                                                                                                      §§goto(addr547);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§goto(addr530);
                                                                                                         §§push(this.output);
                                                                                                      }
                                                                                                      §§goto(addr597);
                                                                                                   }
                                                                                                   addr526:
                                                                                                }
                                                                                                §§goto(addr502);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr364);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr532);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr596);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr579);
                                    }
                                    §§goto(addr617);
                                 }
                                 §§goto(addr578);
                              }
                              §§goto(addr478);
                           }
                           §§goto(addr388);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr502);
                     }
                  }
                  §§goto(addr597);
               }
               §§goto(addr340);
            }
            §§goto(addr159);
         }
         §§goto(addr62);
      }
   }
}
