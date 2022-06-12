package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §6!D§.§3!K§;
   import §9"!§.§4"F§;
   import §9"!§.§9"3§;
   import §]!A§.;
   import flash.geom.Point;
   
   public class §&!9§ extends §&!r§
   {
       
      
      public var §"!`§:Boolean = false;
      
      public var §4!7§:Boolean = false;
      
      private var §;@§:§0!N§;
      
      private var §?J§:Point;
      
      private var §]!a§:Number = 0;
      
      public function §&!9§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
            do
            {
               this.§ h§();
            }
            while(!(_loc10_ || param1));
            
         }
      }
      
      private function § h§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§3!K§ = §#6§.§6!z§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(_loc2_)
         {
            this.§;@§ = new §0!N§(_loc1_.texture,true);
         }
         while(true)
         {
            this.§?J§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
            while(!_loc3_)
            {
               §#6§.§6!z§.objects.§9" §.addChild(this.§;@§);
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function §9!`§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         if(!(_loc7_ && _loc3_))
         {
            super.update(param1);
         }
         §§push(this.§]!a§);
         if(_loc6_)
         {
            §§push(§§pop() / 1000);
            if(!_loc7_)
            {
               §§push(§§pop() * Math.PI);
               if(_loc7_ && param1)
               {
               }
               addr55:
               var _loc2_:Number = §§pop();
               var _loc3_:Number = Math.sin(_loc2_);
               addr54:
               if(_loc6_)
               {
                  §§push(this.§;@§);
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§4!7§);
                           loop2:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop3:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr236:
                                       while(true)
                                       {
                                          §§push(!§=!y§());
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop3;
                                          }
                                          if(_loc7_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.§;@§);
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§;@§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop().alpha - 0.025);
                                                   addr225:
                                                   while(true)
                                                   {
                                                      §§pop().alpha = §§pop();
                                                      addr226:
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push(this.§;@§);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(this.§;@§);
                                                            addr175:
                                                            addr205:
                                                            addr157:
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  §§pop().y = §§pop().y + 1;
                                                                  if(_loc7_ && param1)
                                                                  {
                                                                     return;
                                                                  }
                                                                  if(!_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop20;
                                                                  addr404:
                                                               }
                                                               continue loop13;
                                                            }
                                                            §§push(this.§;@§);
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               §§push(this.§;@§);
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr175);
                                                               §§goto(addr205);
                                                            }
                                                            addr163:
                                                            addr167:
                                                            §§pop().rotation = §§pop().rotation + 0.01;
                                                            while(!_loc7_)
                                                            {
                                                               §§push(this.§;@§);
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                             addr220:
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(§§pop().alpha <= 0)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(this.§;@§);
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr153:
                                                                  while(true)
                                                                  {
                                                                     this.§;@§ = null;
                                                                     addr121:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           break loop14;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr153);
                                                                  }
                                                               }
                                                               break loop9;
                                                            }
                                                            continue loop1;
                                                            addr148:
                                                         }
                                                         else
                                                         {
                                                            addr218:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr220);
                                                         }
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   §§goto(addr404);
                                                }
                                                break;
                                             }
                                             §§goto(addr157);
                                          }
                                          addr396:
                                          §§push(this);
                                          §§push(this.§]!a§);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().§]!a§ = §§pop();
                                          §§goto(addr404);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr218);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr396);
                  }
               }
               §§goto(addr226);
            }
            §§push(§§pop() * §4"F§.§="§);
            if(!_loc7_)
            {
               §§goto(addr54);
            }
         }
         §§goto(addr55);
      }
      
      public function get §@4§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(!§=!y§());
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr43:
                     §§pop();
                     return this.§;@§ == null;
                  }
               }
            }
         }
         §§goto(addr43);
      }
   }
}
