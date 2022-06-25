package § var§
{
   import §#I§.b2World;
   import §40§.§5G§;
   import §48§.§3!K§;
   import §`g§.Sprite;
   
   public class §7!u§ extends §3!5§
   {
       
      
      private var §#!'§:Number = -1;
      
      private var §'=§:Number = -1;
      
      public function §7!u§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  do
                  {
                     this.§,$§(0);
                  }
                  while(_loc2_ && param1);
                  
                  if(!(_loc2_ && this))
                  {
                     §§push(false);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr77:
                     §§push(false);
                  }
               }
               §§goto(addr77);
            }
            return §§pop();
         }
         §§goto(addr77);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(_loc3_)
         {
            if(§2!K§)
            {
               §§push(this.§#!'§);
               if(_loc3_)
               {
                  if(§§pop() > 0)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§#!'§);
                        if(_loc3_ || _loc1_)
                        {
                           addr99:
                           §§push(§§pop() / this.§'=§);
                           if(!_loc3_)
                           {
                           }
                           while(true)
                           {
                              _loc1_ = §§pop();
                              loop2:
                              while(_loc3_ || this)
                              {
                                 this.§'=§ = 0;
                                 while(!_loc2_)
                                 {
                                    §§push(this);
                                    §§push(this.§'=§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop() * _loc1_);
                                    }
                                    §§pop().§#!'§ = §§pop();
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr22);
                                          }
                                          else
                                          {
                                             addr110:
                                          }
                                          this.§,$§(0);
                                          break loop2;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr22);
                           }
                           addr99:
                        }
                        §§goto(addr99);
                     }
                  }
                  addr22:
                  return true;
               }
               §§goto(addr99);
            }
         }
         §§goto(addr110);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!(_loc9_ && param3))
         {
            if(!§2!K§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§,$§();
                  }
                  while(_loc9_);
                  
               }
               while(_loc9_ && param3);
               
               addr74:
            }
            return _loc7_;
         }
         §§goto(addr74);
      }
      
      public function §,$§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#!'§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        §§push(0);
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(§§pop() > §§pop())
                        {
                           if(_loc3_)
                           {
                              this.§'=§ = param1;
                           }
                        }
                        else
                        {
                           this.§'=§ = 2000;
                           if(_loc2_)
                           {
                              addr58:
                              if(_loc3_ || this)
                              {
                                 if(!(_loc2_ && param1))
                                 {
                                    §§goto(addr20);
                                 }
                                 else
                                 {
                                    addr104:
                                 }
                                 this.update(0);
                                 break;
                                 addr104:
                              }
                              break;
                           }
                           addr32:
                           §§goto(addr20);
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr104);
                  }
                  addr20:
                  return;
               }
            }
         }
         §§goto(addr32);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§#!'§);
            loop0:
            while(§§pop() >= 0)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§#!'§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§#!'§ = §§pop();
                  continue loop0;
               }
            }
            addr25:
            return;
            addr124:
         }
         loop2:
         do
         {
            §§push(this.§#!'§);
            if(!(_loc2_ && this))
            {
               if(§§pop() >= this.§'=§)
               {
                  loop3:
                  for(; _loc3_; while(!(_loc2_ && _loc2_))
                  {
                     §3!K§.§ !8§(false);
                     loop6:
                     for(; _loc3_ || param1; while(true)
                     {
                        §,![§ = true;
                        if(!(_loc2_ && param1))
                        {
                           break;
                        }
                        continue loop6;
                     },continue loop2)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr121);
                     }
                  })
                  {
                     §^!W§.addExplosions(§3!b§.§]`§,§63§().GetPosition().x,§63§().GetPosition().y);
                     while(true)
                     {
                        this.§#!'§ = -1;
                        continue loop3;
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr29);
            }
            else
            {
               §§goto(addr124);
            }
         }
         while(!(_loc3_ || this));
         
         §§goto(addr25);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(Boolean(§2!K§));
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     while(true)
                     {
                        §§push(this.§#!'§);
                        while(true)
                        {
                           §§push(0);
                           addr106:
                           §§goto(addr114);
                        }
                     }
                  }
               }
               §§goto(addr111);
               if(_loc2_ || _loc3_)
               {
                  return §§pop();
               }
            }
            if(_loc2_ || _loc3_)
            {
               return §§pop();
            }
            addr114:
            while(true)
            {
               §§push(§§pop() < §§pop());
               if(!_loc2_)
               {
                  break;
               }
               if(!_loc3_)
               {
                  while(!§§pop())
                  {
                     continue loop3;
                  }
                  addr113:
                  §§push(true);
                  break;
                  addr111:
               }
               continue loop1;
            }
            return §§pop();
         }
         §§goto(addr113);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§#!'§);
            if(_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§#!'§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() / this.§'=§);
                     }
                  }
                  else
                  {
                     §§goto(addr70);
                  }
               }
               §§goto(addr70);
            }
            return §§pop();
         }
         addr70:
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§#!'§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_)
                  {
                     §§goto(addr47);
                  }
               }
               return 0;
            }
            §§goto(addr51);
         }
         addr47:
         §§push(this.§'=§);
         if(_loc2_)
         {
            addr51:
            return §§pop() - this.§#!'§;
         }
      }
   }
}
