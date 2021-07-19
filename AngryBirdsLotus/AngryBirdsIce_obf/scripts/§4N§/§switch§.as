package §4N§
{
   import §;8§.§3f§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §switch§
   {
      
      public static var §@!>§:Array;
       
      
      public function §switch§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §>!,§(param1:XMLList) : void
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
            §@!>§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            §§push(_loc2_.@shape == "CIRCLE");
            if(_loc13_)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     continue;
                  }
               }
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc2_.@shape == "NONE");
                        if(!(_loc13_ || §switch§))
                        {
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc12_ && param1))
                              {
                                 §§push(_loc2_.@id);
                                 loop5:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc13_ || param1))
                                    {
                                       break;
                                    }
                                    addr100:
                                    while(true)
                                    {
                                       §§push(_loc2_.@shape);
                                       if(_loc13_ || _loc3_)
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    _loc4_ = §§pop();
                                    if(false)
                                    {
                                       continue loop3;
                                    }
                                    _loc5_ = new Array();
                                    if(_loc13_)
                                    {
                                       var _loc10_:int = 0;
                                       if(_loc13_ || §switch§)
                                       {
                                          for each(_loc6_ in _loc2_.Vertex)
                                          {
                                             if(!_loc12_)
                                             {
                                                _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                             }
                                          }
                                       }
                                       if(!(_loc12_ && §switch§))
                                       {
                                          if(_loc4_ != "CIRCLE")
                                          {
                                             §!j§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                             if(_loc13_)
                                             {
                                                if(false)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §2!>§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                      addr211:
                                                      addr220:
                                                      while(true)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(!(_loc12_ && _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         addr224:
                                                         while(true)
                                                         {
                                                            _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                            continue loop15;
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr233);
                                 }
                                 while(true)
                                 {
                                    §§push(§3f§);
                                    §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() + _loc2_.@id);
                                    }
                                    §§pop().log(§§pop());
                                    addr289:
                                    while(true)
                                    {
                                       if(_loc13_ || _loc2_)
                                       {
                                          if(!(_loc12_ && _loc2_))
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §7K§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                addr270:
                                                while(true)
                                                {
                                                   if(false)
                                                   {
                                                      break loop4;
                                                   }
                                                   break loop9;
                                                }
                                             }
                                             continue loop0;
                                             addr257:
                                          }
                                          addr320:
                                          while(true)
                                          {
                                             §§push(§3f§);
                                             §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                             if(_loc13_ || §switch§)
                                             {
                                                §§push(§§pop() + _loc2_.@id);
                                             }
                                             §§pop().log(§§pop());
                                          }
                                       }
                                       while(true)
                                       {
                                          break loop4;
                                       }
                                    }
                                 }
                                 addr281:
                              }
                              §§goto(addr100);
                           }
                           else
                           {
                              if(_loc2_.attribute("shape").length() <= 0)
                              {
                                 §§push(§3f§);
                                 §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                 if(!(_loc12_ && §switch§))
                                 {
                                    §§push(§§pop() + _loc2_.@id);
                                 }
                                 §§pop().log(§§pop());
                                 if(!_loc12_)
                                 {
                                    addr314:
                                    if(_loc2_.attribute("width").length() <= 0)
                                    {
                                       §§goto(addr320);
                                    }
                                    break;
                                 }
                                 §§goto(addr270);
                              }
                              §§goto(addr314);
                           }
                        }
                        while(_loc2_.attribute("height").length() > 0)
                        {
                           §§goto(addr257);
                        }
                        if(!_loc12_)
                        {
                           §§goto(addr281);
                        }
                        §§goto(addr289);
                     }
                  }
                  addr120:
               }
               §§goto(addr80);
            }
            while(true)
            {
               §§pop();
               §§push(_loc2_.@shape == "POLYGON");
               if(_loc13_)
               {
                  if(_loc12_)
                  {
                     continue;
                  }
                  §§goto(addr110);
               }
               §§goto(addr120);
            }
         }
      }
      
      public static function §7K§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §@!>§[§@!>§.length] = new §2D§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §!j§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§2D§;
         (_loc5_ = new §2D§(param1,param2,-1,-1,param4)).§[7§(param3);
         if(!_loc6_)
         {
            _loc5_.§<!,§();
            do
            {
               §@!>§[§@!>§.length] = _loc5_;
            }
            while(_loc6_ && param3);
            
         }
      }
      
      public static function §2!>§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§2D§;
         (_loc5_ = new §2D§(param1,param2,param3,param3)).§[7§(param4);
         if(_loc7_)
         {
            §@!>§[§@!>§.length] = _loc5_;
         }
      }
      
      public static function §0V§(param1:String) : §2D§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §@!>§.length)
            {
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     addr75:
                     _loc2_++;
                     continue;
                  }
                  if(!(_loc3_ || §switch§))
                  {
                     break;
                  }
                  §§push(§3f§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(!(_loc4_ && §switch§))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               return null;
            }
            if((§@!>§[_loc2_] as §2D§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr75);
         }
         return §2D§(§@!>§[_loc2_]);
      }
   }
}
