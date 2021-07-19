package §`6§
{
   import §!Y§.§[o§;
   import §1n§.§1D§;
   import §9_§.§+>§;
   import §9_§.§?!!§;
   import §[x§.§2^§;
   import §[x§.§`5§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class § r§ extends §+>§
   {
       
      
      public var §]Q§:Boolean = false;
      
      public var §02§:Boolean = false;
      
      private var §!C§:§1!,§;
      
      private var §?!3§:Point;
      
      private var §-!8§:Number = 0;
      
      public function § r§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         }
         do
         {
            this.§]a§();
         }
         while(!_loc10_);
         
      }
      
      private function §]a§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1D§ = §[o§.§='§.§0!§.§9$§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(_loc3_ || _loc1_)
         {
            this.§!C§ = new §1!,§(_loc1_.texture,true);
         }
         do
         {
            this.§?!3§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
            do
            {
               §[o§.§='§.objects.§]! §.addChild(this.§!C§);
            }
            while(_loc2_);
            
         }
         while(!_loc3_);
         
      }
      
      public function §,W§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            super.update(param1);
         }
         §§push(this.§-!8§);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() / 1000);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() * Math.PI);
               if(_loc7_)
               {
               }
               addr55:
               var _loc2_:* = §§pop();
               var _loc3_:Number = Math.sin(_loc2_);
               if(this.§!C§)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§02§);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc6_)
                        {
                           addr207:
                           if(!§§pop())
                           {
                              do
                              {
                                 §§pop();
                                 §§push(!§>b§());
                              }
                              while(_loc7_ && this);
                              
                              addr209:
                           }
                           if(!§§pop())
                           {
                              §§push(this.§!C§);
                              if(!_loc7_)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push(Math.cos(_loc2_) * §`5§.§]w§);
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§pop().rotation = §§pop();
                                          if(!_loc7_)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(false)
                                                {
                                                   addr98:
                                                   this.§!C§ = null;
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      §§goto(addr109);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr98);
                                                   }
                                                   addr109:
                                                   addr360:
                                                   addr62:
                                                   addr111:
                                                   if(_loc7_)
                                                   {
                                                      addr118:
                                                      §§push(this.§!C§);
                                                      break;
                                                   }
                                                   §§push(this);
                                                   §§push(this.§-!8§);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                   §§pop().§-!8§ = §§pop();
                                                   return;
                                                   addr121:
                                                }
                                                else
                                                {
                                                   _loc4_ = new Point(-this.§?!3§.x,-this.§?!3§.y);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      this.§!C§.x = x + _loc4_.x * Math.cos(this.§!C§.rotation) - _loc4_.y * Math.sin(this.§!C§.rotation);
                                                      addr359:
                                                      §§push(this.§!C§);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§pop().y = y + _loc4_.x * Math.sin(this.§!C§.rotation) + _loc4_.y * Math.cos(this.§!C§.rotation);
                                                         addr246:
                                                         addr326:
                                                         §§push(Number(§>b§().GetLinearVelocity().y));
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr294:
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§`5§.§8!,§);
                                                               }
                                                               _loc5_ = §§pop();
                                                               §>b§().SetLinearVelocity(new b2Vec2(_loc3_ * §`5§.§>m§,_loc5_));
                                                               if(_loc6_)
                                                               {
                                                                  addr244:
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr246);
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                               addr295:
                                                               §§goto(addr295);
                                                            }
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§push(§`5§.§8!,§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr294);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr294);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      addr329:
                                                      §§goto(addr329);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr109);
                                             }
                                             else
                                             {
                                                addr173:
                                                §§push(this.§!C§);
                                                §§push(this.§!C§);
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§§pop().alpha - 0.025);
                                                   addr188:
                                                   while(true)
                                                   {
                                                      §§pop().alpha = §§pop();
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§!C§);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(this.§!C§);
                                                         addr153:
                                                         while(true)
                                                         {
                                                            §§pop().y = §§pop().y + 1;
                                                            §§push(this.§!C§);
                                                            continue loop3;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             §§goto(addr62);
                                          }
                                          §§goto(addr109);
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr125);
                              }
                              break;
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr207);
                  }
                  while(true)
                  {
                     §§pop().dispose();
                     §§goto(addr121);
                     §§goto(addr118);
                  }
                  §§goto(addr111);
               }
               §§goto(addr109);
            }
            §§push(§§pop() * §`5§.§package§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr55);
      }
      
      public function get §3@§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(!§>b§());
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr47:
                     §§pop();
                     return this.§!C§ == null;
                  }
               }
            }
         }
         §§goto(addr47);
      }
   }
}
