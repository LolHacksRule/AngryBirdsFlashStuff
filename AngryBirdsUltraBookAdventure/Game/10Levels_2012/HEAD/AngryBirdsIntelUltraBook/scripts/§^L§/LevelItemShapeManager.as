package §^L§
{
   import §'N§.Log;
   import §?!&§.b2Vec2;
   
   public class LevelItemShapeManager
   {
      
      public static var §%!G§:Array;
       
      
      public function LevelItemShapeManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §switch§(param1:XMLList) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(!_loc12_)
         {
            §%!G§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(_loc13_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               while(true)
               {
                  §§push(Boolean(§§pop()));
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
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc13_)
                                 {
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!_loc13_)
                                 {
                                    continue loop4;
                                 }
                                 if(!§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       if(!(_loc13_ || _loc3_))
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    §§goto(addr315);
                                 }
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
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() + _loc2_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             if(_loc13_)
                                             {
                                                §§goto(addr296);
                                             }
                                             §§goto(addr313);
                                          }
                                          §§goto(addr338);
                                       }
                                       break;
                                    }
                                    if(_loc13_)
                                    {
                                       §§push(_loc2_.@id);
                                       loop10:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc12_ && LevelItemShapeManager)
                                          {
                                             break;
                                          }
                                          addr114:
                                          while(true)
                                          {
                                             §§push(_loc2_.@shape);
                                             if(!(_loc13_ || LevelItemShapeManager))
                                             {
                                                continue loop10;
                                             }
                                             _loc4_ = §§pop();
                                             if(!(_loc12_ && _loc2_))
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr77);
                                                }
                                                else
                                                {
                                                   _loc5_ = new Array();
                                                   if(!(_loc12_ && _loc3_))
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
                                                      if(!_loc12_)
                                                      {
                                                         if(_loc4_ != "CIRCLE")
                                                         {
                                                            § f§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                            if(!_loc12_)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  addr244:
                                                                  if(false)
                                                                  {
                                                                     addr246:
                                                                     §[8§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                     if(_loc12_)
                                                                     {
                                                                        addr269:
                                                                        §§goto(addr246);
                                                                     }
                                                                     addr256:
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr260:
                                                               _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr256);
                                                }
                                             }
                                             §§goto(addr365);
                                          }
                                       }
                                       §§goto(addr338);
                                    }
                                    §§goto(addr114);
                                    §§goto(addr338);
                                    §§goto(addr92);
                                 }
                                 §§goto(addr359);
                              }
                              continue loop3;
                              addr139:
                           }
                           §§goto(addr166);
                        }
                     }
                  }
                  if(!(_loc13_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr139);
               }
            }
            §§goto(addr157);
         }
      }
      
      public static function §;r§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §%!G§[§%!G§.length] = new LevelItemShape(param1,param2,param3,param4,param5);
         }
      }
      
      public static function § f§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:LevelItemShape = new LevelItemShape(param1,param2,-1,-1,param4);
         if(_loc7_ || param2)
         {
            _loc5_.§,t§(param3);
            while(true)
            {
               _loc5_.§ D§();
               while(!(_loc6_ && param2))
               {
                  §%!G§[§%!G§.length] = _loc5_;
                  if(_loc6_)
                  {
                     continue;
                  }
                  return;
                  addr68:
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §[8§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelItemShape = new LevelItemShape(param1,param2,param3,param3);
         if(_loc6_ || LevelItemShapeManager)
         {
            _loc5_.§,t§(param4);
            do
            {
               §%!G§[§%!G§.length] = _loc5_;
            }
            while(!_loc6_);
            
         }
      }
      
      public static function §'!,§(param1:String) : LevelItemShape
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(_loc4_ || LevelItemShapeManager)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() >= §%!G§.length)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           §§push(Log);
                           §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                        }
                        else
                        {
                           addr81:
                           §§push(_loc2_);
                           if(_loc4_ || LevelItemShapeManager)
                           {
                              addr102:
                              _loc2_ = int(§§pop() + 1);
                              addr101:
                              continue;
                           }
                           §§goto(addr101);
                        }
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
                  if((§%!G§[_loc2_] as LevelItemShape).mName.toLowerCase() == param1.toLowerCase())
                  {
                     §§goto(addr118);
                  }
                  §§goto(addr81);
               }
               §§goto(addr101);
            }
            §§goto(addr102);
         }
         if(_loc4_)
         {
            return null;
         }
         addr118:
         return LevelItemShape(§%!G§[_loc2_]);
      }
   }
}
