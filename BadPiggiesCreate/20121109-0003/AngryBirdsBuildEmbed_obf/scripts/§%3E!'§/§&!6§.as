package §>!'§
{
   import § !t§.b2World;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   
   public class §&!6§ extends §7!U§
   {
       
      
      private var §#!D§:Number = -1;
      
      private var §0f§:Number = -1;
      
      public function §&!6§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(false);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr46);
               }
               else
               {
                  addr42:
                  this.§continue§(0);
               }
               §§push(false);
            }
            addr46:
            return §§pop();
         }
         §§goto(addr42);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!§6!i§)
         {
            this.§continue§(0);
         }
         else
         {
            §§push(this.§#!D§);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  §§push(this.§#!D§);
                  if(_loc3_)
                  {
                     §§push(§§pop() / this.§0f§);
                     if(_loc3_ || _loc1_)
                     {
                        addr65:
                        §§push(Number(§§pop()));
                     }
                     _loc1_ = §§pop();
                     this.§0f§ = 0;
                     §§push(this);
                     §§push(this.§0f§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() * _loc1_);
                     }
                     §§pop().§#!D§ = §§pop();
                     §§goto(addr78);
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr65);
         }
         addr78:
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!(_loc9_ && param3))
         {
            if(!§6!i§)
            {
               if(_loc8_)
               {
                  addr47:
                  super.activateSpecialPower(null);
                  if(_loc8_)
                  {
                     this.§continue§();
                  }
               }
            }
            return _loc7_;
         }
         §§goto(addr47);
      }
      
      public function §continue§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§#!D§ = 0;
         §§push(param1);
         if(_loc2_)
         {
            §§push(0);
            if(!_loc3_)
            {
               if(§§pop() == §§pop())
               {
                  if(!_loc3_)
                  {
                     this.§0f§ = 0;
                     if(!_loc3_)
                     {
                        this.update(0);
                     }
                     else
                     {
                        addr74:
                        return;
                        addr70:
                     }
                     §§goto(addr74);
                  }
               }
               else
               {
                  addr59:
                  if(param1 > 0)
                  {
                     this.§0f§ = param1;
                     if(_loc2_ || this)
                     {
                        §§goto(addr70);
                     }
                  }
                  else
                  {
                     this.§0f§ = 2000;
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr59);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§#!D§);
         if(_loc2_)
         {
            if(§§pop() >= 0)
            {
               §§push(this);
               §§push(this.§#!D§);
               if(_loc2_ || param1)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§#!D§ = §§pop();
               if(_loc2_)
               {
                  addr49:
                  if(this.§#!D§ >= this.§0f§)
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr69:
                        container.addExplosions(§'T§.§'&§,getBody().GetPosition().x,getBody().GetPosition().y);
                        if(!_loc3_)
                        {
                           this.§#!D§ = -1;
                        }
                     }
                  }
                  §[W§ = true;
                  §§goto(addr89);
               }
               §§goto(addr69);
            }
            addr89:
            return;
         }
         §§goto(addr49);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(§6!i§));
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr41:
                     §§pop();
                     if(_loc2_ || param1)
                     {
                        §§push(this.§#!D§);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc2_)
                              {
                                 addr79:
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(true);
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr109:
                                       §§push(false);
                                       if(_loc3_ && _loc2_)
                                       {
                                          §§goto(addr121);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 addr100:
                                 §§push(this.§#!D§);
                                 §§push(0);
                              }
                              §§goto(addr121);
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr109);
                              }
                              else
                              {
                                 addr118:
                                 addr121:
                                 return §§pop();
                                 §§push(super.isReadyToBeRemoved(param1));
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr121);
               }
               §§goto(addr79);
            }
            §§goto(addr41);
         }
         §§goto(addr109);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§#!D§);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     §§goto(addr41);
                  }
               }
               return -1;
            }
            §§goto(addr50);
         }
         addr41:
         §§push(this.§#!D§);
         if(_loc1_ || this)
         {
            addr50:
            return §§pop() / this.§0f§;
         }
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§#!D§);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc2_)
                  {
                     addr36:
                     §§push(this.§0f§);
                     if(_loc2_ && _loc2_)
                     {
                     }
                     §§goto(addr48);
                  }
               }
               return 0;
            }
            addr48:
            return §§pop() - this.§#!D§;
         }
         §§goto(addr36);
      }
   }
}
