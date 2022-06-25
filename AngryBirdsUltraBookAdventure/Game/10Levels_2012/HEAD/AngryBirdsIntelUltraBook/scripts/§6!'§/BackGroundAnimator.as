package §6!'§
{
   import flash.display.MovieClip;
   
   public class BackGroundAnimator
   {
       
      
      private var §@_§:MovieClip;
      
      private var §`!a§:uint;
      
      private var §%F§:String;
      
      private var §4!§:Vector.<MovieClip>;
      
      private var §^-§:Number = 41.666666666666664;
      
      private var §,T§:int = 0;
      
      private var §5!c§:Boolean;
      
      private var §-q§:Boolean;
      
      private var §8i§:uint;
      
      public function BackGroundAnimator(background:MovieClip, animPrefix:String, animationsCount:uint = 0, maxSimultanious:uint = 3)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || background)
         {
         }
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(!_loc6_)
                  {
                     while(true)
                     {
                        while(_loc5_)
                        {
                           loop6:
                           for(; _loc5_ || background; if(!(_loc5_ || animationsCount))
                           {
                              continue;
                           },loop9:
                           while(true)
                           {
                              this.§%F§ = animPrefix;
                              loop10:
                              while(true)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    this.§-q§ = true;
                                    loop12:
                                    while(!_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          this.§`!a§ = animationsCount;
                                          loop14:
                                          while(_loc5_)
                                          {
                                             loop15:
                                             for(; !_loc6_; loop16:
                                             while(true)
                                             {
                                                if(_loc6_ && this)
                                                {
                                                   continue loop15;
                                                }
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                loop17:
                                                while(true)
                                                {
                                                   this.§4!§ = new Vector.<MovieClip>();
                                                   loop18:
                                                   while(_loc5_)
                                                   {
                                                      loop19:
                                                      do
                                                      {
                                                         this.§5!c§ = false;
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            continue loop17;
                                                            addr57:
                                                            if(_loc6_ && animationsCount)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               addr66:
                                                               if(!(_loc6_ && background))
                                                               {
                                                                  continue loop19;
                                                               }
                                                               addr50:
                                                               addr50:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ && animPrefix)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        continue loop18;
                                                                        §§goto(addr50);
                                                                     }
                                                                     continue loop16;
                                                                     continue loop18;
                                                                  }
                                                                  §§goto(addr57);
                                                                  §§goto(addr66);
                                                               }
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         continue loop2;
                                                      }
                                                      while(_loc6_);
                                                      
                                                      if(_loc5_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop13;
                                                }
                                             },continue loop14)
                                             {
                                                §§push(this);
                                                if(!_loc6_)
                                                {
                                                   §§push(maxSimultanious);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop() > this.§`!a§)
                                                      {
                                                         addr137:
                                                         §§push(this.§`!a§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(_loc6_)
                                                            {
                                                               addr153:
                                                               §§push(uint(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr153);
                                                      }
                                                      else
                                                      {
                                                         §§push(maxSimultanious);
                                                         if(_loc5_ || animationsCount)
                                                         {
                                                            §§goto(addr153);
                                                         }
                                                      }
                                                      §§pop().§8i§ = §§pop();
                                                      continue;
                                                   }
                                                   §§goto(addr153);
                                                }
                                                §§goto(addr137);
                                             }
                                             continue loop10;
                                          }
                                          continue loop12;
                                       }
                                    }
                                    continue loop9;
                                 }
                              }
                           })
                           {
                              loop7:
                              while(true)
                              {
                                 this.§@_§ = background;
                                 addr204:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                     if(!(_loc5_ || animationsCount))
                     {
                        continue;
                     }
                     §§goto(addr69);
                  }
               }
            }
         }
         while(true)
         {
            super();
            §§goto(addr230);
         }
      }
      
      private function reset() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         var mc:MovieClip = null;
         if(!_loc3_)
         {
            if(_loc4_ || _loc3_)
            {
            }
         }
         §§push(1);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         while(true)
         {
            if(i > this.§`!a§)
            {
               if(!(_loc3_ && this))
               {
                  break;
               }
               §§goto(addr148);
            }
            if(_loc3_)
            {
               break;
            }
            if(_loc3_ && this)
            {
               break;
            }
            mc = MovieClip(this.§@_§.getChildByName(this.§%F§ + i));
            if(!_loc3_)
            {
               loop1:
               while(true)
               {
                  mc.gotoAndStop(mc.totalFrames);
                  loop2:
                  while(true)
                  {
                     addr107:
                     while(true)
                     {
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr107);
            }
         }
         addr148:
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_)
         {
            do
            {
               this.§5!c§ = true;
               while(!(_loc1_ || _loc2_))
               {
               }
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         while(true)
         {
            this.§5!c§ = false;
            loop1:
            while(true)
            {
               do
               {
                  this.reset();
                  continue loop1;
               }
               while(!(_loc2_ || _loc1_));
               
               return;
            }
            if(_loc1_ && _loc1_)
            {
               continue;
            }
            §§goto(addr78);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               this.§@_§ = null;
               while(true)
               {
                  continue loop0;
                  addr51:
                  if(_loc1_ || this)
                  {
                     return;
                     addr68:
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function run(deltaTime:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var animation:MovieClip = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§5!c§);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        return deltaTime;
                     }
                     addr193:
                     addr137:
                     continue loop0;
                     loop4:
                     while(true)
                     {
                        §§push(this.§-q§);
                        if(_loc5_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              addr114:
                              addr67:
                              while(true)
                              {
                                 this.§&!Q§();
                                 addr106:
                                 while(true)
                                 {
                                    addr97:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       addr101:
                                    }
                                 }
                              }
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue;
                              }
                              do
                              {
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr114);
                              }
                              while(_loc5_ && animation);
                              
                              addr75:
                              if(!(_loc5_ && this))
                              {
                                 if(false)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§,T§);
                                       if(!(_loc5_ && this))
                                       {
                                          if(§§pop() >= this.§^-§)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr67);
                                                }
                                                while(_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr106);
                                                addr80:
                                             }
                                             §§goto(addr75);
                                          }
                                          §§goto(addr193);
                                       }
                                       break;
                                    }
                                    addr144:
                                    var _loc3_:* = §§pop();
                                    var _loc4_:* = this.§4!§;
                                    addr185:
                                    for each(animation in _loc4_)
                                    {
                                       if(_loc6_ || deltaTime)
                                       {
                                          addr170:
                                          this.§=z§(animation);
                                          if(!(_loc5_ && deltaTime))
                                          {
                                             if(_loc6_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr170);
                                             addr182:
                                          }
                                          addr184:
                                          §§goto(addr184);
                                       }
                                       §§goto(addr182);
                                    }
                                    if(_loc6_)
                                    {
                                       this.§,T§ = 0;
                                       addr250:
                                       addr264:
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(this.§4!§.length == 0)
                                          {
                                             if(_loc6_ || this)
                                             {
                                             }
                                             addr245:
                                             if(!_loc5_)
                                             {
                                                this.§-q§ = true;
                                                if(!_loc5_)
                                                {
                                                   if(!(_loc5_ && animation))
                                                   {
                                                      if(!(_loc6_ || this))
                                                      {
                                                         §§goto(addr250);
                                                      }
                                                      addr192:
                                                      §§goto(addr193);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                addr220:
                                                §§goto(addr220);
                                                addr247:
                                             }
                                             §§goto(addr264);
                                          }
                                          §§goto(addr192);
                                       }
                                       addr262:
                                       §§goto(addr262);
                                    }
                                    §§goto(addr247);
                                 }
                                 §§goto(addr144);
                                 §§push(0);
                              }
                              while(!_loc5_)
                              {
                                 §§goto(addr80);
                              }
                              §§goto(addr97);
                              addr92:
                           }
                        }
                        while(true)
                        {
                           this.§,T§ += deltaTime;
                           §§goto(addr92);
                           §§goto(addr101);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      private function §&!Q§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var index:uint = 0;
         var mc:MovieClip = null;
         if(!_loc5_)
         {
            while(true)
            {
               addr38:
               if(!(_loc6_ || index))
               {
                  continue;
               }
               if(false)
               {
                  loop3:
                  while(true)
                  {
                     this.§4!§.length = 0;
                     while(_loc5_)
                     {
                     }
                     if(!_loc5_)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§goto(addr38);
                     }
                     addr55:
                     while(true)
                     {
                        continue loop3;
                     }
                  }
                  while(true)
                  {
                     §§goto(addr55);
                  }
                  addr58:
               }
               var count:uint = this.§&!6§(1,this.§8i§);
               if(_loc5_)
               {
               }
               var indexes:Array = [];
               addr232:
               if(this.§4!§.length < count)
               {
                  addr139:
                  if(_loc6_ || indexes)
                  {
                     index = this.§&!6§(1,this.§`!a§);
                     if(!(_loc5_ && indexes))
                     {
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              addr81:
                              if(indexes.indexOf(index) == -1)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr81);
                                          }
                                          mc = MovieClip(this.§@_§.getChildByName(this.§%F§ + index));
                                          if(_loc6_)
                                          {
                                             mc.gotoAndStop(1);
                                             this.§4!§.push(mc);
                                             addr213:
                                             addr231:
                                             if(_loc6_)
                                             {
                                                addr187:
                                                if(!(_loc5_ && this))
                                                {
                                                   if(!(_loc5_ && count))
                                                   {
                                                      addr172:
                                                      indexes.push(index);
                                                      if(!(_loc5_ && indexes))
                                                      {
                                                         if(!(_loc5_ && index))
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr213);
                                                addr210:
                                             }
                                             addr219:
                                             §§goto(addr219);
                                          }
                                          §§goto(addr210);
                                       }
                                       addr260:
                                       if(!_loc6_)
                                       {
                                          §§goto(addr260);
                                       }
                                       return;
                                       addr256:
                                    }
                                    addr244:
                                    if(_loc6_)
                                    {
                                       this.§-q§ = false;
                                       §§goto(addr260);
                                       addr247:
                                    }
                                    §§goto(addr256);
                                 }
                                 §§goto(addr244);
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr260);
               }
               if(_loc6_ || indexes)
               {
                  §§goto(addr244);
               }
               §§goto(addr256);
            }
         }
         §§goto(addr58);
      }
      
      private function §&!6§(start:Number, end:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && end))
         {
            while(true)
            {
               while(_loc4_)
               {
                  if(!_loc3_)
                  {
                     return Math.floor(start + Math.random() * (end - start));
                     addr69:
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §=z§(tmc:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc4_ || _loc3_)
         {
            loop0:
            while(true)
            {
               addr45:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr45);
         }
         var tFrame:int = tmc.currentFrame + 1;
         if(_loc4_ || tFrame)
         {
            loop4:
            while(true)
            {
               §§push(tFrame);
               loop5:
               while(true)
               {
                  if(§§pop() < tmc.totalFrames)
                  {
                     loop12:
                     while(true)
                     {
                        tmc.gotoAndStop(tFrame);
                        while(_loc3_ && this)
                        {
                        }
                        if(_loc4_ || tFrame)
                        {
                           addr101:
                           if(!(_loc3_ && tmc))
                           {
                              break;
                           }
                           loop10:
                           while(true)
                           {
                              if(!(_loc3_ && tmc))
                              {
                                 if(!_loc3_)
                                 {
                                    while(!_loc3_)
                                    {
                                       continue loop12;
                                    }
                                    while(!_loc3_)
                                    {
                                       this.§01§(tmc);
                                       continue loop10;
                                    }
                                    while(true)
                                    {
                                       break loop10;
                                    }
                                    addr147:
                                    addr117:
                                    addr168:
                                 }
                                 break;
                              }
                              addr162:
                              while(true)
                              {
                                 continue loop10;
                              }
                              §§goto(addr147);
                           }
                           while(!_loc3_)
                           {
                              continue loop5;
                           }
                           continue loop4;
                        }
                        §§goto(addr117);
                     }
                     return;
                     addr108:
                  }
                  §§goto(addr168);
               }
            }
         }
         §§goto(addr108);
      }
      
      protected function §01§(target:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(this.§4!§.indexOf(target) != -1)
               {
                  loop2:
                  while(!(_loc3_ && _loc2_))
                  {
                     while(true)
                     {
                        this.§4!§.splice(this.§4!§.indexOf(target),1);
                        continue loop0;
                        addr51:
                        if(_loc2_ || this)
                        {
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr104);
      }
   }
}
