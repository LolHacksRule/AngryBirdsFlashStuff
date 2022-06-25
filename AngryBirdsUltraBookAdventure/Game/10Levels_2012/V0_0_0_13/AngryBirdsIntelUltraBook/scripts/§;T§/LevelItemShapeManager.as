package §;T§
{
   import §&L§.b2Vec2;
   import §6b§.Log;
   
   public class LevelItemShapeManager
   {
      
      public static var §74§:Array;
       
      
      public function LevelItemShapeManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §0!J§(param1:XMLList) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(!(_loc12_ && _loc3_))
         {
            §74§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(_loc13_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_.@shape == "POLYGON");
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr88:
                                       if(!(_loc12_ && LevelItemShapeManager))
                                       {
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             addr103:
                                             §§push(Boolean(§§pop()));
                                             if(_loc13_)
                                             {
                                                continue loop1;
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc12_ && param1)
                                                {
                                                   continue loop5;
                                                }
                                                §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.@shape == "NONE");
                                                      if(_loc13_)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  if(_loc12_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc13_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr112:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc2_.attribute("shape").length() <= 0)
                                                                     {
                                                                        if(_loc13_ || param1)
                                                                        {
                                                                           §§push(Log);
                                                                           §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                                                           if(_loc13_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() + _loc2_.@id);
                                                                           }
                                                                           §§pop().log(§§pop());
                                                                           if(_loc13_ || LevelItemShapeManager)
                                                                           {
                                                                              §§goto(addr326);
                                                                           }
                                                                           §§goto(addr350);
                                                                        }
                                                                        §§goto(addr405);
                                                                     }
                                                                     break;
                                                                  }
                                                                  if(_loc12_ && LevelItemShapeManager)
                                                                  {
                                                                     addr326:
                                                                     break;
                                                                  }
                                                                  §§push(_loc2_.@id);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     if(!_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc13_ || _loc2_))
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                     §§push(_loc2_.@shape);
                                                                     if(!(_loc13_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     if(_loc12_)
                                                                     {
                                                                        addr350:
                                                                        if(false)
                                                                        {
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_.attribute("height").length() <= 0)
                                                                              {
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§push(Log);
                                                                                       §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                                                                       if(!(_loc12_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + _loc2_.@id);
                                                                                       }
                                                                                       §§pop().log(§§pop());
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             break loop14;
                                                                                          }
                                                                                          break;
                                                                                          addr327:
                                                                                          while(true)
                                                                                          {
                                                                                             §,!]§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                                                             if(!(_loc13_ || param1))
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             §§goto(addr350);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Log);
                                                                                          §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc2_.@id);
                                                                                          }
                                                                                          §§pop().log(§§pop());
                                                                                       }
                                                                                       addr395:
                                                                                    }
                                                                                    addr405:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr327);
                                                                           }
                                                                           addr352:
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     if(_loc12_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     _loc5_ = new Array();
                                                                     if(!(_loc12_ && LevelItemShapeManager))
                                                                     {
                                                                        var _loc10_:int = 0;
                                                                        if(_loc13_)
                                                                        {
                                                                           var _loc11_:* = _loc2_.Vertex;
                                                                           addr222:
                                                                           for each(_loc6_ in _loc11_)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                                              }
                                                                              §§goto(addr222);
                                                                           }
                                                                        }
                                                                        if(!(_loc12_ && _loc2_))
                                                                        {
                                                                           if(_loc4_ != "CIRCLE")
                                                                           {
                                                                              §4!"§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                                              if(_loc13_ || param1)
                                                                              {
                                                                                 addr252:
                                                                                 if(false)
                                                                                 {
                                                                                    addr254:
                                                                                    §6B§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                                    addr262:
                                                                                    if(_loc13_ || _loc3_)
                                                                                    {
                                                                                       if(!(_loc13_ || LevelItemShapeManager))
                                                                                       {
                                                                                          addr280:
                                                                                          _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                                       }
                                                                                       addr290:
                                                                                       continue loop0;
                                                                                       addr276:
                                                                                    }
                                                                                    §§goto(addr254);
                                                                                 }
                                                                                 §§goto(addr290);
                                                                              }
                                                                              §§goto(addr262);
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§goto(addr327);
                                                                  §§goto(addr405);
                                                               }
                                                               if(_loc2_.attribute("width").length() <= 0)
                                                               {
                                                                  §§goto(addr395);
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                            continue loop4;
                                                            addr142:
                                                         }
                                                         §§goto(addr88);
                                                      }
                                                      §§goto(addr103);
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             continue loop6;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr142);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr326);
         }
      }
      
      public static function §,!]§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §74§[§74§.length] = new LevelItemShape(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §4!"§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelItemShape = new LevelItemShape(param1,param2,-1,-1,param4);
         if(!(_loc7_ && param3))
         {
            _loc5_.§`!§(param3);
            do
            {
               _loc5_.§2l§();
               do
               {
                  §74§[§74§.length] = _loc5_;
               }
               while(_loc7_ && param1);
               
            }
            while(_loc7_);
            
         }
      }
      
      public static function §6B§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelItemShape = new LevelItemShape(param1,param2,param3,param3);
         if(_loc6_)
         {
            _loc5_.§`!§(param4);
         }
         do
         {
            §74§[§74§.length] = _loc5_;
         }
         while(_loc7_ && LevelItemShapeManager);
         
      }
      
      public static function §^c§(param1:String) : LevelItemShape
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!(_loc3_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && LevelItemShapeManager))
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() >= §74§.length)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_ || LevelItemShapeManager)
                        {
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(Log);
                           §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                           if(_loc4_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                        }
                        else
                        {
                           addr101:
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              addr107:
                              _loc2_ = int(§§pop() + 1);
                              addr106:
                              continue;
                           }
                           §§goto(addr106);
                        }
                     }
                     if(!(_loc3_ && LevelItemShapeManager))
                     {
                        return null;
                     }
                     continue;
                  }
                  if((§74§[_loc2_] as LevelItemShape).mName.toLowerCase() == param1.toLowerCase())
                  {
                     break;
                  }
                  §§goto(addr101);
               }
               §§goto(addr106);
            }
            §§goto(addr107);
         }
         return LevelItemShape(§74§[_loc2_]);
      }
   }
}
