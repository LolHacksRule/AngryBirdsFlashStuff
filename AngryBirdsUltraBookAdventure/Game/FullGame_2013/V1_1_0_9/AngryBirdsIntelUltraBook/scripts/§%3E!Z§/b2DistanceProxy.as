package §>!Z§
{
   import §&H§.*;
   import §3b§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §0!k§:Vector.<b2Vec2>;
      
      public var §;!4§:int;
      
      public var § !c§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         §§push(param1.§ 5§());
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               §§push(b2Shape.§^!6§);
               if(_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_)
                        {
                           §§goto(addr171);
                        }
                        §§goto(addr181);
                     }
                     else
                     {
                        §§push(b2Shape.§=&§);
                        if(_loc5_)
                        {
                           §§goto(addr179);
                        }
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr179);
               }
               §§goto(addr174);
            }
            addr171:
            §§push(0);
            if(!_loc5_)
            {
               addr179:
               if(§§pop() === _loc4_)
               {
                  addr181:
                  §§push(1);
                  if(!(_loc6_ && this))
                  {
                     addr189:
                  }
               }
               else
               {
                  §§push(2);
               }
            }
            else
            {
               addr174:
            }
            §§goto(addr195);
         }
         addr195:
         loop8:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1 as b2CircleShape;
               if(!(_loc6_ && _loc2_))
               {
                  this.§0!k§ = new Vector.<b2Vec2>(1,true);
               }
               loop2:
               while(true)
               {
                  this.§0!k§[0] = _loc2_.§`3§;
                  loop3:
                  while(true)
                  {
                     addr46:
                     addr77:
                     while(true)
                     {
                        this.§;!4§ = 1;
                        addr50:
                        while(!_loc6_)
                        {
                           continue loop2;
                        }
                        continue loop3;
                     }
                     break loop8;
                  }
               }
               break;
            case 1:
               _loc3_ = param1 as b2PolygonShape;
               if(_loc5_)
               {
                  this.§0!k§ = _loc3_.§0!k§;
                  loop6:
                  while(true)
                  {
                     this.§;!4§ = _loc3_.§]D§;
                     loop7:
                     while(true)
                     {
                        addr112:
                        while(true)
                        {
                           this.§ !c§ = _loc3_.§ !c§;
                           addr117:
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              continue loop7;
                           }
                           continue loop7;
                        }
                     }
                  }
               }
               break;
            default:
               b2Settings.b2Assert(false);
               if(_loc5_ || this)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr112);
               }
               §§goto(addr117);
         }
      }
      
      public function §'^§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§0!k§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§0!k§[0].y * param1.y);
            if(_loc7_ || _loc3_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_ || _loc3_)
               {
                  if(!(_loc6_ && this))
                  {
                     if(§§pop() >= this.§;!4§)
                     {
                        if(!_loc6_)
                        {
                           if(!_loc6_)
                           {
                              addr76:
                              §§push(_loc2_);
                              if(_loc7_ || this)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr193:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                              addr192:
                           }
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc7_ || this)
                              {
                                 §§push(Number(§§pop()));
                              }
                              if(_loc7_)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                    }
                                    addr133:
                                 }
                                 else
                                 {
                                    addr185:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          _loc5_ = §§pop();
                                          addr189:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                          }
                                          addr189:
                                       }
                                       addr190:
                                       while(true)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                _loc4_++;
                                                addr98:
                                                while(true)
                                                {
                                                   if(!(_loc7_ || _loc2_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      break loop4;
                                                   }
                                                }
                                             }
                                             continue loop0;
                                             addr96:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr192);
                                          }
                                       }
                                    }
                                    addr185:
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        §§push(this.§0!k§[_loc4_].x * param1.x);
                        if(!(_loc6_ && this))
                        {
                           §§push(this.§0!k§[_loc4_].y * param1.y);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§goto(addr185);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr190);
                        }
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr193);
               }
               §§goto(addr76);
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function §7#§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§0!k§[0].x * param1.x);
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() + this.§0!k§[0].y * param1.y);
            if(_loc7_ || _loc3_)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_)
               {
                  if(!_loc6_)
                  {
                     if(§§pop() >= this.§;!4§)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    addr173:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr174:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                    }
                                 }
                                 addr172:
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 if(!_loc6_)
                                 {
                                    _loc3_ = §§pop();
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr171:
                                       while(true)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr172);
                                       }
                                       continue loop4;
                                    }
                                    addr170:
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc4_++;
                              continue loop2;
                           }
                        }
                        continue;
                     }
                     §§push(this.§0!k§[_loc4_].x * param1.x);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(this.§0!k§[_loc4_].y * param1.y);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc6_)
                              {
                                 addr166:
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr170);
                           }
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr166);
                     §§goto(addr171);
                  }
                  §§goto(addr173);
               }
               §§goto(addr174);
            }
            return this.§0!k§[_loc2_];
         }
         §§goto(addr52);
      }
      
      public function §!G§() : int
      {
         return this.§;!4§;
      }
      
      public function §2l§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(b2Settings);
            if(_loc2_ || this)
            {
               §§push(0);
               if(!(_loc3_ && param1))
               {
                  §§push(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc2_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              addr84:
                              §§pop();
                              §§push(param1 < this.§;!4§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr90);
                     }
                  }
               }
            }
            §§goto(addr84);
         }
         addr90:
         return this.§0!k§[param1];
      }
   }
}
