package starling.events
{
   import §9E§.Stage;
   import flash.geom.Point;
   
   public class §#!x§
   {
      
      private static const §#T§:Number = 0.3;
      
      private static const §<y§:Number = 25;
      
      private static var §#b§:Vector.<int>;
      
      private static var §&!T§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §#!x§))
         {
            §#T§ = 0.3;
         }
         while(true)
         {
            §<y§ = 25;
            while(!_loc1_)
            {
               §#b§ = new Vector.<int>(0);
               do
               {
                  §&!T§ = new Vector.<Object>(0);
               }
               while(_loc1_);
               
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §24§:Stage;
      
      private var §@!w§:Number;
      
      private var §[!7§:Number;
      
      private var §-!§:§]e§;
      
      private var §[!v§:Vector.<§<Q§>;
      
      private var §8!>§:Vector.<Array>;
      
      private var §;9§:Vector.<§<Q§>;
      
      private var §86§:Boolean = false;
      
      private var §6!B§:Boolean = false;
      
      public function §#!x§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            if(_loc3_)
            {
               this.§24§ = param1;
               if(!(_loc4_ && _loc2_))
               {
                  addr37:
                  this.§@!w§ = this.§[!7§ = 0;
                  if(_loc3_)
                  {
                     this.§[!v§ = new Vector.<§<Q§>(0);
                     loop3:
                     while(true)
                     {
                        this.§8!>§ = new Vector.<Array>(0);
                        addr145:
                        addr152:
                        addr118:
                        while(_loc4_ && _loc3_)
                        {
                           continue loop3;
                        }
                        this.§;9§ = new Vector.<§<Q§>(0);
                        addr105:
                        while(!(_loc3_ || _loc3_))
                        {
                           §§goto(addr145);
                           §§goto(addr152);
                        }
                        this.§24§.addEventListener(KeyboardEvent.KEY_DOWN,this.§7p§);
                     }
                     addr161:
                  }
               }
               while(true)
               {
                  §§push(this.§24§);
                  if(_loc3_ || this)
                  {
                     §§push(KeyboardEvent.KEY_UP);
                     if(!(_loc4_ && this))
                     {
                        §§pop().addEventListener(§§pop(),this.§7p§);
                        if(!(_loc3_ || _loc3_))
                        {
                           continue;
                        }
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        §§goto(addr118);
                     }
                  }
                  §§goto(addr105);
               }
               return;
            }
            §§goto(addr37);
         }
         §§goto(addr161);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§24§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr101:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§7p§);
                  continue loop0;
               }
            }
         }
         §§goto(addr24);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§<Q§ = null;
         var _loc5_:§<Q§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc11_)
         {
            §§push(this);
            §§push(this.§@!w§);
            if(_loc10_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§@!w§ = §§pop();
            loop0:
            while(true)
            {
               this.§[!7§ = 0;
               while(true)
               {
                  if(_loc11_)
                  {
                     continue loop0;
                  }
                  if(this.§;9§.length <= 0)
                  {
                     break;
                  }
                  if(_loc11_ && this)
                  {
                     continue;
                  }
               }
               §§goto(addr585);
            }
         }
         while(true)
         {
            _loc2_ = this.§;9§.length - 1;
            §§goto(addr113);
         }
      }
      
      public function §!4§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            this.§8!>§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§6!B§);
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
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§`!1§);
                                 loop6:
                                 while(_loc7_ || param1)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(!(_loc6_ && param3))
                                    {
                                       addr80:
                                       if(_loc7_ || param2)
                                       {
                                          if(_loc7_)
                                          {
                                             if(!_loc6_)
                                             {
                                                loop11:
                                                while(§§pop())
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr109:
                                                   while(true)
                                                   {
                                                      this.§8!>§.unshift([1,param2,this.§-!§.§!!n§,this.§-!§.§1C§]);
                                                      if(_loc7_ || param2)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc7_ || param2)
                                                            {
                                                               break loop11;
                                                            }
                                                            continue loop5;
                                                         }
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(param1 == 0);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§goto(addr80);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop10;
                                                               }
                                                               addr143:
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                                return;
                                                addr91:
                                             }
                                             continue loop1;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              §§goto(addr143);
                           }
                           §§goto(addr91);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      private function §^!m§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§<Q§;
         if((_loc6_ = this.§7!h§(param1)) == null)
         {
            if(!(_loc8_ && param2))
            {
               _loc6_ = new §<Q§(param1,param3,param4,param2,null);
               if(_loc7_)
               {
                  this.§6!S§(_loc6_);
                  addr51:
                  _loc6_.setPosition(param3,param4);
                  if(_loc7_)
                  {
                     _loc6_.§;B§(param2);
                     loop12:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§@!w§);
                        if(!(_loc8_ && this))
                        {
                           §§push(§§pop() + this.§[!7§);
                        }
                        §§pop().§+!,§(§§pop());
                        addr169:
                        loop0:
                        while(true)
                        {
                           §§push(param2);
                           loop1:
                           while(true)
                           {
                              §§push(§=<§.§+!+§);
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop3:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          loop5:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                §§push(param2);
                                                loop6:
                                                while(_loc7_)
                                                {
                                                   §§push(§=<§.§4c§);
                                                   while(_loc7_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc8_ && param1)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§=<§.§4c§);
                                                      if(!_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr88:
                                                            if(_loc7_ || param2)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  while(!_loc8_)
                                                                  {
                                                                     _loc6_.§ 7§(this.§24§.hitTest(_loc5_,true));
                                                                  }
                                                                  continue loop5;
                                                                  addr123:
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               this.§7!H§(_loc6_);
                                                               addr58:
                                                               return;
                                                               addr102:
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop6;
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr71);
                                                                  §§goto(addr132);
                                                               }
                                                               §§goto(addr58);
                                                               §§goto(addr88);
                                                            }
                                                            addr132:
                                                         }
                                                         §§goto(addr102);
                                                      }
                                                      §§goto(addr58);
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop1;
                                             }
                                             continue loop12;
                                          }
                                          continue loop12;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr123);
                                       }
                                       §§goto(addr62);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr99);
               }
               §§goto(addr51);
            }
            §§goto(addr169);
         }
         §§goto(addr51);
      }
      
      private function §7p§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§<Q§ = null;
         var _loc4_:§<Q§ = null;
         if(!_loc5_)
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr214:
                              loop18:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(_loc6_ || this)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(15);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(param1.keyCode);
                                                   break;
                                                }
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(this.§6!B§);
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      addr198:
                                                      while(true)
                                                      {
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         _loc2_ = §§pop();
                                                      }
                                                      addr85:
                                                      continue loop18;
                                                      addr85:
                                                      if(_loc5_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(!§§pop());
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  addr102:
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§push(this.§-!§);
                                                                     while(true)
                                                                     {
                                                                        §§pop().visible = this.§6!B§;
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     §§goto(addr501);
                                                                  }
                                                                  §§goto(addr162);
                                                               }
                                                               §§goto(addr501);
                                                            }
                                                            §§goto(addr430);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr206);
                                             }
                                             addr490:
                                          }
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             §§goto(addr494);
                                          }
                                       }
                                    }
                                    continue loop0;
                                    addr501:
                                    return;
                                 }
                                 §§goto(addr490);
                              }
                           }
                        }
                        §§goto(addr186);
                     }
                  }
               }
            }
         }
         §§goto(addr214);
      }
      
      private function §7!H§(param1:§<Q§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§<Q§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§<Q§ = null;
         §§push(§<y§);
         if(_loc9_ || this)
         {
            §§push(§§pop() * §<y§);
            if(_loc9_)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§;9§)
            {
               if(!_loc8_)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        _loc5_ = §§pop();
                        addr88:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr90:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr88);
               }
               §§goto(addr90);
            }
            if(!(_loc8_ && _loc2_))
            {
               if(_loc2_)
               {
                  if(!_loc8_)
                  {
                     param1.§7!n§(_loc2_.§6n§ + 1);
                  }
                  loop1:
                  while(true)
                  {
                     this.§;9§.splice(this.§;9§.indexOf(_loc2_),1);
                     do
                     {
                        if(!_loc9_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc8_);
                     
                     §§goto(addr130);
                  }
               }
               else
               {
                  param1.§7!n§(1);
                  while(true)
                  {
                  }
                  addr137:
               }
               while(true)
               {
                  this.§;9§.push(param1.clone());
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§goto(addr137);
               }
               §§goto(addr118);
            }
            addr130:
            return;
         }
         §§goto(addr37);
      }
      
      private function §6!S§(param1:§<Q§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§[!v§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(§§pop() < 0)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  if(_loc4_)
                  {
                     this.§[!v§.push(param1);
                     break;
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        addr86:
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        addr104:
                        while(true)
                        {
                           this.§[!v§.splice(_loc2_,1);
                           §§goto(addr86);
                        }
                     }
                     while(true)
                     {
                        addr58:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr68:
                              §§push(§§pop() - 1);
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 continue loop3;
                              }
                              addr68:
                           }
                           §§goto(addr68);
                        }
                     }
                  }
                  continue;
               }
               if(this.§[!v§[_loc2_].id == param1.id)
               {
                  §§goto(addr104);
               }
               §§goto(addr58);
            }
            §§goto(addr68);
         }
      }
      
      private function §7!h§(param1:int) : §<Q§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§<Q§ = null;
         for each(_loc2_ in this.§[!v§)
         {
            if(!_loc6_)
            {
               if(_loc2_.id == param1)
               {
                  if(!(_loc6_ && this))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §`!1§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§-!§ == null);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      public function set §`!1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§`!1§ != param1)
            {
               return;
            }
         }
      }
   }
}
