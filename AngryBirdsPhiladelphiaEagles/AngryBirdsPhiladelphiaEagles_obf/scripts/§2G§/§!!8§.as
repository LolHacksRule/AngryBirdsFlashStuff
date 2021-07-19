package §2G§
{
   import §`K§.§ L§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §!!8§
   {
      
      public static var §1!§:Array;
       
      
      public function §!!8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §;H§(param1:XMLList) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc13_ || §!!8§)
         {
            §1!§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(!_loc12_)
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
                           §§push(_loc2_.@shape == "POLYGON");
                           if(!(_loc12_ && _loc3_))
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc12_ && _loc3_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc13_)
                                          {
                                             §§push(_loc2_.@id);
                                             loop6:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc12_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc2_.@shape);
                                                if(_loc12_)
                                                {
                                                   continue;
                                                }
                                                _loc4_ = §§pop();
                                                addr293:
                                                if(_loc13_)
                                                {
                                                   if(false)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.@shape == "NONE");
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            if(!(_loc12_ && _loc3_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr136:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc5_ = new Array();
                                                      if(_loc13_)
                                                      {
                                                         var _loc10_:int = 0;
                                                         if(!_loc12_)
                                                         {
                                                            var _loc11_:* = _loc2_.Vertex;
                                                            addr192:
                                                            for each(_loc6_ in _loc11_)
                                                            {
                                                               if(_loc13_ || param1)
                                                               {
                                                                  _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                         }
                                                         if(_loc13_)
                                                         {
                                                            if(_loc4_ != "CIRCLE")
                                                            {
                                                               §>G§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                               if(_loc13_ || _loc3_)
                                                               {
                                                                  addr216:
                                                                  if(false)
                                                                  {
                                                                     addr218:
                                                                     §7!M§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                     if(!(_loc12_ && param1))
                                                                     {
                                                                        if(!(_loc13_ || _loc2_))
                                                                        {
                                                                           addr243:
                                                                           _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                           addr252:
                                                                           §§goto(addr218);
                                                                        }
                                                                        addr253:
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                }
                                                else
                                                {
                                                   addr291:
                                                   if(true)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   if(_loc2_.attribute("height").length() <= 0)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         break loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc13_ || param1)
                                                         {
                                                            addr332:
                                                            while(true)
                                                            {
                                                               §8!#§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                               if(!_loc12_)
                                                               {
                                                                  §§goto(addr291);
                                                               }
                                                               else
                                                               {
                                                                  addr339:
                                                                  §§push(§ L§);
                                                                  §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                                  if(!(_loc12_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() + _loc2_.@id);
                                                                  }
                                                                  §§pop().log(§§pop());
                                                               }
                                                            }
                                                            continue loop0;
                                                            addr276:
                                                         }
                                                         addr352:
                                                         while(true)
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                      addr315:
                                                   }
                                                   §§goto(addr276);
                                                }
                                                addr293:
                                             }
                                             while(true)
                                             {
                                                §§push(§ L§);
                                                §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   §§push(§§pop() + _loc2_.@id);
                                                }
                                                §§pop().log(§§pop());
                                                §§goto(addr315);
                                             }
                                             addr302:
                                          }
                                          §§goto(addr332);
                                       }
                                       else
                                       {
                                          if(_loc2_.attribute("shape").length() <= 0)
                                          {
                                             if(_loc13_ || _loc3_)
                                             {
                                                §§push(§ L§);
                                                §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() + _loc2_.@id);
                                                }
                                                §§pop().log(§§pop());
                                                addr333:
                                                if(_loc2_.attribute("width").length() <= 0)
                                                {
                                                   §§goto(addr339);
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr333);
                                       }
                                    }
                                    addr98:
                                 }
                              }
                              continue loop2;
                              addr126:
                           }
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr126);
                  }
               }
            }
            §§goto(addr302);
         }
      }
      
      public static function §8!#§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            §1!§[§1!§.length] = new §+b§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §>G§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§+b§;
         (_loc5_ = new §+b§(param1,param2,-1,-1,param4)).§]6§(param3);
         if(_loc7_)
         {
            _loc5_.§,p§();
         }
         do
         {
            §1!§[§1!§.length] = _loc5_;
         }
         while(_loc6_ && param3);
         
      }
      
      public static function §7!M§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§+b§;
         (_loc5_ = new §+b§(param1,param2,param3,param3)).§]6§(param4);
         if(!(_loc6_ && param1))
         {
            §1!§[§1!§.length] = _loc5_;
         }
      }
      
      public static function §5L§(param1:String) : §+b§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §1!§.length)
            {
               if(!_loc3_)
               {
                  if(_loc3_ && param1)
                  {
                     addr79:
                     _loc2_++;
                     continue;
                  }
                  §§push(§ L§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!(_loc3_ && §!!8§))
               {
                  return null;
               }
               continue;
            }
            if((§1!§[_loc2_] as §+b§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr79);
         }
         while(!_loc3_);
         
         return §+b§(§1!§[_loc2_]);
      }
   }
}
