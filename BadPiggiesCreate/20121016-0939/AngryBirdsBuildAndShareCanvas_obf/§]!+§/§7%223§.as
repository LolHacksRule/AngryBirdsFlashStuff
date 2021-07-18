package §]!+§
{
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §>X§.§^!x§;
   
   public class §7"3§ extends §^!x§
   {
       
      
      private var §%W§:b2Vec2;
      
      private var §;D§:b2Vec2;
      
      private const §"a§:Number = 0.3;
      
      private const §[!m§:Number = 1;
      
      public function §7"3§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            §§push(this);
            if(!(_loc7_ && param2))
            {
               §§pop().super(!!param3 ? new <String>["P_PIG_5"] : new <String>["P_PIG_6","P_PIG_4"]);
               while(true)
               {
                  x = param1.x;
                  loop1:
                  while(true)
                  {
                     y = param1.y;
                     addr75:
                     while(true)
                     {
                        this.§;D§ = param2;
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr92);
         }
         §§goto(addr69);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Vec2 = new b2Vec2(x,y);
         if(!(_loc7_ && this))
         {
            _loc2_.§5!]§(this.§;D§);
         }
         var _loc3_:Number = Math.max(1,_loc2_.§`g§());
         if(_loc6_)
         {
            _loc2_.Normalize();
            while(true)
            {
               §1!6§ -= _loc2_.x * this.§"a§ / _loc3_ * param1;
               addr98:
               loop1:
               while(true)
               {
                  addr69:
                  while(true)
                  {
                     §[!]§ -= _loc2_.y * this.§"a§ / _loc3_ * param1;
                     continue loop1;
                  }
               }
               addr60:
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr69);
               }
               addr102:
               _loc2_ = new b2Vec2(x + §1!6§,y + §[!]§);
               if(_loc6_)
               {
                  _loc2_.§5!]§(this.§;D§);
                  if(_loc6_ || param1)
                  {
                     addr125:
                     _loc2_.Normalize();
                  }
                  §§push(b2Math);
                  §§push(_loc2_);
                  §§push(b2Math);
                  §§push(b2Math.§@!y§(_loc2_,this.§%W§));
                  if(!_loc7_)
                  {
                     §§push(§§pop() / b2Math.§@!y§(this.§%W§,this.§%W§));
                  }
                  var _loc4_:b2Vec2 = §§pop().§'!%§(§§pop(),§§pop().§@;§(§§pop(),this.§%W§));
                  §§push(§§findproperty(b2Vec2));
                  §§push(this.§[!m§);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(-§§pop());
                     if(!(_loc7_ && this))
                     {
                        §§push(_loc4_.x);
                        if(!_loc7_)
                        {
                           addr183:
                           §§push(§§pop() * §§pop());
                           §§push(this.§[!m§);
                           if(!_loc7_)
                           {
                              §§push(-§§pop());
                              if(_loc6_ || _loc3_)
                              {
                                 addr195:
                                 §§push(§§pop() * _loc4_.y);
                              }
                              var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                              if(!_loc7_)
                              {
                                 x += (§1!6§ + _loc5_.x) * param1;
                                 while(true)
                                 {
                                    y += (§[!]§ + _loc5_.y) * param1;
                                 }
                                 addr291:
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(parent));
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc7_)
                                             {
                                                parent.removeChild(this);
                                             }
                                             else
                                             {
                                                §§goto(addr291);
                                             }
                                          }
                                          if(!(_loc7_ && param1))
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       return;
                                       addr228:
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop5;
                                    }
                                    addr221:
                                    if(!(_loc6_ || param1))
                                    {
                                       continue;
                                    }
                                    §§goto(addr228);
                                 }
                              }
                           }
                        }
                        §§goto(addr195);
                     }
                  }
                  §§goto(addr183);
               }
               §§goto(addr125);
            }
         }
         while(true)
         {
            rotation += 0.3 * param1;
            if(!(_loc6_ || param1))
            {
               continue;
            }
            if(_loc6_)
            {
               §§goto(addr60);
            }
            §§goto(addr98);
         }
         §§goto(addr102);
      }
   }
}
