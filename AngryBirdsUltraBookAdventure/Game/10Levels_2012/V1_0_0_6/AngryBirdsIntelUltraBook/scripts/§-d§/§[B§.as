package §-d§
{
   import §"x§.§-8§;
   import §;%§.b2Vec2;
   
   public class §[B§
   {
      
      public static var §;u§:Array;
       
      
      public function §[B§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §0!%§(param1:XMLList) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(!(_loc13_ && _loc3_))
         {
            §;u§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(_loc12_ || _loc2_)
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
                              loop4:
                              while(true)
                              {
                                 if(!_loc13_)
                                 {
                                    §§pop();
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 addr145:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!_loc13_)
                                    {
                                       §§push(_loc2_.@shape == "POLYGON");
                                       if(!_loc13_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    addr374:
                                    loop10:
                                    while(true)
                                    {
                                       addr308:
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc2_.attribute("height").length() <= 0)
                                          {
                                             addr337:
                                             if(_loc12_ || param1)
                                             {
                                                if(!_loc12_)
                                                {
                                                   continue loop10;
                                                }
                                                §§push(§-8§);
                                                §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                                if(_loc12_ || param1)
                                                {
                                                   §§push(§§pop() + _loc2_.@id);
                                                }
                                                §§pop().log(§§pop());
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                addr286:
                                                while(true)
                                                {
                                                   §8G§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                   if(_loc12_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   continue loop12;
                                                }
                                                if(true)
                                                {
                                                   break loop11;
                                                }
                                                continue loop11;
                                             }
                                             addr337:
                                          }
                                          §§goto(addr286);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                              }
                              addr338:
                              if(_loc2_.attribute("width").length() <= 0)
                              {
                                 if(!(_loc13_ && §[B§))
                                 {
                                    addr361:
                                    §§push(§-8§);
                                    §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                    if(_loc12_ || _loc2_)
                                    {
                                       §§push(§§pop() + _loc2_.@id);
                                    }
                                    §§pop().log(§§pop());
                                 }
                                 §§goto(addr374);
                              }
                              §§goto(addr308);
                              addr285:
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(_loc2_.attribute("shape").length() <= 0)
                                 {
                                    if(!(_loc13_ && _loc2_))
                                    {
                                       §§push(§-8§);
                                       §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() + _loc2_.@id);
                                       }
                                       §§pop().log(§§pop());
                                       if(_loc12_)
                                       {
                                          §§goto(addr285);
                                       }
                                       §§goto(addr324);
                                    }
                                    §§goto(addr337);
                                 }
                                 break;
                              }
                              if(!_loc13_)
                              {
                                 §§push(_loc2_.@id);
                                 loop6:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc12_ || _loc2_))
                                    {
                                       break;
                                    }
                                    addr113:
                                    while(true)
                                    {
                                       §§push(_loc2_.@shape);
                                       if(!(_loc12_ || _loc2_))
                                       {
                                          continue loop6;
                                       }
                                       _loc4_ = §§pop();
                                       if(_loc12_ || param1)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr86);
                                          }
                                          else
                                          {
                                             _loc5_ = new Array();
                                             if(_loc12_ || §[B§)
                                             {
                                                var _loc10_:int = 0;
                                                if(!_loc13_)
                                                {
                                                   var _loc11_:* = _loc2_.Vertex;
                                                   addr200:
                                                   for each(_loc6_ in _loc11_)
                                                   {
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                }
                                                if(!(_loc13_ && param1))
                                                {
                                                   if(_loc4_ != "CIRCLE")
                                                   {
                                                      §!!]§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                      if(_loc12_ || param1)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            if(_loc12_ || param1)
                                                            {
                                                               addr238:
                                                               if(false)
                                                               {
                                                                  addr240:
                                                                  §#y§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                  addr247:
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr251:
                                                            _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                            addr260:
                                                            §§goto(addr240);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr238);
                                             }
                                             §§goto(addr240);
                                          }
                                       }
                                       §§goto(addr324);
                                    }
                                 }
                                 §§goto(addr374);
                              }
                              §§goto(addr113);
                              §§goto(addr337);
                           }
                           §§goto(addr338);
                        }
                        continue;
                        addr128:
                     }
                     §§goto(addr145);
                  }
               }
            }
            §§goto(addr361);
         }
      }
      
      public static function §8G§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            §;u§[§;u§.length] = new §7]§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §!!]§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§7]§;
         (_loc5_ = new §7]§(param1,param2,-1,-1,param4)).§"!=§(param3);
         if(!_loc7_)
         {
            _loc5_.§'!G§();
            do
            {
               §;u§[§;u§.length] = _loc5_;
            }
            while(_loc7_);
            
         }
      }
      
      public static function §#y§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§7]§;
         (_loc5_ = new §7]§(param1,param2,param3,param3)).§"!=§(param4);
         if(_loc6_)
         {
            §;u§[§;u§.length] = _loc5_;
         }
      }
      
      public static function §8X§(param1:String) : §7]§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §;u§.length)
            {
               if(_loc4_)
               {
                  §§push(§-8§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(!_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!_loc3_)
               {
                  break;
               }
               loop1:
               while(!(_loc4_ || §[B§))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((§;u§[_loc2_] as §7]§).mName.toLowerCase() == param1.toLowerCase())
            {
               §§goto(addr86);
            }
            §§goto(addr64);
         }
         if(_loc4_)
         {
            return null;
         }
         addr86:
         return §7]§(§;u§[_loc2_]);
      }
   }
}
