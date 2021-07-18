package starling.events
{
   import § N§.Stage;
   import flash.geom.Point;
   
   public class §#^§
   {
      
      private static const §+!L§:Number = 0.3;
      
      private static const §&S§:Number = 25;
      
      private static var §!!B§:Vector.<int>;
      
      private static var §1!K§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §+!L§ = 0.3;
         }
         do
         {
            §&S§ = 25;
            do
            {
               §!!B§ = new Vector.<int>(0);
               do
               {
                  §1!K§ = new Vector.<Object>(0);
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
         while(_loc1_);
         
      }
      
      private var §@&§:Stage;
      
      private var §>!%§:Number;
      
      private var §!u§:Number;
      
      private var §30§:§?!'§;
      
      private var §&M§:Vector.<§!g§>;
      
      private var §#5§:Vector.<Array>;
      
      private var §>!6§:Vector.<§!g§>;
      
      private var §`A§:Boolean = false;
      
      private var §4§:Boolean = false;
      
      public function §#^§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super();
         this.§@&§ = param1;
         if(!(_loc3_ && _loc2_))
         {
            this.§>!%§ = this.§!u§ = 0;
            this.§&M§ = new Vector.<§!g§>(0);
         }
         this.§#5§ = new Vector.<Array>(0);
         do
         {
            this.§>!6§ = new Vector.<§!g§>(0);
         }
         while(_loc3_);
         
         §§push(this.§@&§);
         while(true)
         {
            §§push(KeyboardEvent.KEY_DOWN);
            while(true)
            {
               §§pop().addEventListener(§§pop(),this.§?M§);
               §§push(this.§@&§);
               if(!_loc4_)
               {
                  break;
               }
               §§push(KeyboardEvent.KEY_UP);
               if(_loc4_)
               {
                  §§pop().addEventListener(§§pop(),this.§?M§);
                  return;
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§@&§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr97:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§?M§);
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§!g§ = null;
         var _loc5_:§!g§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc11_)
         {
            §§push(this);
            §§push(this.§>!%§);
            if(_loc10_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§>!%§ = §§pop();
            loop0:
            while(true)
            {
               this.§!u§ = 0;
               while(this.§>!6§.length > 0)
               {
                  if(_loc10_)
                  {
                     if(!_loc11_)
                     {
                        _loc2_ = int(this.§>!6§.length - 1);
                        continue loop0;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr135);
            }
         }
         loop22:
         while(true)
         {
            while(true)
            {
               §§push(_loc2_);
               §§push(0);
               if(_loc10_ || _loc2_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc10_ || _loc3_)
                     {
                        addr135:
                        loop2:
                        while(true)
                        {
                           if(this.§#5§.length <= 0)
                           {
                              if(!_loc11_)
                              {
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 loop20:
                                 while(true)
                                 {
                                    this.§&M§.splice(_loc2_,1);
                                    addr570:
                                    while(true)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          _loc2_--;
                                          addr521:
                                          loop17:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             §§push(0);
                                             addr524:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   break loop17;
                                                }
                                                if(this.§&M§[_loc2_].phase == §else§.§1!9§)
                                                {
                                                   continue loop20;
                                                }
                                                continue loop21;
                                             }
                                             continue loop21;
                                          }
                                       }
                                    }
                                 }
                                 addr565:
                              }
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§!u§);
                                 if(_loc10_ || param1)
                                 {
                                    §§push(§§pop() + 0.00001);
                                 }
                                 §§pop().§!u§ = §§pop();
                                 continue loop2;
                              }
                           }
                           else
                           {
                              §!!B§.length = §1!K§.length = 0;
                              if(!_loc11_)
                              {
                                 var _loc8_:* = 0;
                                 if(!(_loc11_ && this))
                                 {
                                    var _loc9_:* = this.§&M§;
                                    loop3:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc9_,_loc8_));
                                       if(_loc10_ || this)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                if(_loc10_)
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(this.§#5§.length > 0);
                                                      if(!_loc11_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               §§pop();
                                                               if(_loc10_ || param1)
                                                               {
                                                                  addr392:
                                                                  if(§!!B§.indexOf(this.§#5§[this.§#5§.length - 1][0]) != -1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc3_ = (_loc7_ = this.§#5§.pop())[0] as int;
                                                                  §§push(Boolean(_loc4_ = this.§#!J§(_loc3_)));
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(_loc4_.phase == §else§.§+N§);
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    addr351:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr352:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr354:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(_loc4_.target));
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(_loc10_ || _loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                             addr353:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr327:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §1!K§.push({
                                                                                                         "touch":_loc4_,
                                                                                                         "target":_loc4_.target
                                                                                                      });
                                                                                                      addr336:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   addr328:
                                                                                                }
                                                                                                loop7:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§0%§.apply(this,_loc7_);
                                                                                                   while(_loc10_)
                                                                                                   {
                                                                                                      §!!B§.push(_loc3_);
                                                                                                      if(_loc11_ && _loc2_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break loop7;
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         §§goto(addr354);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr336);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr351:
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                              §§goto(addr328);
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                        §§goto(addr351);
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                               §§goto(addr570);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr392);
                                                   }
                                                   _loc8_ = 0;
                                                   if(_loc10_)
                                                   {
                                                      _loc9_ = §1!K§;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                         if(_loc10_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                               if(_loc6_.touch.target != _loc6_.target)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§=!?§,this.§&M§,this.§`A§,this.§4§));
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  addr437:
                                                                  if(!(_loc10_ || _loc2_))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(0);
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     if(!(_loc11_ && _loc2_))
                                                                     {
                                                                        addr461:
                                                                        _loc9_ = §!!B§;
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           addr503:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc9_,_loc8_));
                                                                              break loop3;
                                                                           }
                                                                           addr503:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push((_loc4_ = this.§#!J§(_loc3_)).target);
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr492:
                                                                                    _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§=!?§,this.§&M§,this.§`A§,this.§4§));
                                                                                 }
                                                                              }
                                                                              §§goto(addr503);
                                                                           }
                                                                           §§goto(addr492);
                                                                        }
                                                                        addr478:
                                                                     }
                                                                     addr506:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§&M§.length - 1);
                                                                        addr575:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                     }
                                                                     addr507:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     §§goto(addr521);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr506);
                                                         }
                                                         break loop3;
                                                      }
                                                   }
                                                }
                                                §§goto(addr461);
                                             }
                                             §§goto(addr505);
                                          }
                                          else
                                          {
                                             _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                             §§push(_loc5_.phase);
                                             if(_loc10_ || _loc2_)
                                             {
                                                §§push(§else§.§ R§);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            addr193:
                                                            §§pop();
                                                            if(!_loc11_)
                                                            {
                                                               addr201:
                                                               if(_loc5_.phase != §else§.§&i§)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc5_.§7b§(§else§.§=!,§);
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr193);
                                                }
                                             }
                                             §§goto(addr201);
                                          }
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                       §§goto(addr478);
                                       §§goto(addr503);
                                    }
                                    §§goto(addr505);
                                 }
                                 §§goto(addr437);
                              }
                           }
                           §§goto(addr565);
                        }
                        return;
                     }
                     §§goto(addr570);
                  }
                  else
                  {
                     §§push(this.§>!%§);
                     if(!(_loc11_ && _loc3_))
                     {
                        §§push(§§pop() - this.§>!6§[_loc2_].timestamp);
                        if(!_loc11_)
                        {
                           addr68:
                           if(§§pop() > §+!L§)
                           {
                              if(_loc10_)
                              {
                                 this.§>!6§.splice(_loc2_,1);
                                 if(!_loc11_)
                                 {
                                    addr35:
                                    §§push(_loc2_);
                                    if(_loc10_ || param1)
                                    {
                                       _loc2_ = §§pop() - 1;
                                       if(false)
                                       {
                                          continue loop22;
                                       }
                                       continue;
                                    }
                                    §§goto(addr576);
                                 }
                                 §§goto(addr507);
                              }
                              §§goto(addr548);
                           }
                           §§goto(addr35);
                        }
                        §§goto(addr575);
                     }
                     §§goto(addr68);
                  }
               }
               break;
            }
            §§goto(addr524);
         }
      }
      
      public function §'!1§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§#5§.unshift(arguments);
         while(true)
         {
            §§push(Boolean(this.§4§));
            §§push(Boolean(this.§4§));
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  §§pop();
                  do
                  {
                     §§push(this.§"!R§);
                     if(_loc7_)
                     {
                        continue loop1;
                     }
                     §§push(Boolean(§§pop()));
                     this.§30§.§ <§(param3,param4,this.§`A§);
                     this.§#5§.unshift([1,param2,this.§30§.§]<§,this.§30§.§[L§]);
                  }
                  while(!(_loc6_ || param3));
                  
                  addr17:
                  return;
               }
               while(true)
               {
                  continue loop1;
               }
            }
         }
      }
      
      private function §0%§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§!g§;
         if((_loc6_ = this.§#!J§(param1)) == null)
         {
            if(!_loc7_)
            {
               _loc6_ = new §!g§(param1,param3,param4,param2,null);
               if(_loc8_)
               {
                  this.§@!J§(_loc6_);
                  addr47:
                  _loc6_.setPosition(param3,param4);
                  _loc6_.§7b§(param2);
                  §§push(_loc6_);
                  §§push(this.§>!%§);
                  if(_loc8_ || param2)
                  {
                     §§push(§§pop() + this.§!u§);
                  }
                  §§pop().§0!A§(§§pop());
               }
               §§goto(addr47);
            }
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(§else§.§+N§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc8_ || param2)
                  {
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           §§push(param2);
                           addr97:
                           while(true)
                           {
                              §§push(§else§.§ R§);
                              addr99:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc7_ && param1))
                                 {
                                    break;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        addr141:
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc6_.§9X§(this.§@&§.hitTest(_loc5_,true));
                           while(true)
                           {
                              addr84:
                              if(!(_loc7_ && param1))
                              {
                                 this.§ !-§(_loc6_);
                                 §§goto(addr52);
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(param2);
                           if(_loc7_)
                           {
                              break;
                           }
                           if(_loc8_)
                           {
                              §§push(§else§.§ R§);
                              if(!_loc8_)
                              {
                                 continue loop2;
                              }
                              if(_loc7_ && this)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop0;
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr84);
                           }
                           addr52:
                           return;
                        }
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr141);
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §?M§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§!g§ = null;
         var _loc4_:§!g§ = null;
         §§push(param1.keyCode);
         loop0:
         while(true)
         {
            §§push(17);
            if(!_loc6_)
            {
               §§push(§§pop() == §§pop());
               §§push(§§pop() == §§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     addr144:
                     if(§§pop())
                     {
                        §§push(this.§4§);
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              _loc2_ = §§pop();
                              if(_loc5_ || this)
                              {
                                 this.§4§ = param1.type == KeyboardEvent.KEY_DOWN;
                                 if(_loc5_ || this)
                                 {
                                    §§push(this.§"!R§);
                                    if(_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    loop10:
                                    while(_loc5_)
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             §§push(this.§4§);
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             addr55:
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop10;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(this.§30§);
                                                      while(true)
                                                      {
                                                         §§pop().visible = this.§4§;
                                                         §§goto(addr80);
                                                      }
                                                   }
                                                   addr80:
                                                   §§goto(addr423);
                                                }
                                                break;
                                                §§goto(addr55);
                                             }
                                             §§goto(addr423);
                                          }
                                          addr95:
                                          while(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop10;
                                             }
                                             §§goto(addr66);
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr416);
                              }
                           }
                        }
                     }
                     else
                     {
                        addr407:
                        if(param1.keyCode == 16)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr416);
                           }
                        }
                     }
                     addr423:
                     while(true)
                     {
                        §§push(this.§30§);
                        if(_loc6_)
                        {
                           continue loop6;
                        }
                        §§pop().§"+§(this.§@&§.stageWidth / 2,this.§@&§.stageHeight / 2);
                        if(_loc6_)
                        {
                           addr416:
                           this.§`A§ = param1.type == KeyboardEvent.KEY_DOWN;
                           break;
                        }
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           continue loop9;
                        }
                        if(false)
                        {
                           continue loop8;
                        }
                        _loc3_ = this.§#!J§(0);
                        _loc4_ = this.§#!J§(1);
                        if(_loc3_)
                        {
                           addr396:
                           this.§30§.§ <§(_loc3_.globalX,_loc3_.globalY);
                        }
                        addr376:
                        §§push(Boolean(_loc2_));
                        if(!_loc6_)
                        {
                           addr369:
                           §§push(§§pop() && _loc4_);
                           §§push(§§pop() && _loc4_);
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 addr372:
                                 §§pop();
                                 addr373:
                                 §§push(_loc4_.phase == §else§.§1!9§);
                                 if(!(_loc6_ && this))
                                 {
                                    addr339:
                                    addr338:
                                    if(!§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          this.§#5§.unshift([1,§else§.§1!9§,_loc4_.globalX,_loc4_.globalY]);
                                          if(!_loc6_)
                                          {
                                             if(_loc6_ && _loc2_)
                                             {
                                                §§goto(addr383);
                                             }
                                             break loop5;
                                          }
                                          §§goto(addr373);
                                       }
                                       §§goto(addr396);
                                    }
                                    §§push(Boolean(this.§4§));
                                    if(!_loc6_)
                                    {
                                       addr314:
                                       §§push(§§pop());
                                       if(_loc5_ || param1)
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             §§push(Boolean(_loc3_));
                                             if(!_loc6_)
                                             {
                                                if(_loc5_)
                                                {
                                                   addr273:
                                                   if(§§pop())
                                                   {
                                                      addr275:
                                                      §§push(_loc3_.phase);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         addr286:
                                                         §§push(§else§.§ R§);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr303:
                                                                  §§pop();
                                                                  addr304:
                                                                  §§push(_loc3_.phase);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§push(§else§.§&i§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              addr236:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc5_ || this))
                                                                                    {
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                    this.§#5§.unshift([1,§else§.§ R§,this.§30§.§]<§,this.§30§.§[L§]);
                                                                                    break loop5;
                                                                                 }
                                                                                 §§goto(addr304);
                                                                              }
                                                                              this.§#5§.unshift([1,§else§.§+N§,this.§30§.§]<§,this.§30§.§[L§]);
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr304);
                                                                              }
                                                                              break loop5;
                                                                           }
                                                                           §§goto(addr339);
                                                                        }
                                                                        §§goto(addr303);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr275);
                                                               }
                                                               §§goto(addr236);
                                                            }
                                                            §§goto(addr314);
                                                         }
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                   break loop5;
                                                }
                                                §§goto(addr372);
                                             }
                                             §§goto(addr303);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr369);
                                    }
                                    §§goto(addr376);
                                 }
                                 §§goto(addr369);
                              }
                              §§goto(addr338);
                           }
                           §§goto(addr369);
                        }
                        §§goto(addr382);
                     }
                     return;
                  }
                  §§pop();
                  §§push(param1.keyCode);
                  if(!(_loc6_ && param1))
                  {
                     continue loop0;
                  }
                  §§goto(addr407);
               }
               continue;
            }
            §§goto(addr407);
         }
      }
      
      private function § !-§(param1:§!g§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§!g§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§!g§ = null;
         §§push(§&S§);
         if(_loc8_ || this)
         {
            §§push(§§pop() * §&S§);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§>!6§)
         {
            if(!_loc9_)
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(!(_loc9_ && this))
               {
                  §§push(§§pop());
                  if(!(_loc9_ && param1))
                  {
                     _loc5_ = §§pop();
                     addr97:
                     §§push(_loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     addr99:
                     _loc2_ = _loc4_;
                     break;
                  }
                  continue;
               }
               §§goto(addr97);
            }
            §§goto(addr99);
         }
         if(!_loc9_)
         {
            if(!_loc2_)
            {
               param1.§@k§(1);
               loop1:
               while(true)
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     if(!_loc9_)
                     {
                        continue;
                     }
                     addr179:
                     while(true)
                     {
                        this.§>!6§.splice(this.§>!6§.indexOf(_loc2_),1);
                        addr170:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr170);
               }
            }
            while(true)
            {
               param1.§@k§(_loc2_.§4e§ + 1);
               §§goto(addr179);
            }
         }
         §§goto(addr170);
      }
      
      private function §@!J§(param1:§!g§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§&M§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        this.§&M§.push(param1);
                        addr62:
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr84:
                        this.§&M§.splice(_loc2_,1);
                        while(true)
                        {
                           addr65:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 addr70:
                                 §§push(§§pop() - 1);
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 addr70:
                              }
                              §§goto(addr70);
                           }
                        }
                        addr89:
                     }
                     while(_loc3_)
                     {
                        §§goto(addr89);
                     }
                     continue;
                  }
                  §§goto(addr62);
               }
               else if(this.§&M§[_loc2_].id == param1.id)
               {
                  §§goto(addr84);
               }
               §§goto(addr65);
            }
            §§goto(addr70);
         }
      }
      
      private function §#!J§(param1:int) : §!g§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!g§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§&M§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || param1))
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §"!R§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§30§ == null);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function set §"!R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§"!R§ != param1)
            {
               return;
            }
         }
      }
   }
}
