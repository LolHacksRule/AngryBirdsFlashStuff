package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§"a§;
   import §&v§.§each §;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §@L§.§?!'§;
   
   public class §%!@§
   {
       
      
      protected var §0=§:Number;
      
      protected var §1$§:Number;
      
      protected var §-!4§:Number;
      
      protected var §@=§:Number;
      
      protected var §@!L§:int = -1;
      
      protected var §"!b§:§5!v§;
      
      protected var §;"#§:§5!v§;
      
      protected var §<§:§5!v§;
      
      protected var §-H§:int;
      
      protected var § e§:Number = 0.0;
      
      protected var §;i§:DisplayObject;
      
      protected var §+!d§:Sprite;
      
      protected var § i§:Number = 0;
      
      protected var §>K§:Number = 0;
      
      protected var §&h§:Number = 0.0;
      
      protected var §#e§:Sprite = null;
      
      protected var §3"#§:Boolean = false;
      
      protected var §"! §:Boolean = false;
      
      public function §%!@§(param1:§5!v§, param2:Sprite, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§"!b§ = param1;
            while(true)
            {
               this.§#e§ = param2;
               continue loop0;
               addr60:
               if(!(_loc5_ || param3))
               {
                  continue;
               }
               this.§#e§.scaleX = -this.§#e§.scaleX;
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     this.§,X§();
                     if(!_loc4_)
                     {
                        addr34:
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr60);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(this.§"! §)
                                 {
                                    continue loop4;
                                 }
                                 continue loop6;
                              }
                              addr79:
                           }
                        }
                        continue loop0;
                     }
                  }
                  return;
               }
            }
         }
      }
      
      public function get width() : Number
      {
         return this.§0=§;
      }
      
      public function get height() : Number
      {
         return this.§1$§;
      }
      
      public function get §^Q§() : Number
      {
         return this.§-!4§;
      }
      
      protected function §,X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§"!b§)
            {
               while(true)
               {
                  this.§;"#§ = this.§"!b§.getSubAnimation(§"_§.§=!4§);
                  addr223:
                  while(true)
                  {
                  }
                  addr43:
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr20);
               }
            }
            loop2:
            while(true)
            {
               if(!this.§;"#§)
               {
                  while(true)
                  {
                     this.§;"#§ = this.§"!b§;
                     addr202:
                     while(true)
                     {
                     }
                     addr150:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     loop11:
                     while(true)
                     {
                        this.§0=§ = this.§;i§.width;
                        addr129:
                        loop12:
                        while(true)
                        {
                           this.§1$§ = this.§;i§.height;
                           loop13:
                           while(true)
                           {
                              §§push(this.§+!d§);
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(!§§pop())
                                 {
                                    §§push(this.§#e§);
                                    if(!_loc1_)
                                    {
                                       §§pop().addChild(this.§;i§);
                                       if(!_loc1_)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             §§goto(addr43);
                                          }
                                          else
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§push(this.§#e§);
                                                            while(true)
                                                            {
                                                               §§pop().addChild(this.§+!d§);
                                                               addr57:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        §§goto(addr20);
                                                                     }
                                                                     else
                                                                     {
                                                                        if(!(_loc1_ && _loc1_))
                                                                        {
                                                                           addr141:
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§goto(addr150);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§&!=§(0);
                                                                                 }
                                                                                 addr193:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(this.§<§)
                                                                              {
                                                                                 break loop15;
                                                                              }
                                                                              break;
                                                                              §§goto(addr141);
                                                                           }
                                                                           return;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              if(!this.§;i§)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break loop14;
                                                                           }
                                                                           §§goto(addr202);
                                                                        }
                                                                        addr176:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr73:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ || this))
                                                                        {
                                                                           break loop15;
                                                                        }
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           §§push(this.§+!d§);
                                                                           continue loop14;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     addr73:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§;i§ = this.§<§.getFrameWithOffset(0,this.§;i§);
                                                                  §§goto(addr176);
                                                                  §§goto(addr73);
                                                               }
                                                            }
                                                            addr54:
                                                         }
                                                         return;
                                                      }
                                                      addr163:
                                                      break;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop13;
                                             }
                                             while(true)
                                             {
                                                continue loop11;
                                                §§goto(addr163);
                                             }
                                          }
                                          addr20:
                                          return;
                                       }
                                       §§goto(addr57);
                                    }
                                    §§goto(addr54);
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr89);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.setDamageState(0);
                  §§goto(addr193);
                  §§goto(addr202);
               }
            }
         }
         §§goto(addr129);
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(!this.§"!b§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§;"#§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_ && _loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 continue loop0;
                              }
                              addr145:
                              §§push(this.§;"#§);
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              §§push(§§pop().name == param1);
                              if(_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop8:
                                    do
                                    {
                                       this.§;"#§ = this.§"!b§.getSubAnimation(param1);
                                       addr66:
                                       addr128:
                                       loop9:
                                       while(_loc4_)
                                       {
                                          this.§3"#§ = true;
                                          while(!_loc3_)
                                          {
                                             this.setDamageState(this.§ e§,param2);
                                             if(!(_loc3_ && param2))
                                             {
                                                if(!(_loc3_ && param2))
                                                {
                                                   continue loop8;
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       while(!(_loc3_ && _loc3_))
                                       {
                                          §§goto(addr145);
                                          §§goto(addr66);
                                       }
                                       continue loop3;
                                    }
                                    while(!_loc4_);
                                    
                                    return;
                                 }
                                 §§goto(addr102);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr100);
               }
            }
         }
         addr102:
      }
      
      protected function §2!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§&h§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               if(!(_loc3_ && param1))
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(!(_loc2_ || _loc3_))
                              {
                                 loop3:
                                 for(; _loc2_; while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                 })
                                 {
                                    while(true)
                                    {
                                       §§push(Boolean(this.§<§));
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          continue loop1;
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop0;
                              }
                              this.§&h§ = Math.random() * this.§<§.animationLengthMilliSeconds;
                           }
                           break;
                        }
                        return;
                        addr56:
                     }
                  }
               }
               §§goto(addr98);
            }
         }
         §§goto(addr101);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#e§ = null;
         }
      }
      
      public function §4y§(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param2)
            {
               §§push(this.§#e§);
               if(_loc3_ || param2)
               {
                  §§pop().addChildAt(param1,0);
                  if(!(_loc4_ && this))
                  {
                     if(!_loc3_)
                     {
                        addr72:
                        this.§#e§.addChild(param1);
                        addr74:
                        addr70:
                     }
                     return;
                  }
                  §§goto(addr74);
               }
               §§goto(addr72);
            }
            §§goto(addr70);
         }
         §§goto(addr72);
      }
      
      public function §3R§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§#e§);
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
                        addr102:
                        do
                        {
                           §§push(param1.parent == this.§#e§);
                           if(!(_loc2_ || this))
                           {
                              continue loop2;
                           }
                        }
                        while(!(_loc3_ && _loc2_));
                        
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     if(!(_loc2_ || this))
                     {
                        addr95:
                        break;
                     }
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                     §§goto(addr102);
                  }
                  return;
               }
            }
         }
         §§goto(addr95);
      }
      
      public function §]!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§0=§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() / this.§1$§);
                  }
                  §§pop().§-!4§ = §§pop();
                  §§goto(addr90);
               }
            }
            this.§-!4§ = 1;
            §§goto(addr116);
         }
         addr90:
         loop1:
         while(true)
         {
            if(this.§-!4§ < 1)
            {
               continue;
            }
            while(true)
            {
               this.§-!4§ = Math.min(11,this.§-!4§);
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue loop1;
               }
               if(_loc3_)
               {
                  break loop1;
               }
               if(!(_loc2_ && _loc3_))
               {
                  continue loop0;
               }
            }
         }
      }
      
      public function §'@§(param1:§each §) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"a§ = null;
         if(!(_loc3_ && this))
         {
            if(param1 is §"a§)
            {
               addr31:
               _loc2_ = §"a§(param1);
               if(!(_loc3_ && param1))
               {
                  §§push(this);
                  §§push(-_loc2_.§0V§.x);
                  if(_loc4_)
                  {
                     §§push(§§pop() / §?!'§.§'!i§);
                  }
                  §§pop().§ i§ = §§pop();
                  while(true)
                  {
                     §§push(this);
                     §§push(-_loc2_.§0V§.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() / §?!'§.§'!i§);
                     }
                     §§pop().§>K§ = §§pop();
                     loop1:
                     while(_loc4_ || param1)
                     {
                        do
                        {
                           §§push(this.§;i§);
                           if(_loc4_)
                           {
                              if(!§§pop())
                              {
                                 break;
                              }
                              if(!_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§;i§);
                                    addr90:
                                    while(true)
                                    {
                                       §§push(this.§ i§);
                                       addr92:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§;i§);
                                 if(_loc4_)
                                 {
                                    §§push(this.§>K§);
                                    if(_loc4_ || this)
                                    {
                                       §§pop().y = §§pop();
                                       if(_loc4_ || _loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr90);
                                 }
                                 §§goto(addr92);
                              }
                              continue;
                           }
                           §§goto(addr90);
                        }
                        while(false);
                        
                        return;
                     }
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr136);
         }
         §§goto(addr31);
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§#e§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr114:
               while(true)
               {
                  §§pop().scaleX = §§pop();
                  addr115:
                  while(true)
                  {
                     §§push(this.§#e§);
                     continue loop0;
                  }
               }
            }
         }
         while(this.§"! §)
         {
            if(_loc3_)
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr37);
            }
            §§goto(addr80);
         }
         §§goto(addr25);
      }
      
      protected function §&c§() : void
      {
      }
      
      public function get §0_§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§<§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr57:
                     §§push(this.§<§.animationLengthMilliSeconds);
                     if(!_loc2_)
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
         §§goto(addr57);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§"!b§)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.§&h§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§&h§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(this.§&h§ >= this.§<§.animationLengthMilliSeconds)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§&h§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() - this.§<§.animationLengthMilliSeconds);
                           }
                           §§pop().§&h§ = §§pop();
                           while(true)
                           {
                              this.§&c§();
                              addr199:
                              addr86:
                              while(true)
                              {
                              }
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(this.§;i§);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(this.§>K§);
                                 if(!_loc3_)
                                 {
                                    §§pop().y = §§pop();
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr199);
                                          }
                                          §§goto(addr24);
                                       }
                                       loop23:
                                       while(!_loc3_)
                                       {
                                          §§push(this.§;i§);
                                          if(_loc2_)
                                          {
                                             addr60:
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(this.§;i§);
                                                      while(true)
                                                      {
                                                         §§push(this.§ i§);
                                                         addr76:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr77:
                                                            loop24:
                                                            while(_loc2_ || _loc3_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr86);
                                                               }
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(this.§<§);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(_loc2_ || _loc3_)
                                                                              {
                                                                                 if(_loc2_ || param1)
                                                                                 {
                                                                                    addr154:
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop23;
                                                                                    }
                                                                                    addr191:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       addr192:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          break loop16;
                                                                                       }
                                                                                       §§goto(addr154);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr195:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§<§);
                                                                                       break loop15;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(_loc2_ || this)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(!_loc3_)
                                                                                       {
                                                                                          this.§3"#§ = false;
                                                                                          continue loop15;
                                                                                       }
                                                                                       addr246:
                                                                                       return;
                                                                                       addr182:
                                                                                    }
                                                                                    §§goto(addr24);
                                                                                 }
                                                                              }
                                                                              §§goto(addr192);
                                                                              addr173:
                                                                              addr140:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 break loop24;
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr24:
                                                                           return;
                                                                           addr102:
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr194);
                                                                        }
                                                                        §§goto(addr180);
                                                                     }
                                                                     addr136:
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr173);
                                                                  §§goto(addr187);
                                                               }
                                                               addr187:
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§;i§ = this.§<§.getFrameWithOffset(this.§&h§,this.§;i§);
                                                                        continue loop23;
                                                                     }
                                                                     addr108:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr195);
                                                                  }
                                                               }
                                                               break;
                                                               §§goto(addr77);
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                      }
                                                      addr74:
                                                   }
                                                   §§goto(addr77);
                                                }
                                                §§goto(addr24);
                                             }
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr102);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr140);
                                                §§goto(addr60);
                                             }
                                             §§goto(addr136);
                                             addr97:
                                          }
                                          §§goto(addr74);
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr97);
                                          §§push(this.§;i§);
                                       }
                                       continue;
                                    }
                                    §§goto(addr77);
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr74);
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr191);
                        §§goto(addr199);
                     }
                  }
               }
            }
            §§goto(addr246);
         }
         §§goto(addr108);
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(_loc6_)
         {
            this.§ e§ = param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§;"#§);
            if(_loc6_)
            {
               if(!§§pop())
               {
                  §§push(false);
                  if(_loc6_)
                  {
                     return §§pop();
                  }
               }
               while(!_loc7_)
               {
                  §§push(this.§;"#§);
                  loop9:
                  while(_loc6_ || _loc3_)
                  {
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        §§push(int(§§pop() - 1));
                     }
                     loop10:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop11:
                        while(true)
                        {
                           loop12:
                           while(true)
                           {
                              §§push(this.§-H§);
                              loop13:
                              while(_loc6_)
                              {
                                 §§push(int(§§pop()));
                                 for(; !_loc7_; §§push(_loc4_),if(!(_loc6_ || param2))
                                 {
                                    continue;
                                 },if(!_loc6_)
                                 {
                                    continue loop13;
                                 },§§goto(addr43))
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc7_)
                                    {
                                       continue loop11;
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop9;
                                    }
                                    this.§&!=§(_loc4_,param2);
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(int(Math.round(param1 * _loc3_)));
                                       loop6:
                                       for(; _loc6_; if(_loc7_ && _loc3_)
                                       {
                                          continue;
                                       },§§push(_loc5_),if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() > §§pop());
                                          break loop0;
                                       },§§goto(addr118))
                                       {
                                          if(!_loc7_)
                                          {
                                             addr118:
                                             §§push(§§pop());
                                             if(!_loc7_)
                                             {
                                                _loc4_ = §§pop();
                                                break loop13;
                                             }
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   continue loop9;
                                                }
                                                continue loop12;
                                             }
                                             continue;
                                             addr118:
                                          }
                                          else
                                          {
                                             addr154:
                                          }
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             break loop6;
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          continue loop5;
                                       }
                                    }
                                 }
                                 continue loop10;
                              }
                              while(true)
                              {
                                 §§goto(addr118);
                              }
                           }
                        }
                     }
                  }
               }
               continue;
               break;
            }
            while(true)
            {
               §§goto(addr154);
            }
         }
         return §§pop();
      }
      
      public function §&!=§(param1:int, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc3_))
         {
            if(!this.§;"#§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:§5!v§ = this.§<§;
         §§push(this.§;"#§.subAnimationCount);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
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
                  if(!(_loc5_ && param2))
                  {
                     if(§§pop())
                     {
                        loop17:
                        while(true)
                        {
                           §§pop();
                           loop9:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc6_ || _loc3_)
                              {
                                 addr221:
                                 §§push(§§pop() < _loc4_);
                                 while(true)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_ || param2)
                                          {
                                             continue loop0;
                                          }
                                          addr227:
                                          loop15:
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr228:
                                             while(!_loc5_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      this.§-H§ = param1;
                                                      addr234:
                                                      while(true)
                                                      {
                                                         this.§3"#§ = true;
                                                         addr211:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr231:
                                                }
                                                while(true)
                                                {
                                                   this.§<§ = this.§;"#§.getSubAnimationFromIndex(param1);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(this.§<§ != _loc3_)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(!(_loc6_ || param2))
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§&h§ = 0;
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc6_ || param2))
                                                                        {
                                                                           addr94:
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 this.§&h§ = Math.random() * this.§<§.animationLengthMilliSeconds;
                                                                                 addr111:
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr44);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc6_ || _loc3_))
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       addr191:
                                                                                       if(!(_loc5_ && param2))
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr129:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr234);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           §§goto(addr44);
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§<§ = this.§;"#§;
                                                                              }
                                                                              addr114:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              addr225:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 break loop3;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           addr185:
                                                                        }
                                                                        §§goto(addr129);
                                                                     }
                                                                     §§goto(addr111);
                                                                  }
                                                               }
                                                               §§goto(addr94);
                                                            }
                                                            addr44:
                                                            return;
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr231);
                                                      }
                                                   }
                                                   §§goto(addr221);
                                                }
                                             }
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr225);
                                    }
                                    addr187:
                                    this.§&!=§(0,param2);
                                    §§goto(addr191);
                                    §§goto(addr221);
                                 }
                                 addr223:
                              }
                              §§goto(addr227);
                           }
                        }
                        addr257:
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr257);
               }
            }
         }
         §§goto(addr187);
      }
      
      public function §?S§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§"!b§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr46);
                  }
               }
               §§push(this.§"!b§);
            }
            return §§pop().name;
         }
         addr46:
         return "none";
      }
   }
}
