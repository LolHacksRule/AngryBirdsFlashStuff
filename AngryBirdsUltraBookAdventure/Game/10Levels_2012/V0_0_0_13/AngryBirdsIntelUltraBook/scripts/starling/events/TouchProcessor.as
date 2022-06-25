package starling.events
{
   import §6!7§.Stage;
   import flash.geom.Point;
   
   public class TouchProcessor
   {
      
      private static const §9!2§:Number = 0.3;
      
      private static const §@b§:Number = 25;
      
      private static var §&!N§:Vector.<int>;
      
      private static var § for§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §9!2§ = 0.3;
         }
         while(true)
         {
            §@b§ = 25;
            while(!_loc1_)
            {
               §&!N§ = new Vector.<int>(0);
               while(_loc2_ || TouchProcessor)
               {
                  § for§ = new Vector.<Object>(0);
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §'!'§:Stage;
      
      private var §&z§:Number;
      
      private var §&!"§:Number;
      
      private var §&b§:§ !<§;
      
      private var §[e§:Vector.<§]!i§>;
      
      private var §1k§:Vector.<Array>;
      
      private var §1!A§:Vector.<§]!i§>;
      
      private var §4!F§:Boolean = false;
      
      private var §6!&§:Boolean = false;
      
      public function TouchProcessor(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
            if(!(_loc4_ && _loc2_))
            {
               this.§'!'§ = param1;
               if(_loc3_)
               {
                  this.§&z§ = this.§&!"§ = 0;
                  if(_loc3_)
                  {
                     this.§[e§ = new Vector.<§]!i§>(0);
                     loop6:
                     while(true)
                     {
                        this.§1k§ = new Vector.<Array>(0);
                        addr148:
                        while(true)
                        {
                           this.§1!A§ = new Vector.<§]!i§>(0);
                           loop2:
                           while(true)
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 continue loop6;
                              }
                              §§push(this.§'!'§);
                              while(true)
                              {
                                 §§push(KeyboardEvent.KEY_DOWN);
                                 addr103:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§,!^§);
                                    addr107:
                                    while(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           continue loop6;
                        }
                     }
                     addr158:
                  }
                  while(true)
                  {
                     §§push(this.§'!'§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(KeyboardEvent.KEY_UP);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().addEventListener(§§pop(),this.§,!^§);
                           if(_loc3_ || this)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr100);
                  }
                  return;
                  addr96:
               }
               §§goto(addr158);
            }
         }
         §§goto(addr96);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§'!'§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr96:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§,!^§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§&b§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr73:
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr100);
               }
               §§goto(addr24);
            }
            else
            {
               addr71:
            }
            §§pop().dispose();
            §§goto(addr73);
         }
         addr24:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§]!i§ = null;
         var _loc5_:§]!i§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(_loc11_)
         {
            §§push(this);
            §§push(this.§&z§);
            if(_loc11_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§&z§ = §§pop();
            loop0:
            while(true)
            {
               this.§&!"§ = 0;
               loop1:
               while(true)
               {
                  if(_loc10_ && _loc2_)
                  {
                     continue loop0;
                  }
                  if(this.§1!A§.length <= 0)
                  {
                     break;
                  }
                  if(_loc10_ && _loc3_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     _loc2_ = this.§1!A§.length - 1;
                     continue loop1;
                  }
               }
               §§goto(addr681);
            }
         }
         §§goto(addr113);
      }
      
      public function §]!<§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            this.§1k§.unshift(arguments);
            while(true)
            {
               §§push(this.§6!&§);
               if(_loc7_)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       if(_loc6_ && this)
                                       {
                                          continue loop2;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                §§push(param1 == 0);
                                                if(_loc7_ || this)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!(_loc6_ && param1))
                                                {
                                                   while(§§pop())
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr25:
                                                   return;
                                                   addr86:
                                                }
                                                break;
                                             }
                                             continue;
                                          }
                                          addr162:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          while(true)
                                          {
                                             §§push(this.§]?§);
                                             if(_loc7_)
                                             {
                                                break loop6;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr86);
                                 }
                                 continue loop3;
                              }
                              addr124:
                           }
                        }
                     }
                  }
               }
               §§goto(addr162);
            }
         }
         §§goto(addr110);
      }
      
      private function §95§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§]!i§ = this.§;i§(param1);
         if(_loc7_)
         {
            if(_loc6_ == null)
            {
               if(_loc7_)
               {
                  addr34:
                  _loc6_ = new §]!i§(param1,param3,param4,param2,null);
                  if(_loc7_)
                  {
                     this.§"+§(_loc6_);
                     addr49:
                     _loc6_.setPosition(param3,param4);
                     if(_loc7_ || param3)
                     {
                        _loc6_.§`!"§(param2);
                        loop11:
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(this.§&z§);
                           if(!_loc8_)
                           {
                              §§push(§§pop() + this.§&!"§);
                           }
                           §§pop().§7Q§(§§pop());
                           addr188:
                           loop0:
                           while(true)
                           {
                              §§push(param2);
                              loop1:
                              while(true)
                              {
                                 §§push(§!!j§.§^!R§);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc8_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc7_)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_ || param1)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                addr169:
                                                loop7:
                                                while(true)
                                                {
                                                   if(_loc8_ && this)
                                                   {
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      addr110:
                                                      while(true)
                                                      {
                                                         §§push(§!!j§.§ 0§);
                                                         addr113:
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               break loop7;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop2;
                                             }
                                             addr168:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   _loc6_.§,!g§(this.§'!'§.hitTest(_loc5_,true));
                                                   addr136:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr128:
                                             }
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§!!j§.§ 0§);
                                                   if(_loc7_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc7_ || this)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  this.§<!%§(_loc6_);
                                                                  addr105:
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr62);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr169);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr128);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr105);
                                                      }
                                                      addr62:
                                                      return;
                                                   }
                                                   §§goto(addr113);
                                                }
                                                break;
                                             }
                                             §§goto(addr110);
                                             §§goto(addr115);
                                          }
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr49);
               }
               §§goto(addr188);
            }
            §§goto(addr49);
         }
         §§goto(addr34);
      }
      
      private function §,!^§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§]!i§ = null;
         var _loc4_:§]!i§ = null;
         if(!(_loc6_ && _loc2_))
         {
            §§push(param1.keyCode);
            if(_loc5_)
            {
               §§push(17);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(§§pop() == §§pop());
                  loop0:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr217:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        addr221:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(param1.keyCode);
                                    if(_loc5_)
                                    {
                                       §§push(15);
                                       if(_loc5_ || this)
                                       {
                                          §§push(§§pop() == §§pop());
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr196:
                                             while(true)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr556:
                                                      if(param1.keyCode == 16)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr559:
                                                            this.§4!F§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                            break loop3;
                                                         }
                                                         break loop3;
                                                      }
                                                      break loop3;
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(this.§6!&§);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr201:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr202:
                                                            while(true)
                                                            {
                                                               this.§6!&§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                               if(!(_loc5_ || _loc3_))
                                                               {
                                                                  break loop3;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(this.§]?§);
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr140:
                                                                  while(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr195:
                                       }
                                    }
                                    §§goto(addr556);
                                 }
                                 break;
                              }
                              addr567:
                              return;
                              addr222:
                           }
                           §§goto(addr196);
                        }
                     }
                  }
               }
            }
            §§goto(addr556);
         }
         §§goto(addr202);
      }
      
      private function §<!%§(param1:§]!i§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§]!i§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§]!i§ = null;
         §§push(§@b§);
         if(_loc9_ || param1)
         {
            §§push(§§pop() * §@b§);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§1!A§)
         {
            if(!_loc8_)
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(!(_loc8_ && this))
               {
                  _loc5_ = §§pop();
                  addr99:
                  if(!_loc8_)
                  {
                     §§push(_loc5_);
                  }
                  _loc2_ = _loc4_;
                  break;
               }
               if(§§pop() > _loc3_)
               {
                  continue;
               }
            }
            §§goto(addr99);
         }
         if(!_loc8_)
         {
            if(!_loc2_)
            {
               param1.§;!i§(1);
               while(true)
               {
                  if(!_loc8_)
                  {
                     loop2:
                     while(true)
                     {
                        this.§1!A§.push(param1.clone());
                        if(!_loc9_)
                        {
                           break;
                        }
                        if(!(_loc8_ && _loc2_))
                        {
                           if(!_loc8_)
                           {
                              return;
                           }
                           addr167:
                           while(true)
                           {
                              param1.§;!i§(_loc2_.§else § + 1);
                           }
                        }
                        while(true)
                        {
                           this.§1!A§.splice(this.§1!A§.indexOf(_loc2_),1);
                           continue loop2;
                        }
                     }
                     continue;
                     addr114:
                  }
                  while(true)
                  {
                     §§goto(addr114);
                  }
               }
            }
         }
         §§goto(addr167);
      }
      
      private function §"+§(param1:§]!i§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§[e§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(!_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!(_loc4_ && param1))
                        {
                           this.§[e§.push(param1);
                           addr70:
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           addr108:
                           this.§[e§.splice(_loc2_,1);
                        }
                        addr85:
                        §§push(_loc2_);
                        if(!(_loc4_ && param1))
                        {
                           addr96:
                           _loc2_ = §§pop() - 1;
                           addr95:
                           continue;
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr70);
                  }
                  else if(this.§[e§[_loc2_].id == param1.id)
                  {
                     §§goto(addr108);
                  }
                  §§goto(addr85);
               }
               §§goto(addr95);
            }
            §§goto(addr96);
         }
      }
      
      private function §;i§(param1:int) : §]!i§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]!i§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§[e§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §]?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&b§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function set §]?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§]?§ != param1)
            {
               return;
            }
         }
      }
   }
}
