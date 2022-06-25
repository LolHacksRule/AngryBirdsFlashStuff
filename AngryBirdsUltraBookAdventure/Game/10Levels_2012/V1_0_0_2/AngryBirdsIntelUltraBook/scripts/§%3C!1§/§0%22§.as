package §<!1§
{
   import §^_§.§!>§;
   import §`w§.b2Body;
   
   public class §0"§
   {
      
      public static const §5"§:int = 0;
      
      public static const §5P§:int;
      
      public static const §^!U§:int;
      
      public static const §#t§:int;
      
      public static const §+!7§:int = 1;
      
      public static const §#H§:int = 2;
      
      public static const §-b§:int = 3;
      
      public static const §for §:int = 4;
      
      public static const §;!j§:int = 5;
      
      public static const §@![§:int = 6;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5"§ = 0;
            loop0:
            while(true)
            {
               §5P§ = b2Body.b2_staticBody;
               while(true)
               {
                  §^!U§ = b2Body.b2_kinematicBody;
                  while(!(_loc1_ && _loc2_))
                  {
                     §#t§ = b2Body.b2_dynamicBody;
                     while(_loc2_ || _loc2_)
                     {
                        §+!7§ = 1;
                        continue loop0;
                        addr63:
                        if(!(_loc1_ && §0"§))
                        {
                           §for § = 4;
                           loop7:
                           while(!_loc1_)
                           {
                              while(true)
                              {
                                 §;!j§ = 5;
                                 do
                                 {
                                    §@![§ = 6;
                                 }
                                 while(!_loc2_);
                                 
                                 if(!_loc2_)
                                 {
                                    continue loop7;
                                 }
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 addr75:
                                 while(_loc2_)
                                 {
                                    §§goto(addr63);
                                 }
                                 while(true)
                                 {
                                    §-b§ = 3;
                                    §§goto(addr51);
                                 }
                                 addr51:
                              }
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public var mName:String;
      
      public var §]!Z§:Array;
      
      public var §!V§:Array;
      
      public var §"i§:Array;
      
      public function §0"§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param2))
         {
            super();
            while(true)
            {
               this.mName = param1;
               addr232:
               while(true)
               {
                  this.§]!Z§ = new Array();
               }
               while(!(_loc9_ && param3))
               {
                  §§push(this.§]!Z§);
                  loop10:
                  while(true)
                  {
                     §§push(§#H§);
                     addr182:
                     while(true)
                     {
                        §§push(param4);
                        addr183:
                        while(true)
                        {
                           §§pop()[§§pop()] = §§pop();
                           addr184:
                           while(true)
                           {
                              §§push(this.§]!Z§);
                              continue loop10;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr227);
      }
      
      public function getValue(param1:int) : *
      {
         return this.§]!Z§[param1];
      }
      
      private function §6!u§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().toLowerCase() == "kinetic")
               {
                  if(_loc2_)
                  {
                     addr151:
                     §§push(§^!U§);
                     break;
                  }
                  while(true)
                  {
                     addr137:
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     addr144:
                     loop4:
                     while(true)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           if(§§pop().toLowerCase() != "dynamic")
                           {
                              while(true)
                              {
                                 §§push(§!>§);
                                 §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
                                 if(_loc2_ || param1)
                                 {
                                    §§push(this.mName);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + " invalid name = ");
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr74:
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().log(§§pop());
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             if(_loc3_ && param1)
                                             {
                                                §§push(§5P§);
                                                break;
                                             }
                                             addr135:
                                             continue;
                                          }
                                          if(_loc2_)
                                          {
                                             §§push(§5P§);
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             addr102:
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                return §§pop();
                                             }
                                             break loop0;
                                          }
                                          addr94:
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr137);
                                       }
                                    }
                                 }
                                 §§goto(addr74);
                              }
                              return §§pop();
                           }
                           §§goto(addr94);
                        }
                        else
                        {
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(§§pop().toLowerCase() == "static")
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           addr130:
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr102);
                     §§push(§#t§);
                  }
               }
               while(true)
               {
                  §§goto(addr130);
               }
            }
            return §§pop();
         }
         §§goto(addr151);
      }
      
      public function §]^§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && _loc2_))
         {
            this.§!V§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(_loc5_ || _loc3_)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_++;
                     addr100:
                     while(true)
                     {
                        this.§!V§[_loc3_.toUpperCase()] = _loc4_;
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(_loc5_ || _loc2_)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     addr110:
                     while(true)
                     {
                        _loc4_ = param1.attributes()[_loc2_];
                     }
                  }
                  §§goto(addr100);
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr110);
         }
      }
      
      public function §?I§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.§"i§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  loop1:
                  while(!(_loc5_ || param1))
                  {
                     while(true)
                     {
                        _loc4_ = param1.attributes()[_loc2_];
                        continue loop1;
                     }
                  }
                  this.§"i§[_loc3_.toUpperCase()] = _loc4_;
                  while(true)
                  {
                     _loc2_++;
                  }
                  addr75:
               }
               while(!_loc5_)
               {
                  §§goto(addr75);
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr100);
         }
      }
      
      public function §!^§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§!V§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  loop2:
                  while(true)
                  {
                     if(_loc2_ && param1)
                     {
                        continue loop1;
                     }
                     if(!(_loc3_ || _loc2_))
                     {
                        break loop0;
                     }
                     while(true)
                     {
                        §§push(this.§!V§);
                        if(_loc3_)
                        {
                           §§push(param1);
                           if(!(_loc2_ && _loc3_))
                           {
                              if(§§pop()[§§pop()])
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    continue loop2;
                                 }
                              }
                              §§push(1);
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                              break loop2;
                           }
                           §§goto(addr71);
                        }
                        addr68:
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr71:
                     return §§pop()[§§pop()];
                     §§push(param1);
                  }
                  §§goto(addr110);
               }
            }
            addr110:
            return §§pop();
            §§push(1);
         }
         §§goto(addr105);
      }
      
      public function §`!!§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§"i§);
            for(; §§pop(); if(_loc2_ && _loc3_)
            {
               continue;
            },§§push(param1),if(_loc3_)
            {
               if(§§pop()[§§pop()])
               {
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        addr101:
                        §§goto(addr110);
                     }
                     addr25:
                     §§push(1);
                     if(_loc3_ || _loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr83);
                  §§push(this.§"i§);
               }
               §§goto(addr25);
            },§§goto(addr83))
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  §§goto(addr101);
               }
            }
         }
         addr110:
         while(true)
         {
            if(_loc3_)
            {
               if(_loc2_)
               {
                  break loop0;
               }
               §§push(this.§"i§);
               if(!(_loc3_ || _loc3_))
               {
                  return §§pop()[param1];
               }
               addr83:
               continue loop0;
            }
            continue loop1;
         }
         1;
         return §§pop();
      }
   }
}
