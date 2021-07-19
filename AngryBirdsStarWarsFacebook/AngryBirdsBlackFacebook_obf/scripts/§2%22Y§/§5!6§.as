package §2"Y§
{
   import §1!i§.§,#_§;
   import §5t§.Log;
   import §[R§.b2Vec2;
   import flash.geom.Point;
   
   public class §5!6§
   {
       
      
      private var §3!^§:§,#_§;
      
      public function §5!6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public function §^!u§(param1:XMLList) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc12_)
         {
            this.§3!^§ = new §,#_§();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(!(_loc13_ && _loc3_))
            {
               §§push(_loc2_.@shape == "CIRCLE");
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
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
                              while(true)
                              {
                                 §§pop();
                                 if(_loc13_ && this)
                                 {
                                    break;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc2_.@shape == "NONE");
                                    if(!(_loc12_ || param1))
                                    {
                                       break;
                                    }
                                    if(_loc13_)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc12_ || param1)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc2_.@id);
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      §§push(_loc2_.@shape);
                                                      if(_loc13_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         while(false)
                                                         {
                                                            continue loop7;
                                                         }
                                                         _loc5_ = new Array();
                                                         if(_loc12_ || _loc3_)
                                                         {
                                                            var _loc10_:int = 0;
                                                            if(!_loc13_)
                                                            {
                                                               for each(_loc6_ in _loc2_.Vertex)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                                  }
                                                               }
                                                            }
                                                            if(!(_loc13_ && _loc2_))
                                                            {
                                                               if(_loc4_ != "CIRCLE")
                                                               {
                                                                  this.§7!H§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                                  if(_loc12_)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           addr233:
                                                                           if(false)
                                                                           {
                                                                              addr235:
                                                                              this.§6"S§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                              addr242:
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr246:
                                                                        _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                        addr255:
                                                                        §§goto(addr235);
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      else
                                                      {
                                                         addr312:
                                                         Log.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
                                                         addr318:
                                                         if(_loc12_)
                                                         {
                                                            addr279:
                                                            this.§,f§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                            if(_loc12_)
                                                            {
                                                               if(_loc12_ || param1)
                                                               {
                                                                  break loop6;
                                                               }
                                                               Log.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                                               addr343:
                                                               break loop8;
                                                               addr327:
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                   }
                                                   break loop6;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             if(_loc2_.attribute("shape").length() <= 0)
                                             {
                                                if(!_loc13_)
                                                {
                                                   Log.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                                                   if(_loc12_ || param1)
                                                   {
                                                      addr321:
                                                      if(_loc2_.attribute("width").length() <= 0)
                                                      {
                                                         §§goto(addr327);
                                                      }
                                                      break;
                                                      addr278:
                                                   }
                                                   break loop6;
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr321);
                                          }
                                          §§goto(addr343);
                                       }
                                       addr303:
                                       if(_loc2_.attribute("height").length() <= 0)
                                       {
                                          if(!_loc12_)
                                          {
                                          }
                                          §§goto(addr312);
                                       }
                                       §§goto(addr279);
                                       addr104:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc13_ && this)
                                          {
                                             break;
                                          }
                                          §§push(_loc2_.@shape == "POLYGON");
                                          continue loop1;
                                       }
                                       addr150:
                                    }
                                    §§goto(addr343);
                                 }
                              }
                              if(true)
                              {
                                 continue loop0;
                              }
                              §§goto(addr303);
                           }
                           §§goto(addr104);
                        }
                        continue;
                        addr130:
                     }
                     §§goto(addr150);
                  }
               }
            }
            §§goto(addr81);
         }
      }
      
      public function §,f§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§3!^§[param1.toLowerCase()] = new §<"+§(param3,param4,param1);
         }
      }
      
      public function §7!H§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§?#^§ = new §,!W§(Vector.<b2Vec2>(param3),param1);
         if(_loc7_)
         {
            this.§3!^§[param1.toLowerCase()] = _loc5_;
         }
      }
      
      public function §6"S§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§?#^§ = new §?#Q§(param3,new Point(param4[0].x,param4[0].y),param1);
         if(_loc6_ || this)
         {
            this.§3!^§[param1.toLowerCase()] = _loc5_;
         }
      }
      
      public function §3",§(param1:String) : §?#^§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§?#^§ = this.§3!^§[param1.toLowerCase()];
         if(_loc3_ || this)
         {
            if(!_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  addr59:
                  Log.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
            }
            return _loc2_;
         }
         §§goto(addr59);
      }
   }
}
