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
         if(_loc13_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  do
                  {
                     this.§,$§(0);
                  }
                  while(_loc3_);
                  
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr52);
                     addr44:
                  }
                  §§goto(addr52);
               }
               §§push(false);
            }
            addr52:
            return §§pop();
         }
         §§goto(addr44);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(!_loc3_)
         {
            if(§2!K§)
            {
               §§push(this.§#!'§);
               if(!_loc3_)
               {
                  if(§§pop() > 0)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§#!'§);
                        if(_loc2_)
                        {
                           §§push(§§pop() / this.§'=§);
                           if(!(_loc3_ && _loc2_))
                           {
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr112:
                           }
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr114:
                           addr127:
                           while(!(_loc3_ && _loc3_))
                           {
                              this.§'=§ = 0;
                              continue loop0;
                           }
                           addr127:
                        }
                     }
                  }
                  return true;
               }
               §§goto(addr112);
            }
            §§goto(addr124);
         }
         §§goto(addr127);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc8_ || this)
         {
            if(!§2!K§)
            {
               if(!(_loc9_ && param2))
               {
                  addr79:
                  super.activateSpecialPower(null);
               }
               do
               {
                  this.§,$§();
               }
               while(!(_loc8_ || param2));
               
            }
            return _loc7_;
         }
         §§goto(addr79);
      }
      
      public function §,$§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§#!'§ = 0;
            loop0:
            do
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr109:
                  while(§§pop() != §§pop())
                  {
                     continue loop1;
                  }
                  loop3:
                  while(true)
                  {
                     this.§'=§ = 0;
                     addr113:
                     while(true)
                     {
                        this.update(0);
                        continue loop3;
                     }
                  }
                  continue loop0;
               }
            }
            while(!(_loc2_ || param1));
            
            §§goto(addr24);
         }
         §§goto(addr41);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§#!'§);
            loop0:
            for(; §§pop() >= 0; loop2:
            while(true)
            {
               §§push(this.§#!'§);
               if(_loc2_ && _loc3_)
               {
                  break;
               }
               if(§§pop() >= this.§'=§)
               {
                  while(true)
                  {
                     §^!W§.addExplosions(§3!b§.§]`§,§63§().GetPosition().x,§63§().GetPosition().y);
                     while(true)
                     {
                        this.§#!'§ = -1;
                        loop5:
                        while(true)
                        {
                           §3!K§.§ !8§(false);
                           loop6:
                           while(!(_loc2_ && _loc2_))
                           {
                              while(true)
                              {
                                 §,![§ = true;
                                 if(_loc3_ || this)
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              if(!_loc2_)
                              {
                                 addr68:
                                 break loop0;
                              }
                              continue loop2;
                           }
                           §§goto(addr126);
                        }
                     }
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr66);
                  }
               }
               §§goto(addr29);
            })
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§#!'§);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§#!'§ = §§pop();
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(Boolean(§2!K§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§push(this.§#!'§);
                           if(_loc3_)
                           {
                              §§push(0);
                              if(!(_loc2_ && this))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          §§push(false);
                                          break loop6;
                                       }
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       addr25:
                                       §§push(super.isReadyToBeRemoved(param1));
                                       if(!_loc3_)
                                       {
                                          break loop6;
                                       }
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          addr116:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                       }
                                       continue loop0;
                                       addr91:
                                    }
                                    else
                                    {
                                       addr102:
                                       if(_loc3_ || param1)
                                       {
                                          §§goto(addr110);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§#!'§);
                                       break loop7;
                                    }
                                 }
                                 §§goto(addr25);
                              }
                              while(true)
                              {
                                 §§goto(addr91);
                              }
                              addr90:
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr90);
                        }
                     }
                     §§goto(addr102);
                  }
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  addr110:
                  return true;
                  addr100:
               }
               §§goto(addr116);
            }
         }
         §§goto(addr110);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§#!'§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     addr41:
                     §§push(this.§#!'§);
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr48);
                  }
               }
               return -1;
            }
            addr48:
            return §§pop() / this.§'=§;
         }
         §§goto(addr41);
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§#!'§);
            if(!_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr42);
                  }
               }
               return 0;
            }
            §§goto(addr46);
         }
         addr42:
         §§push(this.§'=§);
         if(_loc2_)
         {
            addr46:
            return §§pop() - this.§#!'§;
         }
      }
   }
}
