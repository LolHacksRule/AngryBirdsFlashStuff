package §!r§
{
   import §6!H§.b2Vec2;
   import §>^§.§!6§;
   
   public class §%!9§
   {
      
      public static var §0!%§:Array;
       
      
      public function §%!9§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §5!i§(param1:XMLList) : void
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
            §0!%§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(_loc12_ || §%!9§)
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
                           if(!(_loc13_ && _loc3_))
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              if(_loc12_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc12_ || param1))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc2_.attribute("shape").length() <= 0)
                                             {
                                                if(!(_loc13_ && §%!9§))
                                                {
                                                   break loop3;
                                                }
                                                §§goto(addr340);
                                             }
                                             break;
                                          }
                                          if(_loc12_ || _loc2_)
                                          {
                                             §§push(_loc2_.@id);
                                             loop6:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc12_ || §%!9§))
                                                {
                                                   break;
                                                }
                                                §§push(_loc2_.@shape);
                                                if(_loc13_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                _loc4_ = §§pop();
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   if(false)
                                                   {
                                                      addr311:
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.@shape == "NONE");
                                                         if(_loc12_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr325:
                                                         addr325:
                                                         addr126:
                                                         addr325:
                                                         while(true)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            continue loop3;
                                                         }
                                                         §!6§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
                                                         loop12:
                                                         for(; _loc12_ || §%!9§; while(true)
                                                         {
                                                            §`!]§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                            if(!(_loc13_ && _loc3_))
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop12;
                                                         })
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               addr340:
                                                               continue;
                                                            }
                                                            addr347:
                                                            addr347:
                                                            addr347:
                                                            while(true)
                                                            {
                                                               addr360:
                                                               §!6§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                                               break loop12;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            break loop5;
                                                            §§goto(addr331);
                                                         }
                                                         addr331:
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc2_.attribute("height").length() <= 0)
                                                         {
                                                            if(_loc12_ || _loc2_)
                                                            {
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      continue loop0;
                                                      addr311:
                                                      addr81:
                                                   }
                                                   else
                                                   {
                                                      _loc5_ = new Array();
                                                      if(!(_loc13_ && _loc2_))
                                                      {
                                                         var _loc10_:int = 0;
                                                         if(_loc12_ || param1)
                                                         {
                                                            var _loc11_:* = _loc2_.Vertex;
                                                            addr210:
                                                            for each(_loc6_ in _loc11_)
                                                            {
                                                               if(_loc12_)
                                                               {
                                                                  _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                         }
                                                         if(_loc12_ || §%!9§)
                                                         {
                                                            if(_loc4_ != "CIRCLE")
                                                            {
                                                               §4H§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                               if(_loc12_)
                                                               {
                                                                  if(_loc12_ || _loc3_)
                                                                  {
                                                                     addr241:
                                                                     if(false)
                                                                     {
                                                                        addr243:
                                                                        §"!!§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr256:
                                                                           _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                           addr265:
                                                                           §§goto(addr243);
                                                                        }
                                                                        addr252:
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr265);
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr347);
                                                }
                                                §§goto(addr360);
                                             }
                                             if(true)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr311);
                                          }
                                          §§goto(addr325);
                                          §§goto(addr340);
                                       }
                                       addr341:
                                       if(_loc2_.attribute("width").length() <= 0)
                                       {
                                          §§goto(addr347);
                                       }
                                       §§goto(addr311);
                                    }
                                 }
                                 continue loop2;
                                 addr116:
                              }
                              §§goto(addr126);
                           }
                           break;
                        }
                        §!6§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                        if(_loc12_)
                        {
                           §§goto(addr341);
                        }
                        §§goto(addr325);
                     }
                     §§goto(addr116);
                  }
               }
            }
            §§goto(addr347);
         }
      }
      
      public static function §`!]§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            §0!%§[§0!%§.length] = new §2k§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §4H§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§2k§;
         (_loc5_ = new §2k§(param1,param2,-1,-1,param4)).§?!&§(param3);
         if(!(_loc7_ && param3))
         {
            _loc5_.§7!,§();
         }
         do
         {
            §0!%§[§0!%§.length] = _loc5_;
         }
         while(!(_loc6_ || param1));
         
      }
      
      public static function §"!!§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§2k§;
         (_loc5_ = new §2k§(param1,param2,param3,param3)).§?!&§(param4);
         if(!(_loc6_ && param2))
         {
            §0!%§[§0!%§.length] = _loc5_;
         }
      }
      
      public static function §'!3§(param1:String) : §2k§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §0!%§.length)
            {
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §!6§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
               if(!_loc4_)
               {
                  continue;
               }
               if(!(_loc3_ && §%!9§))
               {
                  return null;
               }
            }
            else if((§0!%§[_loc2_] as §2k§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         return §2k§(§0!%§[_loc2_]);
      }
   }
}
