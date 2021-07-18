package §,a§
{
   import §2"=§.b2Vec2;
   import §=!M§.§9!P§;
   
   public class §3g§
   {
      
      public static var §^!u§:Array;
       
      
      public function §3g§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §4#§(param1:XMLList) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(!(_loc12_ && _loc2_))
         {
            §^!u§ = new Array();
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
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              if(_loc13_ || _loc2_)
                              {
                                 if(_loc12_)
                                 {
                                    break;
                                    addr114:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc12_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop5:
                                       while(!_loc12_)
                                       {
                                          §§pop();
                                          if(_loc13_ || param1)
                                          {
                                             if(_loc12_ && §3g§)
                                             {
                                                continue loop4;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc2_.@shape == "NONE");
                                                if(!_loc13_)
                                                {
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc2_.attribute("shape").length() <= 0)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            §9!P§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                                                            if(_loc12_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      if(_loc2_.attribute("width").length() <= 0)
                                                      {
                                                         §9!P§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                                         addr308:
                                                         while(true)
                                                         {
                                                            break loop6;
                                                         }
                                                         addr324:
                                                      }
                                                      break loop6;
                                                   }
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      §§push(_loc2_.@id);
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!(_loc13_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc2_.@shape);
                                                         if(_loc12_)
                                                         {
                                                            continue;
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop6;
                                                         }
                                                         _loc5_ = new Array();
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            var _loc10_:int = 0;
                                                            if(_loc13_)
                                                            {
                                                               var _loc11_:* = _loc2_.Vertex;
                                                               addr191:
                                                               for each(_loc6_ in _loc11_)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                            }
                                                            if(_loc13_ || §3g§)
                                                            {
                                                               if(_loc4_ != "CIRCLE")
                                                               {
                                                                  §?!9§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(!(_loc12_ && §3g§))
                                                                     {
                                                                        addr222:
                                                                        if(false)
                                                                        {
                                                                           addr224:
                                                                           §3B§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr246:
                                                                              §§goto(addr224);
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr237:
                                                                     _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                     §§goto(addr246);
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                               §§goto(addr237);
                                                               addr202:
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      addr280:
                                                      if(false)
                                                      {
                                                         break loop6;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §9!P§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
                                                   while(_loc12_)
                                                   {
                                                   }
                                                   while(true)
                                                   {
                                                      addr265:
                                                      while(true)
                                                      {
                                                         § V§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr299:
                                                   §§goto(addr308);
                                                }
                                             }
                                             for(; _loc2_.attribute("height").length() <= 0; §§goto(addr324))
                                             {
                                                if(_loc13_)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr280);
                                       }
                                       continue loop3;
                                       addr119:
                                    }
                                    §§goto(addr79);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr119);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr114);
                  }
               }
            }
            §§goto(addr301);
         }
      }
      
      public static function § V§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §^!u§[§^!u§.length] = new §^7§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §?!9§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§^7§;
         (_loc5_ = new §^7§(param1,param2,-1,-1,param4)).§"!m§(param3);
         if(!(_loc7_ && §3g§))
         {
            _loc5_.§%!f§();
         }
         do
         {
            §^!u§[§^!u§.length] = _loc5_;
         }
         while(!_loc6_);
         
      }
      
      public static function §3B§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§^7§;
         (_loc5_ = new §^7§(param1,param2,param3,param3)).§"!m§(param4);
         if(!(_loc7_ && §3g§))
         {
            §^!u§[§^!u§.length] = _loc5_;
         }
      }
      
      public static function §7!U§(param1:String) : §^7§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §^!u§.length)
            {
               if(_loc3_)
               {
                  if(!_loc3_)
                  {
                     addr63:
                     _loc2_++;
                     continue;
                  }
                  if(_loc4_ && param1)
                  {
                     break;
                  }
                  §9!P§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
               if(!(_loc4_ && param1))
               {
                  return null;
               }
               continue;
            }
            if((§^!u§[_loc2_] as §^7§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr63);
         }
         return §^7§(§^!u§[_loc2_]);
      }
   }
}
