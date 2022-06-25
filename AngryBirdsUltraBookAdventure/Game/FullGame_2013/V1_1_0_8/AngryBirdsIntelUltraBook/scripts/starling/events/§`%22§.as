package starling.events
{
   import §`g§.Stage;
   import flash.geom.Point;
   
   public class §`"§
   {
      
      private static const §!"$§:Number = 0.3;
      
      private static const §"%§:Number = 25;
      
      private static var §'8§:Vector.<int>;
      
      private static var §&!6§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §!"$§ = 0.3;
         }
         loop0:
         while(true)
         {
            §"%§ = 25;
            while(true)
            {
               §'8§ = new Vector.<int>(0);
               while(_loc2_ || _loc2_)
               {
                  if(_loc2_)
                  {
                     §&!6§ = new Vector.<Object>(0);
                     if(!(_loc1_ && §`"§))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private var §@e§:Stage;
      
      private var §9m§:Number;
      
      private var §-!2§:Number;
      
      private var §>"$§:§;!v§;
      
      private var §&§:Vector.<§;K§>;
      
      private var §6?§:Vector.<Array>;
      
      private var §6=§:Vector.<§;K§>;
      
      private var §1"#§:Boolean = false;
      
      private var §!p§:Boolean = false;
      
      public function §`"§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super();
            if(_loc4_ || _loc3_)
            {
               this.§@e§ = param1;
               if(_loc4_ || _loc3_)
               {
                  this.§9m§ = this.§-!2§ = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§&§ = new Vector.<§;K§>(0);
                     loop0:
                     while(true)
                     {
                        this.§6?§ = new Vector.<Array>(0);
                        addr153:
                        loop7:
                        while(true)
                        {
                           this.§6=§ = new Vector.<§;K§>(0);
                           addr136:
                           addr143:
                           while(_loc3_ && param1)
                           {
                              continue loop7;
                           }
                           while(true)
                           {
                              §§push(this.§@e§);
                              addr102:
                              while(true)
                              {
                                 §§push(KeyboardEvent.KEY_DOWN);
                                 addr104:
                                 loop4:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§[>§);
                                    addr107:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr136);
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§@e§);
                     if(!(_loc3_ && param1))
                     {
                        §§push(KeyboardEvent.KEY_UP);
                        if(_loc4_ || param1)
                        {
                           §§pop().addEventListener(§§pop(),this.§[>§);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr102);
                     §§goto(addr109);
                  }
                  return;
               }
               §§goto(addr153);
            }
            §§goto(addr143);
         }
         §§goto(addr153);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§@e§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr87:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§[>§);
                  continue loop0;
               }
            }
            addr85:
         }
         loop2:
         while(true)
         {
            §§push(this.§@e§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(KeyboardEvent.KEY_UP);
               if(!_loc1_)
               {
                  §§pop().removeEventListener(§§pop(),this.§[>§);
                  while(true)
                  {
                     §§push(this.§>"$§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(this.§>"$§);
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                           addr64:
                        }
                        return;
                     }
                     break;
                  }
                  §§pop().dispose();
                  §§goto(addr64);
               }
            }
            else
            {
               §§goto(addr85);
            }
            §§goto(addr87);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§;K§ = null;
         var _loc5_:§;K§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!(_loc11_ && param1))
         {
            §§push(this);
            §§push(this.§9m§);
            if(!_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§9m§ = §§pop();
            loop0:
            while(true)
            {
               this.§-!2§ = 0;
               loop1:
               for(; this.§6=§.length > 0; if(!(_loc11_ && this))
               {
                  continue loop0;
               })
               {
                  if(!_loc11_)
                  {
                     continue;
                  }
                  addr127:
                  while(true)
                  {
                     loop32:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc11_ && param1))
                        {
                           loop33:
                           while(true)
                           {
                              §§push(0);
                              if(_loc10_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       break loop1;
                                    }
                                    loop40:
                                    while(true)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             if(!_loc11_)
                                             {
                                                while(true)
                                                {
                                                   break loop33;
                                                }
                                                loop2:
                                                while(true)
                                                {
                                                   if(this.§6?§.length <= 0)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            break;
                                                         }
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(_loc10_ || this)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  addr565:
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     addr566:
                                                                     addr616:
                                                                     while(!(_loc11_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr574:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop40;
                                                                              }
                                                                              addr598:
                                                                              while(true)
                                                                              {
                                                                                 this.§&§.splice(_loc2_,1);
                                                                                 continue loop28;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        §§goto(addr566);
                                                                     }
                                                                  }
                                                               }
                                                               addr563:
                                                            }
                                                            addr617:
                                                            while(true)
                                                            {
                                                               continue loop15;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               continue loop2;
                                                            }
                                                         }
                                                         addr560:
                                                      }
                                                      §§goto(addr574);
                                                   }
                                                   else
                                                   {
                                                      §'8§.length = §&!6§.length = 0;
                                                      if(!(_loc11_ && _loc2_))
                                                      {
                                                         §§push(0);
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            var _loc8_:* = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               var _loc9_:* = this.§&§;
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§6?§.length > 0);
                                                                                       if(!(_loc11_ && this))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr386:
                                                                                                §§pop();
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr389:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§'8§.indexOf(this.§6?§[this.§6?§.length - 1][0]) == -1);
                                                                                                      addr402:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(!(_loc11_ && _loc3_))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     addr515:
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        _loc9_ = §&!6§;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              break loop3;
                                                                                                                           }
                                                                                                                           addr513:
                                                                                                                           loop19:
                                                                                                                           for(; §§pop(); while(true)
                                                                                                                           {
                                                                                                                              continue loop19;
                                                                                                                           })
                                                                                                                           {
                                                                                                                              _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push((_loc4_ = this.§]!B§(_loc3_)).target);
                                                                                                                                 if(_loc10_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    §§push(_loc4_.target);
                                                                                                                                 }
                                                                                                                                 §§pop().dispatchEvent(new TouchEvent(TouchEvent.§7!L§,this.§&§,this.§1"#§,this.§!p§));
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr514:
                                                                                                                        }
                                                                                                                        addr452:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(this.§&§.length - 1);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr616);
                                                                                                                           }
                                                                                                                           addr615:
                                                                                                                        }
                                                                                                                        §§goto(addr617);
                                                                                                                     }
                                                                                                                     addr515:
                                                                                                                  }
                                                                                                                  addr467:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr470:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc9_ = §'8§;
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§goto(addr512);
                                                                                                                           }
                                                                                                                           §§goto(addr482);
                                                                                                                        }
                                                                                                                        addr470:
                                                                                                                     }
                                                                                                                     §§goto(addr515);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr410:
                                                                                                            }
                                                                                                            §§goto(addr617);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc3_ = (_loc7_ = this.§6?§.pop())[0] as int;
                                                                                                            §§push(Boolean(_loc4_ = this.§]!B§(_loc3_)));
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc10_ || param1)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.phase == §<A§.§0!U§);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc10_ || this)
                                                                                                                              {
                                                                                                                                 addr366:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop6:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(_loc4_.target));
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr336:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §&!6§.push({
                                                                                                                                                         "touch":_loc4_,
                                                                                                                                                         "target":_loc4_.target
                                                                                                                                                      });
                                                                                                                                                   }
                                                                                                                                                   while(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                   addr347:
                                                                                                                                                }
                                                                                                                                                addr322:
                                                                                                                                                addr320:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§^f§.apply(this,_loc7_);
                                                                                                                                                   do
                                                                                                                                                   {
                                                                                                                                                      §'8§.push(_loc3_);
                                                                                                                                                   }
                                                                                                                                                   while(_loc11_ && this);
                                                                                                                                                   
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr347);
                                                                                                                                                }
                                                                                                                                                while(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr322);
                                                                                                                                                }
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr368:
                                                                                                                                 }
                                                                                                                                 §§goto(addr335);
                                                                                                                              }
                                                                                                                              §§goto(addr368);
                                                                                                                           }
                                                                                                                           §§goto(addr366);
                                                                                                                        }
                                                                                                                        §§goto(addr320);
                                                                                                                     }
                                                                                                                     §§goto(addr336);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr366);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr389:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr402);
                                                                                       }
                                                                                       §§goto(addr386);
                                                                                    }
                                                                                    addr464:
                                                                                    §§push(0);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§goto(addr467);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr573);
                                                                                    }
                                                                                 }
                                                                                 addr258:
                                                                              }
                                                                              §§goto(addr389);
                                                                           }
                                                                           §§goto(addr470);
                                                                        }
                                                                        addr458:
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           §§goto(addr464);
                                                                        }
                                                                        §§goto(addr515);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                                        §§push(_loc5_.phase);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(§<A§.§"![§);
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          addr229:
                                                                                          if(_loc5_.phase != §<A§.§0!;§)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       _loc5_.§6!=§(§<A§.§2[§);
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                     if(_loc6_.touch.target != _loc6_.target)
                                                                     {
                                                                        if(!(_loc11_ && _loc2_))
                                                                        {
                                                                           _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!L§,this.§&§,this.§1"#§,this.§!p§));
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     §§goto(addr458);
                                                                  }
                                                                  §§goto(addr514);
                                                               }
                                                               §§goto(addr513);
                                                            }
                                                            §§goto(addr470);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr543);
                                                         }
                                                      }
                                                      §§goto(addr389);
                                                   }
                                                }
                                                addr543:
                                                addr562:
                                                return;
                                                addr520:
                                             }
                                             §§goto(addr565);
                                          }
                                          §§goto(addr566);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§9m§);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() - this.§6=§[_loc2_].timestamp);
                                       if(_loc10_ || this)
                                       {
                                          addr82:
                                          if(§§pop() > §!"$§)
                                          {
                                             if(_loc10_)
                                             {
                                                this.§6=§.splice(_loc2_,1);
                                                if(_loc10_ || _loc3_)
                                                {
                                                   addr40:
                                                   §§push(_loc2_);
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   addr57:
                                                   _loc2_ = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      if(false)
                                                      {
                                                         break loop32;
                                                      }
                                                      continue loop32;
                                                   }
                                                   §§goto(addr389);
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr410);
                                          }
                                          §§goto(addr40);
                                       }
                                       §§goto(addr615);
                                    }
                                    §§goto(addr82);
                                 }
                                 §§goto(addr389);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§push(this);
                                    §§push(this.§-!2§);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(§§pop() + 0.00001);
                                    }
                                    §§pop().§-!2§ = §§pop();
                                 }
                                 §§goto(addr560);
                              }
                              else if(this.§&§[_loc2_].phase == §<A§.§2!R§)
                              {
                                 §§goto(addr598);
                              }
                              §§goto(addr563);
                           }
                        }
                        §§goto(addr616);
                     }
                  }
               }
               §§goto(addr520);
               if(_loc11_ && _loc2_)
               {
                  continue;
               }
               _loc2_ = int(this.§6=§.length - 1);
               §§goto(addr127);
            }
         }
         §§goto(addr127);
      }
      
      public function §^!]§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.§6?§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§!p§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§pop();
                              loop9:
                              while(true)
                              {
                                 §§push(this.§>B§);
                                 if(!_loc7_)
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       break;
                                    }
                                    continue loop10;
                                 }
                                 while(!_loc7_)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param1 == 0);
                                       if(!(_loc6_ || param2))
                                       {
                                          break;
                                       }
                                       if(_loc6_)
                                       {
                                          while(§§pop())
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop6;
                                                }
                                                this.§>"$§.§7!v§(param3,param4,this.§1"#§);
                                             }
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop9;
                                             }
                                             continue loop9;
                                          }
                                          return;
                                          addr114:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             break loop6;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           addr130:
                        }
                        while(true)
                        {
                           §§goto(addr114);
                        }
                     }
                  }
                  §§goto(addr130);
               }
            }
         }
         §§goto(addr89);
      }
      
      private function §^f§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§;K§;
         if((_loc6_ = this.§]!B§(param1)) == null)
         {
            if(_loc8_)
            {
               _loc6_ = new §;K§(param1,param3,param4,param2,null);
               if(!_loc7_)
               {
                  this.§=! §(_loc6_);
                  addr47:
                  _loc6_.setPosition(param3,param4);
                  if(_loc8_ || this)
                  {
                     _loc6_.§6!=§(param2);
                     loop12:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§9m§);
                        if(_loc8_)
                        {
                           §§push(§§pop() + this.§-!2§);
                        }
                        §§pop().§5g§(§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(param2);
                           loop4:
                           while(true)
                           {
                              §§push(§<A§.§0!U§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop6:
                                 while(!§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       addr169:
                                       while(true)
                                       {
                                          §§push(param2);
                                          addr109:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(§<A§.§"![§);
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      if(_loc8_ || param1)
                                                      {
                                                         break loop6;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          continue loop12;
                                       }
                                       loop1:
                                       while(true)
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§push(§<A§.§"![§);
                                                   if(_loc8_ || param3)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         this.§>@§(_loc6_);
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr113);
                                                }
                                                §§goto(addr109);
                                             }
                                             return;
                                             addr63:
                                          }
                                          §§goto(addr169);
                                       }
                                       addr143:
                                    }
                                    §§goto(addr63);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr47);
            }
            while(true)
            {
               _loc6_.§<!1§(this.§@e§.hitTest(_loc5_,true));
               §§goto(addr143);
            }
         }
         §§goto(addr47);
      }
      
      private function §[>§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§;K§ = null;
         var _loc4_:§;K§ = null;
         if(!(_loc6_ && this))
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(!_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(15);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc5_ || this)
                                       {
                                          if(_loc6_ && _loc3_)
                                          {
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr505);
                                             }
                                             §§push(param1.keyCode);
                                             break loop4;
                                          }
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop6:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                                this.§!p§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(this.§>B§);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      continue loop1;
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         addr133:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§push(this.§!p§);
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc5_ || this))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  addr127:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        §§push(this.§>"$§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().visible = this.§!p§;
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr505);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr451);
                                                               }
                                                               this.§1"#§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                               §§goto(addr505);
                                                            }
                                                            break;
                                                            §§goto(addr133);
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr80);
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr498);
                                             }
                                          }
                                       }
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr498);
                                       }
                                    }
                                    §§goto(addr505);
                                 }
                                 break;
                              }
                              §§goto(addr495);
                           }
                        }
                        §§goto(addr180);
                     }
                  }
               }
               §§goto(addr495);
            }
         }
         addr505:
         if(_loc5_ || this)
         {
            §§push(this.§!p§);
         }
      }
      
      private function §>@§(param1:§;K§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§;K§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§;K§ = null;
         §§push(§"%§);
         if(!_loc8_)
         {
            §§push(§§pop() * §"%§);
            if(!_loc8_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§6=§)
            {
               if(!_loc8_)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc9_)
                     {
                        _loc5_ = §§pop();
                        addr83:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr85:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr83);
               }
               §§goto(addr85);
            }
            if(!_loc8_)
            {
               if(!_loc2_)
               {
                  param1.§<S§(1);
                  while(true)
                  {
                     if(_loc9_ || _loc2_)
                     {
                        while(true)
                        {
                           this.§6=§.push(param1.clone());
                           if(_loc8_)
                           {
                              break;
                           }
                           if(_loc9_ || _loc2_)
                           {
                              return;
                           }
                           addr160:
                           addr160:
                           while(true)
                           {
                              this.§6=§.splice(this.§6=§.indexOf(_loc2_),1);
                           }
                           addr151:
                        }
                        continue;
                     }
                     while(true)
                     {
                        if(_loc9_)
                        {
                           §§goto(addr151);
                        }
                        §§goto(addr160);
                     }
                  }
               }
               while(true)
               {
                  param1.§<S§(_loc2_.§9!7§ + 1);
               }
            }
            §§goto(addr160);
         }
         §§goto(addr32);
      }
      
      private function §=! §(param1:§;K§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§&§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc4_)
                  {
                     this.§&§.push(param1);
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        addr80:
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        addr98:
                        while(true)
                        {
                           this.§&§.splice(_loc2_,1);
                           §§goto(addr80);
                        }
                     }
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr63:
               }
               else if(this.§&§[_loc2_].id == param1.id)
               {
                  §§goto(addr98);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                  }
               }
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr63);
            }
         }
      }
      
      private function §]!B§(param1:int) : §;K§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;K§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§&§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && _loc3_)
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(_loc5_ || param1)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §>B§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>"$§ == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function set §>B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§>B§ != param1)
            {
               return;
            }
         }
      }
   }
}
