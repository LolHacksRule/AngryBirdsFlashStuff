package §]";§
{
   import §"J§.b2Body;
   import §6]§.§,"0§;
   
   public class §0A§
   {
      
      public static const §!"3§:int = 0;
      
      public static const §7"=§:int;
      
      public static const §6g§:int;
      
      public static const §<!#§:int;
      
      public static const §3U§:int = 1;
      
      public static const §8!@§:int = 2;
      
      public static const §4&§:int = 3;
      
      public static const §'>§:int = 4;
      
      public static const §1a§:int = 5;
      
      public static const §`!l§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!"3§ = 0;
            while(true)
            {
               §7"=§ = b2Body.b2_staticBody;
            }
            addr137:
         }
         loop1:
         while(true)
         {
            §6g§ = b2Body.b2_kinematicBody;
            while(true)
            {
               §<!#§ = b2Body.b2_dynamicBody;
               loop3:
               for(; _loc1_; while(!(_loc2_ && _loc1_))
               {
                  §'>§ = 4;
                  §§goto(addr68);
               })
               {
                  §3U§ = 1;
                  loop4:
                  while(!_loc2_)
                  {
                     §8!@§ = 2;
                     while(!_loc2_)
                     {
                        §4&§ = 3;
                        continue loop3;
                        addr70:
                        if(!(_loc2_ && §0A§))
                        {
                           §1a§ = 5;
                           do
                           {
                              §`!l§ = 6;
                           }
                           while(!(_loc1_ || _loc2_));
                           
                           addr77:
                           if(_loc1_ || _loc1_)
                           {
                              if(!(_loc2_ && §0A§))
                              {
                                 return;
                              }
                              continue loop4;
                              continue loop4;
                           }
                           addr68:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr70);
                              §§goto(addr77);
                           }
                        }
                     }
                     continue loop1;
                  }
                  §§goto(addr137);
               }
            }
         }
      }
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §@]§:Array;
      
      public var §4p§:Array;
      
      public function §0A§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.mValues = new Array();
                  addr232:
                  while(true)
                  {
                     §§push(this.mValues);
                     addr204:
                     while(true)
                     {
                        §§push(§!"3§);
                        addr205:
                        while(true)
                        {
                           §§pop()[§§pop()] = this.§#!p§(param2);
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr98);
         }
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §#!p§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            for(; §§pop().toLowerCase() != "kinetic"; loop2:
            while(true)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop().toLowerCase() != "static")
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           if(§§pop().toLowerCase() == "dynamic")
                           {
                              if(_loc2_ || param1)
                              {
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§goto(addr94);
                                 }
                                 §§push(§<!#§);
                              }
                              else
                              {
                                 do
                                 {
                                    break loop3;
                                    §§pop().log(§§pop());
                                 }
                                 while(!_loc2_);
                                 
                                 if(_loc3_)
                                 {
                                    break loop2;
                                 }
                                 §§push(§7"=§);
                                 if(!_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 addr93:
                              }
                              if(!(_loc3_ && _loc2_))
                              {
                                 return §§pop();
                              }
                              addr109:
                              if(!_loc3_)
                              {
                                 return §§pop();
                              }
                              addr128:
                              return §§pop();
                           }
                           break;
                        }
                        continue loop2;
                     }
                     while(true)
                     {
                        §§push(§,"0§);
                        §§push("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() + " invalid name = ");
                           if(_loc2_)
                           {
                              addr48:
                              §§push(§§pop() + param1);
                           }
                           §§goto(addr50);
                        }
                        §§goto(addr48);
                        §§goto(addr93);
                     }
                  }
                  break;
               }
               continue loop0;
            },if(!_loc2_)
            {
               break;
            },§§goto(addr109),§§push(§7"=§))
            {
               while(true)
               {
                  §§push(param1);
                  continue loop0;
               }
            }
            §§goto(addr128);
            §§push(§6g§);
         }
         §§goto(addr84);
      }
      
      public function §#S§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            this.§@]§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(_loc5_ || _loc2_)
               {
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     _loc4_ = param1.attributes()[_loc2_];
                     addr80:
                     while(true)
                     {
                        this.§@]§[_loc3_.toUpperCase()] = _loc4_;
                     }
                     addr80:
                     addr100:
                  }
                  while(true)
                  {
                     _loc2_++;
                     §§goto(addr80);
                  }
               }
               while(_loc6_)
               {
                  §§goto(addr80);
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr100);
         }
      }
      
      public function §9'§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            this.§4p§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(!(_loc6_ && param1))
               {
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_++;
                     addr95:
                     while(true)
                     {
                        this.§4p§[_loc3_.toUpperCase()] = _loc4_;
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(!(_loc6_ && this))
                  {
                     if(_loc5_ || _loc3_)
                     {
                        break;
                     }
                     addr115:
                     while(true)
                     {
                        _loc4_ = param1.attributes()[_loc2_];
                     }
                  }
                  §§goto(addr95);
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr115);
         }
      }
      
      public function §7!D§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§@]§);
            loop0:
            for(; §§pop(); if(_loc3_ && _loc2_)
            {
               continue;
            },§§push(param1),if(!(_loc3_ && _loc2_))
            {
               if(§§pop()[§§pop()])
               {
                  if(!_loc2_)
                  {
                     §§goto(addr82);
                  }
                  if(!(_loc2_ || _loc3_))
                  {
                     break;
                  }
                  addr77:
                  addr79:
                  return §§pop()[param1];
                  §§push(this.§@]§);
               }
               addr19:
               §§push(1);
               if(!(_loc3_ && param1))
               {
                  return §§pop();
               }
               addr114:
               return §§pop();
            },§§goto(addr79))
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
                     §§push(this.§@]§);
                     if(_loc3_ && this)
                     {
                        break;
                     }
                     continue loop0;
                     addr82:
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc2_)
                        {
                           §§goto(addr19);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr114);
            §§push(1);
         }
         §§goto(addr77);
      }
      
      public function §^y§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§4p§);
            loop0:
            for(; §§pop(); if(_loc3_ && _loc3_)
            {
               continue;
            },§§push(param1),if(_loc2_ || this)
            {
               if(§§pop()[§§pop()])
               {
                  if(_loc2_ || this)
                  {
                     §§goto(addr70);
                  }
                  if(_loc3_ && _loc2_)
                  {
                     §§goto(addr90);
                  }
               }
               §§push(1);
               if(!_loc3_)
               {
                  return §§pop();
               }
               §§goto(addr119);
            },§§goto(addr80))
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  while(true)
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           §§push(this.§4p§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr80:
                        return §§pop()[param1];
                        addr79:
                        addr114:
                     }
                     break loop0;
                     addr70:
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     §§goto(addr79);
                     §§push(this.§4p§);
                  }
                  §§goto(addr119);
               }
            }
            addr119:
            return §§pop();
            §§push(1);
         }
         §§goto(addr114);
      }
   }
}
