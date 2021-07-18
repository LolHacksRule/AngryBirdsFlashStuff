package §4N§
{
   import §;8§.§3f§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §`!%§
   {
      
      public static const §9n§:int = 0;
      
      public static const §function§:int;
      
      public static const §]0§:int;
      
      public static const §;J§:int;
      
      public static const §08§:int = 1;
      
      public static const §"!1§:int = 2;
      
      public static const §4!D§:int = 3;
      
      public static const §-!4§:int = 4;
      
      public static const §&m§:int = 5;
      
      public static const §&!4§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9n§ = 0;
            §function§ = b2Body.b2_staticBody;
            do
            {
               §]0§ = b2Body.b2_kinematicBody;
            }
            while(_loc2_ && _loc1_);
            
            §;J§ = b2Body.b2_dynamicBody;
            §08§ = 1;
            do
            {
               §"!1§ = 2;
               do
               {
                  §4!D§ = 3;
                  §-!4§ = 4;
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public var mName:String;
      
      public var §&!=§:Array;
      
      public var §5!-§:Array;
      
      public var §&7§:Array;
      
      public function §`!%§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         super();
         loop0:
         while(true)
         {
            this.mName = param1;
            loop1:
            while(true)
            {
               this.§&!=§ = new Array();
               loop2:
               while(true)
               {
                  this.§&!=§[§9n§] = this.§[?§(param2);
                  §§push(this.§&!=§);
                  §§push(§08§);
                  loop3:
                  while(true)
                  {
                     §§push(param3);
                     loop4:
                     while(true)
                     {
                        §§pop()[§§pop()] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(this.§&!=§);
                           loop6:
                           while(true)
                           {
                              §§push(§"!1§);
                              loop7:
                              while(true)
                              {
                                 §§push(param4);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop()[§§pop()] = §§pop();
                                    §§push(this.§&!=§);
                                    while(true)
                                    {
                                       §§push(§4!D§);
                                       §§push(param5);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop()[§§pop()] = §§pop();
                                          addr126:
                                          while(!_loc10_)
                                          {
                                             §§push(this.§&!=§);
                                             while(true)
                                             {
                                                §§push(§-!4§);
                                                addr97:
                                                while(true)
                                                {
                                                   §§push(param6);
                                                   addr98:
                                                   while(_loc9_ || param3)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§pop()[§§pop()] = §§pop();
                                                            while(_loc9_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            continue loop2;
                                                            addr110:
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                       addr59:
                                       loop16:
                                       while(_loc9_ || param3)
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(§&m§);
                                             while(_loc9_ || param1)
                                             {
                                                §§push(param7);
                                                while(!_loc10_)
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         §§push(this.§&!=§);
                                                         if(!(_loc9_ || param3))
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            §§push(§&!4§);
                                                            if(_loc9_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(param8);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§pop()[§§pop()] = §§pop();
                                                                     if(_loc10_)
                                                                     {
                                                                        §§goto(addr90);
                                                                     }
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr126);
                                                                  }
                                                                  §§goto(addr87);
                                                               }
                                                               §§goto(addr97);
                                                            }
                                                            §§goto(addr69);
                                                         }
                                                         §§goto(addr96);
                                                         continue loop16;
                                                      }
                                                      §§goto(addr110);
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr98);
                                             }
                                             continue loop7;
                                             addr69:
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function getValue(param1:int) : *
      {
         return this.§&!=§[param1];
      }
      
      private function §[?§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().toLowerCase() == "kinetic")
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§]0§);
                     break;
                  }
               }
               §§push(param1);
               while(true)
               {
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  if(§§pop().toLowerCase() == "static")
                  {
                     §§push(§function§);
                     break;
                  }
                  §§push(param1);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(§§pop().toLowerCase() != "dynamic")
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr105);
               }
               return §§pop();
            }
            return §§pop();
         }
         addr41:
         §§push(§3f§);
         §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.mName);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + §§pop());
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + " invalid name = ");
                  if(_loc2_ && _loc2_)
                  {
                  }
                  §§goto(addr89);
               }
               §§push(param1);
            }
            §§push(§§pop() + §§pop());
         }
         addr89:
         §§pop().log(§§pop());
         if(_loc3_ || _loc2_)
         {
            §§push(§function§);
            if(_loc3_)
            {
               if(_loc3_ || this)
               {
                  if(_loc3_ || _loc2_)
                  {
                     return §§pop();
                  }
                  break loop0;
               }
               break loop1;
            }
         }
         else
         {
            addr105:
            return §;J§;
         }
         return §§pop();
      }
      
      public function §3g§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_ || param1)
         {
            this.§5!-§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(!_loc6_)
               {
                  if(_loc5_ || param1)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        break;
                     }
                     _loc4_ = param1.attributes()[_loc2_];
                     addr110:
                  }
                  this.§5!-§[_loc3_.toUpperCase()] = _loc4_;
                  while(true)
                  {
                     _loc2_++;
                  }
                  addr92:
               }
               while(_loc6_)
               {
                  §§goto(addr92);
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr110);
         }
      }
      
      public function §7?§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && _loc2_))
         {
            this.§&7§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(!(_loc6_ && param1))
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     this.§&7§[_loc3_.toUpperCase()] = _loc4_;
                     addr90:
                     addr115:
                     while(_loc5_ || param1)
                     {
                        _loc2_++;
                     }
                     while(true)
                     {
                        _loc4_ = param1.attributes()[_loc2_];
                        continue loop1;
                     }
                  }
               }
               while(!_loc5_)
               {
                  §§goto(addr90);
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr115);
         }
      }
      
      public function §2!&§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§5!-§);
            loop0:
            for(; §§pop(); if(!(_loc2_ || _loc3_))
            {
               continue;
            },§§push(param1),if(_loc2_ || _loc3_)
            {
               if(§§pop()[§§pop()])
               {
                  if(_loc3_)
                  {
                     §§goto(addr75);
                  }
                  addr70:
                  addr72:
                  return §§pop()[param1];
                  §§push(this.§5!-§);
               }
               addr24:
               §§push(1);
               if(_loc2_ || _loc3_)
               {
                  return §§pop();
               }
               addr124:
               return §§pop();
            },§§goto(addr72))
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(this.§5!-§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     continue loop1;
                     addr75:
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr24);
                        }
                        break loop0;
                     }
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr124);
            §§push(1);
         }
         §§goto(addr70);
      }
      
      public function §7N§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§&7§);
            loop0:
            for(; §§pop(); while(true)
            {
               if(!(_loc3_ || param1))
               {
                  continue loop0;
               }
               addr81:
               return §§pop()[§§pop()];
               §§push(param1);
            })
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  loop2:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     §§push(this.§&7§);
                     if(_loc2_ && param1)
                     {
                        break;
                     }
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§goto(addr81);
                     }
                     if(!§§pop()[§§pop()])
                     {
                        addr20:
                        §§push(1);
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        addr105:
                        return §§pop();
                     }
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     while(true)
                     {
                        §§push(this.§&7§);
                        break loop2;
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr105);
            §§push(1);
         }
         §§goto(addr61);
      }
   }
}
