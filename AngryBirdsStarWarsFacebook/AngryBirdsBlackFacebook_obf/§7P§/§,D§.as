package §7P§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §2"Y§.§?#Q§;
   import §2"Y§.§?#^§;
   import §7!F§.§>"G§;
   import §^#>§.§#_§;
   
   public class §,D§
   {
       
      
      protected var §8">§:Number;
      
      protected var §2"4§:Number;
      
      protected var §,#B§:Number;
      
      protected var §]H§:Number;
      
      protected var §7"t§:int = -1;
      
      protected var §]!`§:§>"G§;
      
      protected var §##+§:§>"G§;
      
      protected var §6#%§:§>"G§;
      
      protected var §!"]§:int;
      
      protected var §;z§:Number = 0.0;
      
      protected var §&![§:DisplayObject;
      
      protected var §&!!§:Sprite;
      
      protected var §,B§:Number = 0;
      
      protected var §38§:Number = 0;
      
      protected var §0#M§:Number = 0.0;
      
      protected var §%G§:Sprite = null;
      
      protected var §&+§:Boolean = false;
      
      protected var §%!w§:Boolean = false;
      
      public function §,D§(param1:§>"G§, param2:Sprite, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§]!`§ = param1;
            }
            addr98:
         }
         while(true)
         {
            this.§%G§ = param2;
            loop2:
            while(true)
            {
               this.§%!w§ = param3;
               while(this.§%!w§)
               {
                  if(!_loc5_)
                  {
                     if(_loc4_ || this)
                     {
                        this.§%G§.scaleX = -this.§%G§.scaleX;
                        continue loop2;
                     }
                     continue;
                     continue;
                  }
                  continue loop2;
               }
               addr23:
               while(true)
               {
                  this.initializeImage();
                  if(_loc5_)
                  {
                     continue loop2;
                  }
                  if(_loc4_)
                  {
                     return;
                  }
                  §§goto(addr98);
               }
            }
         }
      }
      
      public function get width() : Number
      {
         return this.§8">§;
      }
      
      public function get height() : Number
      {
         return this.§2"4§;
      }
      
      public function get §^l§() : Number
      {
         return this.§,#B§;
      }
      
      protected function initializeImage() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§]!`§)
            {
               while(true)
               {
                  this.§##+§ = this.§]!`§.getSubAnimation(§&#=§.§'%§);
                  addr227:
                  while(true)
                  {
                  }
                  addr54:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr19);
               }
            }
            loop2:
            while(true)
            {
               if(!this.§##+§)
               {
                  while(true)
                  {
                     this.§##+§ = this.§]!`§;
                     addr204:
                     while(_loc1_)
                     {
                     }
                     continue loop2;
                  }
                  addr200:
               }
               while(true)
               {
                  this.setDamageState(0);
                  while(true)
                  {
                     this.selectSubAnimation(0);
                     loop7:
                     for(; _loc1_; while(true)
                     {
                        if(_loc2_ && this)
                        {
                           continue loop7;
                        }
                        §§goto(addr65);
                        §§push(this.§%G§);
                     },§§goto(addr190))
                     {
                        if(!this.§6#%§)
                        {
                           return;
                        }
                        while(true)
                        {
                           this.§&![§ = this.§6#%§.getFrameWithOffset(0,this.§&![§);
                           addr155:
                           if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              loop11:
                              while(true)
                              {
                                 this.§8">§ = this.§&![§.width;
                                 loop12:
                                 while(_loc1_ || _loc2_)
                                 {
                                    this.§2"4§ = this.§&![§.height;
                                    loop13:
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       §§push(this.§&!!§);
                                       if(!_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop7;
                                             }
                                             §§push(this.§&!!§);
                                          }
                                          else
                                          {
                                             §§push(this.§%G§);
                                             if(!_loc2_)
                                             {
                                                §§pop().addChild(this.§&![§);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(!(_loc1_ || this))
                                                      {
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr54);
                                                   }
                                                   else if(!(_loc2_ && _loc1_))
                                                   {
                                                      §§goto(addr155);
                                                   }
                                                   else
                                                   {
                                                      addr170:
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                         §§goto(addr170);
                                                      }
                                                      addr144:
                                                   }
                                                }
                                                else
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(_loc2_ && this)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!(_loc1_ || _loc2_))
                                                      {
                                                         continue loop12;
                                                      }
                                                      addr65:
                                                      while(true)
                                                      {
                                                         §§pop().addChild(this.§&!!§);
                                                         continue loop14;
                                                      }
                                                   }
                                                   continue loop7;
                                                   addr68:
                                                }
                                                addr19:
                                                return;
                                             }
                                             §§goto(addr65);
                                             §§goto(addr68);
                                          }
                                       }
                                       §§pop().addChild(this.§&![§);
                                       continue loop7;
                                    }
                                    while(this.§&![§)
                                    {
                                       §§goto(addr144);
                                    }
                                    addr169:
                                    return;
                                 }
                                 §§goto(addr204);
                              }
                           }
                           §§goto(addr200);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(!this.§]!`§);
            if(_loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop10:
                     while(true)
                     {
                        §§pop();
                        addr146:
                        while(true)
                        {
                           §§push(this.§##+§);
                           loop8:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr120:
                              while(!_loc3_)
                              {
                                 continue loop10;
                              }
                              §§push(§§pop());
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              if(§§pop())
                              {
                                 addr126:
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(this.§##+§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().name == param1);
                                       if(!_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc4_ && _loc3_)
                                       {
                                          §§goto(addr120);
                                       }
                                       break;
                                    }
                                    continue loop8;
                                 }
                                 addr127:
                              }
                           }
                        }
                     }
                     addr145:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                        }
                        addr114:
                     }
                     while(true)
                     {
                        this.§##+§ = this.§]!`§.getSubAnimation(param1);
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(!(_loc3_ || param1))
                              {
                                 break;
                              }
                              this.§&+§ = true;
                              continue;
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr127);
                     }
                  }
                  return;
               }
            }
            §§goto(addr145);
         }
         §§goto(addr41);
      }
      
      protected function §'!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0#M§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr91:
                           loop3:
                           while(true)
                           {
                              §§push(Boolean(this.§6#%§));
                              if(!_loc3_)
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          this.§0#M§ = Math.random() * this.§6#%§.animationLengthMilliSeconds;
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 addr19:
                                 return;
                                 addr29:
                              }
                           }
                        }
                        addr90:
                     }
                     §§goto(addr29);
                  }
               }
               §§goto(addr90);
            }
         }
         §§goto(addr91);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%G§ = null;
         }
      }
      
      public function §5<§(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(!param2)
            {
               §§push(this.§%G§);
               if(!(_loc3_ && param1))
               {
                  §§pop().addChildAt(param1,0);
                  if(_loc3_ && _loc3_)
                  {
                  }
               }
            }
            §§goto(addr85);
         }
         addr85:
         if(_loc4_ || this)
         {
            §§push(this.§%G§);
         }
      }
      
      public function §8#%§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§%G§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr88:
                        loop3:
                        while(true)
                        {
                           §§push(param1.parent == this.§%G§);
                           if(!_loc2_)
                           {
                              while(§§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(this.§%G§);
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §§pop().removeChild(param1);
                                 }
                                 break;
                              }
                              return;
                              addr47:
                           }
                        }
                     }
                     addr87:
                  }
                  §§goto(addr47);
               }
               §§goto(addr87);
            }
         }
         §§goto(addr88);
      }
      
      public function §<!X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§8">§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() / this.§2"4§);
                  }
                  §§pop().§,#B§ = §§pop();
                  while(true)
                  {
                     if(this.§,#B§ < 1)
                     {
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              this.§,#B§ = 1 / this.§,#B§;
                              while(true)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§,#B§ = 1;
                                       }
                                       else
                                       {
                                          addr123:
                                       }
                                       continue;
                                       break;
                                    }
                                    break;
                                 }
                                 continue loop0;
                              }
                              return;
                              addr75:
                           }
                           break;
                           addr44:
                           if(_loc2_ && param1)
                           {
                              continue;
                           }
                           return;
                           addr51:
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§,#B§ = Math.min(11,this.§,#B§);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr44);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr51);
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function §5!s§(param1:§?#^§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§?#Q§ = null;
         if(!_loc4_)
         {
            if(param1 is §?#Q§)
            {
               addr25:
               _loc2_ = §?#Q§(param1);
               if(_loc3_)
               {
                  §§push(this);
                  §§push(-_loc2_.§`!`§.x);
                  if(_loc3_)
                  {
                     §§push(§§pop() / §#_§.§8]§);
                  }
                  §§pop().§,B§ = §§pop();
                  while(true)
                  {
                     §§push(this);
                     §§push(-_loc2_.§`!`§.y);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() / §#_§.§8]§);
                     }
                     §§pop().§38§ = §§pop();
                     addr87:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     §§push(this.§&![§);
                     if(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           §§push(this.§38§);
                           if(!_loc4_)
                           {
                              §§pop().y = §§pop();
                              if(!(_loc4_ && param1))
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(false)
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§&![§);
                                          addr74:
                                          while(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this.§&![§);
                                                addr77:
                                                while(true)
                                                {
                                                   §§push(this.§,B§);
                                                   addr79:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr80:
                                                      addr112:
                                                      while(!(_loc4_ && _loc3_))
                                                      {
                                                         §§goto(addr87);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop2;
                                                         §§goto(addr80);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr112);
            }
            addr135:
            return;
         }
         §§goto(addr25);
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§%G§);
            while(true)
            {
               §§push(param1);
               addr104:
               addr44:
               while(true)
               {
                  §§pop().scaleX = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§%G§);
                     addr81:
                     while(true)
                     {
                        §§push(param1);
                        addr82:
                        while(true)
                        {
                           §§pop().scaleY = §§pop();
                           addr83:
                           while(!(_loc2_ && _loc2_))
                           {
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§push(param1);
               if(!_loc2_)
               {
                  if(_loc3_)
                  {
                     addr67:
                     §§push(-§§pop());
                     if(_loc3_)
                     {
                        §§pop().scaleX = §§pop();
                        §§goto(addr70);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr104);
               }
               §§goto(addr67);
            }
         }
         while(this.§%!w§)
         {
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§%G§);
               if(_loc3_)
               {
                  §§goto(addr44);
               }
               §§goto(addr81);
            }
            §§goto(addr70);
         }
         addr70:
         if(!(_loc3_ || this))
         {
            §§goto(addr83);
         }
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§%G§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr60);
            }
            §§pop().color = param1;
         }
         addr60:
         if(!(_loc2_ && this))
         {
            §§push(this.§%G§);
         }
      }
      
      protected function handleAnimationEnd() : void
      {
      }
      
      public function get currentAnimationLengthMilliSeconds() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§6#%§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr52:
                     §§push(this.§6#%§.animationLengthMilliSeconds);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr56:
                     return 0;
                  }
                  return §§pop();
               }
               §§goto(addr56);
            }
         }
         §§goto(addr52);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§]!`§)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§0#M§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§0#M§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(this.§0#M§ >= this.§6#%§.animationLengthMilliSeconds)
                     {
                        loop2:
                        for(; !_loc2_; if(_loc2_ && _loc2_)
                        {
                           continue;
                        },this.§&+§ = false,§§goto(addr199))
                        {
                           §§push(this);
                           §§push(this.§0#M§);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(§§pop() - this.§6#%§.animationLengthMilliSeconds);
                           }
                           §§pop().§0#M§ = §§pop();
                           loop3:
                           while(true)
                           {
                              this.handleAnimationEnd();
                              loop4:
                              while(_loc3_ || param1)
                              {
                                 addr159:
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 §§push(this.§&![§);
                                 loop25:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr99:
                                       if(_loc3_ || param1)
                                       {
                                          loop16:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   this.§&![§ = this.§6#%§.getFrameWithOffset(this.§0#M§,this.§&![§);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(this.§&![§);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr76:
                                                               break;
                                                               addr76:
                                                            }
                                                            if(_loc3_ || param1)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               §§push(this.§&![§);
                                                               while(true)
                                                               {
                                                                  §§push(this.§,B§);
                                                                  addr75:
                                                                  addr87:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                  }
                                                                  §§push(this.§&![§);
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               addr199:
                                                               addr170:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(this.§6#%§);
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr145:
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr157:
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       §§goto(addr159);
                                                                                       continue loop23;
                                                                                    }
                                                                                 }
                                                                                 addr156:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr207:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§6#%§);
                                                                                             break loop15;
                                                                                          }
                                                                                       }
                                                                                       addr206:
                                                                                    }
                                                                                    addr180:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          break loop19;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr205:
                                                                              }
                                                                              while(_loc3_ || _loc3_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr207);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 addr204:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr145);
                                                                              }
                                                                              addr203:
                                                                           }
                                                                           §§goto(addr205);
                                                                        }
                                                                        §§goto(addr204);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().frameCount > 1);
                                                                  break loop25;
                                                                  §§goto(addr199);
                                                               }
                                                               addr199:
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop25;
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             return;
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr156);
                                 }
                                 while(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr180);
                                 }
                                 §§goto(addr206);
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr267);
                     }
                     while(true)
                     {
                        §§goto(addr203);
                     }
                  }
               }
            }
         }
         addr267:
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         if(!_loc7_)
         {
            this.§;z§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§##+§);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§##+§);
                        addr148:
                        while(true)
                        {
                           §§push(§§pop().subAnimationCount);
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop4:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    §§push(int(Math.round(param1 * _loc3_)));
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || param2)
                                       {
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                          }
                                          addr121:
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             addr123:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr124:
                                                while(true)
                                                {
                                                   §§push(int(§§pop() - 1));
                                                   addr126:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr127:
                                                      addr33:
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         return §§pop();
                                                      }
                                                      break loop0;
                                                   }
                                                }
                                             }
                                             addr123:
                                          }
                                          while(true)
                                          {
                                             §§push(this.§!"]§);
                                             loop10:
                                             while(!_loc7_)
                                             {
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr121);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr124);
                                                      }
                                                   }
                                                   §§push(_loc4_);
                                                   addr62:
                                                   break;
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc7_)
                                                         {
                                                            break loop8;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                                §§goto(addr126);
                                             }
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                       break loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(false);
                     §§push(_loc7_ && param1);
                  }
                  §§goto(addr33);
               }
               §§goto(addr148);
            }
            return §§pop();
         }
         §§goto(addr123);
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            if(!this.§##+§)
            {
               if(_loc6_ || param1)
               {
                  return;
               }
            }
         }
         var _loc3_:§>"G§ = this.§6#%§;
         §§push(this.§##+§.subAnimationCount);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr237:
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc6_ || param1)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§push(this.§!"]§);
                                    loop15:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr230:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             while(true)
                                             {
                                                this.§!"]§ = param1;
                                                addr234:
                                                while(true)
                                                {
                                                   this.§&+§ = true;
                                                   addr200:
                                                   while(true)
                                                   {
                                                      addr116:
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr49);
                                                         }
                                                         addr258:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(_loc6_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                             addr231:
                                          }
                                          while(true)
                                          {
                                             this.§6#%§ = this.§##+§.getSubAnimationFromIndex(param1);
                                             loop10:
                                             while(true)
                                             {
                                                loop11:
                                                for(; this.§6#%§ != _loc3_; while(true)
                                                {
                                                   continue loop11;
                                                })
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(param2);
                                                      if(_loc5_ && param2)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr99:
                                                               this.§0#M§ = Math.random() * this.§6#%§.animationLengthMilliSeconds;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.§0#M§ = 0;
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         if(_loc6_ || this)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr116);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.selectSubAnimation(0,param2);
                                                                  §§goto(addr180);
                                                               }
                                                               addr176:
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                         else
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc6_ || param2))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr136:
                                                                     while(true)
                                                                     {
                                                                        this.§6#%§ = this.§##+§;
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                                  addr160:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr234);
                                                               }
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         return;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop10;
                                                      }
                                                      addr257:
                                                   }
                                                   §§goto(addr99);
                                                }
                                                addr49:
                                                return;
                                             }
                                             §§goto(addr258);
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr229:
                                 }
                                 §§goto(addr234);
                              }
                              else
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    §§push(0);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          §§goto(addr176);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr230);
                                 }
                              }
                              §§goto(addr229);
                           }
                           addr222:
                        }
                     }
                  }
                  §§goto(addr257);
               }
            }
         }
         §§goto(addr160);
      }
      
      public function getCurrentAnimationName() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]!`§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     return "none";
                  }
                  addr48:
                  §§push(this.§]!`§);
               }
               §§goto(addr48);
            }
            return §§pop().name;
         }
         §§goto(addr48);
      }
   }
}
