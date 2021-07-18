package §<!F§
{
   import §-!;§.§^!!§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §,!e§ extends MovieClip
   {
       
      
      private var §6'§:§0]§;
      
      private var §>"§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §^"&§:Boolean = false;
      
      public function §,!e§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §§push(param5);
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(§6!!§.singleton);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().getAppWidth());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_ || param1)
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       addr134:
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       param5 = §§pop();
                                       addr137:
                                       while(true)
                                       {
                                          §§push(param6);
                                          if(!(_loc9_ && param2))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          loop9:
                                          while(!(_loc9_ && this))
                                          {
                                             if(!(_loc8_ || param3))
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop());
                                             if(!_loc8_)
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   continue loop7;
                                                }
                                                continue;
                                                addr77:
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                addr121:
                                                addr61:
                                                while(true)
                                                {
                                                   continue loop5;
                                                }
                                                if(!(_loc9_ && this))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop9;
                                                }
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
                     §§goto(addr134);
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      public function §?!8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            if(!this.§^"&§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§6'§);
                  if(!(_loc6_ && this))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§6'§);
                           addr177:
                           while(true)
                           {
                              §§pop().stop();
                              addr178:
                              while(true)
                              {
                              }
                           }
                        }
                        addr175:
                     }
                     loop2:
                     while(true)
                     {
                        this.§>"§ = new ColorTransform();
                        addr153:
                        loop5:
                        while(true)
                        {
                           this.§>"§.redOffset = transform.colorTransform.redOffset;
                           while(true)
                           {
                              this.§>"§.greenOffset = transform.colorTransform.greenOffset;
                              loop7:
                              for(; _loc5_; while(_loc5_ || param1)
                              {
                                 §§goto(addr68);
                              })
                              {
                                 this.§>"§.blueOffset = transform.colorTransform.blueOffset;
                                 loop8:
                                 for(; !(_loc6_ && this); if(!(_loc5_ || this))
                                 {
                                    continue;
                                 },§§goto(addr54))
                                 {
                                    this.§6'§ = §'^§.§2Z§.§!!f§(this.§>"§,{
                                       "redOffset":param1,
                                       "greenOffset":param2,
                                       "blueOffset":param3
                                    },null,param4);
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop5;
                                       }
                                       if(!(_loc5_ || param1))
                                       {
                                          break;
                                       }
                                       if(!_loc6_)
                                       {
                                          if(!(_loc5_ || param2))
                                          {
                                             continue loop0;
                                          }
                                          §§push(this.§6'§);
                                          while(true)
                                          {
                                             §§pop().onComplete = this.§ !N§;
                                             §§push(this.§6'§);
                                             addr68:
                                             continue loop7;
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                             if(!_loc6_)
                                             {
                                                §§pop().play();
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop7;
                                                   addr54:
                                                   this.§^"&§ = true;
                                                   if(!_loc6_)
                                                   {
                                                      return;
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             §§goto(addr177);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr175);
                                       }
                                    }
                                    continue loop2;
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr177);
               }
            }
            §§goto(addr182);
         }
         §§goto(addr153);
      }
      
      public function §7z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mNewAlpha = param1;
            do
            {
               alpha = param1;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §=v§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(this.§6'§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§6'§);
                     addr128:
                     while(true)
                     {
                        §§pop().stop();
                        addr129:
                        while(true)
                        {
                        }
                     }
                  }
                  addr126:
               }
               while(true)
               {
                  this.§6'§ = §'^§.§2Z§.§!!f§(this,{"mNewAlpha":param1},null,param2);
                  loop5:
                  for(; _loc3_ || _loc3_; if(!(_loc3_ || this))
                  {
                     continue;
                  })
                  {
                     §§push(this.§6'§);
                     loop6:
                     while(true)
                     {
                        §§pop().onComplete = this.§[!J§;
                        loop7:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              break loop6;
                           }
                           §§push(this.§6'§);
                           loop8:
                           while(_loc3_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    §§pop().§`F§ = false;
                                    while(_loc3_ || this)
                                    {
                                       continue loop5;
                                       §§pop().play();
                                       if(!(_loc4_ && this))
                                       {
                                          return;
                                          addr41:
                                       }
                                    }
                                    continue loop7;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr128);
                              while(true)
                              {
                                 §§push(this.§6'§);
                                 if(!_loc3_)
                                 {
                                    continue loop8;
                                 }
                                 §§goto(addr33);
                              }
                              §§goto(addr41);
                           }
                           continue loop6;
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr129);
               }
            }
         }
         §§goto(addr82);
      }
      
      private function §[!J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§9e§));
         }
      }
      
      private function § !N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§^"&§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§>"§)
            {
               loop0:
               while(true)
               {
                  transform.colorTransform = this.§>"§;
                  while(!this.§^"&§)
                  {
                     if(_loc2_)
                     {
                        if(!_loc3_)
                        {
                           this.§>"§ = null;
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            while(alpha != this.mNewAlpha)
            {
               if(_loc2_ || this)
               {
                  §§goto(addr40);
               }
               §§goto(addr61);
            }
            §§goto(addr24);
         }
         §§goto(addr90);
      }
      
      public function §9O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §6!!§.singleton.removeEventListener(§^!!§.§&o§,this.onEnterFrame);
            loop0:
            while(true)
            {
               §§push(this.§6'§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§6'§);
                        addr55:
                        loop1:
                        while(true)
                        {
                           §§pop().stop();
                           while(_loc1_)
                           {
                              this.§6'§ = null;
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break loop1;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr53:
                  }
                  return;
               }
               §§goto(addr55);
            }
         }
         §§goto(addr53);
      }
   }
}
