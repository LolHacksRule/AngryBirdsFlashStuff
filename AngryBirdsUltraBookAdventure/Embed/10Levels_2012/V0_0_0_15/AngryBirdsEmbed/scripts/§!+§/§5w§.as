package §!+§
{
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5w§ extends §=H§
   {
       
      
      private var § n§:Number = -1;
      
      private var §;o§:Number = -1;
      
      public function §5w§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§#-§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr56:
                     §§push(false);
                     if(!(_loc3_ && _loc2_))
                     {
                        return §§pop();
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr71);
               }
               this.§=!&§(0);
               §§push(false);
            }
            addr71:
            return §§pop();
         }
         §§goto(addr56);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!§^`§)
         {
            if(!(_loc2_ && this))
            {
               this.§=!&§(0);
               if(_loc2_)
               {
                  addr78:
                  §§push(this);
                  §§push(this.§;o§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() * _loc1_);
                  }
                  §§pop().§ n§ = §§pop();
               }
            }
            §§goto(addr86);
         }
         else
         {
            §§push(this.§ n§);
            if(_loc3_)
            {
               if(§§pop() > 0)
               {
                  if(_loc3_)
                  {
                     §§push(this.§ n§);
                     if(_loc3_)
                     {
                        addr66:
                        §§push(§§pop() / this.§;o§);
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc1_ = §§pop();
                     if(_loc3_)
                     {
                        this.§;o§ = 0;
                     }
                     §§goto(addr78);
                  }
               }
               addr86:
               return true;
            }
            §§goto(addr66);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!_loc8_)
         {
            if(!§^`§)
            {
               if(!(_loc8_ && this))
               {
                  super.activateSpecialPower(null);
                  if(_loc9_ || param1)
                  {
                     addr68:
                     this.§=!&§();
                  }
               }
            }
            return _loc7_;
         }
         §§goto(addr68);
      }
      
      public function §=!&§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§ n§ = 0;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_ || this)
                     {
                        this.§;o§ = 0;
                        addr50:
                        if(_loc2_ || param1)
                        {
                           this.update(0);
                           if(!(_loc3_ && this))
                           {
                              addr91:
                              return;
                              addr80:
                           }
                           §§goto(addr91);
                        }
                        addr87:
                        §§goto(addr91);
                     }
                     §§goto(addr80);
                  }
                  else
                  {
                     addr83:
                     if(param1 > 0)
                     {
                        this.§;o§ = param1;
                        §§goto(addr87);
                     }
                     else
                     {
                        this.§;o§ = 2000;
                     }
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr50);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§ n§);
            if(_loc3_)
            {
               if(§§pop() >= 0)
               {
                  addr60:
                  addr25:
                  §§push(this);
                  §§push(this.§ n§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§ n§ = §§pop();
                  if(this.§ n§ >= this.§;o§)
                  {
                     if(!_loc2_)
                     {
                        container.addExplosions(§%!=§.§!!$§,§`t§().GetPosition().x,§`t§().GetPosition().y);
                        if(!_loc3_)
                        {
                        }
                        §§goto(addr85);
                     }
                     this.§ n§ = -1;
                  }
                  §90§ = true;
               }
               addr85:
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr25);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(§^`§));
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(this.§ n§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(0);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc2_)
                              {
                                 addr69:
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(true);
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          §§goto(addr121);
                                       }
                                    }
                                    else
                                    {
                                       addr109:
                                       §§push(false);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr121);
                                 }
                                 else
                                 {
                                    addr106:
                                    if(this.§ n§ >= 0)
                                    {
                                       if(_loc2_)
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
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr69);
            }
            §§goto(addr121);
         }
         §§goto(addr109);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§ n§);
            if(_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_ || this)
                  {
                     §§goto(addr47);
                  }
               }
               return -1;
            }
            §§goto(addr51);
         }
         addr47:
         §§push(this.§ n§);
         if(_loc2_)
         {
            addr51:
            return §§pop() / this.§;o§;
         }
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§ n§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_)
                  {
                     §§goto(addr57);
                  }
               }
               return 0;
            }
            §§goto(addr66);
         }
         addr57:
         §§push(this.§;o§);
         if(_loc2_ || _loc1_)
         {
            addr66:
            return §§pop() - this.§ n§;
         }
      }
   }
}
