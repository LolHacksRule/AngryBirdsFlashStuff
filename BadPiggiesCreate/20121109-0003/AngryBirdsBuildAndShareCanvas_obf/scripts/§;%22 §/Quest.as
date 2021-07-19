package §;" §
{
   import §%!0§.§,4§;
   import §+V§.§-!g§;
   import §4m§.§+r§;
   import §4m§.§3g§;
   import §4m§.§8o§;
   import §4m§.§9g§;
   import §4m§.§^!K§;
   import §7t§.§7a§;
   import §]" §.§?!m§;
   import §`!,§.§[!&§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §^E§:String = "[done]";
      
      public static const §4Z§:String = "None";
      
      public static const §[R§:String = "Static";
      
      public static const §`!$§:String = "Intro";
      
      public static const §'!X§:String = "Conditions";
      
      public static const §""0§:String = "ReadyForTest";
      
      public static const §;!b§:String = "StabilityCheck";
      
      public static const §0"?§:String = "ReadyForPlay";
      
      public static var §[!q§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^E§ = "[done]";
            loop0:
            while(true)
            {
               §4Z§ = "None";
               loop1:
               while(true)
               {
                  §[R§ = "Static";
                  while(true)
                  {
                     §`!$§ = "Intro";
                     loop4:
                     for(; _loc2_ || Quest; loop6:
                     while(_loc2_ || Quest)
                     {
                        §0"?§ = "ReadyForPlay";
                        while(true)
                        {
                           if(!(_loc1_ && Quest))
                           {
                              continue loop1;
                           }
                           addr114:
                           while(true)
                           {
                              §'!X§ = "Conditions";
                              break loop6;
                           }
                           addr80:
                           §[!q§ = false;
                           if(_loc2_)
                           {
                              if(!(_loc2_ || Quest))
                              {
                                 continue loop6;
                              }
                              §§goto(addr37);
                              continue loop6;
                           }
                        }
                        continue loop1;
                     })
                     {
                        §""0§ = "ReadyForTest";
                        while(true)
                        {
                           §;!b§ = "StabilityCheck";
                           continue loop4;
                           addr37:
                           if(!(_loc1_ && Quest))
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  if(_loc1_ && Quest)
                  {
                     continue;
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr114);
      }
      
      private var §<v§:Vector.<§>"0§>;
      
      private var §@-§:Vector.<§>"0§>;
      
      private var §?">§:Vector.<§9g§>;
      
      private var §2"=§:Vector.<String>;
      
      private var §!!^§:Vector.<§8o§>;
      
      private var §8!-§:Vector.<§7a§>;
      
      private var §`!G§:§,4§;
      
      private var §'!z§:int = 0;
      
      private var §>!F§:String;
      
      private var mName:String = "";
      
      private var §="=§:int;
      
      private var §?6§:int;
      
      private var §6!L§:Vector.<§7!9§>;
      
      private var §?!r§:§?!m§;
      
      private var §+",§:Boolean = false;
      
      private var §7Z§:Rectangle;
      
      private var §%"§:§-!g§;
      
      private var § !X§:int;
      
      public function Quest(param1:§,4§, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§<v§ = new Vector.<§>"0§>();
            loop0:
            while(true)
            {
               this.§@-§ = new Vector.<§>"0§>();
               while(true)
               {
                  this.§?">§ = new Vector.<§9g§>();
                  loop2:
                  while(true)
                  {
                     this.§2"=§ = new Vector.<String>();
                     while(true)
                     {
                        this.§!!^§ = new Vector.<§8o§>();
                        continue loop0;
                        addr38:
                        if(!(_loc4_ && _loc3_))
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  this.§+",§ = param2;
                  addr59:
                  if(!_loc4_)
                  {
                     addr29:
                     if(_loc4_)
                     {
                        loop6:
                        while(true)
                        {
                           this.§`!G§ = param1;
                           addr36:
                           addr81:
                           while(_loc3_)
                           {
                              §§goto(addr38);
                              §§goto(addr59);
                           }
                           while(_loc3_)
                           {
                              super();
                              continue loop6;
                           }
                           continue loop0;
                        }
                        addr73:
                     }
                     return;
                  }
                  §§goto(addr36);
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function §8"2§(param1:§,4§) : Quest
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Quest = new Quest(param1,true);
         if(_loc4_)
         {
            _loc2_.§?">§.push(new §^!K§(param1));
         }
         do
         {
            _loc2_.§!!^§.push(new §+r§());
         }
         while(!_loc4_);
         
         return _loc2_;
      }
      
      public function get §+!N§() : Boolean
      {
         return this.§+",§;
      }
      
      public function §["%§(param1:XML) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:§9g§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§>"0§ = null;
         var _loc10_:* = 0;
         var _loc11_:XML = null;
         var _loc12_:§7a§ = null;
         if(_loc16_)
         {
            this.mName = param1.@name;
         }
         var _loc13_:* = 0;
         var _loc14_:* = param1.step;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc14_,_loc13_));
            if(!(_loc15_ && _loc2_))
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc13_,_loc14_);
                  if(_loc7_ = §9g§.§2!3§(this.§`!G§,_loc2_))
                  {
                     if(!_loc15_)
                     {
                        this.§?">§.push(_loc7_);
                     }
                  }
                  continue;
               }
               if(_loc16_)
               {
                  if(_loc16_ || _loc2_)
                  {
                     if(!_loc15_)
                     {
                        this.§6!L§ = new Vector.<§7!9§>();
                        if(_loc16_ || this)
                        {
                           §§push(0);
                           if(!(_loc15_ && this))
                           {
                              _loc13_ = §§pop();
                              if(!_loc15_)
                              {
                                 _loc14_ = param1.surprise;
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc14_,_loc13_));
                                    if(_loc16_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          _loc3_ = §§nextvalue(_loc13_,_loc14_);
                                          if(!(_loc15_ && _loc2_))
                                          {
                                             this.§6!L§.push(new §7!9§(this.§`!G§,_loc3_));
                                          }
                                          continue;
                                       }
                                       if(!(_loc15_ && this))
                                       {
                                          if(!(_loc15_ && param1))
                                          {
                                             if(!_loc15_)
                                             {
                                                this.§?!r§ = new §?!m§();
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   this.§?!r§.init(this.§6!L§);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(0);
                                                      if(_loc16_)
                                                      {
                                                         _loc13_ = §§pop();
                                                         if(!_loc15_)
                                                         {
                                                            _loc14_ = param1.persistent.type;
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               addr235:
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc14_,_loc13_));
                                                                  if(_loc16_ || _loc2_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  break loop0;
                                                               }
                                                               addr235:
                                                            }
                                                            while(true)
                                                            {
                                                               this.§2"=§.push(_loc4_);
                                                               §§goto(addr235);
                                                            }
                                                            addr231:
                                                         }
                                                         addr400:
                                                         _loc14_ = param1.prompt;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc14_,_loc13_));
                                                            break loop0;
                                                         }
                                                         addr495:
                                                      }
                                                      addr513:
                                                      _loc10_ = §§pop();
                                                      if(_loc16_)
                                                      {
                                                         addr516:
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            addr597:
                                                            while(§§pop() < this.§`!G§.objects.getObjectCount())
                                                            {
                                                               §§push((_loc12_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc10_))).§^_§());
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc15_ && _loc2_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(this.isObjectNeeded(_loc12_));
                                                                              if(!(_loc15_ && _loc3_))
                                                                              {
                                                                                 addr591:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    _loc12_.§+!0§(Number.MAX_VALUE);
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc16_ || _loc2_)
                                                                                       {
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc10_++;
                                                                                             if(_loc15_ && this)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      continue;
                                                                                                      addr565:
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop19;
                                                                                                addr563:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr592:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc12_.§+!0§(1);
                                                                                                break loop14;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr565);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr592);
                                                                              }
                                                                              §§goto(addr591);
                                                                           }
                                                                           §§goto(addr563);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr591);
                                                               continue loop19;
                                                            }
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               addr609:
                                                               _loc11_ = param1.intro[0];
                                                               if(_loc16_)
                                                               {
                                                                  this.§="=§ = _loc11_.start;
                                                               }
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§?6§ = _loc11_.end;
                                                                     do
                                                                     {
                                                                        this.§ !X§ = this.§="=§;
                                                                     }
                                                                     while(!(_loc16_ || param1));
                                                                     
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           §[!q§ = false;
                                                                           if(_loc16_ || _loc3_)
                                                                           {
                                                                              addr665:
                                                                              this.§>!F§ = §4Z§;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr668:
                                                                           addr645:
                                                                        }
                                                                        continue;
                                                                        return;
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr668);
                                                         }
                                                      }
                                                      §§goto(addr668);
                                                   }
                                                   §§goto(addr665);
                                                }
                                                loop21:
                                                while(true)
                                                {
                                                   this.§7Z§ = new Rectangle(param1.area.x - _loc8_,param1.area.y - _loc8_,2 * _loc8_,2 * _loc8_);
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      addr354:
                                                      if(false)
                                                      {
                                                         while(true)
                                                         {
                                                            if(param1.hasOwnProperty("area"))
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  _loc8_ = param1.area.radius;
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  addr510:
                                                                  §§push(0);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§goto(addr513);
                                                                  }
                                                                  §§goto(addr597);
                                                               }
                                                               break loop21;
                                                            }
                                                            break;
                                                            §§goto(addr354);
                                                         }
                                                         addr356:
                                                      }
                                                      §§push(0);
                                                      if(!(_loc15_ && this))
                                                      {
                                                         addr397:
                                                         _loc13_ = §§pop();
                                                         if(_loc16_)
                                                         {
                                                            §§goto(addr400);
                                                         }
                                                         addr498:
                                                         if(_loc16_)
                                                         {
                                                            addr501:
                                                            if(!§[!q§)
                                                            {
                                                               if(_loc16_ || _loc3_)
                                                               {
                                                                  §§goto(addr510);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr645);
                                                         }
                                                         §§goto(addr510);
                                                      }
                                                      §§goto(addr597);
                                                   }
                                                   break;
                                                }
                                             }
                                             §§goto(addr609);
                                          }
                                       }
                                       §§goto(addr498);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc15_)
                                       {
                                          if(_loc16_ || param1)
                                          {
                                             if(_loc16_ || param1)
                                             {
                                                addr262:
                                                §§push(0);
                                                if(!_loc15_)
                                                {
                                                   _loc13_ = §§pop();
                                                   if(!_loc15_)
                                                   {
                                                      _loc14_ = param1.persistent.object;
                                                      if(_loc16_ || param1)
                                                      {
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc14_,_loc13_));
                                                         if(_loc16_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                                               if(_loc16_)
                                                               {
                                                                  this.§8!-§.push(§5_§.§<!v§(_loc5_,this.§`!G§.objects));
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc16_)
                                                            {
                                                               addr304:
                                                               if(_loc15_)
                                                               {
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            §§goto(addr497);
                                                         }
                                                         break loop0;
                                                      }
                                                   }
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      this.§!!^§.push(new §+r§());
                                                      if(_loc16_ || this)
                                                      {
                                                         §§goto(addr356);
                                                      }
                                                      §§goto(addr668);
                                                   }
                                                   §§goto(addr516);
                                                }
                                                §§goto(addr397);
                                             }
                                             §§goto(addr501);
                                          }
                                          §§goto(addr400);
                                       }
                                       §§goto(addr304);
                                    }
                                    else
                                    {
                                       _loc4_ = §§nextvalue(_loc13_,_loc14_);
                                       if(_loc16_ || this)
                                       {
                                          §§goto(addr231);
                                       }
                                       §§goto(addr235);
                                    }
                                 }
                              }
                              §§goto(addr397);
                           }
                           §§goto(addr513);
                        }
                        §§goto(addr668);
                     }
                     §§goto(addr262);
                  }
                  §§goto(addr400);
               }
               §§goto(addr497);
            }
            break;
         }
         loop3:
         for(; §§pop(); §§goto(addr495))
         {
            _loc6_ = §§nextvalue(_loc13_,_loc14_);
            _loc9_ = new §>"0§(_loc6_);
            if(!(_loc15_ && this))
            {
               §§push(§[!q§);
               if(_loc16_)
               {
                  §§push(!§§pop());
               }
               loop4:
               while(true)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr494:
                        while(true)
                        {
                           addr456:
                           while(true)
                           {
                              §§push(_loc9_.type);
                              addr459:
                              while(true)
                              {
                                 §§push(§>"0§.§]"3§);
                                 addr461:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc15_ && _loc2_))
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 if(_loc15_)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc16_)
                        {
                           if(_loc16_ || _loc3_)
                           {
                              this.§<v§.push(_loc9_);
                              break;
                           }
                           §§goto(addr494);
                        }
                        break;
                     }
                     §§push(_loc9_.type);
                     if(_loc16_)
                     {
                        §§push(§>"0§.§9!7§);
                        if(_loc16_ || _loc2_)
                        {
                           if(§§pop() != §§pop())
                           {
                              continue loop3;
                           }
                           if(_loc16_ || _loc2_)
                           {
                              if(!_loc16_)
                              {
                                 break;
                              }
                              this.§@-§.push(_loc9_);
                           }
                           if(true)
                           {
                              continue loop3;
                           }
                           §§goto(addr456);
                        }
                        §§goto(addr461);
                     }
                     §§goto(addr459);
                  }
                  continue loop3;
               }
            }
            §§goto(addr494);
         }
         §§goto(addr497);
      }
      
      private function §"!!§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7a§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!G§.objects.getObjectCount())
         {
            _loc2_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc1_));
            if(_loc4_ || _loc1_)
            {
               if(_loc2_.§^_§())
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  _loc2_.§2_§();
                  if(_loc3_)
                  {
                     continue;
                  }
               }
            }
            _loc1_++;
         }
      }
      
      public function §-!a§() : §>"0§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§<v§.length <= 0)
            {
               loop0:
               while(true)
               {
                  §§push(this.§>!F§);
                  loop1:
                  while(true)
                  {
                     §§push(§0"?§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              break;
                           }
                           addr105:
                           while(true)
                           {
                           }
                           addr105:
                        }
                        while(true)
                        {
                           §§push(this.§>!F§);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§push(§'!X§);
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                           §§push(§§pop() == §§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§-!t§());
                                       if(!_loc1_)
                                       {
                                          addr71:
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             while(§§pop())
                                             {
                                                if(!(_loc1_ || _loc1_))
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   addr121:
                                                   return this.§<v§.shift();
                                                }
                                                if(_loc2_ && _loc1_)
                                                {
                                                   continue loop6;
                                                }
                                                if(!(_loc2_ && this))
                                                {
                                                   if(_loc1_)
                                                   {
                                                      §§goto(addr71);
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr105);
                                             }
                                             return null;
                                             addr34:
                                          }
                                          break;
                                       }
                                       continue loop5;
                                       return this.§-!t§().§-!a§();
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr34);
                           }
                        }
                        continue loop1;
                     }
                     return this.§@-§.shift();
                  }
               }
            }
            §§goto(addr121);
         }
         §§goto(addr105);
      }
      
      public function update(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<§7a§> = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §§push(this.§>!F§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§4Z§);
               if(_loc6_ || _loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        addr51:
                        this.updateState();
                        if(!(_loc6_ || param1))
                        {
                           addr73:
                           _loc2_ = this.§7!T§.§'!"§();
                           if(_loc6_ || param1)
                           {
                              §§push(int(_loc2_.length));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 §§goto(addr165);
                              }
                           }
                           addr165:
                           while(true)
                           {
                              §§push(0);
                              if(_loc6_ || this)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop7;
                           }
                        }
                        §§goto(addr197);
                     }
                  }
                  else
                  {
                     addr64:
                     if(this.§>!F§ == §[R§)
                     {
                        if(_loc6_)
                        {
                           this.§="=§ -= param1;
                        }
                        §§goto(addr73);
                     }
                     else
                     {
                        §§push(this.§>!F§);
                        if(_loc6_)
                        {
                           §§push(§`!$§);
                           if(!(_loc5_ && this))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    this.§?6§ -= param1;
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(this.§?6§ <= 0)
                                       {
                                          addr301:
                                          this.updateState();
                                       }
                                       §§goto(addr196);
                                    }
                                    else
                                    {
                                       addr276:
                                       this.§4!E§(param1);
                                       §§goto(addr279);
                                    }
                                 }
                                 else
                                 {
                                    loop0:
                                    while(true)
                                    {
                                       this.§#!"§(false);
                                       loop1:
                                       while(_loc5_)
                                       {
                                          loop2:
                                          while(_loc6_ || param1)
                                          {
                                             §§push(this.§-!t§() is §3g§);
                                             if(_loc6_ || _loc3_)
                                             {
                                                while(§§pop())
                                                {
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr279:
                                                   if(_loc5_ && param1)
                                                   {
                                                      §§goto(addr301);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                break loop1;
                                                addr212:
                                             }
                                             else
                                             {
                                                addr261:
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop2;
                                             }
                                          }
                                       }
                                       addr196:
                                       §§goto(addr197);
                                    }
                                 }
                                 §§goto(addr301);
                              }
                              else
                              {
                                 §§push(this.§>!F§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§;!b§);
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(this.§>!F§);
                                       if(!_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       §§push(§'!X§);
                                       if(_loc5_ && param1)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr261);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr276);
                                 }
                                 addr274:
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr274);
                     }
                  }
                  addr197:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        if(§§pop() >= _loc2_.length)
                        {
                           if(!_loc5_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr104:
                                 if(this.§="=§ > -1000)
                                 {
                                    break;
                                 }
                                 if(!(_loc5_ && param1))
                                 {
                                    addr113:
                                    this.updateState();
                                 }
                                 if(_loc6_ || param1)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr137:
                                 }
                                 _loc4_++;
                              }
                              continue;
                           }
                           §§goto(addr113);
                        }
                        else
                        {
                           _loc2_[_loc4_].visible = _loc4_ < _loc3_;
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr104);
                  }
                  return;
               }
            }
            §§goto(addr64);
         }
         §§goto(addr51);
      }
      
      public function refresh(param1:§,4§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§9g§ = null;
         if(_loc5_ || _loc2_)
         {
            this.§`!G§ = param1;
         }
         for each(_loc2_ in this.§?">§)
         {
            if(_loc5_ || param1)
            {
               _loc2_.refresh(this.§`!G§);
            }
         }
         if(_loc5_)
         {
            this.§%!l§();
         }
      }
      
      public function §-v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§+q§();
         }
         loop0:
         while(true)
         {
            this.§>!6§();
            loop1:
            do
            {
               this.§%!l§();
               while(_loc1_)
               {
                  this.updateState();
                  if(_loc1_ || _loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc2_ && _loc1_);
            
            return;
         }
      }
      
      private function §+q§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§8o§ = null;
         if(_loc5_)
         {
            if(this.§>!F§ == §0"?§)
            {
               addr36:
               for each(_loc1_ in this.§!!^§)
               {
                  if(_loc5_)
                  {
                     _loc1_.reset();
                  }
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      private function §%!l§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7!9§ = null;
         if(_loc5_ || _loc2_)
         {
            if(!(this.§-!t§() is §3g§))
            {
               addr32:
               var _loc3_:* = this.§6!L§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc4_)
                  {
                     _loc1_.update(this.§`!G§.objects);
                  }
               }
               if(_loc5_)
               {
                  §§push(this.§?!r§);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc1_)
                        {
                           addr145:
                           §§push(this.§?!r§);
                           while(true)
                           {
                              §§pop().update();
                           }
                           addr145:
                        }
                        loop2:
                        while(true)
                        {
                           §§push(this.§?!r§);
                           addr106:
                           while(true)
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 continue loop2;
                              }
                              §§push(true);
                              while(true)
                              {
                                 §§pop().visible = §§pop();
                                 addr115:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        addr146:
                     }
                     while(true)
                     {
                        addr73:
                        addr102:
                        while(true)
                        {
                           dispatchEvent(new §[!&§(§[!&§.§^A§));
                           if(_loc4_)
                           {
                              break;
                           }
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!_loc4_)
                              {
                                 return;
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr115);
                        }
                        while(true)
                        {
                           §§goto(addr73);
                        }
                     }
                  }
                  §§goto(addr145);
               }
               §§goto(addr115);
            }
            else
            {
               §§push(this.§?!r§);
               if(!_loc4_)
               {
                  §§push(false);
                  if(_loc5_)
                  {
                     §§pop().visible = §§pop();
                     §§goto(addr102);
                  }
                  §§goto(addr114);
               }
            }
            §§goto(addr106);
         }
         §§goto(addr32);
      }
      
      private function §>!6§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§9g§ = null;
         var _loc3_:* = false;
         var _loc1_:* = false;
         loop0:
         for each(_loc2_ in this.§?">§)
         {
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc2_.isCompleted);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr96:
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
                  addr71:
                  if(_loc6_ || _loc2_)
                  {
                     _loc1_ = §§pop();
                     addr79:
                     if(!_loc7_)
                     {
                        if(true)
                        {
                           continue loop0;
                        }
                        addr83:
                        while(true)
                        {
                           _loc2_.isCompleted = _loc2_.update(this.§`!G§);
                        }
                        addr83:
                     }
                     while(true)
                     {
                        if(_loc6_)
                        {
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              if(§§pop() == _loc2_.isCompleted)
                              {
                                 break;
                              }
                              if(!_loc7_)
                              {
                                 addr64:
                                 §§push(true);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§goto(addr71);
                                 }
                                 else
                                 {
                                    §§goto(addr96);
                                 }
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr64);
                        }
                        addr97:
                        while(true)
                        {
                           §§goto(addr83);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr97);
         }
         if(!_loc7_)
         {
            if(_loc1_)
            {
               if(!_loc7_)
               {
                  addr118:
                  dispatchEvent(new §[!&§(§[!&§.§^[§));
               }
            }
            return;
         }
         §§goto(addr118);
      }
      
      public function § !R§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8o§ = this.§-!r§();
         if(!(_loc3_ && _loc2_))
         {
            if(_loc1_)
            {
               if(!_loc3_)
               {
                  addr51:
                  _loc1_.§'r§();
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      private function §4!E§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8o§ = this.§-!r§();
         if(_loc4_ || param1)
         {
            if(_loc2_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_.status);
                  while(true)
                  {
                     §§push(§8o§.§7!L§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc4_)
                           {
                              _loc2_.startCheck(this.§`!G§.§0n§);
                              addr170:
                              while(true)
                              {
                              }
                              addr170:
                           }
                           §§goto(addr170);
                        }
                        while(true)
                        {
                           _loc2_.update(this.§`!G§.§0n§,param1);
                           loop4:
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(_loc2_.status);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§8o§.§"m§);
                                    addr123:
                                    addr126:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       continue loop2;
                                    }
                                    addr128:
                                    this.updateState();
                                    if(!_loc3_)
                                    {
                                       dispatchEvent(new §[!&§(§[!&§.§6B§));
                                       addr115:
                                       if(!_loc3_)
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 §§goto(addr170);
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr170);
      }
      
      public function §-!t§() : §9g§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9g§ = null;
         if(_loc5_)
         {
            if(this.§>!F§ != §'!X§)
            {
               if(_loc5_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:int = 0;
            var _loc3_:* = this.§?">§;
            while(true)
            {
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(!_loc1_.isCompleted)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                  }
               }
               return null;
            }
            return _loc1_;
         }
         addr28:
         return null;
      }
      
      public function §-!r§() : §8o§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§8o§ = null;
         if(_loc5_ || _loc2_)
         {
            if(this.§>!F§ != §;!b§)
            {
               if(!_loc4_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = 0;
         var _loc3_:* = this.§!!^§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc5_)
               {
                  continue;
               }
               §§push(_loc1_.status);
               if(_loc5_ || _loc2_)
               {
                  §§push(§8o§.§4!d§);
                  if(_loc5_ || _loc1_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc5_)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_ || _loc1_)
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 break;
                              }
                              addr98:
                              if(_loc1_.status == §8o§.§7!L§)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                        }
                     }
                  }
               }
               §§goto(addr98);
            }
            return null;
         }
         return _loc1_;
      }
      
      public function §#!J§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§8o§ = null;
         for each(_loc1_ in this.§!!^§)
         {
            if(_loc5_)
            {
               if(_loc1_.status != §8o§.§4!j§)
               {
                  if(_loc5_)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function updateState() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§[!&§ = null;
         §§push(§[R§);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§="=§);
            loop0:
            while(true)
            {
               §§push(0);
               addr327:
               while(§§pop() <= §§pop())
               {
                  continue loop0;
               }
               loop43:
               while(true)
               {
                  §§push(§[R§);
                  loop27:
                  while(true)
                  {
                     §§push(§§pop());
                     loop28:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop29:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop8:
                              while(true)
                              {
                                 §§push(this.§>!F§);
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.§>!F§);
                                          loop11:
                                          while(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             for(; !_loc5_; if(_loc5_ && _loc1_)
                                             {
                                                continue;
                                             },if(!(_loc5_ && _loc1_))
                                             {
                                                §§goto(addr117);
                                                §§push(§`!$§);
                                             },§§goto(addr250))
                                             {
                                                _loc2_ = §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         §§push(this.§+?§(this.§>!F§,_loc1_));
                                                         while(!_loc5_)
                                                         {
                                                            §§push(§§pop());
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     while(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr100:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           addr98:
                                                                        }
                                                                        else
                                                                        {
                                                                           loop41:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§!!^§[0].status == §8o§.§4!d§);
                                                                              addr268:
                                                                              while(true)
                                                                              {
                                                                                 loop3:
                                                                                 while(!§§pop())
                                                                                 {
                                                                                    §§push(this.§5"5§());
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop43;
                                                                                                }
                                                                                                §§push(§'!X§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr250:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         _loc1_ = §§pop();
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr246:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.§#!J§());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break loop13;
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(§""0§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         break loop12;
                                                                                                      }
                                                                                                      addr228:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         addr313:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc4_ || _loc1_))
                                                                                                            {
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            §§push(§`!$§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr280:
                                                                                                   }
                                                                                                }
                                                                                                addr223:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(§0"?§);
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc1_ = §§pop();
                                                                                                   addr210:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      addr237:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr209:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr295:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop41;
                                                                                          }
                                                                                          addr295:
                                                                                       }
                                                                                    }
                                                                                    continue loop41;
                                                                                 }
                                                                                 addr270:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§;!b§);
                                                                                    break loop11;
                                                                                 }
                                                                                 continue loop41;
                                                                              }
                                                                           }
                                                                        }
                                                                        if(!(_loc4_ || _loc1_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr98);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc3_ = new §[!&§(§[!&§.§#+§);
                                                                              if(!(_loc5_ && _loc1_))
                                                                              {
                                                                                 _loc3_.§4!2§ = _loc1_;
                                                                                 addr372:
                                                                                 _loc3_.§"!x§ = _loc2_;
                                                                                 addr379:
                                                                              }
                                                                              dispatchEvent(_loc3_);
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr372);
                                                                                    }
                                                                                    §§goto(addr380);
                                                                                 }
                                                                                 §§goto(addr379);
                                                                              }
                                                                              addr375:
                                                                              §§goto(addr375);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr210);
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     addr323:
                                                                     while(true)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            continue loop28;
                                                            addr34:
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§push(this.§>!F§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              addr66:
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    while(_loc4_)
                                                                                    {
                                                                                       this.§"!!§();
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          addr30:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§goto(addr34);
                                                                                             }
                                                                                             §§goto(addr100);
                                                                                             continue loop21;
                                                                                          }
                                                                                          §§goto(addr380);
                                                                                       }
                                                                                    }
                                                                                    continue loop13;
                                                                                    addr125:
                                                                                 }
                                                                                 if(!(_loc5_ && _loc1_))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       this.§>!F§ = _loc1_;
                                                                                       §§goto(addr87);
                                                                                    }
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 §§goto(addr246);
                                                                              }
                                                                              §§goto(addr129);
                                                                           }
                                                                           §§goto(addr87);
                                                                        }
                                                                        §§goto(addr380);
                                                                     }
                                                                     while(_loc4_ || this)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           §§goto(addr125);
                                                                        }
                                                                        §§goto(addr30);
                                                                     }
                                                                     continue loop9;
                                                                     addr117:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     §§goto(addr280);
                                                                  }
                                                                  addr279:
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                while(true)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc5_ && this)
                                                {
                                                   continue loop27;
                                                }
                                                _loc1_ = §§pop();
                                                §§goto(addr237);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                §§goto(addr279);
                                                §§push(§§pop());
                                             }
                                             §§goto(addr321);
                                          }
                                       }
                                    }
                                    addr380:
                                    return;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr258);
      }
      
      private function §5"5§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9g§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§?">§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc5_)
               {
                  addr68:
                  break;
               }
               §§push(_loc1_.isCompleted);
               if(_loc4_)
               {
                  return §§pop();
               }
               if(!§§pop())
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr68);
         §§push(false);
      }
      
      private function §+?§(param1:String, param2:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§7a§> = null;
         if(_loc5_ || param1)
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() == §`!$§)
               {
                  addr52:
                  _loc3_ = this.§;"+§();
               }
               return param2;
            }
         }
         §§goto(addr52);
      }
      
      private function §;"+§() : Vector.<§7a§>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7a§ = null;
         var _loc1_:Vector.<§7a§> = new Vector.<§7a§>();
         §§push(this.§`!G§.objects.getObjectCount());
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc2_));
            if(_loc5_ || this)
            {
               §§push(_loc3_.isGround());
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr140:
                           addr107:
                           while(true)
                           {
                              §§push(this.isObjectNeeded(_loc3_));
                              if(_loc5_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop6;
                           }
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                        }
                        addr139:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(_loc5_ || this)
                           {
                              _loc1_.push(_loc3_);
                              while(true)
                              {
                                 addr88:
                                 while(true)
                                 {
                                    this.§`!G§.objects.removeObject(_loc3_.getObject(),false,true);
                                    addr97:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           §§goto(addr140);
                           addr111:
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr111);
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr121);
                        }
                        continue loop0;
                        §§goto(addr107);
                     }
                     continue;
                  }
                  §§goto(addr139);
               }
            }
            §§goto(addr121);
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§7a§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9g§ = null;
         if(_loc6_ || _loc3_)
         {
            if(param1 == null)
            {
               if(_loc6_)
               {
                  addr161:
                  §§push(false);
               }
               else
               {
                  while(true)
                  {
                     addr146:
                     loop1:
                     while(true)
                     {
                        if(this.§8!-§.indexOf(param1) == -1)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(param1.isTexture());
                              if(_loc6_)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop4:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop12:
                                          while(!_loc5_)
                                          {
                                             §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(param1.isGround());
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc6_)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(param1.§'5§());
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ && this)
                                                                              {
                                                                                 addr153:
                                                                                 §§push(true);
                                                                                 break;
                                                                              }
                                                                              §§push(param1.uniqueID == "");
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!(_loc5_ && _loc2_))
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr61:
                                                                                                               §§push(true);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && this))
                                                                                                                     {
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     break loop10;
                                                                                                                  }
                                                                                                                  break loop5;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            addr122:
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               break loop5;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                var _loc3_:int = 0;
                                                                                                var _loc4_:* = this.§?">§;
                                                                                                addr204:
                                                                                                for each(_loc2_ in _loc4_)
                                                                                                {
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc2_.isObjectNeeded(param1));
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr203);
                                                                                                         }
                                                                                                         §§goto(addr204);
                                                                                                      }
                                                                                                      §§goto(addr203);
                                                                                                   }
                                                                                                   addr203:
                                                                                                   return true;
                                                                                                }
                                                                                                return false;
                                                                                                addr50:
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr61);
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                     §§goto(addr50);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      addr120:
                                                   }
                                                   return §§pop();
                                                }
                                             }
                                          }
                                          addr162:
                                          return §§pop();
                                          addr140:
                                       }
                                       §§goto(addr120);
                                    }
                                 }
                              }
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr153);
                     }
                  }
               }
               §§goto(addr162);
            }
            §§goto(addr146);
         }
         §§goto(addr161);
      }
      
      public function §,d§() : int
      {
         return this.§'!z§;
      }
      
      public function § !E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!!^§[0].startCheck(this.§`!G§.§0n§);
            do
            {
               this.updateState();
            }
            while(_loc1_);
            
         }
      }
      
      public function §1H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#E§();
         }
      }
      
      private function §#E§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7!9§ = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§?!r§);
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr50:
                     this.§?!r§.visible = false;
                  }
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§6!L§)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc1_.activate(this.§`!G§);
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function get §;!1§() : String
      {
         return this.§>!F§;
      }
      
      public function §9!J§() : Vector.<String>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§9g§ = null;
         var _loc3_:§8o§ = null;
         var _loc4_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc5_:int = 0;
         var _loc6_:* = this.§?">§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_ || this)
            {
               if(!§§pop())
               {
                  if(!_loc7_)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        if(!_loc7_)
                        {
                           _loc5_ = 0;
                           addr199:
                           if(_loc8_ || _loc1_)
                           {
                              addr152:
                              _loc6_ = this.§!!^§;
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break;
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr152);
                  }
                  addr198:
                  §§goto(addr199);
               }
               else
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(!(_loc7_ && _loc1_))
                  {
                     §§push(_loc2_.description);
                     if(_loc8_)
                     {
                        §§push(§§pop());
                     }
                     loop1:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr120:
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(_loc2_.isCompleted)
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    continue loop1;
                                 }
                                 addr106:
                                 loop4:
                                 while(!(_loc7_ && this))
                                 {
                                    while(true)
                                    {
                                       _loc1_.push(_loc4_);
                                       if(_loc8_ || this)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    if(true)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr53);
                           }
                           continue loop0;
                        }
                     }
                     addr119:
                  }
                  while(true)
                  {
                     §§push(§^E§);
                     if(_loc8_ || _loc1_)
                     {
                        §§push(§§pop() + _loc4_);
                     }
                     if(!(_loc7_ && _loc3_))
                     {
                        _loc4_ = §§pop();
                        §§goto(addr106);
                     }
                     else
                     {
                        §§goto(addr119);
                     }
                  }
               }
            }
            break;
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc5_,_loc6_);
            if(!(_loc7_ && _loc1_))
            {
               _loc1_.push((_loc3_.status == §8o§.§4!j§ ? §^E§ : "") + _loc3_.description);
            }
            §§goto(addr152);
         }
         §§goto(addr198);
      }
      
      public function get name() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mName);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr95:
                        while(true)
                        {
                           §§push(this.mName);
                           addr38:
                           while(true)
                           {
                              §§push(§§pop().length == 0);
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           continue loop4;
                        }
                     }
                     addr94:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_ || this)
                           {
                              break;
                           }
                           §§goto(addr95);
                        }
                     }
                     §§push(this.mName);
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr38);
                  }
                  §§goto(addr69);
               }
               §§goto(addr94);
            }
         }
         addr69:
         return "Sandbox";
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§8o§ = null;
         var _loc3_:§9g§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(!(_loc6_ && _loc2_))
         {
            if(this.§%"§)
            {
               while(true)
               {
                  _loc1_.push(this.§%"§);
                  addr105:
                  while(true)
                  {
                  }
                  addr62:
                  if(!(_loc7_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr69);
               }
            }
            loop2:
            while(true)
            {
               §§push(this.§>!F§);
               loop3:
               while(true)
               {
                  §§push(§`!$§);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc7_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§pop();
                              addr97:
                              while(true)
                              {
                                 §§push(this.§>!F§);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(§[R§);
                                 if(_loc6_ && _loc2_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(_loc7_ || _loc1_)
                                 {
                                 }
                                 continue loop7;
                              }
                              continue loop3;
                           }
                           addr96:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr62);
                              }
                              else if(!_loc6_)
                              {
                                 if(_loc6_ && this)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue loop2;
                                 }
                              }
                              else
                              {
                                 §§goto(addr97);
                              }
                           }
                           var _loc4_:int = 0;
                           var _loc5_:* = this.§!!^§;
                           addr142:
                           §§push(§§hasnext(_loc5_,_loc4_));
                           if(_loc7_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 _loc2_ = §§nextvalue(_loc4_,_loc5_);
                                 if(!_loc6_)
                                 {
                                    if(_loc2_.status == §8o§.§4!d§)
                                    {
                                       addr136:
                                       _loc1_ = _loc1_.concat(_loc2_.getHUDs());
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr136);
                              }
                              if(_loc7_ || _loc1_)
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    _loc4_ = 0;
                                 }
                                 _loc5_ = this.§?">§;
                                 addr227:
                                 for each(_loc3_ in _loc5_)
                                 {
                                    _loc1_ = _loc1_.concat(_loc3_.getHUDs());
                                    if(!_loc6_)
                                    {
                                       §§push(_loc3_ is §3g§);
                                       if(_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                §§pop();
                                                if(_loc7_ || _loc2_)
                                                {
                                                   addr205:
                                                   §§push(_loc3_.isCompleted);
                                                   if(_loc7_ || this)
                                                   {
                                                      addr225:
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr227);
                                                      }
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr229);
                                             }
                                          }
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr205);
                                 }
                              }
                              addr229:
                              return _loc1_;
                           }
                           §§goto(addr227);
                           §§goto(addr50);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr96);
                  }
               }
            }
         }
         addr69:
         return _loc1_;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9g§ = null;
         for each(_loc1_ in this.§?">§)
         {
            if(!_loc5_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9g§ = null;
         if(_loc4_)
         {
            if(this.§>!F§ != §`!$§)
            {
               addr25:
               for each(_loc1_ in this.§?">§)
               {
                  if(_loc4_)
                  {
                     _loc1_.onPhysicsEnabled();
                  }
               }
               if(!(_loc5_ && _loc1_))
               {
                  this.§#E§();
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §[" §() : Vector.<§7!9§>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7!9§ = null;
         var _loc1_:Vector.<§7!9§> = new Vector.<§7!9§>();
         for each(_loc2_ in this.§6!L§)
         {
            if(_loc5_ || this)
            {
               if(!_loc2_.§!9§)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §=O§() : Vector.<§7!9§>
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§6!L§)
            {
               if(_loc1_ || this)
               {
                  §§goto(addr48);
               }
            }
            return this.§6!L§.concat();
         }
         addr48:
         return null;
      }
      
      public function §#!"§(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9g§ = null;
         for each(_loc2_ in this.§?">§)
         {
            if(!_loc5_)
            {
               if(_loc2_ is §3g§)
               {
                  if(_loc6_ || param1)
                  {
                     (_loc2_ as §3g§).§+5§(param1);
                  }
               }
            }
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9g§ = null;
         for each(_loc1_ in this.§?">§)
         {
            if(_loc5_)
            {
               if(!_loc1_.isCompleted)
               {
                  return _loc1_.getNextInstruction();
               }
               if(!_loc5_)
               {
               }
            }
         }
         return null;
      }
      
      public function §[?§(param1:§7a§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§7!T§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr52:
                     §§push(this.§7!T§.§[?§(param1));
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr57:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr57);
            }
            §§goto(addr52);
         }
         §§goto(addr57);
      }
      
      public function get §7!T§() : §3g§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9g§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§?">§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ || _loc1_))
               {
                  break;
               }
               if(_loc1_ is §3g§)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc1_ as §3g§;
      }
      
      public function get §6!p§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§7!T§);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     return true;
                  }
                  addr58:
                  §§push(this.§7!T§);
               }
               §§goto(addr58);
            }
            return §§pop().isCompleted;
         }
         §§goto(addr58);
      }
      
      public function §%!f§() : Rectangle
      {
         return this.§7Z§;
      }
      
      public function §[i§() : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§7a§ = null;
         var _loc3_:§9g§ = null;
         var _loc1_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = this.§8!-§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(_loc6_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc6_)
                  {
                     if(_loc6_ || this)
                     {
                        if(_loc6_ || this)
                        {
                           §§push(0);
                           if(_loc6_ || _loc2_)
                           {
                              _loc4_ = §§pop();
                              if(_loc6_)
                              {
                                 addr130:
                                 _loc5_ = this.§?">§;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc5_,_loc4_));
                                    break loop0;
                                 }
                                 addr169:
                              }
                              addr173:
                              return _loc1_;
                           }
                        }
                        §§goto(addr173);
                     }
                  }
                  §§goto(addr130);
               }
               else
               {
                  _loc2_ = §§nextvalue(_loc4_,_loc5_);
                  if(_loc6_)
                  {
                     §§push(_loc2_.§^_§());
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc6_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 addr65:
                                 §§pop();
                                 if(!_loc7_)
                                 {
                                    addr68:
                                    §§push(_loc2_.§0"&§());
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       addr88:
                                       if(§§pop())
                                       {
                                          continue;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§goto(addr88);
                                 }
                                 _loc1_++;
                                 continue;
                              }
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr68);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc4_,_loc5_);
               if(!_loc7_)
               {
                  if(_loc3_ is §3g§)
                  {
                     if(_loc6_)
                     {
                        §§push(_loc1_);
                        if(!_loc7_)
                        {
                           §§push(int(§§pop() + (_loc3_ as §3g§).§2l§()));
                        }
                        _loc1_ = §§pop();
                     }
                  }
               }
               continue;
            }
            §§goto(addr130);
         }
      }
   }
}
