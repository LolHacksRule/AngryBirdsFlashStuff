package §<!1§
{
   import §>H§.b2Vec2;
   import §^_§.§!>§;
   
   public class §5Q§
   {
      
      public static var §>"§:Array;
       
      
      public function §5Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §?g§(param1:XMLList) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(!_loc13_)
         {
            §>"§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(!_loc13_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           if(!(_loc12_ || param1))
                           {
                              break;
                           }
                           §§push(_loc2_.@shape == "POLYGON");
                           loop4:
                           while(_loc12_)
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop6:
                                    for(; _loc12_; while(true)
                                    {
                                       §§push(_loc2_.@shape == "NONE");
                                       if(!(_loc12_ || §5Q§))
                                       {
                                          break;
                                       }
                                       if(_loc13_)
                                       {
                                          continue loop4;
                                       }
                                    })
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          continue loop6;
                                          addr95:
                                          if(!(_loc12_ || param1))
                                          {
                                             continue;
                                          }
                                          addr102:
                                          §§push(_loc2_.@shape);
                                          if(_loc13_ && param1)
                                          {
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc13_)
                                                {
                                                   §§goto(addr95);
                                                }
                                                else
                                                {
                                                   addr265:
                                                   §§push(§!>§);
                                                   §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                                   if(!(_loc13_ && _loc2_))
                                                   {
                                                      §§push(§§pop() + _loc2_.@id);
                                                   }
                                                   §§pop().log(§§pop());
                                                   if(!_loc13_)
                                                   {
                                                      addr335:
                                                      if(_loc2_.attribute("width").length() <= 0)
                                                      {
                                                         addr341:
                                                         §§push(§!>§);
                                                         §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                         if(_loc12_)
                                                         {
                                                            §§push(§§pop() + _loc2_.@id);
                                                         }
                                                         §§pop().log(§§pop());
                                                         addr349:
                                                      }
                                                      if(_loc2_.attribute("height").length() <= 0)
                                                      {
                                                         addr307:
                                                         if(!_loc13_)
                                                         {
                                                            §§push(§!>§);
                                                            §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                                            if(!(_loc13_ && §5Q§))
                                                            {
                                                               §§push(§§pop() + _loc2_.@id);
                                                            }
                                                            §§pop().log(§§pop());
                                                            addr332:
                                                            if(!_loc13_)
                                                            {
                                                               addr281:
                                                               §2n§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                               if(!_loc13_)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     break loop3;
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               §§goto(addr332);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         §§goto(addr341);
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr341);
                                                }
                                             }
                                             continue;
                                             addr92:
                                          }
                                          _loc4_ = §§pop();
                                          if(_loc12_)
                                          {
                                             while(false)
                                             {
                                                continue loop6;
                                             }
                                             _loc5_ = new Array();
                                             if(!(_loc13_ && _loc3_))
                                             {
                                                var _loc10_:int = 0;
                                                if(_loc12_ || §5Q§)
                                                {
                                                   for each(_loc6_ in _loc2_.Vertex)
                                                   {
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                      }
                                                   }
                                                }
                                                if(!_loc13_)
                                                {
                                                   if(_loc4_ != "CIRCLE")
                                                   {
                                                      §1!u§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                      if(!(_loc13_ && _loc2_))
                                                      {
                                                         addr214:
                                                         if(false)
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §!!B§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                               addr223:
                                                               addr237:
                                                               while(true)
                                                               {
                                                                  if(!(_loc13_ && _loc2_))
                                                                  {
                                                                     if(!(_loc13_ && _loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr241:
                                                                     while(true)
                                                                     {
                                                                        _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr214);
                                             }
                                             §§goto(addr237);
                                             addr69:
                                          }
                                          else
                                          {
                                             §§goto(addr265);
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc2_.attribute("shape").length() <= 0)
                                       {
                                          if(_loc12_ || _loc3_)
                                          {
                                             §§goto(addr265);
                                          }
                                          §§goto(addr341);
                                       }
                                       break;
                                    }
                                    if(_loc12_)
                                    {
                                       §§goto(addr92);
                                       §§push(_loc2_.@id);
                                    }
                                    §§goto(addr341);
                                 }
                                 §§goto(addr335);
                              }
                              continue loop2;
                           }
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr335);
                     }
                     §§goto(addr110);
                  }
               }
            }
            §§goto(addr69);
         }
      }
      
      public static function §2n§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §>"§[§>"§.length] = new §2!W§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §1!u§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§2!W§;
         (_loc5_ = new §2!W§(param1,param2,-1,-1,param4)).§]!H§(param3);
         if(!_loc7_)
         {
            _loc5_.§#!9§();
         }
         do
         {
            §>"§[§>"§.length] = _loc5_;
         }
         while(_loc7_ && param3);
         
      }
      
      public static function §!!B§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§2!W§;
         (_loc5_ = new §2!W§(param1,param2,param3,param3)).§]!H§(param4);
         if(!_loc6_)
         {
            §>"§[§>"§.length] = _loc5_;
         }
      }
      
      public static function §@!P§(param1:String) : §2!W§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §>"§.length)
            {
               if(!_loc4_)
               {
                  if(_loc4_ && _loc3_)
                  {
                     addr70:
                     _loc2_++;
                     continue;
                  }
                  §§push(§!>§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(_loc3_)
               {
                  break;
               }
               continue;
            }
            if((§>"§[_loc2_] as §2!W§).mName.toLowerCase() == param1.toLowerCase())
            {
               §§goto(addr85);
            }
            §§goto(addr70);
         }
         if(!_loc4_)
         {
            return null;
         }
         addr85:
         return §2!W§(§>"§[_loc2_]);
      }
   }
}
