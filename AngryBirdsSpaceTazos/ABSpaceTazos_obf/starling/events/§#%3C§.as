package starling.events
{
   import §7!8§.Stage;
   import flash.geom.Point;
   
   public class §#<§
   {
      
      private static const §6!7§:Number = 0.3;
      
      private static const §3t§:Number = 25;
      
      private static var §&!L§:Vector.<int>;
      
      private static var §`r§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §#<§)
         {
            §6!7§ = 0.3;
            while(true)
            {
               §3t§ = 25;
               loop1:
               while(_loc1_ || _loc2_)
               {
                  §&!L§ = new Vector.<int>(0);
                  while(true)
                  {
                     §`r§ = new Vector.<Object>(0);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §#[§:Stage;
      
      private var §`"8§:Number;
      
      private var §5"8§:Number;
      
      private var §-!>§:§7!Q§;
      
      private var §;!b§:Vector.<§7M§>;
      
      private var §+X§:Vector.<Array>;
      
      private var §?"D§:Vector.<§7M§>;
      
      private var §?!e§:Boolean = false;
      
      private var §0-§:Boolean = false;
      
      public function §#<§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               this.§#[§ = param1;
               if(!_loc3_)
               {
                  this.§`"8§ = this.§5"8§ = 0;
                  if(_loc4_ || _loc3_)
                  {
                     this.§;!b§ = new Vector.<§7M§>(0);
                     addr132:
                     loop5:
                     while(true)
                     {
                        this.§+X§ = new Vector.<Array>(0);
                        addr113:
                        loop0:
                        while(true)
                        {
                           this.§?"D§ = new Vector.<§7M§>(0);
                           loop1:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop5;
                              }
                              §§push(this.§#[§);
                              loop2:
                              while(true)
                              {
                                 §§push(KeyboardEvent.KEY_DOWN);
                                 addr84:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§=k§);
                                    addr87:
                                    while(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           continue loop5;
                        }
                     }
                     addr132:
                  }
                  §§goto(addr132);
               }
               §§goto(addr78);
            }
            §§goto(addr113);
         }
         §§goto(addr132);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§#[§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr96:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§=k§);
                  continue loop0;
               }
            }
         }
         §§goto(addr19);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§7M§ = null;
         var _loc5_:§7M§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc10_)
         {
            §§push(this);
            §§push(this.§`"8§);
            if(_loc11_ || _loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§`"8§ = §§pop();
            loop0:
            while(true)
            {
               this.§5"8§ = 0;
               while(true)
               {
                  if(_loc10_)
                  {
                     continue loop0;
                  }
                  if(this.§?"D§.length <= 0)
                  {
                     break;
                  }
                  if(!(_loc11_ || param1))
                  {
                     continue;
                  }
               }
               §§goto(addr536);
            }
         }
         while(true)
         {
            _loc2_ = this.§?"D§.length - 1;
            §§goto(addr104);
         }
      }
      
      public function §5!J§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.§+X§.unshift(arguments);
            while(true)
            {
               §§push(this.§0-§);
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
                              if(_loc7_ && param1)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop9:
                                 while(_loc6_ || param2)
                                 {
                                    §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       §§push(param1 == 0);
                                       if(_loc6_)
                                       {
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          if(!_loc7_)
                                          {
                                             while(§§pop())
                                             {
                                                continue loop10;
                                             }
                                             addr24:
                                             return;
                                             addr61:
                                          }
                                          continue loop1;
                                       }
                                       continue loop9;
                                    }
                                    while(!_loc7_)
                                    {
                                       continue loop8;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr139);
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr61);
                           }
                           continue;
                        }
                        §§goto(addr138);
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §]$§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§7M§;
         if((_loc6_ = this.§%!h§(param1)) == null)
         {
            if(_loc7_ || param3)
            {
               _loc6_ = new §7M§(param1,param3,param4,param2,null);
               if(_loc7_)
               {
                  this.§^!B§(_loc6_);
                  addr51:
                  _loc6_.setPosition(param3,param4);
                  if(_loc7_ || param1)
                  {
                     _loc6_.§3"$§(param2);
                     addr62:
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc6_);
                     §§push(this.§`"8§);
                     if(_loc7_)
                     {
                        §§push(§§pop() + this.§5"8§);
                     }
                     §§pop().§2!m§(§§pop());
                     loop1:
                     while(true)
                     {
                        §§push(param2);
                        loop2:
                        while(true)
                        {
                           §§push(§@M§.§2"@§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             addr71:
                                             §§push(§@M§.§>!A§);
                                             if(!(_loc7_ || this))
                                             {
                                                while(_loc7_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc7_)
                                                   {
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr160:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop1;
                                                   }
                                                   §§goto(addr71);
                                                }
                                                continue loop3;
                                                addr117:
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr85:
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         this.§[!q§(_loc6_);
                                                         addr63:
                                                         return;
                                                         addr105:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc6_.§%i§(this.§#[§.hitTest(_loc5_,true));
                                                            §§goto(addr85);
                                                         }
                                                         addr131:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr105);
                                             }
                                             §§goto(addr63);
                                          }
                                          continue loop2;
                                          addr67:
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                                 §§goto(addr160);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr51);
            }
            §§goto(addr62);
         }
         §§goto(addr51);
      }
      
      private function §=k§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§7M§ = null;
         var _loc4_:§7M§ = null;
         if(_loc5_ || _loc3_)
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     addr201:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              addr186:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§0-§);
                                       addr189:
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                while(true)
                                                {
                                                   this.§0-§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                   loop11:
                                                   while(_loc5_)
                                                   {
                                                      §§push(this.§-&§);
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr147:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            addr148:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr111:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§-!>§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().visible = this.§0-§;
                                                                                       if(_loc6_ && _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break loop8;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr493:
                                                                                    this.§?!e§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                                                    §§goto(addr500);
                                                                                 }
                                                                                 addr126:
                                                                              }
                                                                              while(_loc5_)
                                                                              {
                                                                                 §§goto(addr62);
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        §§goto(addr500);
                                                                     }
                                                                  }
                                                                  addr110:
                                                               }
                                                               §§goto(addr149);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                break loop8;
                                             }
                                             addr202:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(param1.keyCode);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1.keyCode);
                                 }
                                 addr480:
                                 if(§§pop() == 16)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr493);
                                    }
                                 }
                                 §§goto(addr500);
                              }
                           }
                           addr185:
                        }
                        §§goto(addr202);
                     }
                     if(!(_loc5_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(this.§0-§);
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc5_ || this)
                           {
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr110);
                                       §§push(!§§pop());
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr148);
                  }
               }
               §§goto(addr480);
            }
         }
         §§goto(addr126);
      }
      
      private function §[!q§(param1:§7M§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§7M§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§7M§ = null;
         §§push(§3t§);
         if(_loc8_ || _loc3_)
         {
            §§push(§§pop() * §3t§);
            if(!_loc9_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§?"D§)
            {
               if(_loc8_)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc8_ || _loc2_)
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
            if(_loc8_ || _loc3_)
            {
               if(_loc2_)
               {
                  if(!_loc9_)
                  {
                     param1.§'f§(_loc2_.§@"G§ + 1);
                  }
                  while(true)
                  {
                     this.§?"D§.splice(this.§?"D§.indexOf(_loc2_),1);
                     §§goto(addr153);
                  }
                  addr174:
               }
               else
               {
                  param1.§'f§(1);
               }
               while(true)
               {
                  if(_loc8_ || param1)
                  {
                     §§goto(addr143);
                  }
                  else
                  {
                     §§goto(addr174);
                  }
                  return;
               }
            }
            §§goto(addr143);
         }
         §§goto(addr36);
      }
      
      private function §^!B§(param1:§7M§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§;!b§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() < 0)
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.§;!b§.push(param1);
                  }
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  if(!(_loc4_ && _loc3_))
                  {
                     break;
                  }
                  addr113:
               }
               else if(this.§;!b§[_loc2_].id == param1.id)
               {
                  if(_loc3_)
                  {
                     this.§;!b§.splice(_loc2_,1);
                  }
                  §§goto(addr113);
               }
               §§push(_loc2_);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc2_ = §§pop();
         }
      }
      
      private function §%!h§(param1:int) : §7M§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7M§ = null;
         for each(_loc2_ in this.§;!b§)
         {
            if(!_loc6_)
            {
               if(_loc2_.id == param1)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §-&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§-!>§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function set §-&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§-&§ != param1)
            {
               return;
            }
         }
      }
   }
}
