package §-f§
{
   import §+!c§.§;!=§;
   import §6!^§.b2Vec2;
   
   public class §?"6§
   {
      
      public static var §,P§:Array;
       
      
      public function §?"6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §&l§(param1:XMLList) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc13_)
         {
            §,P§ = new Array();
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
                           addr134:
                           while(true)
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              if(_loc13_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc2_.attribute("shape").length() <= 0)
                                             {
                                                if(_loc13_)
                                                {
                                                   §§push(§;!=§);
                                                   §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() + _loc2_.@id);
                                                   }
                                                   §§pop().log(§§pop());
                                                   if(!_loc13_)
                                                   {
                                                   }
                                                   §§goto(addr317);
                                                }
                                                §§goto(addr256);
                                             }
                                             break;
                                          }
                                          if(!_loc12_)
                                          {
                                             §§push(_loc2_.@id);
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc2_.@shape);
                                                if(_loc12_)
                                                {
                                                   continue;
                                                }
                                                _loc4_ = §§pop();
                                                if(_loc12_ && _loc3_)
                                                {
                                                   addr256:
                                                   break loop7;
                                                }
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.@shape == "NONE");
                                                      if(_loc13_)
                                                      {
                                                         break;
                                                      }
                                                      addr102:
                                                      while(!(_loc12_ && _loc2_))
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop7;
                                                   addr72:
                                                }
                                                _loc5_ = new Array();
                                                if(_loc13_ || param1)
                                                {
                                                   var _loc10_:int = 0;
                                                   if(_loc13_)
                                                   {
                                                      var _loc11_:* = _loc2_.Vertex;
                                                      addr186:
                                                      for each(_loc6_ in _loc11_)
                                                      {
                                                         if(!(_loc12_ && param1))
                                                         {
                                                            _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                   }
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      if(_loc4_ != "CIRCLE")
                                                      {
                                                         §]"#§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                         if(_loc13_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               if(false)
                                                               {
                                                                  addr214:
                                                                  §,+§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                  if(_loc12_)
                                                                  {
                                                                     addr227:
                                                                     _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                     addr236:
                                                                     §§goto(addr214);
                                                                  }
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr227);
                                                      addr197:
                                                   }
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr197);
                                             }
                                          }
                                          addr285:
                                          §§push(§;!=§);
                                          §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                          if(_loc13_ || §?"6§)
                                          {
                                             §§push(§§pop() + _loc2_.@id);
                                          }
                                          §§pop().log(§§pop());
                                          if(_loc13_)
                                          {
                                             addr257:
                                             §6f§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                             if(!_loc12_)
                                             {
                                                if(_loc13_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      if(true)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr278:
                                                      if(_loc2_.attribute("height").length() <= 0)
                                                      {
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   addr317:
                                                   §§push(§;!=§);
                                                   §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() + _loc2_.@id);
                                                   }
                                                   §§pop().log(§§pop());
                                                   addr325:
                                                   §§goto(addr278);
                                                }
                                             }
                                             §§goto(addr285);
                                          }
                                          §§goto(addr325);
                                          §§goto(addr317);
                                       }
                                       if(_loc2_.attribute("width").length() <= 0)
                                       {
                                          §§goto(addr317);
                                       }
                                       §§goto(addr278);
                                    }
                                 }
                                 continue loop2;
                                 addr97:
                              }
                              §§goto(addr102);
                           }
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
            §§goto(addr126);
         }
      }
      
      public static function §6f§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && §?"6§))
         {
            §,P§[§,P§.length] = new §+"R§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §]"#§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§+"R§;
         (_loc5_ = new §+"R§(param1,param2,-1,-1,param4)).§9! §(param3);
         if(_loc7_)
         {
            _loc5_.§>! §();
         }
         do
         {
            §,P§[§,P§.length] = _loc5_;
         }
         while(_loc6_ && §?"6§);
         
      }
      
      public static function §,+§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§+"R§;
         (_loc5_ = new §+"R§(param1,param2,param3,param3)).§9! §(param4);
         if(!_loc7_)
         {
            §,P§[§,P§.length] = _loc5_;
         }
      }
      
      public static function §&"A§(param1:String) : §+"R§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §,P§.length)
            {
               if(!_loc3_)
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     addr71:
                     _loc2_++;
                     continue;
                  }
                  §§push(§;!=§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!_loc3_)
               {
                  break;
               }
               continue;
            }
            if((§,P§[_loc2_] as §+"R§).mName.toLowerCase() == param1.toLowerCase())
            {
               §§goto(addr86);
            }
            §§goto(addr71);
         }
         if(_loc4_)
         {
            return null;
         }
         addr86:
         return §+"R§(§,P§[_loc2_]);
      }
   }
}
