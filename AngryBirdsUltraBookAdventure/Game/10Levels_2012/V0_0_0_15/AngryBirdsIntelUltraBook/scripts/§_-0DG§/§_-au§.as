package §_-0DG§
{
   import §_-0BH§.§_-FK§;
   import §_-aU§.b2Body;
   
   public class §_-au§
   {
      
      public static const §_-dp§:int = 0;
      
      public static const §_-cU§:int;
      
      public static const §_-05r§:int;
      
      public static const §_-a0§:int;
      
      public static const §_-Tu§:int = 1;
      
      public static const §_-kd§:int = 2;
      
      public static const §_-lN§:int = 3;
      
      public static const §_-078§:int = 4;
      
      public static const §_-Ro§:int = 5;
      
      public static const §_-9§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-dp§ = 0;
            loop0:
            while(true)
            {
               §_-cU§ = b2Body.b2_staticBody;
               while(true)
               {
                  §_-05r§ = b2Body.b2_kinematicBody;
                  continue loop0;
                  addr29:
                  if(_loc1_ || _loc1_)
                  {
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §_-a0§ = b2Body.b2_dynamicBody;
            §§goto(addr124);
         }
      }
      
      public var mName:String;
      
      public var §_-zN§:Array;
      
      public var §_-Zi§:Array;
      
      public var §_-AB§:Array;
      
      public function §_-au§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§_-zN§ = new Array();
                  while(true)
                  {
                     §§push(this.§_-zN§);
                     while(true)
                     {
                        §§push(§_-dp§);
                        while(true)
                        {
                           §§pop()[§§pop()] = this.§implements§(param2);
                           while(_loc10_)
                           {
                              §§push(this.§_-zN§);
                              loop6:
                              while(true)
                              {
                                 §§push(§_-Tu§);
                                 addr208:
                                 while(true)
                                 {
                                    §§push(param3);
                                    addr209:
                                    while(true)
                                    {
                                       §§pop()[§§pop()] = §§pop();
                                       addr210:
                                       while(true)
                                       {
                                          §§push(this.§_-zN§);
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                        if(!(_loc10_ || param1))
                        {
                           continue;
                        }
                        §§goto(addr72);
                        §§push(§_-Ro§);
                     }
                     if(_loc10_ || param2)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-zN§[param1];
      }
      
      private function §implements§(param1:String) : int
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
                  addr152:
                  §§push(§_-05r§);
               }
               else
               {
                  while(true)
                  {
                     §§push(param1);
                     loop2:
                     while(§§pop().toLowerCase() != "static")
                     {
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     addr139:
                     return §_-cU§;
                  }
                  addr133:
               }
               addr153:
               return §§pop();
            }
         }
         §§goto(addr147);
      }
      
      public function §return§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            this.§_-Zi§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     _loc4_ = param1.attributes()[_loc2_];
                     addr96:
                  }
                  this.§_-Zi§[_loc3_.toUpperCase()] = _loc4_;
                  while(true)
                  {
                     _loc2_++;
                  }
                  addr78:
               }
               while(!_loc6_)
               {
                  §§goto(addr78);
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr96);
         }
      }
      
      public function §_-hA§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && this))
         {
            this.§_-AB§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(!_loc6_)
               {
                  if(_loc5_)
                  {
                     if(_loc5_ || param1)
                     {
                        break;
                     }
                     loop1:
                     while(_loc6_ && param1)
                     {
                        while(true)
                        {
                           _loc4_ = param1.attributes()[_loc2_];
                           continue loop1;
                        }
                     }
                     this.§_-AB§[_loc3_.toUpperCase()] = _loc4_;
                  }
                  _loc2_++;
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr110);
         }
      }
      
      public function §_-Ht§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§_-Zi§);
            loop0:
            for(; §§pop(); if(_loc3_ && this)
            {
               continue;
            },§§push(param1),if(!_loc3_)
            {
               if(§§pop()[§§pop()])
               {
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        addr92:
                        §§goto(addr24);
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     addr84:
                     §§goto(addr24);
                  }
                  §§goto(addr77);
                  §§push(this.§_-Zi§);
               }
               addr24:
               while(true)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this.§_-Zi§);
                     if(_loc3_ && _loc2_)
                     {
                        return §§pop()[param1];
                     }
                     addr77:
                     continue loop0;
                  }
                  continue loop1;
               }
               §§push(1);
               if(_loc2_)
               {
                  return §§pop();
               }
               addr104:
               return §§pop();
            },§§goto(addr77))
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  §§goto(addr92);
               }
            }
            §§goto(addr104);
            §§push(1);
         }
         §§goto(addr84);
      }
      
      public function §_-Zm§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§_-AB§);
            loop0:
            do
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop().toUpperCase());
                     }
                     param1 = §§pop();
                     while(true)
                     {
                        §§push(this.§_-AB§);
                        if(!(_loc2_ || this))
                        {
                           break;
                        }
                        §§push(param1);
                        if(_loc3_ && param1)
                        {
                           §§goto(addr92);
                        }
                        if(§§pop()[§§pop()])
                        {
                           if(_loc3_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 addr24:
                                 §§push(1);
                                 if(!_loc3_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr118:
                                 return 1;
                              }
                              return §§pop();
                           }
                           continue;
                        }
                        §§goto(addr24);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr118);
            }
            while(_loc3_ && _loc3_);
            
            addr92:
            return §§pop()[§§pop()];
            §§push(param1);
         }
         §§goto(addr120);
      }
   }
}
