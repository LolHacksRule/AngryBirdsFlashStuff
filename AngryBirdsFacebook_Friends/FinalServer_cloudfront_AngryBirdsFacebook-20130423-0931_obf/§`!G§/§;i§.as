package §`!G§
{
   import §'!6§.Sprite;
   import §-p§.§4!`§;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §;i§ extends §2"L§
   {
       
      
      private var §&"8§:Number = -1;
      
      private var §?!I§:Number = -1;
      
      public function §;i§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  do
                  {
                     this.§7"-§(0);
                  }
                  while(!_loc2_);
                  
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(!(_loc3_ && _loc2_))
                     {
                        return §§pop();
                     }
                     §§goto(addr72);
                     addr59:
                  }
                  §§goto(addr72);
               }
               §§push(false);
            }
            addr72:
            return §§pop();
         }
         §§goto(addr59);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(_loc2_ || this)
         {
            if(§#P§)
            {
               §§push(this.§&"8§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop() > 0)
                  {
                     loop0:
                     while(!(_loc3_ && this))
                     {
                        §§push(this.§&"8§);
                        if(_loc2_ || this)
                        {
                           §§push(§§pop() / this.§?!I§);
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr117:
                           }
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop1:
                           while(true)
                           {
                              if(_loc3_ && _loc1_)
                              {
                                 this.§7"-§(0);
                              }
                              else
                              {
                                 addr129:
                              }
                              this.§?!I§ = 0;
                              while(_loc2_ || _loc1_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(this);
                                    §§push(this.§?!I§);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() * _loc1_);
                                    }
                                    §§pop().§&"8§ = §§pop();
                                    if(_loc2_ || _loc1_)
                                    {
                                       break loop1;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr132:
                  }
                  return true;
               }
               §§goto(addr117);
            }
            §§goto(addr129);
         }
         §§goto(addr132);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc8_)
         {
            if(!§#P§)
            {
               if(_loc8_)
               {
                  super.activateSpecialPower(null);
               }
               do
               {
                  this.§7"-§();
               }
               while(_loc9_);
               
               addr49:
            }
            return _loc7_;
         }
         §§goto(addr49);
      }
      
      public function §7"-§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&"8§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr103:
                  while(§§pop() != §§pop())
                  {
                     continue loop1;
                  }
               }
               while(true)
               {
                  if(!(_loc2_ && param1))
                  {
                     this.update(0);
                     break loop0;
                  }
                  continue loop0;
               }
            }
            §§goto(addr20);
         }
         §§goto(addr104);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§&"8§);
            loop0:
            while(§§pop() >= 0)
            {
               loop2:
               while(true)
               {
                  §§push(this.§&"8§);
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  if(§§pop() >= this.§?!I§)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        continue;
                     }
                     addr126:
                     loop4:
                     while(true)
                     {
                        this.§&"8§ = -1;
                        loop5:
                        while(true)
                        {
                           §4!`§.§!e§(false);
                           loop6:
                           while(true)
                           {
                              if(_loc3_ || this)
                              {
                                 addr131:
                                 while(true)
                                 {
                                    §,d§ = true;
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             break loop0;
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§&"8§);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() + param1);
                                    }
                                 }
                                 addr131:
                                 addr29:
                              }
                              else
                              {
                                 §§goto(addr131);
                              }
                              §§pop().§&"8§ = §§pop();
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr29);
               }
            }
            return;
         }
         §§goto(addr131);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(Boolean(§#P§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     while(true)
                     {
                        §§push(this.§&"8§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           addr88:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc3_ || param1)
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue loop3;
                                    }
                                    if(_loc3_ || this)
                                    {
                                       §§push(true);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                       addr126:
                                    }
                                 }
                              }
                              addr125:
                              return §§pop();
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr115);
            }
         }
         §§goto(addr83);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§&"8§);
            if(_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_)
                  {
                     addr42:
                     §§push(this.§&"8§);
                     if(_loc1_ && this)
                     {
                     }
                     §§goto(addr54);
                  }
               }
               return -1;
            }
            addr54:
            return §§pop() / this.§?!I§;
         }
         §§goto(addr42);
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§&"8§);
            if(_loc2_ || this)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr62:
                     §§push(this.§?!I§);
                     if(_loc1_ && _loc1_)
                     {
                     }
                     §§goto(addr74);
                  }
               }
               return 0;
            }
            addr74:
            return §§pop() - this.§&"8§;
         }
         §§goto(addr62);
      }
   }
}
