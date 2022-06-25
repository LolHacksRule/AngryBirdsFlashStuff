package §^!A§
{
   import §&o§.Sprite;
   import §6A§.§ !§;
   import §>!7§.§@!+§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §?B§ extends §^`§
   {
       
      
      private var §9z§:Number = -1;
      
      private var §9#§:Number = -1;
      
      public function §?B§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        §§goto(addr59);
                     }
                  }
                  else
                  {
                     addr67:
                     this.§?_§(0);
                     §§push(false);
                  }
                  return §§pop();
               }
               §§goto(addr67);
            }
            addr59:
            return §§pop();
         }
         §§goto(addr67);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!_loc2_)
         {
            if(!§[!E§)
            {
               this.§?_§(0);
            }
            else
            {
               §§push(this.§9z§);
               if(!(_loc2_ && this))
               {
                  if(§§pop() > 0)
                  {
                     if(_loc3_)
                     {
                        addr60:
                        §§push(this.§9z§);
                        if(_loc3_)
                        {
                           §§push(§§pop() / this.§9#§);
                           if(!_loc2_)
                           {
                              addr69:
                              §§push(Number(§§pop()));
                           }
                           _loc1_ = §§pop();
                           this.§9#§ = 0;
                        }
                        §§goto(addr69);
                     }
                     §§push(this);
                     §§push(this.§9#§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() * _loc1_);
                     }
                     §§pop().§9z§ = §§pop();
                  }
                  §§goto(addr87);
               }
               §§goto(addr69);
            }
            addr87:
            return true;
         }
         §§goto(addr60);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!_loc8_)
         {
            if(!§[!E§)
            {
               if(!_loc8_)
               {
                  super.activateSpecialPower(null);
                  if(!(_loc8_ && param1))
                  {
                     addr53:
                     this.§?_§();
                  }
               }
            }
            return _loc7_;
         }
         §§goto(addr53);
      }
      
      public function §?_§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§9z§ = 0;
         §§push(param1);
         if(_loc3_)
         {
            §§push(0);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == §§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§9#§ = 0;
                  }
                  this.update(0);
                  if(!_loc3_)
                  {
                     addr71:
                     this.§9#§ = param1;
                  }
                  §§goto(addr78);
               }
               else
               {
                  §§goto(addr70);
               }
            }
            §§goto(addr70);
         }
         addr70:
         if(param1 > 0)
         {
            §§goto(addr71);
         }
         else
         {
            this.§9#§ = 2000;
         }
         addr78:
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§9z§);
            if(_loc2_)
            {
               if(§§pop() >= 0)
               {
                  if(!_loc3_)
                  {
                     addr56:
                     §§push(this);
                     §§push(this.§9z§);
                     if(_loc2_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§9z§ = §§pop();
                     if(this.§9z§ >= this.§9#§)
                     {
                        container.addExplosions(§[!N§.§]!7§,§'[§().GetPosition().x,§'[§().GetPosition().y);
                        this.§9z§ = -1;
                        §@!+§.§`Z§(false);
                     }
                  }
                  §[!D§ = true;
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(§[!E§));
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        §§push(this.§9z§);
                        if(!(_loc2_ && param1))
                        {
                           §§push(0);
                           if(!(_loc2_ && param1))
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc3_)
                              {
                                 addr65:
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr73:
                                       §§push(true);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr91);
                                       }
                                       else
                                       {
                                          §§goto(addr117);
                                       }
                                    }
                                    §§goto(addr117);
                                 }
                                 else
                                 {
                                    addr102:
                                    if(this.§9z§ >= 0)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(false);
                                          if(_loc3_ || _loc2_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr117);
                                       }
                                       §§goto(addr117);
                                    }
                                 }
                                 addr117:
                                 return §§pop();
                                 §§push(super.isReadyToBeRemoved(param1));
                              }
                              §§goto(addr91);
                           }
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr73);
                  }
                  addr91:
                  return §§pop();
               }
               §§goto(addr65);
            }
            §§goto(addr117);
         }
         §§goto(addr73);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§9z§);
            if(!_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc1_)
                  {
                     addr37:
                     §§push(this.§9z§);
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr44);
                  }
               }
               return -1;
            }
            addr44:
            return §§pop() / this.§9#§;
         }
         §§goto(addr37);
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§9z§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     addr41:
                     §§push(this.§9#§);
                     if(_loc2_ && this)
                     {
                     }
                     §§goto(addr53);
                  }
               }
               return 0;
            }
            addr53:
            return §§pop() - this.§9z§;
         }
         §§goto(addr41);
      }
   }
}
