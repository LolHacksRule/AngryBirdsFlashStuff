package §@!"§
{
   import §%8§.§%!S§;
   import §%8§.§[_§;
   import §2`§.§;!Q§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §@V§.§#=§;
   
   public class §8!T§
   {
       
      
      protected var §3!t§:Number;
      
      protected var §^!i§:Number;
      
      protected var §0#§:Number;
      
      protected var §[#§:Number;
      
      protected var §0!S§:int = -1;
      
      protected var §@!5§:§;!Q§;
      
      protected var §9?§:§;!Q§;
      
      protected var §#!z§:§;!Q§;
      
      protected var §<C§:int;
      
      protected var §@!7§:Number = 0.0;
      
      protected var §@!d§:DisplayObject;
      
      protected var §@B§:Sprite;
      
      protected var §[;§:Number = 0;
      
      protected var §`!l§:Number = 0;
      
      protected var §]!N§:Number = 0.0;
      
      protected var §&%§:Sprite = null;
      
      protected var §3q§:Boolean = false;
      
      protected var §[!"§:Boolean = false;
      
      public function §8!T§(param1:§;!Q§, param2:Sprite, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§@!5§ = param1;
               loop1:
               while(_loc5_ || this)
               {
                  while(true)
                  {
                     this.§&%§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§[!"§ = param3;
                        while(!_loc4_)
                        {
                           if(this.§[!"§)
                           {
                              continue loop3;
                           }
                           loop7:
                           while(true)
                           {
                              this.§2!>§();
                              if(!(_loc4_ && this))
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              addr67:
                              while(true)
                              {
                                 continue loop7;
                              }
                           }
                           if(!_loc4_)
                           {
                              return;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      public function get width() : Number
      {
         return this.§3!t§;
      }
      
      public function get height() : Number
      {
         return this.§^!i§;
      }
      
      public function get §@!l§() : Number
      {
         return this.§0#§;
      }
      
      protected function §2!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§@!5§)
            {
               while(true)
               {
                  this.§9?§ = this.§@!5§.getSubAnimation(§@_§.§&P§);
                  addr228:
                  while(true)
                  {
                  }
               }
               addr221:
            }
            loop2:
            while(true)
            {
               if(!this.§9?§)
               {
                  while(true)
                  {
                     this.§9?§ = this.§@!5§;
                     addr207:
                     while(true)
                     {
                     }
                     addr156:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     loop11:
                     while(true)
                     {
                        this.§3!t§ = this.§@!d§.width;
                        loop12:
                        while(!(_loc1_ && _loc1_))
                        {
                           this.§^!i§ = this.§@!d§.height;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop12;
                              }
                              if(_loc1_ && _loc1_)
                              {
                                 break;
                              }
                              §§push(this.§@B§);
                              if(_loc2_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          addr118:
                                          this.§@B§.addChild(this.§@!d§);
                                          addr68:
                                          this.§&%§.addChild(this.§@B§);
                                          addr71:
                                          if(_loc1_)
                                          {
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   this.§@!d§ = this.§#!z§.getFrameWithOffset(0,this.§@!d§);
                                                   while(this.§@!d§)
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                   }
                                                   addr168:
                                                   if(_loc2_)
                                                   {
                                                      return;
                                                   }
                                                   addr198:
                                                   while(true)
                                                   {
                                                      this.§>#§(0);
                                                      §§goto(addr193);
                                                   }
                                                   addr188:
                                                }
                                                else
                                                {
                                                   §§goto(addr221);
                                                }
                                             }
                                             continue loop2;
                                          }
                                          if(_loc1_ && this)
                                          {
                                             continue loop2;
                                          }
                                          return;
                                          addr121:
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr121);
                                 }
                                 else
                                 {
                                    §§push(this.§&%§);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§pop().addChild(this.§@!d§);
                                       if(!_loc1_)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                continue;
                                             }
                                             if(!_loc1_)
                                             {
                                                break loop11;
                                             }
                                             §§goto(addr156);
                                          }
                                          else
                                          {
                                             §§goto(addr121);
                                          }
                                       }
                                       §§goto(addr71);
                                    }
                                 }
                                 §§goto(addr68);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr207);
                        }
                        if(!_loc1_)
                        {
                           §§goto(addr152);
                        }
                        else
                        {
                           §§goto(addr188);
                        }
                     }
                     if(!(_loc2_ || _loc2_))
                     {
                        addr193:
                        while(this.§#!z§)
                        {
                           continue loop8;
                        }
                        return;
                     }
                     §§goto(addr118);
                  }
               }
               while(true)
               {
                  this.setDamageState(0);
                  §§goto(addr207);
               }
            }
         }
         §§goto(addr198);
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(!this.§@!5§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§9?§);
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop5:
                              while(!_loc4_)
                              {
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop4;
                                       addr97:
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      addr63:
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            this.§3q§ = true;
                                                            loop12:
                                                            while(_loc3_)
                                                            {
                                                               if(_loc3_ || param2)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.setDamageState(this.§@!7§,param2);
                                                                     if(!(_loc4_ && param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  return;
                                                                  continue;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr116:
                                                }
                                                while(true)
                                                {
                                                   this.§9?§ = this.§@!5§.getSubAnimation(param1);
                                                   §§goto(addr63);
                                                   §§goto(addr116);
                                                }
                                             }
                                             return;
                                             addr111:
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr111);
               }
            }
         }
         §§goto(addr55);
      }
      
      protected function §"!V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]!N§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc3_ || this)
                           {
                              if(_loc3_)
                              {
                                 this.§]!N§ = Math.random() * this.§#!z§.animationLengthMilliSeconds;
                                 addr71:
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr71);
                        }
                        return;
                        addr52:
                     }
                     addr35:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     §§goto(addr52);
                  }
               }
               addr79:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr71);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§&%§ = null;
         }
      }
      
      public function §7V§(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(param2)
            {
               if(!(_loc4_ && param1))
               {
                  addr72:
                  this.§&%§.addChild(param1);
               }
               addr24:
               return;
               addr74:
            }
            else
            {
               §§push(this.§&%§);
               if(!_loc4_)
               {
                  §§pop().addChildAt(param1,0);
                  if(!_loc3_)
                  {
                     §§goto(addr74);
                  }
                  else
                  {
                     addr50:
                  }
                  §§goto(addr24);
               }
               else
               {
                  §§goto(addr72);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr50);
      }
      
      public function §&"'§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§&%§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr93:
                        do
                        {
                           §§push(param1.parent == this.§&%§);
                           if(!(_loc3_ || _loc3_))
                           {
                              continue loop2;
                           }
                        }
                        while(_loc3_ || this);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc3_)
                     {
                        while(true)
                        {
                           §§push(this.§&%§);
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           §§pop().removeChild(param1);
                        }
                        addr63:
                     }
                     while(true)
                     {
                        if(_loc3_ || this)
                        {
                           break loop4;
                        }
                        §§goto(addr93);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §!!c§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  this.§0#§ = 1;
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§3!t§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / this.§^!i§);
                  }
                  §§pop().§0#§ = §§pop();
                  do
                  {
                     if(this.§0#§ < 1)
                     {
                        while(true)
                        {
                           this.§0#§ = 1 / this.§0#§;
                           addr70:
                           while(_loc3_ || _loc3_)
                           {
                              if(!(_loc3_ || this))
                              {
                                 return;
                                 addr116:
                              }
                           }
                           continue loop0;
                        }
                        addr64:
                     }
                     while(true)
                     {
                        this.§0#§ = Math.min(11,this.§0#§);
                        if(_loc3_ || this)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr70);
                     }
                  }
                  while(_loc2_);
                  
                  return;
               }
            }
            §§goto(addr116);
         }
         §§goto(addr108);
      }
      
      public function §'+§(param1:§[_§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%!S§ = null;
         if(_loc4_)
         {
            if(param1 is §%!S§)
            {
               addr26:
               _loc2_ = §%!S§(param1);
               if(_loc4_)
               {
                  §§push(this);
                  §§push(-_loc2_.§-x§.x);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() / §#=§.§^!2§);
                  }
                  §§pop().§[;§ = §§pop();
                  while(true)
                  {
                     §§push(this);
                     §§push(-_loc2_.§-x§.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() / §#=§.§^!2§);
                     }
                     §§pop().§`!l§ = §§pop();
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§@!d§);
                           while(§§pop())
                           {
                              if(!(_loc4_ || param1))
                              {
                                 continue loop1;
                              }
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              §§push(this.§`!l§);
                              if(!_loc3_)
                              {
                                 §§pop().y = §§pop();
                                 if(!_loc3_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              addr80:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop1;
                              }
                           }
                           §§goto(addr131);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr78);
               }
            }
            addr131:
            return;
         }
         §§goto(addr26);
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&%§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr88:
               while(true)
               {
                  §§pop().scaleX = §§pop();
               }
               loop3:
               while(true)
               {
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  §§push(param1);
                  loop4:
                  while(true)
                  {
                     §§pop().scaleY = §§pop();
                     while(this.§[!"§)
                     {
                        if(_loc2_)
                        {
                           §§push(this.§&%§);
                           if(!_loc2_)
                           {
                              continue loop3;
                           }
                           §§push(param1);
                           if(!_loc2_)
                           {
                              continue loop4;
                           }
                           if(_loc2_ || param1)
                           {
                              §§push(-§§pop());
                              continue loop4;
                           }
                           §§goto(addr88);
                        }
                        else
                        {
                           addr62:
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§&%§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr47:
                     this.§&%§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      protected function §<!k§() : void
      {
      }
      
      public function get §"!"§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§#!z§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr42:
                     §§push(this.§#!z§.animationLengthMilliSeconds);
                     if(_loc1_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr61:
                     return 0;
                  }
                  return §§pop();
               }
               §§goto(addr61);
            }
         }
         §§goto(addr42);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§@!5§)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§]!N§);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§]!N§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(this.§]!N§ >= this.§#!z§.animationLengthMilliSeconds)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§]!N§);
                           if(_loc2_ || param1)
                           {
                              §§push(§§pop() - this.§#!z§.animationLengthMilliSeconds);
                           }
                           §§pop().§]!N§ = §§pop();
                           loop3:
                           while(true)
                           {
                              this.§<!k§();
                              while(!_loc3_)
                              {
                                 addr111:
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 this.§@!d§ = this.§#!z§.getFrameWithOffset(this.§]!N§,this.§@!d§);
                                 loop18:
                                 do
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(this.§@!d§);
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             loop19:
                                             while(_loc2_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   addr76:
                                                   §§push(this.§@!d§);
                                                   while(true)
                                                   {
                                                      §§push(this.§[;§);
                                                      addr78:
                                                      addr86:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop3;
                                                      }
                                                      §§push(this.§@!d§);
                                                      if(_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§`!l§);
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         if(_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop19;
                                                         }
                                                         continue loop3;
                                                      }
                                                      §§goto(addr78);
                                                   }
                                                   continue loop18;
                                                   addr76:
                                                }
                                                continue loop0;
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§#!z§);
                                                if(_loc2_ || this)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop12:
                                                   while(!(_loc3_ && param1))
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr162:
                                                            loop13:
                                                            while(!(_loc3_ && _loc2_))
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc2_ || this))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        addr104:
                                                                        return;
                                                                        addr170:
                                                                     }
                                                                     addr19:
                                                                     while(!(_loc3_ && this))
                                                                     {
                                                                        §§goto(addr111);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        addr188:
                                                                        addr208:
                                                                        while(!_loc3_)
                                                                        {
                                                                           this.§3q§ = false;
                                                                           continue loop11;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§#!z§);
                                                                           break loop11;
                                                                        }
                                                                        §§goto(addr104);
                                                                     }
                                                                     addr104:
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr208);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr206:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§goto(addr207);
                                                                  }
                                                                  addr186:
                                                                  while(true)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                               }
                                                               §§goto(addr162);
                                                            }
                                                            addr162:
                                                            addr205:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr102);
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr188);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr19);
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr186);
                                             }
                                          }
                                          §§goto(addr19);
                                       }
                                       else
                                       {
                                          §§goto(addr90);
                                       }
                                    }
                                    §§goto(addr76);
                                 }
                                 while(!(_loc2_ || _loc2_));
                                 
                                 if(!_loc2_)
                                 {
                                    §§goto(addr104);
                                 }
                                 §§goto(addr19);
                              }
                              §§goto(addr266);
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(this.§3q§);
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr205);
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr207);
                     }
                  }
               }
            }
         }
         addr266:
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(_loc7_ || this)
         {
            this.§@!7§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§9?§);
               if(!(_loc6_ && param1))
               {
                  if(!§§pop())
                  {
                     §§push(false);
                     if(_loc7_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  while(true)
                  {
                     §§push(this.§9?§);
                     loop10:
                     while(!(_loc6_ && this))
                     {
                        if(_loc7_)
                        {
                           while(true)
                           {
                              this.§>#§(_loc4_,param2);
                              if(!_loc7_)
                              {
                                 continue loop10;
                              }
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(_loc4_);
                                 if(_loc7_)
                                 {
                                    addr42:
                                    §§push(_loc5_);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() > §§pop());
                                          break loop0;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             §§push(_loc3_);
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   addr145:
                                                   §§push(_loc3_);
                                                   while(!_loc6_)
                                                   {
                                                      §§push(int(§§pop() - 1));
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr176:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr177:
                                                         while(true)
                                                         {
                                                            §§push(int(Math.round(param1 * _loc3_)));
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               §§push(§§pop());
                                                               continue loop6;
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                      }
                                                   }
                                                   addr145:
                                                   addr175:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§<C§);
                                                   if(_loc7_)
                                                   {
                                                      addr102:
                                                      §§push(int(§§pop()));
                                                      while(!(_loc6_ && param1))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               continue loop10;
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      addr102:
                                                   }
                                                   §§goto(addr102);
                                                }
                                                §§goto(addr42);
                                             }
                                             addr143:
                                          }
                                          §§goto(addr149);
                                       }
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr177);
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr175);
               }
            }
            return §§pop();
         }
         §§goto(addr123);
      }
      
      public function §>#§(param1:int, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(!this.§9?§)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:§;!Q§ = this.§#!z§;
         §§push(this.§9?§.subAnimationCount);
         if(!(_loc6_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        loop18:
                        while(true)
                        {
                           §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(param1);
                              loop15:
                              while(_loc5_)
                              {
                                 §§push(_loc4_);
                                 if(_loc5_ || this)
                                 {
                                    addr199:
                                    §§push(§§pop() < §§pop());
                                    while(!(_loc5_ || this))
                                    {
                                       continue loop18;
                                       §§goto(addr199);
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc6_ && this))
                                          {
                                             if(!(_loc5_ || this))
                                             {
                                                continue loop15;
                                             }
                                             §§push(0);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         this.§>#§(0,param2);
                                                         return;
                                                         addr173:
                                                      }
                                                      else
                                                      {
                                                         loop4:
                                                         while(true)
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               if(this.§#!z§ != _loc3_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(param2);
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              this.§]!N§ = 0;
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr43);
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr209:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§<C§);
                                                                                       addr211:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          addr212:
                                                                                          while(_loc5_ || this)
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§<C§ = param1;
                                                                                                   addr223:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§3q§ = true;
                                                                                                      addr186:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr220:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§#!z§ = this.§9?§.getSubAnimationFromIndex(param1);
                                                                                                continue loop4;
                                                                                             }
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr94:
                                                                                    this.§]!N§ = Math.random() * this.§#!z§.animationLengthMilliSeconds;
                                                                                    addr102:
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc5_ || param2)
                                                                                       {
                                                                                          §§goto(addr43);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       if(_loc6_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§#!z§ = this.§9?§;
                                                                                          continue loop5;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr186);
                                                                              }
                                                                              §§goto(addr102);
                                                                           }
                                                                           §§goto(addr94);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     §§goto(addr223);
                                                                  }
                                                                  §§goto(addr94);
                                                               }
                                                               addr43:
                                                               return;
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                }
                                                §§goto(addr122);
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr209);
                                    }
                                    addr200:
                                    addr207:
                                 }
                                 §§goto(addr212);
                              }
                              continue loop0;
                           }
                        }
                        addr246:
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr246);
               }
            }
         }
         §§goto(addr173);
      }
      
      public function §[!P§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§@!5§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr61);
                  }
               }
               §§push(this.§@!5§);
            }
            return §§pop().name;
         }
         addr61:
         return "none";
      }
   }
}
