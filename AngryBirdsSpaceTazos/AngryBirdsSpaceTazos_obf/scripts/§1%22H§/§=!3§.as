package §1"H§
{
   import §"!&§.§70§;
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §]">§.§;U§;
   
   public class §=!3§ extends §+>§
   {
      
      public static const §!!p§:String = "TazosBirdDisc";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §=!3§)
         {
            §!!p§ = "TazosBirdDisc";
         }
      }
      
      protected var §@m§:DisplayObject;
      
      protected var §=O§:DisplayObject;
      
      protected var § q§:DisplayObject;
      
      protected var §2"!§:§70§;
      
      protected var §,j§:Number;
      
      protected var §@!]§:Sprite;
      
      public function §=!3§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            super(param1,param3,param4);
            loop0:
            while(true)
            {
               this.§,j§ = 0;
               loop1:
               while(true)
               {
                  this.§2"!§ = param4 as §70§;
                  loop2:
                  while(true)
                  {
                     this.§ q§ = param2.getFrame(0,this.§ q§);
                     loop3:
                     while(true)
                     {
                        this.§=O§ = param2.getFrame(1,this.§=O§);
                        while(!_loc7_)
                        {
                           this.§@m§ = param2.getFrame(2,this.§@m§);
                           continue loop3;
                           while(!(_loc7_ && param2))
                           {
                              §§push(this.§@!]§);
                              while(true)
                              {
                                 §§push(param5);
                                 addr147:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop2;
                                 }
                              }
                              if(_loc8_ || param1)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.update(param1,param2);
         }
         do
         {
            §§push(this);
            §§push(this.§,j§);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() / 1000);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().§,j§ = §§pop();
         }
         while(!_loc4_);
         
      }
      
      public function §[!T§(param1:Number, param2:Number, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§@!]§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr246:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            addr245:
         }
         while(true)
         {
            §§push(this.§@!]§);
            if(_loc5_)
            {
               §§push(param2);
               if(_loc5_)
               {
                  §§pop().y = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(this.§=O§);
                     while(true)
                     {
                        §§push(this.§2"!§);
                        addr204:
                        addr222:
                        while(true)
                        {
                           §§push(§§pop().sparkleRotationRadius);
                           addr205:
                           while(true)
                           {
                              §§push(§§pop() * Math.sin(this.§,j§ * this.§2"!§.sparkleRotationSpeed));
                              addr214:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop3;
                              }
                           }
                        }
                        §§push(this.§=O§);
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        §§push(this.§2"!§);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop().sparkleRotationRadius);
                           if(!(_loc6_ && param3))
                           {
                              if(_loc5_)
                              {
                                 addr190:
                                 §§push(§§pop() * -Math.cos(this.§,j§ * this.§2"!§.sparkleRotationSpeed));
                                 if(_loc5_ || param1)
                                 {
                                    §§pop().y = §§pop();
                                    while(true)
                                    {
                                       if(param4)
                                       {
                                          continue;
                                       }
                                       §§push(this.§@m§);
                                       if(_loc5_)
                                       {
                                          if(param3)
                                          {
                                             addr32:
                                             if(!_loc6_)
                                             {
                                                §§push(this.§,j§);
                                                if(_loc5_ || this)
                                                {
                                                   §§push(this.§2"!§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().sparkleRotationTimeBombSpeed);
                                                      if(_loc5_ || param2)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc6_ && this))
                                                            {
                                                               addr65:
                                                               §§push(Number(§§pop()));
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc5_ || param3)
                                                                  {
                                                                     addr101:
                                                                     §§pop().rotation = §§pop();
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr149:
                                                                     §§pop().rotation = §§pop() * this.§2"!§.sparkleRotationSlingShotSpeed;
                                                                  }
                                                                  addr19:
                                                                  return;
                                                                  addr150:
                                                               }
                                                               else
                                                               {
                                                                  addr82:
                                                                  §§push(this.§2"!§);
                                                                  if(_loc5_ || param3)
                                                                  {
                                                                     addr90:
                                                                     §§push(§§pop() * §§pop().sparkleRotationSpeed);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr93:
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§goto(addr101);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr149);
                                                                        }
                                                                        §§goto(addr150);
                                                                     }
                                                                     §§goto(addr101);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr149);
                                                                  }
                                                               }
                                                               §§goto(addr149);
                                                            }
                                                            §§goto(addr101);
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      §§goto(addr90);
                                                   }
                                                   §§goto(addr82);
                                                }
                                                §§goto(addr65);
                                             }
                                             else
                                             {
                                                addr143:
                                                §§push(this.§,j§);
                                             }
                                             §§goto(addr149);
                                          }
                                          else
                                          {
                                             §§push(this.§,j§);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr82);
                                             }
                                          }
                                          §§goto(addr93);
                                       }
                                       §§goto(addr32);
                                    }
                                    §§goto(addr19);
                                 }
                              }
                              else
                              {
                                 §§goto(addr205);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr190);
                        }
                        else
                        {
                           §§goto(addr204);
                        }
                     }
                  }
               }
            }
            else
            {
               §§goto(addr245);
            }
            §§goto(addr246);
         }
      }
      
      public function §'!@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§ q§.rotation = param1;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(sprite)
            {
               loop0:
               while(true)
               {
                  §§push(this.§@!]§);
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc2_ || this)
                     {
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§pop();
                              addr124:
                              loop6:
                              while(true)
                              {
                                 §§push(this.§@!]§);
                                 addr71:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop6;
                                    }
                                    §§push(§§pop().parent == sprite);
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue loop8;
                                    }
                                 }
                                 continue loop8;
                              }
                              continue loop1;
                           }
                           addr123:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 super.dispose();
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 addr50:
                                 while(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       continue loop9;
                                    }
                                 }
                                 while(_loc2_ || this)
                                 {
                                    this.§@!]§ = null;
                                    §§goto(addr41);
                                 }
                                 addr41:
                                 §§goto(addr124);
                              }
                           }
                           else
                           {
                              addr29:
                           }
                           if(!_loc1_)
                           {
                              sprite.removeChild(this.§@!]§);
                           }
                           continue loop0;
                           return;
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr123);
                  }
               }
            }
            §§goto(addr29);
         }
         §§goto(addr43);
      }
   }
}
