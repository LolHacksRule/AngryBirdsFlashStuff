package §0D§
{
   import §,l§.§#!,§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §^"F§.§4!2§;
   import flash.display.MovieClip;
   
   public class §]"§
   {
      
      public static const §?!H§:int = 0;
      
      public static const §6n§:int = 1;
      
      public static const §9Z§:int = 2;
      
      public static const §6Z§:int = 3;
      
      public static const §=!L§:int = 4;
      
      public static const §%8§:int = 5;
      
      public static const §1!W§:int = 6;
      
      public static const §="O§:int = 7;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §?!H§ = 0;
            loop0:
            while(true)
            {
               §6n§ = 1;
               while(true)
               {
                  §9Z§ = 2;
                  continue loop0;
                  addr41:
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private const §2l§:int = 5000;
      
      protected var §9a§:int = 0;
      
      private var mClip:MovieClip;
      
      private var §5";§:§6!K§;
      
      public var mCurrentPosition:Number = 0;
      
      private var §"!r§:Number = 5000;
      
      private var §@!e§:Number = 0;
      
      private var §%"@§:MovieClip;
      
      protected var §2!G§:Boolean = true;
      
      public function §]"§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function activate(param1:MovieClip, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.mClip = param1;
            loop0:
            while(param2)
            {
               if(!(_loc4_ && param1))
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  this.§9a§ = §?!H§;
               }
               while(true)
               {
                  break loop0;
               }
               return;
            }
            while(true)
            {
               this.init();
               if(_loc4_ && param2)
               {
                  continue;
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §;!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§9a§);
            loop0:
            while(true)
            {
               §§push(§1!W§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.mClip.Movieclip_Slider.visible = true;
                        loop3:
                        while(true)
                        {
                           (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 1;
                           while(true)
                           {
                              loop10:
                              while(!(_loc2_ && this))
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(this.§9a§);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§1!W§);
                                    loop12:
                                    while(_loc1_ || this)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(_loc1_)
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             loop13:
                                             while(!§§pop())
                                             {
                                                §§push(this.§9a§);
                                                if(_loc2_)
                                                {
                                                   continue loop11;
                                                }
                                                if(_loc1_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§6Z§);
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               this.§9a§ = §6n§;
                                                               loop15:
                                                               while(!(_loc2_ && _loc1_))
                                                               {
                                                                  this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},1,§0W§.§]!t§);
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§5";§);
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§pop().onComplete = this.§^h§;
                                                                        addr61:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop10;
                                                            }
                                                            addr114:
                                                         }
                                                         return;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop0;
                                                }
                                                addr156:
                                                while(true)
                                                {
                                                   §§push(§?!H§);
                                                   break loop12;
                                                }
                                             }
                                             this.§^h§();
                                             §§goto(addr152);
                                             addr148:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr148);
                                             }
                                          }
                                          addr158:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop10;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr158);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr156);
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      public function §=!9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§9a§);
            loop0:
            while(true)
            {
               §§push(§1!W§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.mClip.Movieclip_Slider.visible = true;
                        while(true)
                        {
                           (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 1;
                           while(!(_loc1_ && _loc2_))
                           {
                              addr99:
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              §§push(this.§5";§);
                              loop17:
                              while(true)
                              {
                                 §§pop().onComplete = this.§,B§;
                                 addr49:
                                 loop18:
                                 while(true)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                continue loop17;
                                             }
                                             addr25:
                                             addr25:
                                             addr163:
                                             this.§,B§();
                                             return;
                                             addr197:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§9a§ = §6Z§;
                                                break loop18;
                                             }
                                             addr154:
                                          }
                                       }
                                       break;
                                    }
                                    addr90:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             §§goto(addr99);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this.§9a§);
                                                continue loop0;
                                             }
                                             addr218:
                                          }
                                       }
                                       else
                                       {
                                          addr192:
                                          this.mClip.Movieclip_Slider.visible = true;
                                          §§goto(addr197);
                                       }
                                       continue loop18;
                                    }
                                 }
                                 while(_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},1,§0W§.§]!t§);
                                       §§goto(addr90);
                                    }
                                 }
                                 §§goto(addr163);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§9a§);
                     loop6:
                     while(true)
                     {
                        §§push(§?!H§);
                        loop7:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 for(; !§§pop(); §§push(§§pop() == §§pop()),if(_loc2_ || _loc2_)
                                 {
                                    continue;
                                 })
                                 {
                                    §§push(this.§9a§);
                                    if(_loc1_ && this)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    §§push(§6n§);
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       while(_loc2_ || this)
                                       {
                                          continue loop8;
                                       }
                                       continue loop7;
                                    }
                                    if(!(_loc2_ || this))
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       §§goto(addr154);
                                    }
                                    §§goto(addr25);
                                 }
                                 §§goto(addr192);
                              }
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr218);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      public function §"z§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§9a§);
            loop0:
            while(true)
            {
               §§push(§%8§);
               addr215:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr216:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},1,§0W§.§]!t§);
                                       loop8:
                                       while(true)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   this.§9a§ = §%8§;
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         while(!(_loc3_ && this))
                                                         {
                                                            this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},0.3,§0W§.§]!t§);
                                                            while(_loc2_)
                                                            {
                                                               (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 0.6;
                                                            }
                                                            return;
                                                         }
                                                         continue loop7;
                                                         addr161:
                                                      }
                                                      §§push(this.§5";§);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§pop().onComplete = this.§+"S§;
                                                            while(_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr148:
                                                               while(true)
                                                               {
                                                                  this.§9a§ = §="O§;
                                                                  addr138:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§5";§);
                                                                  }
                                                               }
                                                            }
                                                            continue loop8;
                                                            addr62:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().onComplete = this.§""V§;
                                                            addr133:
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr148);
                                                      if(_loc3_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr48);
                                                   }
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr138);
                                          }
                                          §§goto(addr133);
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr161);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                    addr218:
                                 }
                              }
                              while(_loc2_)
                              {
                                 continue loop6;
                                 §§goto(addr149);
                              }
                              addr149:
                              continue loop2;
                              addr206:
                           }
                           §§goto(addr210);
                        }
                     }
                     §§goto(addr218);
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private function §+"S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9a§ = §?!H§;
         }
      }
      
      private function §""V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9a§ = §1!W§;
            do
            {
               this.mClip.Movieclip_Slider.visible = false;
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function §^h§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(_loc4_)
         {
            this.§"!r§ = this.§2l§;
            if(!_loc3_)
            {
               addr28:
               this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("REMINDER");
            }
            §§push(§#!,§.§&"5§.§1!r§(§4!2§.§-Y§.§1!#§));
            if(_loc4_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            if(_loc4_)
            {
               §§push(Boolean(isNaN(_loc1_)));
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr195:
                        while(true)
                        {
                           §§push(_loc1_ <= 0);
                           if(!(_loc3_ && _loc1_))
                           {
                              break;
                           }
                           continue loop8;
                        }
                     }
                     addr194:
                  }
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(§3!R§.§"A§(Math.round(_loc1_ / 1000)));
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§pop());
                        }
                        _loc2_ = §§pop();
                        loop1:
                        while(true)
                        {
                           this.mClip.Movieclip_Slider.Movieclip_SliderBackground.Limited_Timer.gotoAndStop("SUBSCRIPTION");
                           loop2:
                           while(!(_loc3_ && this))
                           {
                              this.mClip.Movieclip_Slider.Movieclip_SliderBackground.Limited_Timer.timer.text = _loc2_;
                              continue loop1;
                              addr63:
                              if(!(_loc4_ || this))
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    while(true)
                                    {
                                       this.mClip.Movieclip_Slider.Movieclip_SliderBackground.Limited_Timer.gotoAndStop("NORMAL");
                                       addr185:
                                       while(true)
                                       {
                                          addr80:
                                          while(true)
                                          {
                                             this.§9a§ = §6n§;
                                             addr94:
                                             while(!(_loc3_ && this))
                                             {
                                                this.§<,§(this.§;c§);
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr63);
                                             }
                                             continue loop1;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    addr178:
                                 }
                                 return;
                              }
                              §§goto(addr185);
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr178);
                  }
               }
               §§goto(addr194);
            }
            §§goto(addr185);
         }
         §§goto(addr28);
      }
      
      private function §,B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("COUNTDOWN");
            while(true)
            {
               this.§9a§ = §6Z§;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§<,§(this.§-!b§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §<,§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":1},{"mCurrentPosition":this.mCurrentPosition},1,§0W§.§4!E§);
         }
         loop0:
         do
         {
            §§push(this.§5";§);
            while(true)
            {
               §§pop().onComplete = param1;
               while(true)
               {
                  §§push(this.§5";§);
                  if(!(_loc3_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().play();
                  if(_loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && this);
         
      }
      
      private function §;c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9a§ = §9Z§;
         }
      }
      
      private function §-!b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§9a§ = §=!L§;
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.mClip.Movieclip_Slider.visibility = true;
            loop0:
            while(true)
            {
               this.mClip.Movieclip_Slider.Movieclip_SliderBackground.visibility = true;
               loop1:
               while(true)
               {
                  this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("REMINDER");
                  loop29:
                  while(true)
                  {
                     if(_loc2_ && _loc1_)
                     {
                        continue loop1;
                     }
                     §§push(this.§9a§);
                     loop30:
                     while(true)
                     {
                        §§push(§6Z§);
                        while(true)
                        {
                           if(_loc1_ || this)
                           {
                              §§push(§§pop() == §§pop());
                              loop12:
                              while(true)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.§9a§);
                                       loop14:
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop30;
                                          }
                                          §§push(§9Z§);
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc1_ || this)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr170:
                                                         while(_loc1_)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr210:
                                                               while(true)
                                                               {
                                                                  this.mCurrentPosition = 1;
                                                                  addr190:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop29;
                                                                     }
                                                                     this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("COUNTDOWN");
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop29;
                                                         }
                                                         continue loop13;
                                                         addr170:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  this.§9a§ = §9Z§;
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           addr120:
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              this.mCurrentPosition = 1;
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc1_ || this))
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc1_ || this)
                                                                                    {
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("REMINDER");
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§2!G§ = false;
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                }
                                                                                                return;
                                                                                                addr28:
                                                                                                addr48:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§9a§ = §=!L§;
                                                                                                   §§goto(addr210);
                                                                                                }
                                                                                                addr207:
                                                                                             }
                                                                                             §§goto(addr28);
                                                                                          }
                                                                                       }
                                                                                       while(_loc1_)
                                                                                       {
                                                                                          §§push(this.§9a§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§=!L§);
                                                                                             addr222:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                break loop15;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§%"@§ = this.mClip.Movieclip_Slider.Movieclip_SliderBackground;
                                                                                          break loop18;
                                                                                       }
                                                                                       addr217:
                                                                                       addr278:
                                                                                    }
                                                                                    §§goto(addr190);
                                                                                 }
                                                                                 §§goto(addr185);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§%"@§.x = this.§@!e§;
                                                                                 addr240:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§2!G§);
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr28);
                                                                                       }
                                                                                       §§goto(addr217);
                                                                                    }
                                                                                    addr225:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop29;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr248:
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr173);
                                                                     }
                                                                  }
                                                                  while(_loc1_)
                                                                  {
                                                                     this.§@!e§ = -this.§%"@§.width;
                                                                     §§goto(addr248);
                                                                     §§goto(addr120);
                                                                  }
                                                                  addr286:
                                                                  while(true)
                                                                  {
                                                                     (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 1;
                                                                     §§goto(addr278);
                                                                  }
                                                               }
                                                            }
                                                            addr104:
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                      }
                                                      §§goto(addr28);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   addr224:
                                                }
                                                break;
                                             }
                                             §§goto(addr170);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr224);
                                          }
                                       }
                                       continue loop30;
                                    }
                                    §§goto(addr207);
                                 }
                              }
                           }
                           §§goto(addr222);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr286);
      }
      
      public function §6!g§() : void
      {
      }
      
      public function §7" §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§5";§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr29);
            }
            §§pop().play();
         }
         addr29:
         if(!_loc1_)
         {
            §§push(this.§5";§);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%"@§.x = this.§@!e§ + Math.abs(this.§@!e§) * this.mCurrentPosition;
            while(true)
            {
               if(this.§9a§ != §9Z§)
               {
                  return;
               }
               addr25:
               loop1:
               for(; !_loc2_; while(true)
               {
                  if(!(_loc3_ || param1))
                  {
                     continue loop1;
                  }
                  §§goto(addr25);
               })
               {
                  §§push(this);
                  §§push(this.§"!r§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§"!r§ = §§pop();
                  while(this.§"!r§ <= 0)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§"z§();
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  §§goto(addr25);
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §?,§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§9a§);
            loop0:
            while(true)
            {
               §§push(§=!L§);
               addr92:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(!(_loc2_ && param1))
                           {
                              this.mClip.Movieclip_Slider.Movieclip_SliderBackground.text.text = param1;
                           }
                           if(_loc3_ || this)
                           {
                              addr88:
                              break;
                           }
                           §§push(§§pop() == §§pop());
                           continue loop0;
                           if(!(_loc2_ && _loc2_))
                           {
                              continue;
                           }
                           addr102:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr102:
                        }
                        return;
                        addr55:
                     }
                  }
                  §§goto(addr102);
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §#5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"z§(true);
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§9a§);
            loop0:
            while(true)
            {
               §§push(§="O§);
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(this.§9a§);
                  if(_loc2_)
                  {
                     §§push(§%8§);
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(§§pop() == §§pop())
                     {
                        loop2:
                        while(_loc2_)
                        {
                           this.§%"@§.x = this.§@!e§;
                           while(true)
                           {
                              this.mCurrentPosition = 0;
                              while(!(_loc1_ && _loc2_))
                              {
                                 this.§9a§ = §?!H§;
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc2_)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr25);
                                       }
                                       break loop1;
                                    }
                                    this.mCurrentPosition = 0;
                                    addr118:
                                    while(true)
                                    {
                                       this.§9a§ = §1!W§;
                                       break loop2;
                                    }
                                    addr118:
                                    addr128:
                                 }
                                 §§goto(addr25);
                              }
                           }
                        }
                        while(_loc1_)
                        {
                           §§goto(addr118);
                        }
                        this.mClip.Movieclip_Slider.visible = false;
                        §§goto(addr106);
                     }
                  }
                  continue loop0;
                  addr25:
                  return;
               }
               this.§%"@§.x = this.§@!e§;
               §§goto(addr128);
            }
         }
         §§goto(addr118);
      }
      
      public function get state() : int
      {
         return this.§9a§;
      }
      
      public function set state(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§9a§ = param1;
         }
      }
   }
}
