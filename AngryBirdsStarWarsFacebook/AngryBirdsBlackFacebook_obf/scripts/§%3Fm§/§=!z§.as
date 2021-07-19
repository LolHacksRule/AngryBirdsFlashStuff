package §?m§
{
   import §1!i§.§,#_§;
   import §1!i§.§7#&§;
   import §2"Y§.§?#Q§;
   import §7P§.GravityFilterCategory;
   import §<"B§.§-#'§;
   import §<"B§.§2!=§;
   import §<"B§.§5y§;
   import §<"B§.§7"B§;
   import §<"B§.§94§;
   import §<"B§.§>"l§;
   import §<"B§.§]§;
   import flash.geom.Point;
   
   public class §=!z§ extends §8!B§
   {
      
      private static const §74§:Number = 4.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §74§ = 4;
         }
      }
      
      protected var §`!u§:Number = 4.0;
      
      protected var §`!L§:Vector.<§>"l§> = null;
      
      protected var §@#;§:§,#_§;
      
      protected var §@!_§:Number = 0.0;
      
      protected var §>W§:Boolean;
      
      public function §=!z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§`!L§ = new Vector.<§>"l§>();
               while(!_loc2_)
               {
                  this.§@#;§ = new §,#_§();
                  if(!_loc2_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public static function §+#^§(param1:String) : §=!z§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=!z§ = new §=!z§();
         if(!_loc4_)
         {
            _loc2_.§ try§(param1);
         }
         return _loc2_;
      }
      
      public function get §?u§() : int
      {
         return this.§`!L§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§>W§;
      }
      
      override public function get worldGravity() : Number
      {
         return this.§@!_§;
      }
      
      public function §=!8§(param1:int) : §>"l§
      {
         return this.§`!L§[param1];
      }
      
      protected function §^"k§(param1:Object) : void
      {
      }
      
      protected function § try§(param1:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(§7#&§.§^9§(param1));
         if(!(_loc10_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = §7#&§.§'"!§(_loc2_);
         if(!_loc10_)
         {
            this.§^"k§(_loc3_);
            loop0:
            while(true)
            {
               §"!n§ = this.§=!"§(_loc3_.theme);
               while(true)
               {
                  §5#U§ = new Vector.<§0!§>();
                  while(_loc9_)
                  {
                     while(true)
                     {
                        §,!?§ = new Vector.<§5y§>();
                        do
                        {
                           §1!b§ = new Vector.<§94§>();
                        }
                        while(_loc10_);
                        
                        if(!(_loc9_ || param1))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr61);
         }
      }
      
      private function §1##§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§ "b§(param1,param2,"world");
      }
      
      private function §+!H§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§ "b§(param1,param2,"joints");
      }
      
      private function § "b§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:§"<§ = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = 0;
         var _loc4_:Array = [];
         §§push(param2);
         §§push("\"" + param3);
         if(!_loc14_)
         {
            §§push(§§pop() + "\"");
         }
         var _loc6_:int;
         §§push(_loc6_ = §§pop().indexOf(§§pop()));
         if(_loc13_ || param3)
         {
            if(§§pop() >= 0)
            {
               if(!(_loc14_ && this))
               {
                  §§push(param2);
                  if(!(_loc14_ && param3))
                  {
                     §§push(§§pop().substring(_loc6_));
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr71);
            }
            §§goto(addr149);
         }
         addr71:
         var _loc11_:int = 0;
         var _loc12_:* = param1;
         while(§§hasnext(_loc12_,_loc11_))
         {
            §§push(§§nextname(_loc11_,_loc12_));
            if(_loc13_ || param2)
            {
               _loc9_ = §§pop();
               if(!(_loc14_ && param3))
               {
                  addr107:
                  §§push(_loc8_);
                  §§push("\"" + _loc9_);
                  if(_loc13_)
                  {
                     §§push(§§pop() + "\"");
                  }
                  §§push(int(§§pop().indexOf(§§pop())));
                  if(_loc13_)
                  {
                     §§push(_loc10_ = §§pop());
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
               }
               (_loc5_ = new §"<§()).name = _loc9_;
               if(!_loc14_)
               {
                  _loc5_.index = _loc10_;
                  if(_loc14_ && this)
                  {
                     continue;
                  }
               }
               _loc4_.push(_loc5_);
               continue;
            }
            §§goto(addr107);
         }
         if(_loc13_)
         {
            addr149:
            _loc4_.sortOn("index",Array.NUMERIC);
         }
         var _loc7_:Vector.<String> = new Vector.<String>();
         if(_loc13_ || param2)
         {
            _loc11_ = 0;
            if(_loc13_)
            {
               for each(_loc5_ in _loc4_)
               {
                  if(_loc13_)
                  {
                     _loc7_.push(_loc5_.name);
                  }
               }
            }
         }
         return _loc7_;
      }
      
      private function §&"a§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(!(_loc8_ && this))
         {
            if(param1.ground)
            {
               if(!_loc8_)
               {
                  addr35:
                  this.§>W§ = true;
               }
            }
            var _loc3_:int = 0;
            for each(_loc4_ in param2)
            {
               §§push(Boolean((_loc5_ = param1[_loc4_]).startNumber));
               if(!(_loc8_ && param2))
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(_loc9_)
                        {
                           addr132:
                           if(_loc5_.name.indexOf("Bird") >= 0)
                           {
                              addr143:
                              this.§##_§(_loc5_);
                           }
                           else if(_loc5_.radius)
                           {
                              if(!(_loc8_ && param1))
                              {
                                 this.§`!&§(_loc5_);
                              }
                              addr121:
                              if(_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr143);
                           }
                           else
                           {
                              if(!this.§&"%§(_loc5_,_loc3_))
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 if(_loc9_ || this)
                                 {
                                    _loc3_++;
                                 }
                                 else
                                 {
                                    §§goto(addr121);
                                 }
                                 addr105:
                                 continue;
                              }
                              if(true)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr143);
                     }
                  }
               }
               §§goto(addr132);
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function §##_§(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5y§ = new §5y§();
         if(!(_loc4_ && _loc2_))
         {
            _loc2_.x = param1.x;
            loop0:
            while(true)
            {
               _loc2_.y = param1.y;
               while(true)
               {
                  _loc2_.angle = param1.angle;
                  while(!_loc4_)
                  {
                     addr84:
                     if(_loc3_ || this)
                     {
                        §[9§ = _loc2_.angle;
                        addr44:
                        loop9:
                        while(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           addr103:
                           while(true)
                           {
                              §§push(§§findproperty(§=!F§));
                              §§push(_loc2_.y);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() - 8.5);
                              }
                              §§pop().§=!F§ = §§pop();
                              break loop9;
                           }
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              addr77:
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr84);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc2_.index = param1.startNumber - 1;
                                    while(true)
                                    {
                                       if(_loc2_.index == 0)
                                       {
                                          while(_loc3_)
                                          {
                                             §7M§ = _loc2_.x;
                                          }
                                          continue;
                                          addr97:
                                       }
                                       else
                                       {
                                          addr32:
                                       }
                                       while(true)
                                       {
                                          §,!?§.push(_loc2_);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          §§goto(addr44);
                                       }
                                       return;
                                       §§goto(addr103);
                                    }
                                    §§goto(addr77);
                                 }
                                 addr118:
                              }
                              §§goto(addr44);
                           }
                           §§goto(addr97);
                        }
                        addr44:
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc2_.type = this.§=!"§(param1.definition);
            §§goto(addr118);
         }
      }
      
      private function §`!&§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>"l§ = new §>"l§();
         if(!(_loc3_ && param1))
         {
            _loc2_.x = param1.x;
            loop0:
            while(true)
            {
               _loc2_.y = param1.y;
               loop1:
               while(true)
               {
                  _loc2_.shape = new §?#Q§(param1.radius);
                  while(true)
                  {
                     _loc2_.type = param1.definition;
                     loop3:
                     while(_loc4_ || param1)
                     {
                        _loc2_.angle = this.§+!7§(param1.angle);
                        while(true)
                        {
                           _loc2_.§?#_§ = param1.gravitationMinForce;
                           while(!(_loc3_ && _loc2_))
                           {
                              continue loop1;
                              addr50:
                              if(_loc4_ || param1)
                              {
                                 if(_loc4_)
                                 {
                                    this.§`!L§.push(_loc2_);
                                    addr59:
                                    if(_loc3_)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr50);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc2_.§=5§ = this.§`!u§;
                                                continue loop8;
                                             }
                                             addr75:
                                          }
                                       }
                                       continue;
                                    }
                                    if(_loc4_)
                                    {
                                       return;
                                       addr42:
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc2_.§8!i§ = param1.gravitationMaxForce;
            §§goto(addr75);
         }
         §§goto(addr42);
      }
      
      protected function §=!?§(param1:Object) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") < 0)
            {
               if(param1.definition.toUpperCase() == "GROUND")
               {
                  if(_loc2_)
                  {
                     this.§>W§ = true;
                     addr28:
                     §§push(true);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr87:
                     return true;
                  }
                  return §§pop();
               }
               §§push(false);
               if(!_loc3_)
               {
                  return §§pop();
               }
               §§goto(addr28);
            }
         }
         §§goto(addr87);
      }
      
      protected function §&"%§(param1:Object, param2:int) : §94§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§94§ = null;
         var _loc4_:§7"B§ = null;
         var _loc5_:§]#3§ = null;
         var _loc6_:§2!=§ = null;
         if(_loc7_ || _loc3_)
         {
            §§push(this.§=!?§(param1));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc8_ && param2))
                  {
                     return null;
                  }
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1.explosionRadius == undefined);
                     if(_loc7_)
                     {
                        §§push(!§§pop());
                        if(_loc7_)
                        {
                           addr125:
                           §§push(§§pop());
                           loop9:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§pop();
                                    while(_loc7_ || param1)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(param1.explosionForce == undefined);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc7_ || param2))
                                             {
                                                break;
                                             }
                                             if(!_loc8_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(param1.explosionDamageRadius == undefined);
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(!§§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr62:
                                                                           §§push(§§pop());
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               addr156:
                                                               §§push(!§§pop());
                                                               break loop5;
                                                            }
                                                            break;
                                                         }
                                                         addr165:
                                                         (_loc4_ = new §7"B§()).explosionRadius = param1.explosionRadius;
                                                         if(_loc7_)
                                                         {
                                                            _loc4_.explosionForce = param1.explosionForce;
                                                            addr187:
                                                            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
                                                            addr197:
                                                         }
                                                         _loc4_.explosionDamage = param1.explosionDamage;
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr187);
                                                               }
                                                               _loc3_ = _loc4_;
                                                               if(_loc7_)
                                                               {
                                                                  addr253:
                                                                  _loc3_.x = param1.x;
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     _loc3_.y = param1.y;
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        _loc3_.angle = this.§+!7§(param1.angle);
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           _loc3_.type = this.§=!"§(param1.definition);
                                                                           while(true)
                                                                           {
                                                                              _loc3_.id = param2;
                                                                              continue loop11;
                                                                              addr307:
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr466:
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               §§goto(addr466);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         addr192:
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr62);
                                                   }
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      break;
                                                   }
                                                   continue loop9;
                                                }
                                                if(!§§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§pop();
                                                      if(_loc7_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr235:
                                                      addr235:
                                                      _loc3_ = new §94§();
                                                      §§goto(addr253);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr156);
                                                   }
                                                }
                                                break;
                                                addr103:
                                             }
                                             continue loop2;
                                          }
                                          addr157:
                                          if(§§pop())
                                          {
                                             if(_loc7_ || this)
                                             {
                                                §§goto(addr165);
                                             }
                                             else
                                             {
                                                addr210:
                                                (_loc5_ = new §]#3§()).shotPattern = param1.shotPattern;
                                                _loc3_ = _loc5_;
                                             }
                                          }
                                          else
                                          {
                                             if(param1.shotPattern != undefined)
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§goto(addr210);
                                                }
                                                else
                                                {
                                                   §§goto(addr235);
                                                }
                                             }
                                             else if(!param1.triggerEvents)
                                             {
                                                §§goto(addr235);
                                             }
                                             else
                                             {
                                                (_loc6_ = new §2!=§()).§=#X§.initialize(param1.triggerEvents.onDestroyed);
                                                _loc3_ = _loc6_;
                                             }
                                             §§goto(addr235);
                                          }
                                          §§goto(addr253);
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr127:
                              }
                              §§goto(addr103);
                           }
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr125);
                  }
               }
               §§goto(addr235);
            }
         }
         §§goto(addr210);
      }
      
      private function §'"-§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§-#'§ = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = false;
         var _loc18_:* = NaN;
         var _loc19_:* = false;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:int = 0;
         var _loc24_:Number = NaN;
         var _loc25_:* = NaN;
         if(_loc28_)
         {
            if(!param1)
            {
               if(_loc28_ || param2)
               {
                  §§goto(addr80);
               }
            }
            loop0:
            for each(_loc3_ in param2)
            {
               _loc5_ = (_loc4_ = param1[_loc3_]).type;
               _loc6_ = new Point(_loc4_.x1,_loc4_.y1);
               _loc7_ = new Point(_loc4_.x2,_loc4_.y2);
               _loc8_ = null;
               if(!_loc29_)
               {
                  §§push(_loc4_.end1);
                  while(true)
                  {
                     _loc9_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc4_.end2);
                        if(_loc29_ && _loc3_)
                        {
                           break;
                        }
                        _loc10_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§@#;§);
                           loop4:
                           while(true)
                           {
                              §§push(_loc9_);
                              loop5:
                              while(true)
                              {
                                 §§push(int(§§pop()[§§pop()]));
                                 loop6:
                                 while(true)
                                 {
                                    _loc11_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§@#;§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc10_);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(int(§§pop()[§§pop()]));
                                             loop10:
                                             while(!_loc29_)
                                             {
                                                _loc12_ = §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§@#;§);
                                                   loop12:
                                                   for(; _loc28_; while(true)
                                                   {
                                                      §§push(this.§@#;§);
                                                      if(_loc29_ && param2)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc28_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(_loc10_);
                                                      if(_loc28_)
                                                      {
                                                         if(_loc29_ && this)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc29_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§goto(addr372);
                                                         §§push(§§pop()[§§pop()] == null);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr391);
                                                      }
                                                      §§goto(addr398);
                                                   })
                                                   {
                                                      §§push(_loc9_);
                                                      while(true)
                                                      {
                                                         §§push(§§pop()[§§pop()] == null);
                                                         if(_loc28_)
                                                         {
                                                            §§push(§§pop());
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     loop16:
                                                                     while(!§§pop())
                                                                     {
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(_loc4_.collideConnected));
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              _loc13_ = §§pop();
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§-#'§.§>"z§);
                                                                                    addr313:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       addr314:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!(_loc28_ || param2))
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       if(!(_loc28_ || param1))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§-#'§.§,"?§);
                                                                                       if(_loc28_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(_loc28_ || param1)
                                                                                          {
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         §§push(Boolean(_loc4_.limit));
                                                                                                      }
                                                                                                      addr286:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc8_ = new §-#'§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_);
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(!(_loc29_ && param2))
                                                                                                         {
                                                                                                            if(§§pop() == §-#'§.§5&§)
                                                                                                            {
                                                                                                               addr599:
                                                                                                               _loc23_ = _loc4_.coordType;
                                                                                                               addr583:
                                                                                                               _loc24_ = _loc4_.dampingRatio;
                                                                                                               addr600:
                                                                                                               addr584:
                                                                                                               addr596:
                                                                                                               §§push(Number(_loc4_.frequency));
                                                                                                               if(!(_loc29_ && param1))
                                                                                                               {
                                                                                                                  _loc25_ = §§pop();
                                                                                                                  addr571:
                                                                                                                  if(!(_loc29_ && param2))
                                                                                                                  {
                                                                                                                     _loc8_.coordinateType = _loc23_;
                                                                                                                     addr549:
                                                                                                                     if(!(_loc29_ && this))
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           addr540:
                                                                                                                           _loc8_.dampingRatio = _loc24_;
                                                                                                                           _loc8_.frequency = _loc25_;
                                                                                                                           if(!(_loc29_ && param2))
                                                                                                                           {
                                                                                                                              if(!(_loc29_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!_loc29_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr540);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr571);
                                                                                                                              }
                                                                                                                              §§goto(addr549);
                                                                                                                           }
                                                                                                                           addr544:
                                                                                                                           §§goto(addr544);
                                                                                                                        }
                                                                                                                        §§goto(addr600);
                                                                                                                     }
                                                                                                                     §§goto(addr584);
                                                                                                                     addr578:
                                                                                                                  }
                                                                                                                  §§goto(addr596);
                                                                                                               }
                                                                                                               §§goto(addr583);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr599);
                                                                                                      }
                                                                                                      §§goto(addr578);
                                                                                                   }
                                                                                                }
                                                                                                addr601:
                                                                                                _loc8_.isBreakable = _loc4_.breakable;
                                                                                                if(!_loc29_)
                                                                                                {
                                                                                                   _loc8_.minBreakForce = _loc4_.breakForce;
                                                                                                   addr658:
                                                                                                   loop42:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc8_.§-"A§ = _loc4_.oneWayDestroy;
                                                                                                      addr643:
                                                                                                      loop43:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr616:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_.type == §-#'§.§use §)
                                                                                                            {
                                                                                                               if(!_loc29_)
                                                                                                               {
                                                                                                                  continue loop42;
                                                                                                               }
                                                                                                               addr635:
                                                                                                               while(_loc28_)
                                                                                                               {
                                                                                                               }
                                                                                                               continue loop43;
                                                                                                               addr635:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §6!Z§.push(_loc8_);
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr635);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop42;
                                                                                                      }
                                                                                                   }
                                                                                                   addr658:
                                                                                                }
                                                                                                while(false)
                                                                                                {
                                                                                                   §§goto(addr616);
                                                                                                }
                                                                                                continue loop0;
                                                                                                addr284:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr330:
                                                                                             }
                                                                                             while(!(_loc29_ && _loc3_))
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop24;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc29_ && this))
                                                                                             {
                                                                                                _loc14_ = §§pop();
                                                                                                loop26:
                                                                                                for(; !(_loc29_ && this); if(_loc28_ || _loc3_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                })
                                                                                                {
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§push(Number(_loc4_.lowerLimit));
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc15_ = §§pop();
                                                                                                      loop28:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(_loc4_.upperLimit));
                                                                                                         loop29:
                                                                                                         while(_loc28_)
                                                                                                         {
                                                                                                            _loc16_ = §§pop();
                                                                                                            loop30:
                                                                                                            while(!(_loc29_ && param1))
                                                                                                            {
                                                                                                               §§push(Boolean(_loc4_.motor));
                                                                                                               loop31:
                                                                                                               while(!_loc29_)
                                                                                                               {
                                                                                                                  if(_loc28_ || param1)
                                                                                                                  {
                                                                                                                     _loc17_ = §§pop();
                                                                                                                     loop32:
                                                                                                                     for(; _loc28_; if(_loc28_ || param2)
                                                                                                                     {
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           §§goto(addr184);
                                                                                                                        }
                                                                                                                        break loop16;
                                                                                                                     })
                                                                                                                     {
                                                                                                                        if(_loc29_ && param2)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        if(_loc29_ && param1)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        §§push(Number(_loc4_.motorSpeed));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc18_ = §§pop();
                                                                                                                           loop34:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 if(_loc29_)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 if(_loc29_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr161:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(_loc4_.backAndForth));
                                                                                                                                       if(_loc29_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                       while(_loc28_ || param1)
                                                                                                                                       {
                                                                                                                                          continue loop32;
                                                                                                                                          _loc20_ = §§pop();
                                                                                                                                          if(_loc28_ || param2)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr286);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§push(Number(_loc4_.maxTorque));
                                                                                                                           addr184:
                                                                                                                           continue loop17;
                                                                                                                           if(_loc29_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc29_)
                                                                                                                           {
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           §§goto(addr137);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             addr398:
                                                                                             addr398:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                break loop25;
                                                                                             }
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       §§goto(addr313);
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     throw new Error("Invalid joint! Between objects: " + _loc9_ + " and " + _loc10_);
                                                                  }
                                                                  addr372:
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr398);
                                                      }
                                                   }
                                                   continue loop4;
                                                   if(_loc29_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   if(false)
                                                   {
                                                      §§goto(addr161);
                                                   }
                                                   _loc8_ = new §-#'§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
                                                   if(!_loc29_)
                                                   {
                                                      if(_loc5_ == §-#'§.§,"?§)
                                                      {
                                                         if(_loc28_)
                                                         {
                                                            §§push(Number(_loc4_.worldAxisX));
                                                            loop48:
                                                            while(true)
                                                            {
                                                               _loc21_ = §§pop();
                                                               if(_loc29_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Number(_loc4_.worldAxisY));
                                                               if(_loc29_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               _loc22_ = §§pop();
                                                               if(!_loc29_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc8_.axisX = _loc21_;
                                                                     if(_loc28_)
                                                                     {
                                                                        _loc8_.axisY = _loc22_;
                                                                        if(_loc28_ || param1)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr504:
                                                                           §§goto(addr601);
                                                                        }
                                                                        break loop48;
                                                                     }
                                                                     §§goto(addr643);
                                                                  }
                                                               }
                                                               §§goto(addr658);
                                                            }
                                                            §§goto(addr631);
                                                         }
                                                         §§goto(addr658);
                                                      }
                                                      §§goto(addr504);
                                                   }
                                                   §§goto(addr643);
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr196);
            }
            return;
         }
         addr80:
      }
      
      private function §function§(param1:Object, param2:Number, param3:String) : §0!§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc4_:§0!§ = new §0!§();
         var _loc5_:Object = null;
         if(!_loc12_)
         {
            if(param1.ipad)
            {
               addr28:
               _loc5_ = param1.ipad;
            }
            else
            {
               _loc5_ = param1.iphone;
            }
            var _loc6_:Number = _loc5_.screenWidth;
            var _loc7_:Number = _loc5_.screenHeight;
            var _loc8_:Number = _loc5_.sx;
            var _loc9_:Number = _loc5_.px;
            var _loc10_:Number = _loc5_.py;
            if(_loc11_ || param3)
            {
               §§push(_loc4_);
               §§push(_loc9_);
               if(_loc11_)
               {
                  §§push(§§pop() / param2);
               }
               §§pop().x = §§pop();
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  §§push(_loc10_);
                  if(!(_loc12_ && param3))
                  {
                     §§push(§§pop() / param2);
                  }
                  §§pop().y = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(_loc4_);
                     §§push(_loc9_);
                     if(_loc11_)
                     {
                        §§push(0.5);
                        if(!_loc12_)
                        {
                           §§push(_loc6_);
                           if(!(_loc12_ && this))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc11_)
                              {
                                 addr259:
                                 §§push(§§pop() / _loc8_);
                                 if(!_loc12_)
                                 {
                                    addr267:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc12_)
                                    {
                                       §§push(param2);
                                    }
                                    §§pop().left = §§pop();
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       §§push(_loc9_);
                                       if(_loc11_ || param3)
                                       {
                                          §§push(0.5);
                                          if(_loc11_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc11_ || param2)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc11_ || param3)
                                                {
                                                   addr224:
                                                   §§push(§§pop() / _loc8_);
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc11_)
                                                      {
                                                         addr236:
                                                         §§push(§§pop() / param2);
                                                      }
                                                      §§pop().right = §§pop();
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(_loc10_);
                                                         if(_loc11_)
                                                         {
                                                            §§push(0.5);
                                                            if(!(_loc12_ && this))
                                                            {
                                                               §§push(_loc7_);
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     addr179:
                                                                     §§push(§§pop() / _loc8_);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc11_ || param3)
                                                                        {
                                                                           addr191:
                                                                           §§push(§§pop() / param2);
                                                                        }
                                                                        §§pop().top = §§pop();
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           §§push(_loc10_);
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(0.5);
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc11_ || param3)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc12_ && param2))
                                                                                    {
                                                                                       addr125:
                                                                                       §§push(§§pop() / _loc8_);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                       }
                                                                                       addr133:
                                                                                       §§pop().bottom = §§pop() / §§pop();
                                                                                       addr132:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop1;
                                                                                       addr134:
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§goto(addr132);
                                                                                       §§push(param2);
                                                                                    }
                                                                                    §§goto(addr133);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr125);
                                                                           addr88:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc12_ && param3))
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      addr238:
                                                   }
                                                }
                                                §§goto(addr236);
                                             }
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr236);
                                    }
                                 }
                              }
                              §§goto(addr267);
                              §§push(§§pop() / §§pop());
                           }
                        }
                        §§goto(addr259);
                     }
                     §§goto(addr267);
                  }
               }
            }
            §§goto(addr238);
         }
         §§goto(addr28);
      }
      
      protected function §+!7§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() * 180);
            if(!(_loc2_ && param1))
            {
               return §§pop() / Math.PI;
            }
         }
      }
      
      protected function §=!"§(param1:String) : String
      {
         return param1;
      }
   }
}
