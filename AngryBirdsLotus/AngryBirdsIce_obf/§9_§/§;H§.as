package §9_§
{
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §[x§.§2^§;
   import §[x§.§`5§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;H§ extends §<F§
   {
       
      
      private var §5g§:Boolean = false;
      
      private var §;S§:Number = 0;
      
      public function §;H§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override public function addDestructionParticles(param1:§>=§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.§5g§)
            {
               addr26:
               §§push(§'b§.§9'§);
               if(_loc3_ || this)
               {
                  §§push(§§pop());
                  if(_loc4_ && this)
                  {
                  }
               }
               addr76:
               §§push(§§pop());
            }
            else
            {
               §§push(§'b§.§28§);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr76);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               param1.§-X§(_loc2_,§>=§.§>!5§,§'b§.§`F§,§>b§().GetPosition().x,§>b§().GetPosition().y - 1,2000,"",§'b§.§"_§);
            }
            return;
         }
         §§goto(addr26);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(!_loc8_)
         {
            §§push(§§pop() <= 0);
            if(!(_loc8_ && this))
            {
               §§push(§§pop());
               if(_loc9_ || param2)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc9_)
                     {
                        §§push(param3);
                        loop0:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr111:
                           while(true)
                           {
                              §§push(§§pop());
                              addr112:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                    addr113:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr96:
                                          if(!(_loc8_ && param2))
                                          {
                                             this.§5g§ = true;
                                          }
                                          if(!_loc9_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr62);
                                    }
                                    addr94:
                                 }
                              }
                           }
                        }
                        addr110:
                     }
                     while(true)
                     {
                        §§push(param4);
                        if(!(_loc8_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc8_ && param1)
                        {
                           §§goto(addr110);
                        }
                        §§goto(addr94);
                        §§goto(addr96);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr111);
               }
               §§goto(addr112);
            }
            §§goto(addr113);
         }
         addr62:
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0.3);
         if(!(_loc2_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §§push(Math.abs(§>b§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr140:
                        while(true)
                        {
                           §§push(Math.abs(§>b§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr139:
                  }
                  while(true)
                  {
                     loop5:
                     do
                     {
                        §§push(§§pop());
                        if(!(_loc3_ || _loc1_))
                        {
                           continue loop1;
                        }
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§pop();
                              loop7:
                              while(!_loc2_)
                              {
                                 §§push(Math.abs(§>b§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                 if(!_loc2_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(true);
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          addr89:
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(false);
                                          if(!_loc3_)
                                          {
                                             break loop8;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       addr45:
                                       return §§pop();
                                    }
                                    return §§pop();
                                    addr71:
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr71);
                     }
                     while(!_loc3_);
                     
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§;S§ > 0)
            {
               if(_loc2_)
               {
                  addr83:
                  §§push(this);
                  §§push(this.§;S§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§;S§ = §§pop();
               }
               §<p§.mTryToScream = §`-§.§`w§;
               return true;
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(!(_loc3_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr83);
      }
      
      public function §53§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;S§ = §`5§.§^E§;
            while(true)
            {
               §<p§.mTryToScream = §`-§.§`w§;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     playScreamingSoundEffect();
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr47);
      }
   }
}
