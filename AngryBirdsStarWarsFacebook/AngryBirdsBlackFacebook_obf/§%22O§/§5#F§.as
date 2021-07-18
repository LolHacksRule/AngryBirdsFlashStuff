package §"O§
{
   import §+D§.§^"m§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import flash.display.MovieClip;
   
   public class §5#F§
   {
       
      
      protected var §@+§:§[#R§;
      
      protected var §[!k§:Boolean;
      
      protected var §;"x§:Boolean;
      
      protected var §"!A§:Boolean;
      
      protected var § "C§:Number;
      
      protected var §9!D§:§^"m§;
      
      protected var §?#Y§:MovieClip;
      
      protected var §4!^§:Boolean;
      
      public function §5#F§(param1:§^"m§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
            if(!_loc4_)
            {
               loop0:
               while(true)
               {
                  this.§9!D§ = param1;
                  if(_loc3_)
                  {
                     §§push(this.§9!D§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§pop().mClip.alpha = 1;
                        if(!_loc4_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           §§push(this.§9!D§);
                           if(_loc3_ || this)
                           {
                              addr62:
                              §§pop().mClip.scaleX = this.§9!D§.mClip.scaleY = 1;
                              if(_loc3_)
                              {
                                 addr185:
                                 this.§9!D§.mClip.icon.rotation = 0;
                                 while(true)
                                 {
                                    this.§?#Y§ = this.§9!D§.mClip.sparkles;
                                    addr182:
                                    loop10:
                                    while(true)
                                    {
                                       this.§[!k§ = false;
                                       addr164:
                                       while(true)
                                       {
                                          this.§ "C§ = 0;
                                          addr159:
                                          while(true)
                                          {
                                             this.§;"x§ = true;
                                             addr154:
                                             while(true)
                                             {
                                                this.§"!A§ = true;
                                                addr147:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break loop0;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          continue loop10;
                                       }
                                    }
                                    addr130:
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       this.refresh();
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr147);
                                          }
                                          while(true)
                                          {
                                             this.§&#0§(false);
                                          }
                                          addr142:
                                       }
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr154);
                                       }
                                    }
                                    return;
                                    addr137:
                                 }
                                 addr75:
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr62);
                  }
                  break;
               }
               while(true)
               {
                  this.§4!^§ = false;
                  §§goto(addr142);
               }
            }
            §§goto(addr159);
         }
         §§goto(addr182);
      }
      
      public function get view() : §^"m§
      {
         return this.§9!D§;
      }
      
      public function get §`!^§() : Boolean
      {
         return this.§4!^§;
      }
      
      public function set §`!^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§4!^§ = param1;
         }
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§;"x§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(!_loc3_);
         
      }
      
      public function get enabled() : Boolean
      {
         return this.§;"x§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§"!A§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(!_loc3_);
         
      }
      
      public function get visible() : Boolean
      {
         return this.§"!A§;
      }
      
      public function get §,R§() : Boolean
      {
         return this.§[!k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§@+§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§@+§);
                     addr75:
                     while(true)
                     {
                        §§pop().stop();
                        addr76:
                        while(true)
                        {
                        }
                     }
                     addr45:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     return;
                     addr52:
                  }
               }
               while(true)
               {
                  this.§@+§ = null;
                  if(_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr45);
               }
               §§goto(addr52);
            }
            §§goto(addr75);
         }
         §§goto(addr52);
      }
      
      protected function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9!D§);
            loop0:
            while(true)
            {
               §§push(this.§"!A§);
               addr70:
               while(true)
               {
                  §§pop().setVisibility(§§pop());
                  continue loop0;
               }
            }
            addr68:
         }
         while(true)
         {
            §§push(this.§9!D§);
            if(_loc1_ || _loc2_)
            {
               §§push(this.§;"x§);
               if(_loc1_ || _loc2_)
               {
                  §§pop().setEnabled(§§pop());
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr68);
            }
            §§goto(addr70);
         }
      }
      
      public function hide(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§[!k§ = true;
            while(true)
            {
               this.§"!A§ = false;
               loop1:
               while(true)
               {
                  this.§;"x§ = false;
                  loop2:
                  while(true)
                  {
                     this.§9!D§.setEnabled(this.§;"x§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§@+§);
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 this.§@+§ = §-#C§.§%!E§.§^!H§(this.§9!D§.mClip,{
                                    "scaleX":0,
                                    "scaleY":0
                                 },null,0.5);
                                 loop9:
                                 for(; _loc3_ || _loc3_; if(_loc3_ || _loc3_)
                                 {
                                    addr60:
                                 },continue,return)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§@+§);
                                       loop10:
                                       while(true)
                                       {
                                          if(param1)
                                          {
                                             while(!_loc2_)
                                             {
                                                addr96:
                                                §§push(Number(1));
                                                if(_loc2_ && this)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      §§goto(addr96);
                                                   }
                                                   addr109:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop().stop();
                                                break loop9;
                                             }
                                             addr94:
                                             addr144:
                                          }
                                          else
                                          {
                                             §§push(0.5);
                                             if(!_loc2_)
                                             {
                                                §§goto(addr109);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop().delay = §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                §§push(this.§@+§);
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop().onComplete = this.§=R§;
                                                   addr67:
                                                   while(!_loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr78:
                                                   continue loop13;
                                                   while(true)
                                                   {
                                                      §§push(this.§@+§);
                                                      if(_loc2_ && this)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§pop().play();
                                                         if(!_loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§goto(addr67);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr94);
                                                      }
                                                   }
                                                   §§goto(addr60);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr142:
                                    }
                                    §§goto(addr144);
                                 }
                                 while(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              addr112:
                           }
                           §§goto(addr142);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function show() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§[!k§ = false;
            while(true)
            {
               this.§"!A§ = true;
               addr147:
               while(true)
               {
                  this.§;"x§ = true;
                  addr142:
                  addr45:
                  while(true)
                  {
                     this.refresh();
                  }
                  if(!(_loc2_ && this))
                  {
                     return;
                  }
               }
            }
            addr151:
         }
         loop3:
         while(true)
         {
            §§push(this.§@+§);
            while(true)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     if(_loc1_)
                     {
                        §§push(this.§@+§);
                        loop5:
                        while(true)
                        {
                           §§pop().stop();
                           addr121:
                           loop6:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 this.§@+§ = §-#C§.§%!E§.§^!H§(this.§9!D§.mClip,{
                                    "scaleX":1,
                                    "scaleY":1,
                                    "alpha":1
                                 },null,0.25);
                                 addr95:
                                 while(_loc1_ || _loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       §§push(this.§@+§);
                                       continue loop5;
                                    }
                                    continue loop3;
                                 }
                                 continue loop6;
                              }
                           }
                           §§goto(addr142);
                        }
                     }
                     else
                     {
                        §§goto(addr151);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr121);
               }
               §§goto(addr77);
            }
         }
      }
      
      private function §=R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.refresh();
         }
      }
      
      private function §'V§(param1:§[#R§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1)
            {
               if(!(_loc2_ && param1))
               {
                  addr48:
                  param1.§^"P§();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §@#D§(param1:Number = 0.75) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"!A§ = true;
         }
         while(true)
         {
            this.§;"x§ = false;
            loop1:
            while(true)
            {
               this.§9!D§.setEnabled(this.§;"x§);
               loop2:
               while(true)
               {
                  this.refresh();
                  loop3:
                  while(true)
                  {
                     §§push(this.§@+§);
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§@+§);
                              addr132:
                              while(true)
                              {
                                 §§pop().stop();
                                 addr133:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr130:
                        }
                        while(true)
                        {
                           this.§@+§ = §-#C§.§%!E§.§^!H§(this.§9!D§.mClip,{
                              "scaleX":1,
                              "scaleY":1,
                              "alpha":0.5
                           },null,0.5);
                           loop9:
                           while(_loc3_)
                           {
                              §§push(this.§@+§);
                              loop10:
                              while(true)
                              {
                                 §§pop().delay = param1;
                                 addr93:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop9;
                                    }
                                    if(!(_loc2_ && param1))
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop10;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr132);
                              }
                           }
                           continue loop1;
                        }
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        §§pop().play();
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              continue loop3;
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr93);
                     }
                  }
               }
            }
            if(_loc3_ || _loc3_)
            {
               return;
            }
         }
      }
      
      protected function updateRotation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§^#]§.§>!e§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§ "C§);
                  loop1:
                  do
                  {
                     if(§§pop() > 0)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§ "C§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(0.6);
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().§ "C§ = §§pop();
                                 §§goto(addr212);
                              }
                              §§goto(addr296);
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr212);
                     }
                     else
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§ "C§);
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           if(!_loc2_)
                           {
                              §§push(0);
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.§ "C§ = 0;
                                                   addr100:
                                                   while(true)
                                                   {
                                                      if(_loc2_ && param1)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr177);
                                                         }
                                                         return §§pop();
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         §§push(true);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            addr110:
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               continue loop0;
                                                            }
                                                         }
                                                         addr176:
                                                      }
                                                      §§goto(addr36);
                                                   }
                                                }
                                                addr97:
                                             }
                                             else
                                             {
                                                §§goto(addr241);
                                             }
                                             §§goto(addr224);
                                          }
                                          else
                                          {
                                             addr173:
                                             this.§ "C§ = 0;
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr100);
                                    }
                                    §§goto(addr20);
                                 }
                                 else
                                 {
                                    §§goto(addr250);
                                 }
                              }
                              else
                              {
                                 addr165:
                                 if(!(_loc2_ && this))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§goto(addr173);
                                    }
                                    §§goto(addr110);
                                 }
                                 else
                                 {
                                    §§goto(addr230);
                                 }
                              }
                              §§goto(addr177);
                           }
                        }
                        §§goto(addr229);
                     }
                  }
                  while(_loc2_ && _loc2_);
                  
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr165);
                        §§push(0);
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr229);
               }
               §§goto(addr265);
            }
            return §§pop();
         }
         §§goto(addr97);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.updateRotation(param1));
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  addr54:
                  this.§9!D§.mClip.icon.rotation = this.§ "C§;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §&#0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  this.§?#Y§.visible = true;
               }
               this.§?#Y§.gotoAndPlay(1);
               addr92:
            }
            else
            {
               this.§?#Y§.visible = false;
               do
               {
                  this.§?#Y§.gotoAndStop(1);
               }
               while(_loc3_ && _loc2_);
               
               if(_loc2_ || _loc3_)
               {
                  if(_loc3_ && param1)
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr19);
               }
            }
         }
         addr19:
      }
   }
}
