package §]">§
{
   import §"!&§.§]!C§;
   import §'4§.§^g§;
   
   public class §@#§ extends §"!B§
   {
      
      private static const §17§:Number = 5250;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §17§ = 5250;
         }
      }
      
      protected var §!!l§:Number = 0.0;
      
      public function §@#§(param1:§]!C§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super(param1);
            loop0:
            while(param1.definition.indexOf("BLOCK_ASTEROID_BURNING_PIECE") != -1)
            {
               if(_loc2_)
               {
                  §&!B§ = §17§;
               }
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §%"1§ = true;
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      override public function makeExplosion(param1:§;U§, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            playDestroyedSound();
         }
         do
         {
            super.makeExplosion(param1,param2,param3);
         }
         while(!_loc4_);
         
      }
      
      override public function update(param1:Number, param2:§;U§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         if(_loc8_ || this)
         {
            super.update(param1,param2,param3,param4);
            loop0:
            while(true)
            {
               §§push(§2"!§.loopingParticleCount > 0);
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                     addr186:
                  }
                  else
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr44:
                        }
                        loop5:
                        for(; !_loc7_; if(_loc7_ && param1)
                        {
                           continue;
                        },addr30:,if(_loc5_ >= §2"!§.loopingParticleCount)
                        {
                           if(_loc8_ || param1)
                           {
                              if(_loc7_)
                              {
                                 addr48:
                                 _loc5_++;
                                 addr111:
                              }
                              §§goto(addr44);
                           }
                           §§goto(addr30);
                        },§§push(§2"!§.getLoopingParticle(_loc5_)),if(_loc8_)
                        {
                           §§push(_loc6_ = §§pop());
                        },if(§§pop() != "burningAsteroidSmoke")
                        {
                           if(_loc8_)
                           {
                              §§push(param2);
                              §§push(_loc6_);
                              §§push(param3);
                              if(!_loc7_)
                              {
                                 §§push(§^g§.§5!-§);
                                 if(!(_loc7_ && param3))
                                 {
                                    addr81:
                                    §§push(§§pop() * §§pop());
                                    §§push(param4);
                                    if(_loc8_ || param2)
                                    {
                                       addr89:
                                       §§push(§§pop() * §^g§.§5!-§);
                                    }
                                    §§pop().addObject(§§pop(),§§pop(),§§pop(),0,§-%§.§;!J§,false,true,false,1,true);
                                    §§goto(addr111);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr111);
                        },§§goto(addr48))
                        {
                           §§push(this);
                           §§push(this.§!!l§);
                           if(_loc8_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§!!l§ = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(this.§!!l§);
                              §§push(1000 / 60);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(§§pop() * 10);
                              }
                              if(§§pop() <= §§pop())
                              {
                                 break;
                              }
                              loop7:
                              do
                              {
                                 this.§!!l§ = 0;
                                 while(_loc8_)
                                 {
                                    _loc5_ = 0;
                                    if(!(_loc7_ && param2))
                                    {
                                       continue loop7;
                                    }
                                 }
                                 continue loop6;
                              }
                              while(!_loc8_);
                              
                              continue loop5;
                           }
                        }
                        continue loop0;
                        return;
                     }
                     addr166:
                  }
                  addr159:
                  if(_loc7_ && param3)
                  {
                     continue;
                  }
                  §§goto(addr166);
               }
            }
         }
         while(true)
         {
            §§push(Boolean(param2));
            if(_loc8_)
            {
               §§goto(addr159);
            }
            §§goto(addr186);
         }
      }
   }
}
