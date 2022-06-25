package §package§
{
   import §<u§.Log;
   import §>!8§.b2Vec2;
   
   public class LevelItemShapeManager
   {
      
      public static var §@'§:Array;
       
      
      public function LevelItemShapeManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §5!'§(param1:XMLList) : void
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
            §@'§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(!_loc13_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
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
                              while(true)
                              {
                                 §§pop();
                                 addr168:
                                 while(true)
                                 {
                                    §§push(_loc2_.@shape == "POLYGON");
                                    if(!(_loc13_ && _loc2_))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    addr138:
                                    while(!(_loc13_ && _loc2_))
                                    {
                                    }
                                    continue loop2;
                                 }
                              }
                              addr167:
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc13_)
                              {
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc13_)
                              {
                                 continue loop4;
                              }
                              if(!§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!_loc13_)
                                    {
                                       while(true)
                                       {
                                          addr83:
                                          addr100:
                                          while(true)
                                          {
                                             §§push(_loc2_.@shape == "NONE");
                                             if(_loc13_)
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          if(!_loc13_)
                                          {
                                             addr102:
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc2_.attribute("shape").length() <= 0)
                                                      {
                                                         if(!(_loc13_ && LevelItemShapeManager))
                                                         {
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                      break;
                                                   }
                                                   if(!_loc13_)
                                                   {
                                                      §§push(_loc2_.@id);
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc13_ && LevelItemShapeManager)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc2_.@shape);
                                                         if(_loc13_ && LevelItemShapeManager)
                                                         {
                                                            continue;
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(!(_loc12_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr83);
                                                            }
                                                            else
                                                            {
                                                               _loc5_ = new Array();
                                                               if(_loc12_ || _loc3_)
                                                               {
                                                                  var _loc10_:int = 0;
                                                                  if(_loc12_)
                                                                  {
                                                                     var _loc11_:* = _loc2_.Vertex;
                                                                     addr221:
                                                                     for each(_loc6_ in _loc11_)
                                                                     {
                                                                        if(!(_loc13_ && _loc2_))
                                                                        {
                                                                           _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                  }
                                                                  if(_loc12_)
                                                                  {
                                                                     if(_loc4_ != "CIRCLE")
                                                                     {
                                                                        §^$§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(!(_loc13_ && _loc2_))
                                                                           {
                                                                              addr248:
                                                                              if(false)
                                                                              {
                                                                                 addr250:
                                                                                 §+!U§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    addr273:
                                                                                    §§goto(addr250);
                                                                                 }
                                                                                 addr260:
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr264:
                                                                           _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                           §§goto(addr273);
                                                                        }
                                                                        §§goto(addr250);
                                                                     }
                                                                     §§goto(addr264);
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr168);
                                                         }
                                                         §§goto(addr138);
                                                      }
                                                      addr288:
                                                      §§push(Log);
                                                      §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                                      if(!_loc13_)
                                                      {
                                                         §§push(§§pop() + _loc2_.@id);
                                                      }
                                                      §§pop().log(§§pop());
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      addr379:
                                                      if(_loc2_.attribute("height").length() <= 0)
                                                      {
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               addr340:
                                                               §§push(Log);
                                                               §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                                               if(_loc12_)
                                                               {
                                                                  §§push(§§pop() + _loc2_.@id);
                                                               }
                                                               §§pop().log(§§pop());
                                                               addr360:
                                                               if(_loc12_)
                                                               {
                                                                  addr306:
                                                                  §>A§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                                  if(!_loc13_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  §§goto(addr360);
                                                                  addr362:
                                                               }
                                                               §§goto(addr379);
                                                            }
                                                            addr369:
                                                            §§push(Log);
                                                            §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                            if(_loc12_)
                                                            {
                                                               §§push(§§pop() + _loc2_.@id);
                                                            }
                                                            §§pop().log(§§pop());
                                                            §§goto(addr379);
                                                         }
                                                         §§goto(addr360);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr340);
                                                   §§goto(addr306);
                                                   §§goto(addr102);
                                                }
                                                if(_loc2_.attribute("width").length() <= 0)
                                                {
                                                   §§goto(addr369);
                                                }
                                                §§goto(addr288);
                                                addr109:
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr138);
                                       }
                                       addr158:
                                    }
                                    break;
                                 }
                                 if(true)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr288);
                              }
                              §§goto(addr109);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr158);
         }
      }
      
      public static function §>A§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            §@'§[§@'§.length] = new LevelItemShape(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §^$§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelItemShape = new LevelItemShape(param1,param2,-1,-1,param4);
         if(_loc6_ || LevelItemShapeManager)
         {
            _loc5_.§ !A§(param3);
         }
         do
         {
            _loc5_.§;$§();
            do
            {
               §@'§[§@'§.length] = _loc5_;
            }
            while(_loc7_);
            
         }
         while(_loc7_ && param2);
         
      }
      
      public static function §+!U§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:LevelItemShape = new LevelItemShape(param1,param2,param3,param3);
         if(_loc7_)
         {
            _loc5_.§ !A§(param4);
         }
         do
         {
            §@'§[§@'§.length] = _loc5_;
         }
         while(_loc6_);
         
      }
      
      public static function §1]§(param1:String) : LevelItemShape
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!(_loc3_ && param1))
               {
                  if(§§pop() >= §@'§.length)
                  {
                     if(_loc4_ || param1)
                     {
                        §§push(Log);
                        §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().log(§§pop());
                     }
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && param1))
                        {
                           return null;
                        }
                        break;
                     }
                  }
                  else if((§@'§[_loc2_] as LevelItemShape).mName.toLowerCase() == param1.toLowerCase())
                  {
                     break;
                  }
                  addr112:
                  §§push(_loc2_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc2_ = §§pop();
                  continue;
               }
               §§push(int(§§pop()));
            }
            §§goto(addr112);
         }
         return LevelItemShape(§@'§[_loc2_]);
      }
   }
}
