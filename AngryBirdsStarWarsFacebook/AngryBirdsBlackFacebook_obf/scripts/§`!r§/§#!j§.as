package §`!r§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§1#K§;
   import §2"Y§.§2"q§;
   import §7!F§.§>"G§;
   import §7P§.§;$§;
   import §^#>§.§#_§;
   
   public class §#!j§ extends §!!H§
   {
      
      public static const §+"§:String = "LASER_CROSSHAIR";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+"§ = "LASER_CROSSHAIR";
         }
      }
      
      protected var §&![§:DisplayObject;
      
      protected var §<X§:§1#K§;
      
      protected var §4#N§:Number;
      
      protected var §'!#§:Number;
      
      protected var §[G§:Number;
      
      private var §%"g§:Number;
      
      private var §="d§:Number;
      
      public function §#!j§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:Number, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            super(param1,param3,param4);
            loop0:
            while(true)
            {
               this.§<X§ = param4 as §2"q§;
               loop1:
               while(true)
               {
                  this.§&![§ = param2.getFrame(0,this.§&![§);
                  while(true)
                  {
                     §§push(this.§&![§);
                     loop3:
                     while(true)
                     {
                        §§push(param5);
                        addr198:
                        while(true)
                        {
                           §§push(§#_§.§8]§);
                           addr200:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr201:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop3;
                              }
                           }
                        }
                     }
                     loop10:
                     while(!(_loc8_ && param3))
                     {
                        this.§'!#§ = 0;
                        while(true)
                        {
                           this.§%"g§ = §^"9§(this.§<X§.minScaleBegin,this.§<X§.maxScaleBegin);
                           addr96:
                           loop12:
                           while(true)
                           {
                              this.§="d§ = §^"9§(this.§<X§.minScaleEnd,this.§<X§.maxScaleEnd);
                              addr70:
                              addr140:
                              while(!(_loc8_ && this))
                              {
                                 if(_loc7_ || param1)
                                 {
                                    this.§[G§ = this.§%"g§;
                                    if(!(_loc8_ && param1))
                                    {
                                       continue loop12;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop1;
                              }
                              while(_loc7_ || this)
                              {
                                 §§push(this);
                                 §§push(this.§<X§.lifeTime);
                                 if(_loc7_ || param2)
                                 {
                                    §§push(§§pop() * 1000);
                                 }
                                 §§pop().§4#N§ = §§pop();
                                 continue loop10;
                                 §§goto(addr70);
                              }
                              §§goto(addr202);
                           }
                           addr58:
                           return;
                           if(_loc8_ && param1)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              continue loop10;
                           }
                           if(!_loc7_)
                           {
                              continue loop0;
                           }
                           §§goto(addr58);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(sprite)
            {
               if(!_loc2_)
               {
                  sprite.visible = false;
               }
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§'!#§ >= this.§4#N§;
      }
      
      protected function §^v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§="d§);
            loop0:
            while(true)
            {
               §§push(0);
               addr194:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc1_)
                              {
                                 §§push(this);
                                 §§push(this.§="d§);
                                 if(_loc2_ || this)
                                 {
                                    §§push(this.§%"g§);
                                    if(!(_loc1_ && this))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc1_ && this))
                                       {
                                          §§push(§§pop() / 2);
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             addr137:
                                             §§push(this.§="d§);
                                             if(_loc2_ || _loc1_)
                                             {
                                                addr146:
                                                §§push(this.§%"g§);
                                                if(!_loc1_)
                                                {
                                                   addr177:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc1_)
                                                   {
                                                      §§push(§§pop() / 2);
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         addr175:
                                                         §§push(§§pop() * -Math.cos(this.§'!#§ / this.§4#N§ * Math.PI * 4));
                                                      }
                                                   }
                                                   §§pop().§[G§ = §§pop() + §§pop();
                                                   loop3:
                                                   for(; _loc2_; while(_loc2_ || _loc1_)
                                                   {
                                                      §§goto(addr60);
                                                   })
                                                   {
                                                      §§push(this.§&![§);
                                                      while(true)
                                                      {
                                                         §§push(this.§[G§);
                                                         addr52:
                                                         addr60:
                                                         while(true)
                                                         {
                                                            §§pop().scaleX = §§pop();
                                                            continue loop3;
                                                         }
                                                         §§push(this.§&![§);
                                                         if(_loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(this.§[G§);
                                                         if(_loc2_)
                                                         {
                                                            §§pop().scaleY = §§pop();
                                                            if(!(_loc1_ && this))
                                                            {
                                                               break loop2;
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr52);
                                                      }
                                                   }
                                                   continue loop0;
                                                   addr178:
                                                }
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr178);
                           }
                           §§push(§§pop() > §§pop());
                           addr79:
                           break;
                           if(_loc2_ || _loc2_)
                           {
                              continue;
                           }
                           addr199:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr199:
                        }
                        return;
                        addr87:
                     }
                  }
                  §§goto(addr199);
               }
            }
            addr193:
         }
         while(true)
         {
            §§push(this.§%"g§);
            if(_loc2_ || _loc1_)
            {
               §§push(0);
               if(!(_loc1_ && this))
               {
                  §§goto(addr79);
               }
               else
               {
                  §§goto(addr194);
               }
            }
            else
            {
               §§goto(addr193);
            }
            §§goto(addr194);
            §§goto(addr199);
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.update(param1,param2);
            do
            {
               if(param2)
               {
                  if(_loc3_)
                  {
                     addr93:
                     §§push(param1);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() / param2.timeSpeedMultiplier);
                        if(!_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param1 = §§pop();
                     while(true)
                     {
                     }
                     addr93:
                  }
                  §§goto(addr93);
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§'!#§);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§'!#§ = §§pop();
                  do
                  {
                     this.§^v§();
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr93);
               }
            }
            while(_loc4_);
            
            return;
         }
         §§goto(addr93);
      }
   }
}
