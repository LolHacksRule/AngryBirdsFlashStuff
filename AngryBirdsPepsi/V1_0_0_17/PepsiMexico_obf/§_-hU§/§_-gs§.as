package §_-HU§
{
   import §_-Iw§.b2Body;
   import §_-e3§.§_-54§;
   
   public class §_-gs§
   {
      
      public static const §_-9b§:int = 0;
      
      public static const §_-AZ§:int;
      
      public static const §_-a1§:int;
      
      public static const §_-Is§:int;
      
      public static const §_-en§:int = 1;
      
      public static const §_-bc§:int = 2;
      
      public static const §_-4o§:int = 3;
      
      public static const §_-Zy§:int = 4;
      
      public static const §_-wQ§:int = 5;
      
      public static const §_-ki§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-gs§))
         {
            §_-AZ§ = b2Body.b2_staticBody;
            §_-a1§ = b2Body.b2_kinematicBody;
            §_-Is§ = b2Body.b2_dynamicBody;
         }
      }
      
      public var mName:String;
      
      public var §_-qb§:Array;
      
      public var §_-Dy§:Array;
      
      public var §_-pO§:Array;
      
      public function §_-gs§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            super();
            this.mName = param1;
            if(!(_loc10_ && param3))
            {
               this.§_-qb§ = new Array();
               this.§_-qb§[§_-9b§] = this.§_-yf§(param2);
               if(_loc9_ || param3)
               {
                  §§push(this.§_-qb§);
                  §§push(§_-en§);
                  §§push(param3);
                  if(!_loc10_)
                  {
                     §§pop()[§§pop()] = §§pop();
                     §§push(this.§_-qb§);
                     if(!_loc10_)
                     {
                        §§push(§_-bc§);
                        §§push(param4);
                        if(!(_loc10_ && param3))
                        {
                           §§pop()[§§pop()] = §§pop();
                           §§push(this.§_-qb§);
                           if(_loc9_)
                           {
                              §§push(§_-4o§);
                              §§push(param5);
                              if(_loc9_ || param1)
                              {
                                 addr86:
                                 §§pop()[§§pop()] = §§pop();
                                 §§goto(addr89);
                              }
                              §§goto(addr118);
                           }
                           addr89:
                           §§push(this.§_-qb§);
                           §§push(§_-Zy§);
                           if(!_loc10_)
                           {
                              §§push(param6);
                              if(_loc9_)
                              {
                                 addr95:
                                 §§pop()[§§pop()] = §§pop();
                                 §§push(this.§_-qb§);
                                 if(!_loc10_)
                                 {
                                    addr100:
                                    §§push(§_-wQ§);
                                    if(!_loc10_)
                                    {
                                       §§goto(addr103);
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr118);
                           }
                           addr103:
                           §§push(param7);
                           if(_loc9_ || this)
                           {
                              addr118:
                              §§pop()[§§pop()] = §§pop();
                              addr122:
                              §§push(this.§_-qb§);
                              §§push(§_-ki§);
                              §§push(param8);
                           }
                           §§pop()[§§pop()] = §§pop();
                           return;
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr95);
               }
               §§goto(addr118);
            }
            §§goto(addr95);
         }
         §§goto(addr86);
      }
      
      public function getValue(param1:int) : *
      {
         return this.§_-qb§[param1];
      }
      
      private function §_-yf§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && this))
         {
            if(§§pop().toLowerCase() == "kinetic")
            {
               if(!_loc3_)
               {
                  §§push(§_-a1§);
                  if(!(_loc3_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  §§push(§_-Is§);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
            }
            else
            {
               §§push(param1);
               if(_loc2_)
               {
                  addr38:
                  if(§§pop().toLowerCase() == "static")
                  {
                     §§push(§_-AZ§);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr104);
                  }
                  else
                  {
                     §§push(param1);
                  }
                  §§goto(addr104);
               }
               if(§§pop().toLowerCase() == "dynamic")
               {
                  if(!_loc3_)
                  {
                     §§goto(addr63);
                  }
                  §§goto(addr104);
               }
               §§push(§_-54§);
               §§push("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() + " invalid name = ");
                  if(!(_loc3_ && _loc3_))
                  {
                     addr100:
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  addr104:
                  return §§pop();
                  §§push(§_-AZ§);
               }
               §§goto(addr100);
            }
            §§goto(addr104);
         }
         §§goto(addr38);
      }
      
      public function §_-IU§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc2_)
         {
            this.§_-Dy§ = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(!(_loc5_ && _loc2_))
            {
               _loc4_ = param1.attributes()[_loc2_];
               if(_loc6_ || param1)
               {
                  this.§_-Dy§[_loc3_.toUpperCase()] = _loc4_;
                  if(_loc5_)
                  {
                     break;
                  }
                  _loc2_++;
                  if(_loc5_ && _loc2_)
                  {
                     break;
                  }
               }
            }
         }
      }
      
      public function §_-CB§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            this.§_-pO§ = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(!_loc5_)
            {
               break;
            }
            _loc4_ = param1.attributes()[_loc2_];
            if(!(_loc6_ && _loc2_))
            {
               this.§_-pO§[_loc3_.toUpperCase()] = _loc4_;
               if(_loc6_ && this)
               {
                  break;
               }
            }
            _loc2_++;
            if(!(_loc5_ || this))
            {
               break;
            }
         }
      }
      
      public function §_-QL§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§_-Dy§);
            if(!(_loc2_ && param1))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(1);
                     if(_loc3_ || param1)
                     {
                        return §§pop();
                     }
                     §§goto(addr108);
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  if(_loc3_ || this)
                  {
                     addr74:
                     §§push(this.§_-Dy§);
                     if(_loc3_ || this)
                     {
                        §§push(param1);
                        if(!_loc2_)
                        {
                           if(§§pop()[§§pop()])
                           {
                              if(!(_loc2_ && this))
                              {
                                 §§goto(addr105);
                              }
                           }
                           addr108:
                           return §§pop();
                           §§push(1);
                        }
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr105);
            }
            addr105:
            return this.§_-Dy§[param1];
         }
         §§goto(addr74);
      }
      
      public function §_-ek§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-pO§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr27:
                     §§push(1);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr53);
                  }
                  §§goto(addr82);
               }
               else
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  if(_loc2_ || _loc2_)
                  {
                     addr53:
                     §§push(this.§_-pO§);
                     if(_loc2_)
                     {
                        §§push(param1);
                        if(_loc2_ || param1)
                        {
                           if(§§pop()[§§pop()])
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr79);
                              }
                           }
                           addr82:
                           return 1;
                        }
                     }
                     §§goto(addr79);
                  }
               }
               §§goto(addr79);
            }
            addr79:
            return this.§_-pO§[param1];
         }
         §§goto(addr27);
      }
   }
}
