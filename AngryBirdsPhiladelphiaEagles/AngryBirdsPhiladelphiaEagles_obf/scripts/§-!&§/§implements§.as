package §-!&§
{
   import § N§.Sprite;
   import §9T§.§1r§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §implements§ extends §1!"§
   {
       
      
      private var §,!E§:Number = -1;
      
      private var §[t§:Number = -1;
      
      public function §implements§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§20§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(super.activateSpecialPower(param1));
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  this.§5x§(0);
                  if(_loc2_)
                  {
                     break;
                  }
                  addr73:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               if(_loc3_)
               {
                  break;
               }
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
               addr72:
               if(_loc2_ || _loc2_)
               {
                  return §§pop();
               }
            }
            §§goto(addr72);
            §§push(false);
         }
         §§goto(addr73);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(_loc3_)
         {
            if(!§ I§)
            {
               this.§5x§(0);
            }
            else
            {
               §§push(this.§,!E§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() > 0)
                  {
                     §§push(this.§,!E§);
                     if(_loc3_)
                     {
                        §§push(§§pop() / this.§[t§);
                        if(_loc3_)
                        {
                           addr97:
                           §§push(Number(§§pop()));
                        }
                        _loc1_ = §§pop();
                        this.§[t§ = 0;
                        do
                        {
                           §§push(this);
                           §§push(this.§[t§);
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(§§pop() * _loc1_);
                           }
                           §§pop().§,!E§ = §§pop();
                        }
                        while(_loc2_ && _loc3_);
                        
                        addr22:
                        return true;
                        addr63:
                     }
                  }
                  §§goto(addr22);
               }
               §§goto(addr97);
            }
            §§goto(addr22);
         }
         §§goto(addr63);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!_loc9_)
         {
            if(!§ I§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§5x§();
                  }
                  while(!(_loc8_ || param2));
                  
               }
               while(!(_loc8_ || param2));
               
               addr74:
            }
            return _loc7_;
         }
         §§goto(addr74);
      }
      
      public function §5x§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§,!E§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr97:
                  addr25:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§,!E§);
            loop0:
            while(§§pop() >= 0)
            {
               while(true)
               {
                  §§push(this.§,!E§);
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  if(§§pop() >= this.§[t§)
                  {
                     container.addExplosions(§%0§.§-W§,§`%§().GetPosition().x,§`%§().GetPosition().y);
                     while(!_loc3_)
                     {
                        this.§,!E§ = -1;
                        if(!(_loc3_ && this))
                        {
                           addr28:
                           §;Q§ = true;
                           break loop0;
                        }
                     }
                     continue;
                  }
                  §§goto(addr28);
               }
            }
            return;
         }
         while(true)
         {
            §§push(this);
            §§push(this.§,!E§);
            if(_loc2_ || this)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§,!E§ = §§pop();
            §§goto(addr105);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(Boolean(§ I§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§,!E§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           addr110:
                           addr125:
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc2_)
                              {
                                 break;
                                 addr113:
                              }
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(true);
                                       break loop4;
                                    }
                                    continue loop2;
                                 }
                                 addr126:
                                 while(true)
                                 {
                                    continue loop3;
                                    addr88:
                                    if(_loc3_ || param1)
                                    {
                                       addr25:
                                       §§push(super.isReadyToBeRemoved(param1));
                                       if(_loc2_ && _loc2_)
                                       {
                                          break loop5;
                                       }
                                       if(!_loc3_)
                                       {
                                          break loop4;
                                       }
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           return §§pop();
                        }
                     }
                  }
               }
               §§goto(addr113);
            }
            return §§pop();
         }
         §§goto(addr79);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§,!E§);
            if(!(_loc2_ && this))
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     addr41:
                     §§push(this.§,!E§);
                     if(_loc2_)
                     {
                     }
                     §§goto(addr48);
                  }
               }
               return -1;
            }
            addr48:
            return §§pop() / this.§[t§;
         }
         §§goto(addr41);
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§,!E§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§[t§);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(§§pop() - this.§,!E§);
                     }
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         addr54:
         return 0;
      }
   }
}
