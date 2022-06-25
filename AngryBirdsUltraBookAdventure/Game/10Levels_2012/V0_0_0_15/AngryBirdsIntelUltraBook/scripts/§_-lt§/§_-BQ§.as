package §_-lt§
{
   import §_-5§.b2Settings;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-L8§;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-BQ§ extends §_-0f§
   {
       
      
      private var §_-0EJ§:Boolean = false;
      
      private var §_-CW§:Number = 0;
      
      public function §_-BQ§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            do
            {
               §_-SE§ = param11;
            }
            while(_loc14_ && param2);
            
         }
      }
      
      override public function addDestructionParticles(param1:§_-Zc§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§_-0EJ§)
            {
               addr21:
               §§push(§_-Hv§.§_-K7§);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ || _loc3_))
                  {
                     addr43:
                     §§push(§§pop());
                     if(_loc3_ || param1)
                     {
                        addr52:
                        var _loc2_:String = §§pop();
                        if(!_loc4_)
                        {
                           if(§_-SE§ != "")
                           {
                              param1.§_-0-N§(§_-SE§,_loc2_,§_-Zc§.§_-MP§,§_-Hv§.§_-4y§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y - 1,2000,"",§_-Hv§.§_-TD§,0,0,0,0,1,20,true);
                              if(_loc3_ || _loc3_)
                              {
                                 addr108:
                              }
                              else
                              {
                                 addr149:
                              }
                              return;
                           }
                           if(_loc3_ || param1)
                           {
                              param1.§_-0EQ§(_loc2_,§_-Zc§.§_-MP§,§_-Hv§.§_-4y§,§_-SJ§().GetPosition().x,§_-SJ§().GetPosition().y - 1,2000,"",§_-Hv§.§_-TD§);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr108);
                     }
                  }
               }
               §§goto(addr52);
            }
            else
            {
               §§push(§_-Hv§.§_-O5§);
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr43);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr21);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc8_)
         {
            §§push(§§pop() <= 0);
            if(_loc8_ || param2)
            {
               §§push(§§pop());
               if(!(_loc9_ && param2))
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        addr59:
                        §§pop();
                        if(_loc8_)
                        {
                           §§push(param3);
                           if(_loc8_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc8_)
                              {
                                 addr111:
                                 if(§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§pop();
                                       addr114:
                                       loop3:
                                       while(true)
                                       {
                                          §§push(param4);
                                          if(!(_loc9_ && this))
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                continue loop3;
                                             }
                                             addr87:
                                          }
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr63);
                                       }
                                    }
                                    addr113:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          if(!(_loc9_ && this))
                                          {
                                             addr101:
                                             this.§_-0EJ§ = true;
                                          }
                                          else
                                          {
                                             §§goto(addr114);
                                          }
                                          §§goto(addr63);
                                       }
                                    }
                                    §§goto(addr63);
                                 }
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr59);
         }
         addr63:
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0.3);
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(Math.abs(§_-SJ§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr150:
                     while(true)
                     {
                        §§pop();
                        addr151:
                        while(true)
                        {
                           §§push(Math.abs(§_-SJ§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr150:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
                  addr49:
                  return §§pop();
               }
            }
            §§goto(addr150);
         }
         §§goto(addr95);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§_-CW§ > 0)
            {
               §§push(this);
               §§push(this.§_-CW§);
               if(!_loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§_-CW§ = §§pop();
               §_-U-§.mTryToScream = §_-05W§.§_-0C9§;
               §§push(true);
               addr74:
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(!(_loc2_ && this))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr74);
      }
      
      public function §_-H4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-CW§ = §_-L8§.§_-Wt§;
         }
         do
         {
            §_-U-§.mTryToScream = §_-05W§.§_-0C9§;
            do
            {
               playScreamingSoundEffect();
            }
            while(!_loc2_);
            
         }
         while(!_loc2_);
         
      }
   }
}
