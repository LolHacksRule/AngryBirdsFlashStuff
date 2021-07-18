package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §<!a§.b2Vec2;
   
   public class §^B§ extends §9`§
   {
       
      
      private var §5b§:Number = 0;
      
      public function §^B§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc5_ && this))
         {
            §§push(this.§5b§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop19:
                              while(true)
                              {
                                 §§push(§8W§ == §%5§);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(_loc5_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          this.§5b§ = 0;
                                       }
                                       while(true)
                                       {
                                       }
                                       addr245:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§5b§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc5_ && _loc2_)
                                          {
                                             break;
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             loop7:
                                             do
                                             {
                                                §§push(Number(getBody().GetLinearVelocity().x));
                                                loop8:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(Number(getBody().GetLinearVelocity().y));
                                                         loop10:
                                                         while(!(_loc5_ && _loc3_))
                                                         {
                                                            _loc3_ = §§pop();
                                                            loop11:
                                                            do
                                                            {
                                                               §§push(this.§5b§);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc2_);
                                                                  loop13:
                                                                  while(§§pop() >= §§pop())
                                                                  {
                                                                     §§push(this.§5b§);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr94:
                                                                        addr139:
                                                                        while(_loc4_)
                                                                        {
                                                                           if(_loc5_ && _loc2_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              §§goto(addr104);
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           this.§5b§ = 0;
                                                                        }
                                                                        continue loop11;
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§5b§);
                                                                           if(!(_loc4_ || this))
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           if(!(_loc4_ || param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           §§push(_loc2_);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 §§goto(addr28);
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(!(_loc4_ || this))
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§5b§ = 0;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    break loop14;
                                                                                 }
                                                                                 addr104:
                                                                                 addr175:
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    getBody().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                                                    continue loop17;
                                                                                 }
                                                                                 §§push(this.§5b§);
                                                                                 break loop17;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr94);
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  getBody().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                                  §§goto(addr175);
                                                               }
                                                               continue loop6;
                                                            }
                                                            while(!(_loc4_ || this));
                                                            
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             while(_loc5_);
                                             
                                          }
                                          addr28:
                                          return;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              continue loop2;
                           }
                           addr270:
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr270);
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr28);
                  }
               }
               §§goto(addr28);
            }
            return §§pop();
         }
         addr28:
         var _loc2_:Number = getBody().GetLinearVelocity().x;
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ != 0)
            {
               if(_loc3_)
               {
                  §§push(this);
                  §§push(_loc2_);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(-§§pop());
                     if(!(_loc4_ && param1))
                     {
                        addr83:
                        §§push(§§pop() * 1.5);
                     }
                     §§pop().§5b§ = §§pop();
                     §§goto(addr86);
                  }
                  §§goto(addr83);
               }
            }
         }
         addr86:
         return true;
      }
   }
}
