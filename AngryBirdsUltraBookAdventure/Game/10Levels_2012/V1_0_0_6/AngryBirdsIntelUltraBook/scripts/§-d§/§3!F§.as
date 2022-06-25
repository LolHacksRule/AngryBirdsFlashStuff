package §-d§
{
   import §"x§.§-8§;
   import §#V§.b2Body;
   
   public class §3!F§
   {
      
      public static const §]!,§:int = 0;
      
      public static const §!!k§:int;
      
      public static const §,s§:int;
      
      public static const §0§:int;
      
      public static const §5C§:int = 1;
      
      public static const §"!E§:int = 2;
      
      public static const §+!Q§:int = 3;
      
      public static const §[!=§:int = 4;
      
      public static const §!x§:int = 5;
      
      public static const §%!z§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §3!F§))
         {
            §]!,§ = 0;
            loop0:
            while(true)
            {
               §!!k§ = b2Body.b2_staticBody;
               while(true)
               {
                  §,s§ = b2Body.b2_kinematicBody;
                  loop2:
                  while(true)
                  {
                     §0§ = b2Body.b2_dynamicBody;
                     while(true)
                     {
                        §5C§ = 1;
                        continue loop2;
                        addr82:
                        loop7:
                        while(!(_loc2_ && §3!F§))
                        {
                           §[!=§ = 4;
                           while(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 §!x§ = 5;
                                 while(_loc1_ || _loc2_)
                                 {
                                    §%!z§ = 6;
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr39);
                                 }
                                 continue loop7;
                              }
                              continue loop2;
                              if(!(_loc2_ && _loc2_))
                              {
                                 return;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  if(_loc1_ || §3!F§)
                  {
                     §"!E§ = 2;
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §+!Q§ = 3;
            §§goto(addr82);
         }
      }
      
      public var mName:String;
      
      public var §>!x§:Array;
      
      public var §+!J§:Array;
      
      public var §%!a§:Array;
      
      public function §3!F§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§>!x§ = new Array();
                  while(true)
                  {
                     §§push(this.§>!x§);
                     loop3:
                     while(true)
                     {
                        §§push(§]!,§);
                        addr201:
                        while(true)
                        {
                           §§pop()[§§pop()] = this.§=!U§(param2);
                           addr205:
                           while(true)
                           {
                              §§push(this.§>!x§);
                              addr191:
                              while(true)
                              {
                                 §§push(§5C§);
                                 addr192:
                                 while(true)
                                 {
                                    §§push(param3);
                                    addr193:
                                    while(true)
                                    {
                                       §§pop()[§§pop()] = §§pop();
                                       addr194:
                                       while(_loc9_)
                                       {
                                          §§push(this.§>!x§);
                                          continue loop3;
                                       }
                                       continue loop0;
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
         §§goto(addr134);
      }
      
      public function getValue(param1:int) : *
      {
         return this.§>!x§[param1];
      }
      
      private function §=!U§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            loop0:
            while(§§pop().toLowerCase() != "kinetic")
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(§§pop().toLowerCase() != "static")
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_ && param1)
                              {
                                 continue loop2;
                              }
                              if(§§pop().toLowerCase() != "dynamic")
                              {
                                 while(true)
                                 {
                                    §§push(§-8§);
                                    §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(this.mName);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr75:
                                             §§push(§§pop() + " invalid name = ");
                                             if(_loc2_ || param1)
                                             {
                                                addr85:
                                                §§push(§§pop() + param1);
                                             }
                                          }
                                          §§pop().log(§§pop());
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       §§goto(addr85);
                                    }
                                    §§goto(addr75);
                                 }
                                 if(!_loc3_)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§!!k§);
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          return §§pop();
                                       }
                                       addr136:
                                       if(_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr111:
                                    if(_loc3_)
                                    {
                                       if(_loc3_ && _loc2_)
                                       {
                                          break loop0;
                                       }
                                       continue;
                                    }
                                    if(_loc3_)
                                    {
                                       break loop2;
                                    }
                                    return §0§;
                                 }
                                 return §§pop();
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr152);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr136);
               }
            }
            addr152:
            return §§pop();
            §§push(§,s§);
         }
         §§goto(addr127);
      }
      
      public function §9!]§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            this.§+!J§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(!_loc5_)
               {
                  if(_loc6_ || param1)
                  {
                     break;
                  }
                  _loc4_ = param1.attributes()[_loc2_];
                  loop3:
                  while(true)
                  {
                     this.§+!J§[_loc3_.toUpperCase()] = _loc4_;
                     addr81:
                     addr88:
                     while(!(_loc6_ || _loc3_))
                     {
                        continue loop3;
                     }
                     _loc2_++;
                  }
                  addr106:
               }
               while(_loc5_)
               {
                  §§goto(addr81);
                  §§goto(addr88);
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr106);
         }
      }
      
      public function §]W§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            this.§%!a§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(!(_loc5_ && _loc2_))
               {
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
                  _loc4_ = param1.attributes()[_loc2_];
                  loop3:
                  while(true)
                  {
                     this.§%!a§[_loc3_.toUpperCase()] = _loc4_;
                     addr91:
                     addr93:
                     while(_loc5_)
                     {
                        continue loop3;
                     }
                     _loc2_++;
                  }
                  addr111:
               }
               while(!(_loc6_ || param1))
               {
                  §§goto(addr91);
                  §§goto(addr93);
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr111);
         }
      }
      
      public function §[$§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§+!J§);
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(§§pop().toUpperCase());
                     }
                     param1 = §§pop();
                     while(true)
                     {
                        §§push(this.§+!J§);
                        if(_loc2_)
                        {
                           §§push(param1);
                           if(_loc2_)
                           {
                              if(§§pop()[§§pop()])
                              {
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc2_ || this))
                                 {
                                    continue loop1;
                                 }
                              }
                              §§push(1);
                              if(!_loc3_)
                              {
                                 return §§pop();
                              }
                              addr99:
                              return §§pop();
                           }
                           addr77:
                           return §§pop()[§§pop()];
                        }
                        break;
                     }
                     continue loop0;
                  }
               }
            }
            while(!_loc2_);
            
            §§goto(addr77);
            §§push(param1);
         }
         §§goto(addr99);
         §§push(1);
      }
      
      public function §70§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§%!a§);
            for(; §§pop(); if(!_loc2_)
            {
               continue;
            },§§push(param1),if(!(_loc3_ && param1))
            {
               if(§§pop()[§§pop()])
               {
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        addr97:
                        §§goto(addr109);
                     }
                     §§goto(addr69);
                     §§push(this.§%!a§);
                  }
                  if(!(_loc2_ || param1))
                  {
                     §§goto(addr90);
                  }
                  addr89:
               }
               §§push(1);
               if(_loc2_ || _loc3_)
               {
                  return §§pop();
               }
               §§goto(addr109);
            },§§goto(addr69))
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  §§goto(addr97);
               }
            }
            addr109:
            while(true)
            {
               if(_loc3_ && _loc3_)
               {
                  break loop0;
               }
               §§push(this.§%!a§);
               if(!_loc2_)
               {
                  return §§pop()[param1];
               }
               addr69:
               continue loop0;
            }
            return §§pop();
            §§push(1);
         }
         §§goto(addr89);
      }
   }
}
