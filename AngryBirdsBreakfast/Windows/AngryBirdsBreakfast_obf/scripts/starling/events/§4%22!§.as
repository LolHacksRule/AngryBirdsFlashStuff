package starling.events
{
   import §6![§.Stage;
   import flash.geom.Point;
   
   public class §4"!§
   {
      
      private static const §5!§:Number = 0.3;
      
      private static const §8[§:Number = 25;
      
      private static var § use§:Vector.<int>;
      
      private static var §#<§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!§ = 0.3;
            loop0:
            while(true)
            {
               §8[§ = 25;
               while(true)
               {
                  § use§ = new Vector.<int>(0);
                  loop2:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        §#<§ = new Vector.<Object>(0);
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      private var §7Y§:Stage;
      
      private var §%!=§:Number;
      
      private var §?!W§:Number;
      
      private var §=!g§:§ !k§;
      
      private var §%m§:Vector.<§4!#§>;
      
      private var §46§:Vector.<Array>;
      
      private var §2!"§:Vector.<§4!#§>;
      
      private var §`!"§:Boolean = false;
      
      private var §8" §:Boolean = false;
      
      public function §4"!§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
            if(_loc3_)
            {
               this.§7Y§ = param1;
               if(_loc3_ || _loc3_)
               {
                  this.§%!=§ = this.§?!W§ = 0;
                  if(_loc3_ || _loc2_)
                  {
                     this.§%m§ = new Vector.<§4!#§>(0);
                     loop6:
                     while(true)
                     {
                        this.§46§ = new Vector.<Array>(0);
                        addr127:
                        while(true)
                        {
                           this.§2!"§ = new Vector.<§4!#§>(0);
                           loop2:
                           while(true)
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 continue loop6;
                              }
                              while(true)
                              {
                                 §§push(this.§7Y§);
                                 addr93:
                                 while(true)
                                 {
                                    §§push(KeyboardEvent.KEY_DOWN);
                                    addr95:
                                    while(true)
                                    {
                                       §§pop().addEventListener(§§pop(),this.§=h§);
                                       addr98:
                                       while(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop6;
                        }
                     }
                     addr53:
                  }
                  while(true)
                  {
                     §§push(this.§7Y§);
                     if(!_loc4_)
                     {
                        §§push(KeyboardEvent.KEY_UP);
                        if(!_loc4_)
                        {
                           §§pop().addEventListener(§§pop(),this.§=h§);
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 break;
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr93);
                  }
                  return;
                  addr89:
               }
               §§goto(addr53);
            }
            §§goto(addr117);
         }
         §§goto(addr89);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§7Y§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr91:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§=h§);
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§4!#§ = null;
         var _loc5_:§4!#§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!(_loc10_ && this))
         {
            §§push(this);
            §§push(this.§%!=§);
            if(_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§%!=§ = §§pop();
            loop0:
            while(true)
            {
               this.§?!W§ = 0;
               loop1:
               while(this.§2!"§.length > 0)
               {
                  if(_loc11_ || _loc2_)
                  {
                     if(_loc10_)
                     {
                        continue;
                     }
                     if(!_loc11_)
                     {
                        continue loop0;
                     }
                     _loc2_ = int(this.§2!"§.length - 1);
                  }
                  loop33:
                  while(true)
                  {
                     loop34:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc10_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc11_ || _loc3_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!(_loc10_ && param1))
                                 {
                                    break loop1;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§%m§.length - 1);
                                    addr651:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr652:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr653:
                                          loop23:
                                          while(true)
                                          {
                                             addr570:
                                             addr619:
                                             loop21:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!_loc10_)
                                                {
                                                   break loop33;
                                                }
                                                addr616:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr617:
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         break loop21;
                                                      }
                                                      continue loop23;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr570);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr549:
                              }
                              else
                              {
                                 §§push(this.§%!=§);
                                 if(_loc11_ || this)
                                 {
                                    §§push(§§pop() - this.§2!"§[_loc2_].timestamp);
                                    if(_loc11_)
                                    {
                                       addr80:
                                       if(§§pop() > §5!§)
                                       {
                                          loop35:
                                          while(true)
                                          {
                                             this.§2!"§.splice(_loc2_,1);
                                             if(_loc11_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(_loc11_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(false)
                                                               {
                                                                  break loop34;
                                                               }
                                                               continue loop34;
                                                            }
                                                            continue loop35;
                                                         }
                                                         §§goto(addr619);
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                }
                                                §§goto(addr616);
                                                addr41:
                                             }
                                             break;
                                          }
                                          loop39:
                                          while(true)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(this.§46§.length > 0);
                                                if(!_loc10_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc10_ && this))
                                                      {
                                                         addr392:
                                                         §§pop();
                                                         if(_loc11_)
                                                         {
                                                            loop24:
                                                            while(true)
                                                            {
                                                               §§push(§ use§.indexOf(this.§46§[this.§46§.length - 1][0]) == -1);
                                                               addr408:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        addr416:
                                                                        §§push(0);
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           var _loc8_:* = §§pop();
                                                                           if(!(_loc10_ && _loc3_))
                                                                           {
                                                                              var _loc9_:* = §#<§;
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc9_,_loc8_));
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                       if(_loc6_.touch.target != _loc6_.target)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§77§,this.§%m§,this.§`!"§,this.§8" §));
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc11_ || this)
                                                                                    {
                                                                                       addr474:
                                                                                       if(_loc11_ || _loc2_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   addr496:
                                                                                                   _loc9_ = § use§;
                                                                                                   if(_loc11_ || this)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                         addr544:
                                                                                                         §§goto(addr546);
                                                                                                      }
                                                                                                      addr543:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push((_loc4_ = this.§`!I§(_loc3_)).target);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc11_ || this)
                                                                                                            {
                                                                                                               addr532:
                                                                                                               _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§77§,this.§%m§,this.§`!"§,this.§8" §));
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr543);
                                                                                                      }
                                                                                                      §§goto(addr532);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr546);
                                                                                             }
                                                                                             §§goto(addr652);
                                                                                          }
                                                                                          §§goto(addr619);
                                                                                       }
                                                                                       §§goto(addr546);
                                                                                    }
                                                                                    addr546:
                                                                                    addr598:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                                       continue loop18;
                                                                                    }
                                                                                    addr546:
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§goto(addr549);
                                                                                    }
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       if(this.§46§.length <= 0)
                                                                                       {
                                                                                          addr591:
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr631:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§%m§.splice(_loc2_,1);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                addr599:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc11_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc11_ || _loc2_)
                                                                                                      {
                                                                                                         §§goto(addr616);
                                                                                                         §§push(§§pop() - 1);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr652);
                                                                                                      }
                                                                                                      §§goto(addr653);
                                                                                                   }
                                                                                                   §§goto(addr616);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc11_ || _loc2_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr617);
                                                                                          }
                                                                                          addr591:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          § use§.length = §#<§.length = 0;
                                                                                          if(!(_loc11_ || _loc2_))
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                _loc9_ = this.§%m§;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!(_loc10_ && param1))
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               continue loop39;
                                                                                                            }
                                                                                                            §§goto(addr416);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr546);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr474);
                                                                                                      }
                                                                                                      §§goto(addr546);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                      §§push(_loc5_.phase);
                                                                                                      if(_loc11_ || this)
                                                                                                      {
                                                                                                         §§push(§"",§.§"!A§);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(!(_loc10_ && this))
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr219:
                                                                                                                     §§push(_loc5_.phase == §"",§.§#D§);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  _loc5_.§=9§(§"",§.§'w§);
                                                                                                               }
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr219);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr544);
                                                                                             }
                                                                                             §§goto(addr546);
                                                                                          }
                                                                                          §§goto(addr652);
                                                                                       }
                                                                                       §§goto(addr652);
                                                                                    }
                                                                                    §§goto(addr567);
                                                                                 }
                                                                                 §§goto(addr544);
                                                                              }
                                                                           }
                                                                           §§goto(addr496);
                                                                        }
                                                                        §§goto(addr652);
                                                                     }
                                                                     addr567:
                                                                     return;
                                                                  }
                                                                  _loc3_ = (_loc7_ = this.§46§.pop())[0] as int;
                                                                  §§push(Boolean(_loc4_ = this.§`!I§(_loc3_)));
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(_loc4_.phase == §"",§.HOVER);
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    addr372:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr373:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop11:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr375:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(_loc4_.target));
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      if(_loc11_ || _loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                             }
                                                                                             addr374:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr348:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §#<§.push({
                                                                                                         "touch":_loc4_,
                                                                                                         "target":_loc4_.target
                                                                                                      });
                                                                                                      addr357:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   addr349:
                                                                                                }
                                                                                                addr303:
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§#t§.apply(this,_loc7_);
                                                                                                   addr309:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr311:
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr375);
                                                                                                      }
                                                                                                      §§goto(addr357);
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr372:
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 § use§.push(_loc3_);
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr309);
                                                                                 §§goto(addr311);
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr374);
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  §§goto(addr348);
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr408);
                                                }
                                                §§goto(addr392);
                                             }
                                             addr583:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§?!W§);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() + 0.00001);
                                                }
                                                §§pop().§?!W§ = §§pop();
                                                §§goto(addr591);
                                             }
                                          }
                                       }
                                       §§goto(addr41);
                                    }
                                    §§goto(addr651);
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr616);
                           }
                           break loop33;
                        }
                        §§goto(addr616);
                     }
                  }
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc10_ && _loc3_))
                        {
                           §§goto(addr583);
                        }
                        §§goto(addr591);
                     }
                     else if(this.§%m§[_loc2_].phase == §"",§.§5!=§)
                     {
                        §§goto(addr631);
                     }
                     §§goto(addr599);
                  }
               }
               §§goto(addr598);
            }
         }
         §§goto(addr107);
      }
      
      public function §5!?§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§46§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§8" §);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc6_ || this))
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop11:
                                 while(§§pop())
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       if(!(_loc6_ || param2))
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          this.§=!g§.§#-§(param3,param4,this.§`!"§);
                                       }
                                    }
                                    while(_loc6_)
                                    {
                                       this.§46§.unshift([1,param2,this.§=!g§.§?!O§,this.§=!g§.§4!s§]);
                                       if(!_loc7_)
                                       {
                                          break loop11;
                                       }
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       §§push(param1 == 0);
                                       if(!(_loc7_ && param2))
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             addr57:
                                             if(_loc6_ || param2)
                                             {
                                                continue loop1;
                                             }
                                             addr110:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                break loop10;
                                                §§goto(addr57);
                                             }
                                          }
                                          break;
                                       }
                                       addr123:
                                       while(!_loc7_)
                                       {
                                          §§pop();
                                          continue loop10;
                                       }
                                       continue loop2;
                                    }
                                    while(_loc6_)
                                    {
                                       continue loop8;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                 }
                                 return;
                                 addr81:
                              }
                              §§goto(addr123);
                           }
                           continue;
                        }
                        §§goto(addr133);
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      private function §#t§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§4!#§;
         if((_loc6_ = this.§`!I§(param1)) == null)
         {
            if(_loc8_)
            {
               _loc6_ = new §4!#§(param1,param3,param4,param2,null);
               if(_loc8_)
               {
                  this.§ !+§(_loc6_);
                  addr47:
                  _loc6_.setPosition(param3,param4);
                  if(!(_loc7_ && this))
                  {
                     _loc6_.§=9§(param2);
                     loop10:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§%!=§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + this.§?!W§);
                        }
                        §§pop().§ Z§(§§pop());
                        loop11:
                        while(true)
                        {
                           §§push(param2);
                           loop8:
                           while(true)
                           {
                              §§push(§"",§.HOVER);
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop7:
                                 while(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             _loc6_.§5",§(this.§7Y§.hitTest(_loc5_,true));
                                             addr145:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr138:
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(_loc8_ || param2)
                                          {
                                             §§push(§"",§.§"!A§);
                                             if(_loc8_)
                                             {
                                                if(_loc8_ || param3)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc7_ && param1)
                                                         {
                                                            continue loop10;
                                                         }
                                                         this.§0Z§(_loc6_);
                                                      }
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               break loop3;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               continue loop11;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr138);
                                                         }
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   return;
                                                }
                                                continue loop9;
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc8_)
                                                {
                                                   break loop7;
                                                }
                                                if(_loc8_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop7;
                                             }
                                             addr131:
                                          }
                                          addr122:
                                          while(true)
                                          {
                                             if(!(_loc8_ || param1))
                                             {
                                                continue loop8;
                                             }
                                             §§goto(addr131);
                                             §§push(§"",§.§"!A§);
                                             continue loop6;
                                          }
                                       }
                                       continue loop9;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr122);
                                    }
                                 }
                                 §§pop();
                                 §§goto(addr154);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr145);
               }
               §§goto(addr47);
            }
            §§goto(addr154);
         }
         §§goto(addr47);
      }
      
      private function §=h§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Boolean = false;
         var _loc3_:§4!#§ = null;
         var _loc4_:§4!#§ = null;
         if(!_loc5_)
         {
            §§push(param1.keyCode);
            if(_loc6_)
            {
               §§push(17);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() == §§pop());
                  loop0:
                  while(true)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr209:
                              addr505:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(_loc6_)
                                 {
                                    §§goto(addr506);
                                 }
                                 break;
                              }
                              §§goto(addr506);
                           }
                           addr208:
                        }
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(this.§8" §);
                                    if(_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    continue loop0;
                                 }
                                 addr192:
                                 while(true)
                                 {
                                    this.§8" § = param1.type == KeyboardEvent.KEY_DOWN;
                                    while(!_loc5_)
                                    {
                                       §§push(this.§+_§);
                                       if(!_loc5_)
                                       {
                                          continue loop5;
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(!(_loc6_ || _loc2_))
                                                   {
                                                      continue loop13;
                                                   }
                                                   addr69:
                                                   §§push(this.§8" §);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr96);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr208);
                                                         }
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr141);
                                                }
                                                addr96:
                                                §§push(!§§pop());
                                                if(_loc5_ && _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(§§pop());
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§goto(addr69);
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   addr138:
                                                }
                                                loop11:
                                                while(§§pop())
                                                {
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      §§push(this.§=!g§);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§pop().visible = this.§8" §;
                                                         if(!(_loc6_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         addr124:
                                                         while(true)
                                                         {
                                                            §§push(this.§=!g§);
                                                            if(!_loc6_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            §§pop().§@!M§(this.§7Y§.stageWidth / 2,this.§7Y§.stageHeight / 2);
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               _loc3_ = this.§`!I§(0);
                                                               _loc4_ = this.§`!I§(1);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§=!g§.§#-§(_loc3_.globalX,_loc3_.globalY);
                                                                        addr501:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr494:
                                                                  }
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr490:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr491:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(_loc4_));
                                                                                    }
                                                                                 }
                                                                                 addr490:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.phase);
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§"",§.§5!=§);
                                                                                                   addr441:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      addr442:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         addr443:
                                                                                                         while(!(_loc5_ && this))
                                                                                                         {
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                   }
                                                                                                   addr284:
                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§"",§.§#D§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         addr302:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            loop37:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  this.§46§.unshift([1,§"",§.HOVER,this.§=!g§.§?!O§,this.§=!g§.§4!s§]);
                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr452:
                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 break loop11;
                                                                                                                              }
                                                                                                                              loop38:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.phase);
                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr284);
                                                                                                                                 }
                                                                                                                                 loop34:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§"",§.§"!A§);
                                                                                                                                    addr355:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          loop36:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ && param1))
                                                                                                                                             {
                                                                                                                                                addr365:
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc6_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop37;
                                                                                                                                                   }
                                                                                                                                                   loop39:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            break loop34;
                                                                                                                                                         }
                                                                                                                                                         §§pop();
                                                                                                                                                         continue loop38;
                                                                                                                                                      }
                                                                                                                                                      addr418:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            break loop39;
                                                                                                                                                         }
                                                                                                                                                         continue loop19;
                                                                                                                                                      }
                                                                                                                                                      continue loop19;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr443);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr418);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            break loop11;
                                                                                                                                                         }
                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.phase);
                                                                                                                                                            continue loop34;
                                                                                                                                                         }
                                                                                                                                                         §§push(Boolean(_loc3_));
                                                                                                                                                         addr435:
                                                                                                                                                         continue loop38;
                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         continue loop36;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr365);
                                                                                                                                                }
                                                                                                                                                continue loop20;
                                                                                                                                                addr413:
                                                                                                                                             }
                                                                                                                                             addr390:
                                                                                                                                             while(!(_loc5_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(_loc6_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop22;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr413);
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr418);
                                                                                                                                                continue loop36;
                                                                                                                                             }
                                                                                                                                             §§goto(addr442);
                                                                                                                                          }
                                                                                                                                          continue loop25;
                                                                                                                                       }
                                                                                                                                       §§goto(addr374);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr490);
                                                                                                                              }
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§46§.unshift([1,§"",§.§5!=§,_loc4_.globalX,_loc4_.globalY]);
                                                                                                                           addr463:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 break loop11;
                                                                                                                              }
                                                                                                                              §§goto(addr494);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr452:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr312:
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              this.§46§.unshift([1,§"",§.§"!A§,this.§=!g§.§?!O§,this.§=!g§.§4!s§]);
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr463);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr384);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr312);
                                                                                                            }
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§goto(addr435);
                                                                                                                  }
                                                                                                                  §§goto(addr491);
                                                                                                               }
                                                                                                               addr433:
                                                                                                            }
                                                                                                            break loop11;
                                                                                                         }
                                                                                                         §§goto(addr374);
                                                                                                      }
                                                                                                      §§goto(addr441);
                                                                                                   }
                                                                                                   §§goto(addr355);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§goto(addr390);
                                                                                             §§push(this.§8" §);
                                                                                          }
                                                                                          §§goto(addr452);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr490);
                                                                  }
                                                               }
                                                               §§goto(addr452);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr519);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr506);
                                                   }
                                                   §§goto(addr124);
                                                }
                                                §§goto(addr506);
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr519);
                                       }
                                    }
                                    §§goto(addr209);
                                 }
                              }
                              else
                              {
                                 §§goto(addr505);
                                 §§push(param1.keyCode);
                              }
                              §§goto(addr505);
                           }
                        }
                     }
                  }
               }
               addr506:
               §§push(15);
               if(!_loc5_)
               {
                  §§push(§§pop() == §§pop());
               }
               if(§§pop() == §§pop())
               {
                  if(_loc6_)
                  {
                     addr519:
                     this.§`!"§ = param1.type == KeyboardEvent.KEY_DOWN;
                  }
               }
               return;
            }
            §§goto(addr505);
         }
         §§goto(addr124);
      }
      
      private function §0Z§(param1:§4!#§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§4!#§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§4!#§ = null;
         §§push(§8[§);
         if(_loc8_)
         {
            §§push(§§pop() * §8[§);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§2!"§)
         {
            if(!(_loc9_ && param1))
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(_loc8_)
               {
                  §§push(§§pop());
                  if(!(_loc9_ && this))
                  {
                     _loc5_ = §§pop();
                     addr92:
                     §§push(_loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     addr94:
                     _loc2_ = _loc4_;
                     break;
                  }
                  continue;
               }
               §§goto(addr92);
            }
            §§goto(addr94);
         }
         if(_loc8_)
         {
            if(_loc2_)
            {
               if(_loc8_ || this)
               {
                  addr163:
                  param1.§3!]§(_loc2_.§7!L§ + 1);
               }
               while(true)
               {
                  this.§2!"§.splice(this.§2!"§.indexOf(_loc2_),1);
                  loop2:
                  while(_loc8_ || _loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        this.§2!"§.push(param1.clone());
                        if(!_loc9_)
                        {
                           break;
                        }
                        addr124:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
            else
            {
               param1.§3!]§(1);
            }
            §§goto(addr124);
         }
         §§goto(addr163);
      }
      
      private function § !+§(param1:§4!#§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§%m§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           this.§%m§.push(param1);
                           addr59:
                           if(!(_loc3_ && param1))
                           {
                              break;
                           }
                           while(true)
                           {
                              addr67:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr69:
                                 while(true)
                                 {
                                    §§push(§§pop() - 1);
                                    addr70:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                           }
                           addr104:
                        }
                        loop2:
                        while(_loc3_ && this)
                        {
                           while(true)
                           {
                              this.§%m§.splice(_loc2_,1);
                              §§goto(addr104);
                              continue loop2;
                           }
                        }
                        continue;
                     }
                     §§goto(addr59);
                  }
                  else if(this.§%m§[_loc2_].id == param1.id)
                  {
                     §§goto(addr99);
                  }
                  §§goto(addr67);
               }
               §§goto(addr69);
            }
            §§goto(addr70);
         }
      }
      
      private function §`!I§(param1:int) : §4!#§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§4!#§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§%m§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || param1))
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §+_§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=!g§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function set §+_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§+_§ != param1)
            {
               return;
            }
         }
      }
   }
}
