package §"!&§
{
   import § !Y§.§[!%§;
   import §0N§.§2!@§;
   import §9t§.b2Vec2;
   import flash.geom.Point;
   
   public class §4]§
   {
       
      
      private var §2!C§:§[!%§;
      
      public function §4]§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function §7-§(param1:XMLList) : void
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
            this.§2!C§ = new §[!%§();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(_loc12_ || _loc3_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               if(_loc12_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop18:
                        while(true)
                        {
                           §§pop();
                           if(_loc12_ || _loc3_)
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              if(!_loc13_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§pop();
                                          if(!(_loc12_ || _loc3_))
                                          {
                                             break;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             §§push(_loc2_.@shape == "NONE");
                                             if(!(_loc12_ || this))
                                             {
                                                break;
                                             }
                                             if(_loc13_ && this)
                                             {
                                                continue loop18;
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc2_.attribute("shape").length() <= 0)
                                                   {
                                                      if(_loc12_ || _loc2_)
                                                      {
                                                         break loop3;
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   break;
                                                }
                                                if(_loc13_ && this)
                                                {
                                                   break loop3;
                                                }
                                                §§push(_loc2_.@id);
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc2_.@shape);
                                                   if(!_loc12_)
                                                   {
                                                      continue;
                                                   }
                                                   _loc4_ = §§pop();
                                                   if(!(_loc12_ || this))
                                                   {
                                                      addr278:
                                                      break loop5;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop4;
                                                   }
                                                   _loc5_ = new Array();
                                                   if(_loc12_)
                                                   {
                                                      var _loc10_:int = 0;
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         for each(_loc6_ in _loc2_.Vertex)
                                                         {
                                                            if(_loc12_ || this)
                                                            {
                                                               _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                            }
                                                         }
                                                      }
                                                      if(_loc12_)
                                                      {
                                                         if(_loc4_ != "CIRCLE")
                                                         {
                                                            this.§;0§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                            if(!_loc13_)
                                                            {
                                                               if(_loc12_ || _loc3_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        this.§]!M§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                        addr235:
                                                                        addr242:
                                                                        while(!(_loc12_ || param1))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                              continue loop14;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr255);
                                                            }
                                                            §§goto(addr235);
                                                         }
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                while(true)
                                                {
                                                   §2!@§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      addr296:
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc2_.attribute("height").length() <= 0)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            addr325:
                                                            while(true)
                                                            {
                                                            }
                                                            addr325:
                                                         }
                                                         while(true)
                                                         {
                                                            this.§@F§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                            if(_loc12_)
                                                            {
                                                               addr294:
                                                               while(true)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               addr294:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr325);
                                                            }
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                   if(_loc13_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      §2!@§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
                                                      §§goto(addr325);
                                                   }
                                                }
                                                §§goto(addr294);
                                             }
                                             if(_loc2_.attribute("width").length() <= 0)
                                             {
                                                §§goto(addr332);
                                             }
                                             §§goto(addr296);
                                          }
                                       }
                                       §2!@§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                                       if(_loc12_)
                                       {
                                          §§goto(addr278);
                                       }
                                       §§goto(addr319);
                                       addr123:
                                    }
                                    §§goto(addr95);
                                 }
                                 continue loop1;
                                 addr118:
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr294);
                        }
                        addr140:
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr140);
            }
            §§goto(addr319);
         }
      }
      
      public function §@F§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§2!C§[param1.toLowerCase()] = new §>!0§(param3,param4);
         }
      }
      
      public function §;0§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:set = new §"!Y§(Vector.<b2Vec2>(param3));
         if(_loc6_ || param2)
         {
            this.§2!C§[param1.toLowerCase()] = _loc5_;
         }
      }
      
      public function §]!M§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:set = new §="A§(param3,new Point(param4[0].x,param4[0].y));
         if(!(_loc6_ && this))
         {
            this.§2!C§[param1.toLowerCase()] = _loc5_;
         }
      }
      
      public function §;!u§(param1:String) : set
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:set = this.§2!C§[param1.toLowerCase()];
         if(_loc4_ || _loc3_)
         {
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  addr55:
                  §2!@§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
            }
            return _loc2_;
         }
         §§goto(addr55);
      }
   }
}
