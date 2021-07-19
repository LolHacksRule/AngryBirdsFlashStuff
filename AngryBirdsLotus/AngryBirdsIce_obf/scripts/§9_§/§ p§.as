package §9_§
{
   import §[x§.§2^§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § p§ extends §4!;§
   {
       
      
      private var §3_§:Number = -1;
      
      private var §"%§:Number = -1;
      
      public function § p§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_)
            {
               if(§§pop())
               {
                  do
                  {
                     this.§8b§(0);
                  }
                  while(_loc2_ && param1);
                  
                  if(!(_loc2_ && param1))
                  {
                     §§push(false);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr72:
                     §§push(false);
                  }
               }
               §§goto(addr72);
            }
            return §§pop();
         }
         §§goto(addr72);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Number = NaN;
         if(§;$§)
         {
            §§push(this.§3_§);
            if(!(_loc2_ && this))
            {
               if(§§pop() > 0)
               {
                  if(_loc3_ || _loc1_)
                  {
                     if(!(_loc2_ && this))
                     {
                        §§push(this.§3_§);
                        if(_loc3_)
                        {
                           §§push(§§pop() / this.§"%§);
                           if(_loc2_)
                           {
                           }
                        }
                        §§goto(addr105);
                     }
                     else
                     {
                        addr109:
                        this.§8b§(0);
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr105);
            }
            addr105:
            _loc1_ = §§pop();
            do
            {
               this.§"%§ = 0;
               §§push(this);
               §§push(this.§"%§);
               if(_loc3_)
               {
                  §§push(§§pop() * _loc1_);
               }
               §§pop().§3_§ = §§pop();
            }
            while(!(_loc3_ || this));
            
            return true;
         }
         §§goto(addr109);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc9_)
         {
            if(!§;$§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§8b§();
                  }
                  while(_loc8_);
                  
               }
               while(_loc8_);
               
               addr52:
            }
            return _loc7_;
         }
         §§goto(addr52);
      }
      
      public function §8b§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§3_§ = 0;
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               while(§§pop() != §§pop())
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_ || this)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc2_ && _loc3_)
                           {
                              break;
                           }
                           this.§"%§ = param1;
                        }
                        else
                        {
                           this.§"%§ = 2000;
                        }
                        §§goto(addr25);
                     }
                     continue;
                  }
                  continue loop0;
               }
               this.§"%§ = 0;
               this.update(0);
               addr25:
               return;
            }
         }
         §§goto(addr78);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§3_§);
         loop0:
         while(§§pop() >= 0)
         {
            §§push(this);
            §§push(this.§3_§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§3_§ = §§pop();
            while(true)
            {
               §§push(this.§3_§);
               if(_loc2_)
               {
                  break;
               }
               if(§§pop() >= this.§"%§)
               {
                  container.addExplosions(§7]§.§`!$§,§>b§().GetPosition().x,§>b§().GetPosition().y);
                  do
                  {
                     this.§3_§ = -1;
                  }
                  while(_loc2_ && param1);
                  
               }
               §%w§ = true;
               if(!(_loc2_ && _loc3_))
               {
                  break loop0;
               }
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Boolean(§;$§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr116:
                     while(true)
                     {
                        §§push(this.§3_§);
                        addr95:
                        while(true)
                        {
                           §§push(0);
                           addr96:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                           }
                        }
                     }
                  }
                  addr115:
               }
               loop5:
               while(true)
               {
                  loop6:
                  for(; !§§pop(); while(true)
                  {
                     if(_loc3_ && _loc2_)
                     {
                        continue loop6;
                     }
                     if(_loc2_ || _loc3_)
                     {
                        break loop5;
                     }
                     §§goto(addr115);
                  })
                  {
                     while(true)
                     {
                        §§push(this.§3_§);
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(false);
                                       continue loop6;
                                    }
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr116);
                                 }
                                 else
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       break loop6;
                                    }
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(super.isReadyToBeRemoved(param1));
                                 if(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop0;
                                 }
                                 continue loop6;
                              }
                           }
                           §§goto(addr96);
                        }
                        break;
                     }
                     §§goto(addr95);
                  }
                  §§push(true);
                  continue loop0;
               }
               return §§pop();
            }
            return §§pop();
         }
         §§goto(addr91);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§3_§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() > 0)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.§3_§);
                     if(!_loc1_)
                     {
                        addr66:
                        return §§pop() / this.§"%§;
                     }
                  }
                  §§goto(addr70);
               }
               §§goto(addr70);
            }
            §§goto(addr66);
         }
         addr70:
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§3_§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() > 0)
               {
                  if(_loc1_ || this)
                  {
                     §§push(this.§"%§);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr65:
                        return §§pop() - this.§3_§;
                     }
                  }
                  §§goto(addr69);
               }
               §§goto(addr69);
            }
            §§goto(addr65);
         }
         addr69:
         return 0;
      }
   }
}
