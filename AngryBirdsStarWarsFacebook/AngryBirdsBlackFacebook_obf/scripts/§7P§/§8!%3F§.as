package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[""§.§]"4§;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class §8!?§ extends §9"k§
   {
      
      public static const §+"§:String = "PinkBird";
      
      public static var mSpecialtyBeamPhase1Time:Number;
      
      public static var mSpecialtyBeamPhase2Time:Number;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+"§ = "PinkBird";
         }
      }
      
      private var §3#0§:Number;
      
      private var §4!q§:Number;
      
      private var §?!E§:Number;
      
      private var §+!;§:Number;
      
      private var §6!j§:Number;
      
      private var §,#§:Number;
      
      private var §-"4§:int = -1;
      
      private var §!!z§:Vector.<§2"L§>;
      
      private var §2!K§:Boolean = false;
      
      private var §3#6§:§]"4§;
      
      private var §&!j§:Vector.<§&#=§>;
      
      private var §="m§:b2Vec2;
      
      public function §8!?§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            this.§&!j§ = new Vector.<§&#=§>();
            loop0:
            while(true)
            {
               super(param1,param2,param3,param4,param5,param6,param7);
               loop1:
               while(true)
               {
                  this.§!!z§ = new Vector.<§2"L§>();
                  loop2:
                  while(true)
                  {
                     this.§3#0§ = param4.getNumberProperty("specialtySpaceGravityMultiplier");
                     while(true)
                     {
                        this.§4!q§ = param4.getNumberProperty("specialtyMaximumVelocity");
                        while(!(_loc9_ && param3))
                        {
                           this.§?!E§ = param4.getNumberProperty("specialtyClassicGravityMultiplier");
                           continue loop2;
                           addr105:
                           if(_loc8_ || param2)
                           {
                              if(_loc8_)
                              {
                                 this.§6!j§ = param4.getNumberProperty("specialtyStartImpulse");
                                 loop8:
                                 do
                                 {
                                    this.§,#§ = param4.getNumberProperty("specialtyRadius");
                                    while(_loc8_)
                                    {
                                       mSpecialtyBeamPhase1Time = param4.getNumberProperty("specialtyBeamPhase1Time") * 1000;
                                       while(!(_loc9_ && this))
                                       {
                                          continue loop1;
                                          mSpecialtyBeamPhase2Time = param4.getNumberProperty("specialtyBeamPhase2Time") * 1000;
                                          if(!_loc9_)
                                          {
                                             continue loop8;
                                          }
                                       }
                                    }
                                    addr98:
                                    while(_loc8_ || this)
                                    {
                                       §§goto(addr105);
                                    }
                                    continue loop2;
                                 }
                                 while(_loc9_);
                                 
                                 return;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§+!;§ = param4.getNumberProperty("specialtyDuration") * 1000;
            §§goto(addr98);
         }
      }
      
      private static function §?!k§(param1:b2Body) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1.GetUserData() is §3C§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     addr121:
                     while(true)
                     {
                        §§pop();
                        addr122:
                        while(true)
                        {
                           §§push(param1.GetUserData() is §=T§);
                        }
                     }
                     addr121:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr121);
         }
         §§goto(addr80);
      }
      
      private static function § "L§(param1:§&#=§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"t§ = param1.levelItem;
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc2_)
            {
               §§pop();
               loop0:
               while(true)
               {
                  §§push(param1 is §1#E§);
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  addr126:
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop13:
                     while(true)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           loop10:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       addr75:
                                       §§push(true);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                return §§pop();
                                             }
                                             addr130:
                                             while(!(_loc3_ && param1))
                                             {
                                                §§push(!§§pop());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   while(true)
                                                   {
                                                   }
                                                   addr112:
                                                }
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                addr141:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr143:
                                                         while(true)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      addr142:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr112);
                                                   }
                                                }
                                             }
                                             addr95:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                continue loop10;
                                             }
                                          }
                                          §§goto(addr141);
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          addr118:
                                          while(true)
                                          {
                                             continue loop13;
                                          }
                                          §§goto(addr75);
                                       }
                                       addr117:
                                    }
                                    §§goto(addr143);
                                 }
                                 else if(_loc4_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    addr24:
                                    §§push(false);
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop13;
                                       }
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr142);
                                    }
                                    else
                                    {
                                       §§goto(addr75);
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr24);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr130);
               §§goto(addr126);
            }
         }
         §§goto(addr118);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.update(param1,param2);
            loop0:
            while(§[!o§)
            {
               if(_loc4_)
               {
                  this.§-"4§ += param1;
               }
               loop1:
               while(true)
               {
                  if(!this.§2!K§)
                  {
                     this.§"#;§();
                     if(_loc3_ && _loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  if(_loc4_)
                  {
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     if(this.§-"4§ > this.§+!;§)
                     {
                        if(!_loc3_)
                        {
                           addr75:
                           this.§2!K§ = false;
                        }
                        while(true)
                        {
                        }
                        addr78:
                     }
                     while(true)
                     {
                        this.§;#>§();
                        break loop1;
                     }
                  }
                  §§goto(addr75);
               }
               while(_loc3_)
               {
                  §§goto(addr78);
                  §§goto(addr54);
               }
               break;
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super.render(param1,param2,param3);
            loop0:
            while(true)
            {
               §§push(Boolean(§[!o§));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     for(; §§pop(); continue loop1)
                     {
                        if(_loc4_ || param2)
                        {
                           if(_loc4_ || param1)
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              this.§4V§(param1);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.§2!K§);
                                 if(_loc4_ || this)
                                 {
                                    addr38:
                                    if(_loc4_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              addr101:
                           }
                        }
                        break;
                     }
                     return;
                     addr63:
                  }
                  §§goto(addr100);
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr63);
               }
            }
         }
         §§goto(addr101);
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Vector.<§&#=§> = null;
         var _loc18_:§&#=§ = null;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         if(!(_loc23_ && param3))
         {
            super.specialPower(param1,param2,param3);
         }
         loop0:
         while(true)
         {
            addr47:
            addr68:
            addr82:
            while(true)
            {
               this.§="m§ = new b2Vec2(param2,param3);
               continue loop0;
            }
            var _loc4_:§^!K§ = §^!K§(§,!q§.§9!,§.levelObjects);
            §§push(param2);
            if(!(_loc23_ && this))
            {
               §§push(§§pop() - §3!t§().GetPosition().x);
               if(!_loc23_)
               {
                  addr90:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(param3);
               if(!(_loc23_ && param1))
               {
                  §§push(§§pop() - §3!t§().GetPosition().y);
                  if(!_loc23_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc6_:* = §§pop();
               var _loc7_:Number = Math.atan2(_loc6_,_loc5_);
               var _loc8_:Number = Math.abs(§,!q§.§9!,§.§""?§.§="q§ - §,!q§.§9!,§.§""?§.§!M§);
               var _loc9_:Number = Math.abs(§,!q§.§9!,§.§""?§.§9!p§ - §,!q§.§9!,§.§""?§.§""p§);
               var _loc10_:b2Vec2;
               §§push((_loc10_ = new b2Vec2(_loc8_,_loc9_)).Length());
               if(_loc24_ || this)
               {
                  §§push(Number(§§pop()));
               }
               var _loc11_:* = §§pop();
               var _loc12_:Number = §3!t§().GetPosition().x + Math.cos(_loc7_) * _loc11_;
               var _loc13_:Number = §3!t§().GetPosition().y + Math.sin(_loc7_) * _loc11_;
               if(!_loc23_)
               {
                  this.§3#6§ = new §]"4§(§3!t§().GetPosition().x,§3!t§().GetPosition().y,_loc12_,_loc13_);
                  loop3:
                  while(true)
                  {
                     §§push(this.§3#6§);
                     loop4:
                     while(true)
                     {
                        §§pop().§6n§();
                        loop5:
                        while(_loc24_)
                        {
                           §§push(this.§3#6§);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop().§-!I§());
                              if(!_loc23_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc23_)
                                 {
                                    if(§§pop())
                                    {
                                       addr341:
                                       while(true)
                                       {
                                          §§pop();
                                          addr342:
                                          while(_loc24_)
                                          {
                                             §§push(§?!k§(this.§3#6§.§;"b§[0].body));
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          continue loop5;
                                       }
                                       addr341:
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(this.§3#6§);
                                                if(_loc24_ || this)
                                                {
                                                   §§push(§§pop().§-!I§());
                                                   if(!(_loc24_ || param2))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!(_loc24_ || param2))
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc23_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§3#6§);
                                                            addr257:
                                                            loop14:
                                                            while(!_loc23_)
                                                            {
                                                               §§push(Number(§§pop().§;"b§[0].collisionPoint.x));
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  addr266:
                                                                  addr329:
                                                                  while(!(_loc23_ && param3))
                                                                  {
                                                                     if(_loc24_ || this)
                                                                     {
                                                                        if(!(_loc23_ && this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§3#6§);
                                                                              if(_loc24_ || this)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           addr297:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§3#6§);
                                                                           break loop14;
                                                                        }
                                                                        addr310:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop12;
                                                                     §§goto(addr266);
                                                                  }
                                                               }
                                                            }
                                                            addr213:
                                                            continue loop6;
                                                            if(!(_loc23_ && param3))
                                                            {
                                                               if(true)
                                                               {
                                                                  _loc17_ = _loc4_.§-!f§(this.§3#6§.§;"b§[0].collisionPoint.x,this.§3#6§.§;"b§[0].collisionPoint.y,-this.§,#§,this.§,#§,-this.§,#§,this.§,#§);
                                                                  for each(_loc18_ in _loc17_)
                                                                  {
                                                                     if(_loc24_)
                                                                     {
                                                                        §§push(§ "L§(_loc18_));
                                                                        loop22:
                                                                        while(§§pop())
                                                                        {
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc19_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!(_loc24_ || this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       loop27:
                                                                                       for(; !(_loc23_ && param3); while(_loc24_ || param3)
                                                                                       {
                                                                                          _loc19_ = §§pop();
                                                                                          §§goto(addr479);
                                                                                       })
                                                                                       {
                                                                                          _loc20_ = §§pop();
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(levelItem.getItemHeight() > 0);
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop30:
                                                                                                   while(_loc24_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      do
                                                                                                      {
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         §§push(levelItem.getItemWidth() > 0);
                                                                                                         if(_loc23_ && param2)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                      }
                                                                                                      while(_loc24_);
                                                                                                      
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§&!j§.push(_loc18_);
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break loop22;
                                                                                                               addr421:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(levelItem.getItemHeight()));
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               _loc20_ = §§pop();
                                                                                                            }
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                      }
                                                                                                      addr428:
                                                                                                      addr479:
                                                                                                      while(!(_loc23_ && param2))
                                                                                                      {
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            continue loop38;
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr421);
                                                                                                         §§goto(addr428);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr490);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr419);
                                                                  }
                                                                  addr524:
                                                                  this.§ !G§();
                                                               }
                                                               continue loop12;
                                                               if(!_loc23_)
                                                               {
                                                                  this.§8V§();
                                                               }
                                                               var _loc14_:§ [§;
                                                               if(_loc14_ = param1 as § [§)
                                                               {
                                                                  if(!(_loc23_ && param2))
                                                                  {
                                                                     _loc14_.§&Q§(100,1200,400,0.3);
                                                                     if(_loc24_)
                                                                     {
                                                                        param1.addObject(reticleSprite,param2,param3,0,§;=§.§""3§,false,false,false,1,true);
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr524);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr342);
                                                }
                                                §§goto(addr257);
                                             }
                                             continue loop7;
                                          }
                                          §§goto(addr310);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr341);
                           }
                        }
                        continue loop3;
                     }
                  }
               }
               §§goto(addr297);
            }
            §§goto(addr90);
         }
      }
      
      public function get specialtyBeamPhase1Time() : int
      {
         return mSpecialtyBeamPhase1Time;
      }
      
      public function get specialtyBeamPhase2Time() : int
      {
         return mSpecialtyBeamPhase2Time;
      }
      
      private function § !G§() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:§&#=§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc1_:§^!K§ = §^!K§(§,!q§.§9!,§.levelObjects);
         loop0:
         for each(_loc2_ in this.§&!j§)
         {
            if(!_loc10_)
            {
               _loc2_.§=G§ = GravityFilterCategory.LEIA_FORCE_OBJECT;
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  §§push(this.§3#0§);
                  if(!_loc10_)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§=5§ = §§pop();
                  loop2:
                  while(true)
                  {
                     _loc1_.§ a§(_loc2_,"PINK",2500);
                     loop3:
                     while(_loc11_)
                     {
                        §§push(Number(Math.atan2(_loc2_.§3!t§().GetPosition().y - §3!t§().GetPosition().y,_loc2_.§3!t§().GetPosition().x - §3!t§().GetPosition().x)));
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop5:
                           while(true)
                           {
                              addr104:
                              while(true)
                              {
                                 §§push(this.§6!j§);
                                 addr107:
                                 while(true)
                                 {
                                    §§push(§§pop() * Math.cos(_loc3_));
                                    addr121:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr122:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr123:
                                          while(_loc11_)
                                          {
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                           addr80:
                           if(_loc10_ && _loc1_)
                           {
                              continue;
                           }
                           §§push(Number(§§pop()));
                           if(_loc11_ || this)
                           {
                              _loc5_ = §§pop();
                              if(_loc11_)
                              {
                                 if(_loc11_)
                                 {
                                    if(_loc11_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr104);
                                       }
                                       addr173:
                                       §§push(§§findproperty(b2Vec2));
                                       §§push(_loc4_);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() * _loc2_.§3!t§().GetMass());
                                       }
                                       §§push(_loc5_);
                                       if(_loc11_ || _loc1_)
                                       {
                                          §§push(§§pop() * _loc2_.§3!t§().GetMass());
                                       }
                                       _loc6_ = new §§pop().b2Vec2(§§pop(),§§pop());
                                       _loc7_ = new b2Vec2(_loc2_.§'"8§(),_loc2_.§;">§());
                                       if(!(_loc10_ && _loc1_))
                                       {
                                          _loc2_.§3!t§().ApplyImpulse(_loc6_,_loc7_);
                                          if(!_loc10_)
                                          {
                                             _loc1_.§`2§(Math.abs(this.§6!j§),_loc2_.§3!t§());
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr122);
                        }
                     }
                     continue loop1;
                  }
               }
            }
            while(true)
            {
               §§push(this.§6!j§);
               if(!(_loc10_ && _loc1_))
               {
                  §§push(§§pop() * Math.sin(_loc3_));
                  if(_loc11_ || _loc3_)
                  {
                     addr76:
                     if(_loc11_)
                     {
                        if(_loc11_)
                        {
                           §§goto(addr80);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr88);
               }
               §§goto(addr76);
            }
            §§goto(addr173);
         }
      }
      
      private function §;#>§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&#=§ = null;
         if(_loc4_)
         {
            if(this.§&!j§)
            {
               addr24:
               var _loc3_:* = this.§&!j§;
               loop0:
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc1_.§3!t§())
                        {
                           while(true)
                           {
                              if(!this.§2!K§)
                              {
                                 if(_loc4_)
                                 {
                                    _loc1_.§=G§ = GravityFilterCategory.DEFAULT;
                                 }
                              }
                              else
                              {
                                 if(_loc1_.§3!t§().GetLinearVelocity().Length() < this.§4!q§)
                                 {
                                    if(_loc1_.§=G§ != GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT)
                                    {
                                       if(_loc4_ || _loc1_)
                                       {
                                          if(_loc5_)
                                          {
                                             addr130:
                                             break;
                                          }
                                          _loc1_.§=G§ = GravityFilterCategory.LEIA_FORCE_OBJECT;
                                       }
                                       if(_loc4_)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             if(false)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          addr97:
                                          _loc1_.§=G§ = GravityFilterCategory.DEFAULT;
                                       }
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr97);
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr130);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      private function §8V§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2"L§ = null;
         if(_loc3_)
         {
            §§push(Boolean(this.§&!j§));
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§pop();
                     §§goto(addr60);
                  }
               }
            }
            if(§§pop())
            {
               §§goto(addr60);
            }
            else
            {
               _loc1_ = new §2"L§(this,null,§2"L§.§#!P§,this.§="m§);
            }
            §§goto(addr89);
         }
         addr60:
         if(!_loc2_)
         {
            §§push(this.§&!j§.length > 0);
         }
         _loc1_ = new §2"L§(this,this.§&!j§[0],§2"L§.§#!P§);
         if(_loc3_ || _loc3_)
         {
            _loc1_.addEventListener(§2"L§.§%m§,this.§?"&§);
            addr89:
            if(!_loc2_)
            {
               this.§!!z§.push(_loc1_);
            }
         }
      }
      
      private function §?"&§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§!!z§[0].removeEventListener(§2"L§.§%m§,this.§?"&§);
         }
         do
         {
            this.§!"H§();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      private function §!"H§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:§2"L§ = null;
         if(_loc4_ || _loc3_)
         {
            §§push(Boolean(this.§&!j§));
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        addr51:
                        if(this.§&!j§.length > 1)
                        {
                           if(_loc4_ || _loc1_)
                           {
                              addr59:
                              _loc1_ = 1;
                           }
                           while(_loc1_ < this.§&!j§.length)
                           {
                              _loc2_ = new §2"L§(this,this.§&!j§[_loc1_],§2"L§.§6o§);
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.§!!z§.push(_loc2_);
                                 if(!_loc3_)
                                 {
                                    _loc1_++;
                                 }
                              }
                           }
                           if(_loc3_ && _loc1_)
                           {
                              addr146:
                              this.§2!K§ = false;
                           }
                           §§goto(addr149);
                        }
                        else
                        {
                           §§push(!this.§&!j§);
                           if(_loc4_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr120:
                                    §§pop();
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(this.§&!j§.length == 0);
                                    }
                                    §§goto(addr146);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr146);
                                 }
                              }
                              addr149:
                              return;
                           }
                           §§goto(addr120);
                        }
                     }
                     §§goto(addr59);
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      private function §4V§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2"L§ = null;
         if(_loc6_)
         {
            if(this.§!!z§)
            {
               for each(_loc2_ in this.§!!z§)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc2_.update(param1);
                  }
               }
               addr25:
            }
            return;
         }
         §§goto(addr25);
      }
      
      private function §"#;§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§2"L§ = null;
         if(!_loc4_)
         {
            if(this.§!!z§)
            {
               addr25:
               for each(_loc1_ in this.§!!z§)
               {
                  if(!_loc4_)
                  {
                     _loc1_.dispose();
                  }
               }
               if(!(_loc4_ && _loc1_))
               {
                  this.§!!z§ = null;
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      override protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return true;
      }
   }
}
