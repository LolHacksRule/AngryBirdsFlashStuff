package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-wE§ extends §_-Fh§
   {
       
      
      private var §_-dg§:Number = -1;
      
      private var §_-S§:Number = -1;
      
      public function §_-wE§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr83);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr57:
                        while(true)
                        {
                           this.§_-dy§(0);
                           if(_loc3_ || _loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(false);
                        if(_loc3_ || param1)
                        {
                           return §§pop();
                        }
                        §§goto(addr83);
                     }
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr83);
         }
         addr83:
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!_loc2_)
         {
            if(!§_-rV§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§_-dy§(0);
               }
            }
            else
            {
               §§push(this.§_-dg§);
               if(_loc3_)
               {
                  if(§§pop() > 0)
                  {
                     if(_loc3_)
                     {
                        §§push(this.§_-dg§);
                        if(_loc3_)
                        {
                           §§push(§§pop() / this.§_-S§);
                           if(_loc2_ && _loc2_)
                           {
                           }
                           addr104:
                           _loc1_ = §§pop();
                           while(true)
                           {
                              this.§_-S§ = 0;
                              while(_loc3_ || _loc3_)
                              {
                                 §§push(this);
                                 §§push(this.§_-S§);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(§§pop() * _loc1_);
                                 }
                                 §§pop().§_-dg§ = §§pop();
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    addr118:
                                 }
                                 §§goto(addr22);
                              }
                           }
                           addr105:
                        }
                        §§goto(addr104);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr105);
                  }
                  addr22:
                  return true;
               }
               §§goto(addr104);
            }
            §§goto(addr118);
         }
         §§goto(addr104);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!(_loc9_ && param1))
         {
            if(!§_-rV§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§_-dy§();
                  }
                  while(_loc9_);
                  
               }
               while(_loc9_);
               
               addr66:
            }
            return _loc7_;
         }
         §§goto(addr66);
      }
      
      public function §_-dy§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-dg§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  while(§§pop() != §§pop())
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
                        if(!(_loc2_ && param1))
                        {
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 this.§_-S§ = param1;
                                 break loop0;
                              }
                              break;
                           }
                           this.update(0);
                           addr20:
                           return;
                           addr104:
                           addr94:
                        }
                        break loop0;
                     }
                     this.§_-S§ = 2000;
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     §§goto(addr20);
                  }
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  this.§_-S§ = 0;
                  §§goto(addr104);
               }
            }
            if(!(_loc3_ || this))
            {
               §§goto(addr94);
            }
            else
            {
               addr89:
            }
            §§goto(addr20);
         }
         §§goto(addr89);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-dg§);
            loop0:
            while(§§pop() >= 0)
            {
               loop2:
               while(true)
               {
                  §§push(this.§_-dg§);
                  if(!(_loc3_ || _loc3_))
                  {
                     continue loop0;
                  }
                  if(§§pop() < this.§_-S§)
                  {
                     loop6:
                     do
                     {
                        §_-07A§ = true;
                        if(_loc2_)
                        {
                           while(!(_loc2_ && _loc2_))
                           {
                              continue loop6;
                           }
                           continue loop2;
                           addr59:
                        }
                     }
                     while(_loc2_ && param1);
                     
                     if(_loc3_ || _loc2_)
                     {
                        break loop0;
                     }
                     addr114:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§_-dg§);
                        if(_loc3_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§_-dg§ = §§pop();
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     §_-jX§.addExplosions(§_-wS§.§_-09r§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y);
                     continue loop2;
                     §§goto(addr30);
                  }
               }
            }
            return;
         }
         §§goto(addr114);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Boolean(§_-rV§));
            loop0:
            do
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
                        §§push(this.§_-dg§);
                        while(true)
                        {
                           §§push(0);
                           addr95:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                           }
                           loop7:
                           while(true)
                           {
                              §§push(this.§_-dg§);
                              if(!(_loc2_ || param1))
                              {
                                 break;
                              }
                              §§push(0);
                              if(!_loc3_)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc3_ && this)
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(false);
                                       }
                                       else
                                       {
                                          addr99:
                                          return true;
                                          addr98:
                                       }
                                    }
                                    else
                                    {
                                       addr19:
                                       §§push(super.isReadyToBeRemoved(param1));
                                       if(_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             addr97:
                                             while(!§§pop())
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr98);
                                             addr97:
                                          }
                                          §§goto(addr99);
                                       }
                                    }
                                    if(_loc2_)
                                    {
                                       §§goto(addr89);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr19);
                              }
                              else
                              {
                                 §§goto(addr95);
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr97);
               }
               addr89:
               return §§pop();
            }
            while(!_loc2_);
            
            return §§pop();
         }
         §§goto(addr99);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-dg§);
            if(_loc1_ || this)
            {
               if(§§pop() > 0)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§_-dg§);
                     if(_loc1_)
                     {
                        addr45:
                        return §§pop() / this.§_-S§;
                     }
                  }
                  §§goto(addr49);
               }
               §§goto(addr49);
            }
            §§goto(addr45);
         }
         addr49:
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§_-dg§);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     addr41:
                     §§push(this.§_-S§);
                     if(_loc1_ || _loc1_)
                     {
                     }
                     §§goto(addr53);
                  }
               }
               return 0;
            }
            addr53:
            return §§pop() - this.§_-dg§;
         }
         §§goto(addr41);
      }
   }
}
