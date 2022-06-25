package §"m§
{
   import § var§.§ 4§;
   import § var§.§!u§;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §=`§.§#`§;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.geom.Point;
   
   public class §;I§ extends §!u§
   {
       
      
      public var §&!;§:Boolean = false;
      
      public var §>y§:Boolean = false;
      
      private var §9!R§:§"<§;
      
      private var §3!#§:Point;
      
      private var §4!P§:Number = 0;
      
      public function §;I§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         }
         do
         {
            this.§3=§();
         }
         while(!(_loc11_ || param3));
         
      }
      
      private function §3=§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#`§ = §,!s§.§=!I§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!(_loc2_ && this))
         {
            this.§9!R§ = new §"<§(_loc1_.texture,true);
            while(true)
            {
               this.§3!#§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               §§goto(addr85);
            }
         }
         addr85:
         while(true)
         {
            §,!s§.§=!I§.objects.§<f§.addChild(this.§9!R§);
            if(!(_loc2_ && _loc1_))
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §43§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc6_ || _loc2_)
         {
            super.update(param1);
         }
         §§push(this.§4!P§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() / 1000);
            if(_loc6_)
            {
               addr44:
               §§push(§§pop() * Math.PI);
               if(!(_loc7_ && this))
               {
                  addr54:
                  §§push(§§pop() * §2!y§.§4<§);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               var _loc3_:Number = Math.sin(_loc2_);
               if(_loc6_ || param1)
               {
                  §§push(this.§9!R§);
                  loop0:
                  for(; §§pop(); if(_loc7_ && _loc2_)
                  {
                     continue;
                  },§§push(Math.cos(_loc2_) * §2!y§.§+#§),if(!_loc7_)
                  {
                     §§pop().rotation = §§pop();
                     if(!(_loc7_ && _loc2_))
                     {
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              if(false)
                              {
                                 §§goto(addr117);
                              }
                              _loc4_ = new Point(-this.§3!#§.x,-this.§3!#§.y);
                              if(!(_loc7_ && this))
                              {
                                 this.§9!R§.x = x + _loc4_.x * Math.cos(this.§9!R§.rotation) - _loc4_.y * Math.sin(this.§9!R§.rotation);
                                 addr415:
                                 §§push(this.§9!R§);
                                 if(!_loc7_)
                                 {
                                    §§pop().y = y + _loc4_.x * Math.sin(this.§9!R§.rotation) + _loc4_.y * Math.cos(this.§9!R§.rotation);
                                    addr309:
                                    addr382:
                                    §§push(Number(§63§().GetLinearVelocity().y));
                                    if(_loc6_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc7_ && param1))
                                       {
                                          _loc5_ = §§pop();
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             addr335:
                                             if(§§pop() > §2!y§.§>8§)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(§2!y§.§>8§);
                                                      if(_loc6_ || this)
                                                      {
                                                         addr355:
                                                         _loc5_ = Number(§§pop());
                                                         §63§().SetLinearVelocity(new b2Vec2(_loc3_ * §2!y§.§^!O§,_loc5_));
                                                         if(!(_loc7_ && this))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               addr307:
                                                               if(false)
                                                               {
                                                                  §§goto(addr309);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr415);
                                                         }
                                                         addr356:
                                                         §§goto(addr356);
                                                         addr354:
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                   §§goto(addr382);
                                                }
                                             }
                                          }
                                          §§goto(addr355);
                                       }
                                       §§goto(addr335);
                                    }
                                    §§goto(addr354);
                                 }
                                 addr385:
                                 §§goto(addr385);
                              }
                              §§goto(addr307);
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr429);
                  },§§goto(addr246))
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§>y§);
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc6_)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr266:
                                    while(true)
                                    {
                                       §§push(!§63§());
                                       if(!(_loc6_ || param1))
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr265:
                              }
                              while(!§§pop())
                              {
                                 §§push(this.§9!R§);
                                 if(_loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    addr136:
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          if(§§pop().alpha <= 0)
                                          {
                                             addr148:
                                             if(_loc6_ || param1)
                                             {
                                                if(_loc7_ && param1)
                                                {
                                                   continue loop1;
                                                }
                                                addr164:
                                                §§push(this.§9!R§);
                                                if(_loc6_)
                                                {
                                                   §§pop().dispose();
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr117:
                                                      this.§9!R§ = null;
                                                      if(!_loc7_)
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr79:
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr136);
                                                               §§push(this.§9!R§);
                                                               addr198:
                                                            }
                                                            break loop0;
                                                         }
                                                         §§goto(addr148);
                                                      }
                                                   }
                                                   §§goto(addr429);
                                                }
                                                addr178:
                                                §§push(this.§9!R§);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§pop().rotation = §§pop().rotation + 0.01;
                                                      §§goto(addr198);
                                                   }
                                                   addr246:
                                                   §§pop().alpha = §§pop().alpha - 0.025;
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr79);
                                       }
                                       addr241:
                                       addr243:
                                       if(_loc6_ || param1)
                                       {
                                          addr214:
                                          this.§9!R§.y += 1;
                                          §§goto(addr178);
                                          §§push(this.§9!R§);
                                          addr218:
                                          addr212:
                                       }
                                       addr429:
                                       return;
                                       §§push(this.§9!R§);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr164);
                                 §§goto(addr230);
                              }
                              addr239:
                              §§goto(addr241);
                              §§push(this.§9!R§);
                           }
                           §§goto(addr265);
                        }
                     }
                  }
                  §§push(this);
                  §§push(this.§4!P§);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§4!P§ = §§pop();
                  §§goto(addr429);
               }
               §§goto(addr266);
            }
            §§goto(addr54);
         }
         §§goto(addr44);
      }
      
      public function get §%" §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(!§63§());
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr47:
                     §§pop();
                     return this.§9!R§ == null;
                  }
               }
            }
         }
         §§goto(addr47);
      }
   }
}
