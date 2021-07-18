package
{
   import flash.events.KeyboardEvent;
   
   public final class §,I§ implements §!!K§
   {
      
      private static var §8o§:§,I§ = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §,I§)
         {
            §8o§ = null;
         }
      }
      
      public const §3#K§:uint = 1;
      
      private var §@"p§:Vector.<§;s§>;
      
      public function §,I§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§@"p§ = new Vector.<§;s§>();
         }
         do
         {
            super();
         }
         while(_loc2_);
         
      }
      
      public static function get §%!E§() : §,I§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§8o§);
            if(!(_loc2_ && §,I§))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     §8o§ = new §,I§();
                     addr58:
                     §§push(§8o§);
                  }
               }
               §§goto(addr58);
            }
            return §§pop();
         }
         §§goto(addr58);
      }
      
      public function add(param1:Array, param2:Function, param3:Boolean = false, param4:Boolean = true) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = true;
         if(!_loc7_)
         {
            §§push(this.§+M§(param1));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(typeof param2 != "function")
                     {
                        if(!(_loc7_ && param2))
                        {
                           break;
                        }
                        while(true)
                        {
                           addr51:
                           if(_loc7_ && param1)
                           {
                              continue;
                           }
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc7_ && param2))
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    while(_loc6_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!(_loc6_ || param2))
                                             {
                                                continue loop1;
                                             }
                                             this.§>"k§(param1);
                                             while(true)
                                             {
                                                this.§@"p§.push(new §;s§(param1,param2));
                                             }
                                          }
                                          addr101:
                                       }
                                       else
                                       {
                                          §§push(false);
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             if(!(_loc7_ && this))
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr51);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr138:
                                                }
                                             }
                                          }
                                          addr41:
                                       }
                                       while(true)
                                       {
                                          if(!(_loc6_ || param3))
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          §§goto(addr101);
                                       }
                                       if(!_loc6_)
                                       {
                                          throw new Error("A keyboard sequence can not have less than " + this.§3#K§ + " elements");
                                       }
                                       addr179:
                                       continue loop9;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§push(param3);
                                          continue;
                                       }
                                       if(!(_loc7_ && param1))
                                       {
                                          addr124:
                                          if(!(_loc6_ || param1))
                                          {
                                             break;
                                          }
                                          this.§@"p§.push(new §;s§(param1,param2));
                                       }
                                       §§goto(addr138);
                                    }
                                    addr83:
                                    loop5:
                                    while(true)
                                    {
                                       addr112:
                                       while(true)
                                       {
                                          §§goto(addr116);
                                          continue loop5;
                                       }
                                    }
                                    addr116:
                                    addr157:
                                 }
                                 §§goto(addr41);
                              }
                              if(_loc6_)
                              {
                                 return §§pop();
                                 addr141:
                              }
                              while(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && param3))
                                    {
                                       this.§@"p§ = new Vector.<§;s§>();
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr112);
                              }
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr141);
                     }
                  }
                  throw new Error("Invalid callback function");
               }
               §§goto(addr179);
            }
         }
         §§goto(addr58);
      }
      
      public function §>"k§(param1:Array) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc2_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§%"+§());
            if(!(_loc5_ && _loc2_))
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%^§(param1));
                     addr138:
                     loop9:
                     for(; §§pop(); continue loop0)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(0);
                           loop10:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr158:
                              while(true)
                              {
                                 §§push(int(this.§@"p§.length));
                                 if(_loc5_ && param1)
                                 {
                                    continue loop10;
                                 }
                                 _loc4_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop9;
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    if(_loc3_ < _loc4_)
                                    {
                                       addr95:
                                       §§push(this.§2"[§(param1,this.§@"p§[_loc3_]));
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                addr69:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      this.§@"p§.splice(_loc3_,1);
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(true);
                                                            continue;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc3_++;
                                          }
                                          while(true)
                                          {
                                             continue loop12;
                                          }
                                          §§goto(addr95);
                                       }
                                       addr103:
                                    }
                                    §§goto(addr69);
                                 }
                              }
                           }
                        }
                        §§goto(addr158);
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && this))
                  {
                     if(!(_loc5_ && param1))
                     {
                        break;
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr47);
                  §§goto(addr64);
               }
               return §§pop();
            }
            §§goto(addr138);
         }
         §§goto(addr158);
      }
      
      public function §%^§(param1:Array) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:int = 0;
         var _loc4_:int = this.§@"p§.length;
         loop0:
         while(true)
         {
            if(_loc3_ < _loc4_)
            {
               §§push(this.§2"[§(param1,this.§@"p§[_loc3_]));
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     §§goto(addr96);
                  }
                  else
                  {
                     _loc3_++;
                     §§goto(addr66);
                  }
               }
               break;
            }
            if(!(_loc5_ && param1))
            {
               if(_loc5_ && _loc3_)
               {
                  addr96:
                  §§push(true);
                  break;
               }
            }
            else
            {
               addr66:
               if(!(_loc5_ && this))
               {
                  continue;
               }
               addr98:
               while(true)
               {
                  break loop0;
               }
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  §§goto(addr59);
               }
               break loop0;
            }
            §§goto(addr96);
         }
         while(true)
         {
            _loc2_ = §§pop();
            §§goto(addr98);
            §§goto(addr55);
         }
         addr59:
         return §§pop();
      }
      
      public function §1S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§%"+§())
            {
               addr37:
               while(this.§@"p§.length > 0)
               {
                  this.§@"p§.pop();
                  if(_loc1_ && _loc2_)
                  {
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function §%"+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§@"p§.length == 0);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  addr37:
                  §§push(true);
                  if(_loc1_ && this)
                  {
                  }
               }
               else
               {
                  return false;
               }
            }
            return §§pop();
         }
         §§goto(addr37);
      }
      
      public function §+M§(param1:Array) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1.length < this.§3#K§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr36:
                  §§push(false);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr54:
                  }
               }
               else
               {
                  return true;
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr36);
      }
      
      public function §?B§(param1:KeyboardEvent) : Boolean
      {
         return false;
      }
      
      public function § "O§(param1:KeyboardEvent) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:* = uint(0);
         var _loc4_:* = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         var _loc2_:* = false;
         if(!_loc10_)
         {
            §§push(this.§%"+§());
            loop0:
            for(; !§§pop(); while(true)
            {
               §§push(false);
               if(_loc10_ && _loc3_)
               {
                  break;
               }
               _loc4_ = §§pop();
               §§goto(addr87);
            })
            {
               if(_loc10_ && _loc2_)
               {
                  continue;
               }
               §§push(uint(param1.charCode));
               while(true)
               {
                  _loc3_ = §§pop();
                  continue loop0;
                  addr66:
                  if(!(_loc9_ || param1))
                  {
                     continue;
                  }
                  _loc3_ = §§pop();
                  addr74:
                  if(!_loc10_)
                  {
                     while(true)
                     {
                        loop32:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc10_ && _loc2_))
                           {
                              var _loc8_:* = §§pop();
                              if(!_loc10_)
                              {
                                 §§push(§=D§.§5#Y§);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(_loc8_);
                                    if(!(_loc10_ && param1))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             addr142:
                                             §§push(0);
                                             if(!_loc9_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr161:
                                             §§push(1);
                                             if(_loc10_)
                                             {
                                                addr177:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(§=D§.SHIFT);
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             addr155:
                                             §§push(_loc8_);
                                             if(_loc9_)
                                             {
                                                addr158:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr161);
                                                   }
                                                   addr182:
                                                   if(!_loc10_)
                                                   {
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                         case 1:
                                                         case 2:
                                                            §§push(true);
                                                            if(_loc9_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        if(§§pop() != 0)
                                                                        {
                                                                           continue loop32;
                                                                        }
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr66);
                                                                           §§push(uint(param1.keyCode));
                                                                        }
                                                                        §§goto(addr74);
                                                                     }
                                                                     §§goto(addr66);
                                                                  }
                                                                  addr371:
                                                                  if(§§pop() == this.§@"p§[_loc5_].keystrokes.shift())
                                                                  {
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           if(this.§@"p§[_loc5_].keystrokes.length == 0)
                                                                           {
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(true);
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          addr325:
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             addr327:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop7:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§@"p§[_loc5_].keystrokes = this.§@"p§[_loc5_].keyCodes.concat();
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc10_ && _loc2_))
                                                                                                         {
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               addr353:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  addr310:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        _loc5_++;
                                                                                                                        loop20:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           if(_loc10_ && this)
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           §§push(true);
                                                                                                                           loop21:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 addr299:
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 loop17:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc10_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr307:
                                                                                                                                       loop16:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(!(_loc10_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= _loc6_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_ && param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop17;
                                                                                                                                                   }
                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue loop7;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc10_ && param1))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            addr268:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc10_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr285:
                                                                                                                                                                        this.§5§(this.§@"p§[_loc5_].callback);
                                                                                                                                                                     }
                                                                                                                                                                     addr194:
                                                                                                                                                                     break loop0;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr194);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr358:
                                                                                                                                                                  loop29:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        _loc7_ = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc7_ = §§pop();
                                                                                                                                                                           addr408:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop16;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop29;
                                                                                                                                                                        }
                                                                                                                                                                        addr407:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr358:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr266:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop8;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr311:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr266);
                                                                                                                                                }
                                                                                                                                                §§goto(addr285);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr371);
                                                                                                                                                §§push(_loc3_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr358);
                                                                                                                                          }
                                                                                                                                          loop12:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                             {
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                break loop17;
                                                                                                                                             }
                                                                                                                                             addr436:
                                                                                                                                             addr436:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                                addr437:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop12;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr407);
                                                                                                                                 }
                                                                                                                                 addr432:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr434:
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr436);
                                                                                                                                    }
                                                                                                                                    addr435:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr194);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr311);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr308:
                                                                                                            }
                                                                                                            §§goto(addr435);
                                                                                                         }
                                                                                                         §§goto(addr408);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr308);
                                                                                                continue loop25;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr432);
                                                                              }
                                                                              addr400:
                                                                           }
                                                                           §§goto(addr358);
                                                                           §§push(false);
                                                                        }
                                                                        §§goto(addr437);
                                                                     }
                                                                     §§goto(addr400);
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            §§goto(addr327);
                                                      }
                                                      §§goto(addr434);
                                                      §§push(_loc4_);
                                                   }
                                                   §§goto(addr436);
                                                }
                                                else
                                                {
                                                   addr168:
                                                   if(§=D§.§2!O§ !== _loc8_)
                                                   {
                                                      §§goto(addr182);
                                                      §§push(3);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr182);
                                             }
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr371);
                        }
                     }
                     addr76:
                  }
                  while(true)
                  {
                     §§goto(addr48);
                  }
               }
            }
            while(true)
            {
               §§push(_loc2_);
               if(!_loc10_)
               {
                  if(!_loc10_)
                  {
                     if(_loc9_ || _loc3_)
                     {
                        break;
                     }
                     §§goto(addr327);
                  }
                  §§goto(addr310);
               }
               §§goto(addr268);
               §§goto(addr194);
            }
            return §§pop();
         }
         §§goto(addr76);
      }
      
      private function §2"[§(param1:Array, param2:§;s§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:* = true;
         if(!_loc6_)
         {
            §§push(param1);
            loop0:
            while(§§pop().length == param2.keyCodes.length)
            {
               if(!_loc7_)
               {
                  continue;
               }
               §§push(0);
               while(true)
               {
                  _loc4_ = §§pop();
                  continue loop0;
               }
            }
            loop2:
            while(true)
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  break;
               }
               addr80:
               while(true)
               {
                  _loc3_ = §§pop();
                  continue loop2;
               }
            }
            return §§pop();
            addr44:
            addr100:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc6_ && param1))
            {
               §§push(int(§§pop().length));
               if(_loc7_)
               {
                  _loc5_ = §§pop();
                  if(_loc6_)
                  {
                     continue;
                  }
                  do
                  {
                     if(_loc4_ < _loc5_)
                     {
                        if(param1[_loc4_] != param2.keyCodes[_loc4_])
                        {
                           break;
                        }
                        _loc4_++;
                        continue;
                     }
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     if(!(_loc6_ && param2))
                     {
                        §§goto(addr44);
                     }
                     §§goto(addr81);
                  }
                  while(_loc7_);
                  
                  §§goto(addr80);
                  §§push(false);
               }
               else
               {
                  §§goto(addr118);
               }
            }
            else
            {
               §§goto(addr100);
            }
            §§goto(addr44);
         }
      }
      
      private function §5§(param1:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(typeof param1 == "function")
            {
               try
               {
                  addr32:
                  param1();
               }
               catch(error:Error)
               {
               }
            }
            return;
         }
         §§goto(addr32);
      }
   }
}
