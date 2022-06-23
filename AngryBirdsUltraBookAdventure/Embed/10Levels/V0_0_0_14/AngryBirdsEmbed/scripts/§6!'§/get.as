package §6!'§
{
   import §!+§.§#-§;
   import §!+§.§>G§;
   import §'k§.§2v§;
   import §5H§.§[k§;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import §?b§.§&z§;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class get extends §>G§
   {
       
      
      public var §5@§:Boolean = false;
      
      public var §`;§:Boolean = false;
      
      private var §1J§:§6!0§;
      
      private var §6!9§:Point;
      
      private var §0^§:Number = 0;
      
      public function get(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && param2))
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
            if(_loc10_)
            {
               addr47:
               this.§,-§();
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §,-§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2v§ = §[k§.§&@§.§!`§.§`l§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!_loc3_)
         {
            this.§1J§ = new §6!0§(_loc1_.texture,true);
            if(!_loc3_)
            {
               this.§6!9§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               if(_loc3_)
               {
               }
               §§goto(addr73);
            }
            §[k§.§&@§.objects.§3!H§.addChild(this.§1J§);
         }
         addr73:
      }
      
      public function §#!I§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc6_ || param1)
         {
            super.update(param1);
         }
         §§push(this.§0^§);
         if(!_loc7_)
         {
            §§push(§§pop() / 1000);
            if(_loc6_ || this)
            {
               addr44:
               §§push(§§pop() * Math.PI);
               if(_loc6_ || _loc3_)
               {
                  addr54:
                  §§push(§§pop() * §&z§.§7X§);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               var _loc3_:Number = Math.sin(_loc2_);
               if(_loc6_ || param1)
               {
                  §§push(this.§1J§);
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(this.§`;§);
                           if(_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc6_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       addr101:
                                       §§pop();
                                       addr134:
                                       if(_loc6_)
                                       {
                                          §§push(!§`t§());
                                       }
                                       §§push(this.§1J§);
                                       §§push(this.§1J§);
                                       if(_loc6_)
                                       {
                                          §§pop().y = §§pop().y + 1;
                                          addr189:
                                          addr195:
                                          §§push(this.§1J§);
                                          if(_loc6_)
                                          {
                                             §§push(this.§1J§);
                                          }
                                          §§pop().rotation = Math.cos(_loc2_) * §&z§.§%4§;
                                          _loc4_ = new Point(-this.§6!9§.x,-this.§6!9§.y);
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(this.§1J§);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§pop().x = x + _loc4_.x * Math.cos(this.§1J§.rotation) - _loc4_.y * Math.sin(this.§1J§.rotation);
                                                if(_loc6_)
                                                {
                                                   addr248:
                                                   this.§1J§.y = y + _loc4_.x * Math.sin(this.§1J§.rotation) + _loc4_.y * Math.cos(this.§1J§.rotation);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(Number(§`t§().GetLinearVelocity().y));
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!_loc7_)
                                                            {
                                                               addr295:
                                                               if(§§pop() > §&z§.§ !§)
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§goto(addr303);
                                                                  }
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                      }
                                                      §§goto(addr295);
                                                   }
                                                   §§goto(addr326);
                                                }
                                                addr303:
                                                §§push(§&z§.§ !§);
                                                if(_loc6_ || param1)
                                                {
                                                   addr322:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc5_ = §§pop();
                                                if(_loc6_)
                                                {
                                                   addr326:
                                                   §`t§().SetLinearVelocity(new b2Vec2(_loc3_ * §&z§.§,!A§,_loc5_));
                                                   §§goto(addr336);
                                                }
                                                addr336:
                                                §§push(this);
                                                §§push(this.§0^§);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§0^§ = §§pop();
                                                return;
                                             }
                                          }
                                          §§goto(addr248);
                                       }
                                       §§pop().rotation = §§pop().rotation + 0.01;
                                       if(this.§1J§.alpha <= 0)
                                       {
                                          §§push(this.§1J§);
                                          if(!_loc7_)
                                          {
                                             §§pop().dispose();
                                             if(!(_loc7_ && param1))
                                             {
                                                addr181:
                                                this.§1J§ = null;
                                                if(!_loc7_)
                                                {
                                                   addr186:
                                                }
                                                §§goto(addr326);
                                             }
                                             §§goto(addr186);
                                          }
                                          else
                                          {
                                             §§goto(addr189);
                                          }
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(this.§1J§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(this.§1J§);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop().alpha - 0.025);
                                             if(_loc6_)
                                             {
                                                §§pop().alpha = §§pop();
                                                §§goto(addr134);
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr134);
                                 }
                                 else
                                 {
                                    §§goto(addr189);
                                    §§push(this.§1J§);
                                 }
                                 §§goto(addr189);
                              }
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr326);
                  }
                  §§goto(addr189);
               }
               §§goto(addr101);
            }
            §§goto(addr54);
         }
         §§goto(addr44);
      }
      
      public function get §%-§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(!§`t§());
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr49:
                     §§push(this.§1J§ == null);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr49);
      }
   }
}
