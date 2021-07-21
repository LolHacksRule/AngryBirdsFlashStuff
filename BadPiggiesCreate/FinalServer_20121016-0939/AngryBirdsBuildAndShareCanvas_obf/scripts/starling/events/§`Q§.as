package starling.events
{
   import §default§.Stage;
   import flash.geom.Point;
   
   public class §`Q§
   {
      
      private static const §8S§:Number = 0.3;
      
      private static const §%,§:Number = 25;
      
      private static var §9"4§:Vector.<int>;
      
      private static var §`"3§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8S§ = 0.3;
            while(true)
            {
               §%,§ = 25;
               while(_loc1_)
               {
                  §9"4§ = new Vector.<int>(0);
                  while(_loc1_ || _loc2_)
                  {
                     §`"3§ = new Vector.<Object>(0);
                     if(!(_loc2_ && _loc1_))
                     {
                        return;
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      private var § "3§:Stage;
      
      private var §1"=§:Number;
      
      private var §8!]§:Number;
      
      private var §0]§:§<E§;
      
      private var § w§:Vector.<§1[§>;
      
      private var §']§:Vector.<Array>;
      
      private var §>'§:Vector.<§1[§>;
      
      private var §+!W§:Boolean = false;
      
      private var §0!J§:Boolean = false;
      
      public function §`Q§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(_loc4_ || this)
            {
               this.§ "3§ = param1;
               if(!_loc3_)
               {
                  this.§1"=§ = this.§8!]§ = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§ w§ = new Vector.<§1[§>(0);
                     loop0:
                     while(true)
                     {
                        this.§']§ = new Vector.<Array>(0);
                        addr128:
                        while(true)
                        {
                           this.§>'§ = new Vector.<§1[§>(0);
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§ "3§);
                     loop2:
                     while(true)
                     {
                        §§push(KeyboardEvent.KEY_DOWN);
                        addr96:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§;P§);
                           addr99:
                           while(!_loc3_)
                           {
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr128);
            }
         }
         §§goto(addr101);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§ "3§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr97:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§;P§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§0]§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.§0]§);
                        break;
                     }
                     §§goto(addr100);
                  }
                  addr69:
               }
               return;
            }
            break;
         }
         §§pop().dispose();
         §§goto(addr69);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§1[§ = null;
         var _loc5_:§1[§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(_loc10_)
         {
            §§push(this);
            §§push(this.§1"=§);
            if(!(_loc11_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§1"=§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§8!]§ = 0;
            loop1:
            while(this.§>'§.length > 0)
            {
               if(!(_loc11_ && param1))
               {
                  if(_loc11_)
                  {
                     continue;
                  }
                  _loc2_ = int(this.§>'§.length - 1);
               }
               if(!_loc10_)
               {
                  continue loop0;
               }
               loop28:
               while(true)
               {
                  loop29:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc10_ || param1)
                     {
                        §§push(0);
                        if(_loc10_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc10_)
                              {
                                 break loop1;
                              }
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§']§.length > 0);
                                    if(_loc10_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             addr406:
                                             §§pop();
                                             if(!_loc11_)
                                             {
                                                addr422:
                                                if(§9"4§.indexOf(this.§']§[this.§']§.length - 1][0]) != -1)
                                                {
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(0);
                                                      if(!_loc11_)
                                                      {
                                                         var _loc8_:* = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            var _loc9_:* = §`"3§;
                                                            addr472:
                                                            §§push(§§hasnext(_loc9_,_loc8_));
                                                            if(_loc10_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                  if(_loc6_.touch.target != _loc6_.target)
                                                                  {
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§9>§,this.§ w§,this.§+!W§,this.§0!J§));
                                                                     }
                                                                  }
                                                                  §§goto(addr472);
                                                               }
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     addr496:
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!(_loc11_ && _loc2_))
                                                                           {
                                                                              addr586:
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                                 addr593:
                                                                                 §§push(0);
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc11_ && _loc2_)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          if(!(_loc10_ || _loc3_))
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§8!]§);
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() + 0.00001);
                                                                                             }
                                                                                             §§pop().§8!]§ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc11_ && param1))
                                                                                                {
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr560);
                                                                                                      }
                                                                                                      addr636:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr660:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§ w§.splice(_loc2_,1);
                                                                                                      }
                                                                                                      addr660:
                                                                                                   }
                                                                                                   §§goto(addr647);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else if(this.§ w§[_loc2_].phase == §<!h§.§,"#§)
                                                                                    {
                                                                                       §§goto(addr660);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!(_loc11_ && this))
                                                                                       {
                                                                                          §§goto(addr647);
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       §§goto(addr647);
                                                                                    }
                                                                                 }
                                                                                 addr594:
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr647);
                                                                        }
                                                                        addr681:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           continue loop16;
                                                                           §§goto(addr586);
                                                                        }
                                                                     }
                                                                     addr682:
                                                                  }
                                                                  §§goto(addr550);
                                                               }
                                                               §§goto(addr549);
                                                            }
                                                            §§goto(addr548);
                                                         }
                                                         §§goto(addr496);
                                                      }
                                                      §§goto(addr593);
                                                   }
                                                   §§goto(addr682);
                                                }
                                                else
                                                {
                                                   _loc3_ = (_loc7_ = this.§']§.pop())[0] as int;
                                                   §§push(Boolean(_loc4_ = this.§5!g§(_loc3_)));
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc11_ && _loc2_))
                                                            {
                                                               §§pop();
                                                               if(_loc10_)
                                                               {
                                                                  §§push(_loc4_.phase == §<!h§.§"W§);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr386:
                                                                     §§push(Boolean(§§pop()));
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr387:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr389:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(_loc4_.target));
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr360:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop11:
                                                                                    for(; !(_loc11_ && _loc2_); if(!_loc10_)
                                                                                    {
                                                                                       continue;
                                                                                    },if(true)
                                                                                    {
                                                                                       continue loop4;
                                                                                    })
                                                                                    {
                                                                                       §`"3§.push({
                                                                                          "touch":_loc4_,
                                                                                          "target":_loc4_.target
                                                                                       });
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          addr344:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§&!S§.apply(this,_loc7_);
                                                                                             do
                                                                                             {
                                                                                                §9"4§.push(_loc3_);
                                                                                             }
                                                                                             while(!_loc10_);
                                                                                             
                                                                                             if(!(_loc11_ && param1))
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr389);
                                                                                 }
                                                                                 §§goto(addr344);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr386:
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                   §§goto(addr360);
                                                }
                                             }
                                             break;
                                          }
                                       }
                                       §§goto(addr422);
                                    }
                                    §§goto(addr406);
                                 }
                                 §§push(0);
                                 if(_loc10_)
                                 {
                                    break loop29;
                                 }
                                 §§goto(addr681);
                              }
                           }
                           else
                           {
                              §§push(this.§1"=§);
                              if(!(_loc11_ && this))
                              {
                                 §§push(§§pop() - this.§>'§[_loc2_].timestamp);
                                 if(!_loc11_)
                                 {
                                    addr72:
                                    if(§§pop() > §8S§)
                                    {
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          this.§>'§.splice(_loc2_,1);
                                          if(_loc10_ || param1)
                                          {
                                             addr35:
                                             §§push(_loc2_);
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() - 1);
                                                if(!_loc11_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc10_ || param1)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop28;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr660);
                                                }
                                                §§goto(addr681);
                                             }
                                             §§goto(addr647);
                                          }
                                          §§goto(addr636);
                                       }
                                       §§goto(addr609);
                                    }
                                    §§goto(addr35);
                                 }
                                 §§goto(addr680);
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr647);
                        }
                        §§goto(addr594);
                     }
                     break;
                  }
                  while(true)
                  {
                     _loc8_ = §§pop();
                     if(_loc10_)
                     {
                        §§goto(addr510);
                     }
                     §§goto(addr549);
                  }
               }
            }
            addr560:
            while(true)
            {
               if(this.§']§.length <= 0)
               {
                  if(!(_loc11_ && _loc3_))
                  {
                     if(!_loc11_)
                     {
                        break;
                     }
                     continue loop23;
                  }
                  continue loop24;
               }
               §9"4§.length = §`"3§.length = 0;
               if(!(_loc10_ || _loc2_))
               {
                  continue loop34;
               }
               §§push(0);
               if(!_loc11_)
               {
                  _loc8_ = §§pop();
                  if(!(_loc11_ && this))
                  {
                     _loc9_ = this.§ w§;
                     while(true)
                     {
                        §§push(§§hasnext(_loc9_,_loc8_));
                        if(!(_loc11_ && _loc2_))
                        {
                           if(!§§pop())
                           {
                              if(_loc10_ || param1)
                              {
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    if(_loc10_ || _loc3_)
                                    {
                                       continue loop37;
                                    }
                                    continue loop16;
                                 }
                                 §§goto(addr496);
                              }
                              addr549:
                              while(true)
                              {
                                 if(!(_loc10_ || _loc3_))
                                 {
                                    continue loop16;
                                 }
                                 §§push(this.§ w§.length - 1);
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    break loop17;
                                 }
                              }
                              addr550:
                           }
                           else
                           {
                              _loc5_ = §§nextvalue(_loc8_,_loc9_);
                              §§push(_loc5_.phase);
                              if(!_loc11_)
                              {
                                 §§push(§<!h§.§?!o§);
                                 if(!(_loc11_ && this))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc10_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc11_ && this))
                                          {
                                             addr216:
                                             §§pop();
                                             if(_loc10_)
                                             {
                                                addr224:
                                                if(_loc5_.phase != §<!h§.§-!V§)
                                                {
                                                   continue;
                                                }
                                                if(_loc11_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc5_.§#S§(§<!h§.§["2§);
                                             continue;
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                    §§goto(addr216);
                                 }
                              }
                              §§goto(addr224);
                           }
                        }
                        break;
                     }
                     loop18:
                     for(; §§pop(); while(true)
                     {
                        continue loop18;
                     })
                     {
                        _loc3_ = §§nextvalue(_loc8_,_loc9_);
                        while(true)
                        {
                           §§push((_loc4_ = this.§5!g§(_loc3_)).target);
                           if(_loc10_)
                           {
                              if(!§§pop())
                              {
                                 continue loop18;
                              }
                              if(!_loc10_)
                              {
                                 continue loop18;
                              }
                              §§push(_loc4_.target);
                           }
                           §§pop().dispatchEvent(new TouchEvent(TouchEvent.§9>§,this.§ w§,this.§+!W§,this.§0!J§));
                           continue loop18;
                        }
                     }
                     §§goto(addr549);
                     addr548:
                  }
                  while(true)
                  {
                     _loc9_ = §9"4§;
                     if(_loc10_)
                     {
                        §§goto(addr547);
                     }
                     §§goto(addr522);
                  }
                  addr510:
               }
               else
               {
                  addr647:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     continue loop17;
                  }
                  addr647:
               }
               continue loop34;
            }
            return;
         }
      }
      
      public function §&!d§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§']§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§0!J§);
               if(!_loc7_)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§pop();
                              loop9:
                              while(true)
                              {
                                 if(_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(this.§6"§);
                                 if(!(_loc7_ && param3))
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                if(!(_loc7_ && param2))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(param1 == 0);
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr106:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop6;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop9;
                                                   }
                                                   this.§0]§.§8!k§(param3,param4,this.§+!W§);
                                                }
                                                do
                                                {
                                                   this.§']§.unshift([1,param2,this.§0]§.§ ^§,this.§0]§.§'c§]);
                                                }
                                                while(!(_loc6_ || param3));
                                                
                                                break;
                                             }
                                             return;
                                             addr71:
                                          }
                                       }
                                       continue loop2;
                                    }
                                    addr101:
                                 }
                                 §§goto(addr106);
                              }
                           }
                           addr128:
                        }
                        §§goto(addr101);
                     }
                  }
               }
               §§goto(addr128);
            }
         }
         §§goto(addr82);
      }
      
      private function §&!S§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§1[§;
         if((_loc6_ = this.§5!g§(param1)) == null)
         {
            if(_loc7_ || param1)
            {
               _loc6_ = new §1[§(param1,param3,param4,param2,null);
               if(_loc7_)
               {
                  this.§2!<§(_loc6_);
                  addr51:
                  _loc6_.setPosition(param3,param4);
                  if(!_loc8_)
                  {
                     _loc6_.§#S§(param2);
                  }
               }
               §§goto(addr51);
            }
            loop0:
            while(true)
            {
               §§push(_loc6_);
               §§push(this.§1"=§);
               if(_loc7_)
               {
                  §§push(§§pop() + this.§8!]§);
               }
               §§pop().§,"<§(§§pop());
               loop1:
               while(true)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(§<!h§.§"W§);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() == §§pop());
                        if(!(_loc8_ && param2))
                        {
                           if(!§§pop())
                           {
                              loop11:
                              while(true)
                              {
                                 §§pop();
                                 addr149:
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(param2);
                                    while(true)
                                    {
                                       §§push(§<!h§.§?!o§);
                                       addr119:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc7_)
                                          {
                                             continue loop11;
                                          }
                                       }
                                    }
                                    continue loop11;
                                 }
                                 continue loop0;
                              }
                              addr148:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(_loc7_)
                                 {
                                    _loc6_.§0'§(this.§ "3§.hitTest(_loc5_,true));
                                    loop6:
                                    while(true)
                                    {
                                       addr62:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(!_loc8_)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(§<!h§.§?!o§);
                                             if(_loc7_ || param1)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      return;
                                                   }
                                                   addr58:
                                                   continue loop6;
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr119);
                                          }
                                          break;
                                       }
                                       §§goto(addr117);
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr62);
                           }
                        }
                        §§goto(addr148);
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      private function §;P§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§1[§ = null;
         var _loc4_:§1[§ = null;
         if(_loc5_ || param1)
         {
            §§push(param1.keyCode);
            if(_loc5_ || this)
            {
               §§push(17);
               loop0:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop15:
                           while(true)
                           {
                              §§pop();
                              loop16:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(15);
                                    if(!_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() == §§pop());
                                       while(true)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param1.keyCode);
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§0!J§);
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop6:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         this.§0!J§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(this.§6"§);
                                                            while(_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(§§pop())
                                                                        {
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§push(this.§0]§);
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().visible = this.§0!J§;
                                                                                 addr108:
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           §§goto(addr495);
                                                                        }
                                                                        §§goto(addr495);
                                                                     }
                                                                     addr65:
                                                                     §§push(this.§0!J§);
                                                                     if(_loc6_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        §§push(!§§pop());
                                                                     }
                                                                     §§goto(addr87);
                                                                  }
                                                               }
                                                               §§goto(addr130);
                                                               if(_loc6_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr65);
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      §§goto(addr495);
                                                   }
                                                }
                                             }
                                          }
                                          addr469:
                                       }
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§goto(addr488);
                                       }
                                    }
                                    §§goto(addr488);
                                 }
                                 §§goto(addr469);
                              }
                              continue loop0;
                           }
                           addr197:
                        }
                        §§goto(addr166);
                     }
                  }
                  §§goto(addr197);
               }
            }
            §§goto(addr469);
         }
         §§goto(addr110);
      }
      
      private function §0!R§(param1:§1[§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§1[§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§1[§ = null;
         §§push(§%,§);
         if(!(_loc8_ && this))
         {
            §§push(§§pop() * §%,§);
            if(_loc9_ || this)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§>'§)
            {
               if(!_loc8_)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        _loc5_ = §§pop();
                        addr93:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr95:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr93);
               }
               §§goto(addr95);
            }
            if(!_loc8_)
            {
               if(!_loc2_)
               {
                  param1.§3!$§(1);
                  loop1:
                  while(true)
                  {
                     if(_loc8_ && _loc3_)
                     {
                        loop2:
                        while(true)
                        {
                           continue loop1;
                           addr180:
                           while(true)
                           {
                              this.§>'§.splice(this.§>'§.indexOf(_loc2_),1);
                              continue loop2;
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§goto(addr174);
            }
            §§goto(addr151);
         }
         §§goto(addr42);
      }
      
      private function §2!<§(param1:§1[§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§ w§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        this.§ w§.push(param1);
                        addr56:
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        addr103:
                        this.§ w§.splice(_loc2_,1);
                        loop1:
                        while(true)
                        {
                           addr64:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc3_ || param1)
                              {
                                 addr74:
                                 §§push(§§pop() - 1);
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    continue loop1;
                                 }
                                 addr74:
                              }
                              §§goto(addr74);
                           }
                        }
                        addr108:
                     }
                     while(_loc4_ && param1)
                     {
                        §§goto(addr108);
                     }
                     continue;
                  }
                  §§goto(addr56);
               }
               else if(this.§ w§[_loc2_].id == param1.id)
               {
                  §§goto(addr103);
               }
               §§goto(addr64);
            }
            §§goto(addr74);
         }
      }
      
      private function §5!g§(param1:int) : §1[§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§1[§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§ w§)
         {
            if(_loc5_ || _loc3_)
            {
               if(_loc2_.id == param1)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §6"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§0]§ == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function set §6"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§6"§ != param1)
            {
               return;
            }
         }
      }
   }
}
