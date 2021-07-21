package §'!;§
{
   import §#b§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §>!+§:Vector.<b2Vec2>;
      
      public var §'!,§:int;
      
      public var §%+§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§"!j§());
         if(!(_loc6_ && _loc2_))
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && _loc3_))
            {
               §§push(b2Shape.§@!>§);
               if(!(_loc6_ && param1))
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           addr168:
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr181:
                           }
                        }
                        else
                        {
                           addr178:
                           §§push(1);
                           if(_loc5_)
                           {
                              §§goto(addr181);
                           }
                        }
                        addr187:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1 as b2CircleShape;
                              if(_loc5_ || param1)
                              {
                                 this.§>!+§ = new Vector.<b2Vec2>(1,true);
                                 if(_loc5_ || _loc2_)
                                 {
                                    this.§>!+§[0] = _loc2_.§,!#§;
                                    if(!(_loc6_ && param1))
                                    {
                                       addr64:
                                       this.§'!,§ = 1;
                                       if(_loc5_ || this)
                                       {
                                          this.§%+§ = _loc2_.§%+§;
                                       }
                                    }
                                    break;
                                 }
                              }
                              §§goto(addr64);
                           case 1:
                              _loc3_ = param1 as b2PolygonShape;
                              if(!(_loc6_ && _loc3_))
                              {
                                 this.§>!+§ = _loc3_.§>!+§;
                                 if(!_loc6_)
                                 {
                                    this.§'!,§ = _loc3_.§8k§;
                                    if(_loc5_)
                                    {
                                       addr114:
                                       this.§%+§ = _loc3_.§%+§;
                                       if(!_loc6_)
                                       {
                                          addr120:
                                          break;
                                       }
                                    }
                                    addr125:
                                    break;
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr120);
                           default:
                              b2Settings.b2Assert(false);
                              §§goto(addr125);
                        }
                        return;
                        addr186:
                     }
                     else
                     {
                        §§push(b2Shape.§>>§);
                        if(_loc5_)
                        {
                           addr177:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr178);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr186);
                        }
                     }
                     §§goto(addr181);
                  }
               }
               §§goto(addr177);
            }
            §§goto(addr168);
         }
         §§goto(addr187);
      }
      
      public function §7Z§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§>!+§[0].x * param1.x);
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() + this.§>!+§[0].y * param1.y);
            if(_loc7_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         while(true)
         {
            §§push(_loc4_);
            if(_loc7_)
            {
               if(§§pop() < this.§'!,§)
               {
                  §§push(this.§>!+§[_loc4_].x * param1.x);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(this.§>!+§[_loc4_].y * param1.y);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                              §§push(§§pop());
                              if(!_loc6_)
                              {
                                 _loc5_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    addr116:
                                    addr115:
                                    if(§§pop() > _loc3_)
                                    {
                                       if(_loc7_ || this)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc7_)
                                             {
                                             }
                                             break;
                                          }
                                          _loc2_ = §§pop();
                                          if(!(_loc7_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§push(_loc5_);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr162:
                                             _loc3_ = Number(§§pop());
                                             addr161:
                                             if(!_loc7_)
                                             {
                                             }
                                             §§push(_loc2_);
                                             break;
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                    _loc4_++;
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr116);
               }
               §§goto(addr162);
            }
            break;
         }
         return §§pop();
      }
      
      public function § !v§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§>!+§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§>!+§[0].y * param1.y);
            if(_loc6_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               while(§§pop() < this.§'!,§)
               {
                  §§push(this.§>!+§[_loc4_].x * param1.x);
                  if(_loc6_ || this)
                  {
                     §§push(this.§>!+§[_loc4_].y * param1.y);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc6_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc7_ && param1))
                           {
                              §§push(§§pop());
                              if(_loc6_ || _loc3_)
                              {
                                 _loc5_ = §§pop();
                                 if(!(_loc7_ && this))
                                 {
                                    addr115:
                                    addr114:
                                    if(§§pop() > _loc3_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_ || this)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc7_ && this)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc2_ = §§pop();
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                addr161:
                                                _loc3_ = Number(§§pop());
                                                if(!(_loc6_ || this))
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             §§goto(addr161);
                                          }
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    _loc4_++;
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr114);
               }
               return this.§>!+§[_loc2_];
            }
         }
         §§goto(addr41);
      }
      
      public function §<!G§() : int
      {
         return this.§'!,§;
      }
      
      public function §2!E§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(b2Settings);
            if(_loc2_ || this)
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              addr73:
                              §§push(param1 < this.§'!,§);
                           }
                        }
                     }
                     §§pop().b2Assert(§§pop());
                     §§goto(addr75);
                  }
               }
            }
            §§goto(addr73);
         }
         addr75:
         return this.§>!+§[param1];
      }
   }
}
