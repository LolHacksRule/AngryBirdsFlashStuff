package §,!C§
{
   import §>K§.§9X§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §9b§
   {
      
      public static var §>!@§:Array;
       
      
      public function §9b§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §%'§(param1:XMLList) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc13_ || §9b§)
         {
            §>!@§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            §§push(_loc2_.@shape == "CIRCLE");
            if(!(_loc12_ && param1))
            {
               §§push(§§pop());
               if(_loc13_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc12_ && _loc3_))
                     {
                        §§pop();
                        §§push(_loc2_.@shape == "POLYGON");
                        if(!(_loc12_ && §9b§))
                        {
                           addr92:
                           if(!§§pop())
                           {
                              if(!_loc12_)
                              {
                                 addr96:
                                 §§pop();
                                 if(_loc13_ || _loc2_)
                                 {
                                    addr108:
                                    if(_loc2_.@shape == "NONE")
                                    {
                                       §§push(_loc2_.@id);
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          _loc3_ = §§pop();
                                          if(!(_loc13_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§push(_loc2_.@shape);
                                       }
                                       _loc4_ = §§pop();
                                       _loc5_ = new Array();
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          var _loc10_:int = 0;
                                          if(_loc13_ || param1)
                                          {
                                             for each(_loc6_ in _loc2_.Vertex)
                                             {
                                                if(_loc13_ || §9b§)
                                                {
                                                   _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                }
                                             }
                                          }
                                          if(!_loc12_)
                                          {
                                             addr193:
                                             if(_loc4_ == "CIRCLE")
                                             {
                                                if(_loc13_)
                                                {
                                                   _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                   if(_loc13_)
                                                   {
                                                      §^!§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                      if(!_loc12_)
                                                      {
                                                         addr217:
                                                      }
                                                   }
                                                }
                                                §§goto(addr217);
                                             }
                                             else
                                             {
                                                §1I§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                             }
                                             continue;
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr193);
                                    }
                                    else
                                    {
                                       if(_loc2_.attribute("shape").length() <= 0)
                                       {
                                          §§push(§9X§);
                                          §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             §§push(§§pop() + _loc2_.@id);
                                          }
                                          §§pop().log(§§pop());
                                       }
                                       if(_loc2_.attribute("width").length() <= 0)
                                       {
                                          §§push(§9X§);
                                          §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() + _loc2_.@id);
                                          }
                                          §§pop().log(§§pop());
                                          if(_loc12_)
                                          {
                                          }
                                          addr299:
                                          §;v§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                          continue;
                                       }
                                       if(_loc2_.attribute("height").length() <= 0)
                                       {
                                          if(_loc13_ || param1)
                                          {
                                             §§push(§9X§);
                                             §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() + _loc2_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             if(_loc12_ && param1)
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr299);
                              }
                           }
                        }
                        §§goto(addr108);
                     }
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr96);
         }
      }
      
      public static function §;v§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §>!@§[§>!@§.length] = new §6m§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §1I§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§6m§;
         (_loc5_ = new §6m§(param1,param2,-1,-1,param4)).§4m§(param3);
         if(!(_loc7_ && §9b§))
         {
            _loc5_.§-Z§();
            if(!(_loc7_ && param1))
            {
               addr54:
               §>!@§[§>!@§.length] = _loc5_;
            }
            return;
         }
         §§goto(addr54);
      }
      
      public static function §^!§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§6m§;
         (_loc5_ = new §6m§(param1,param2,param3,param3)).§4m§(param4);
         if(!(_loc6_ && param3))
         {
            §>!@§[§>!@§.length] = _loc5_;
         }
      }
      
      public static function §,W§(param1:String) : §6m§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §>!@§.length)
            {
               if(!_loc4_)
               {
                  §§push(§9X§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               break;
            }
            if((§>!@§[_loc2_] as §6m§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(!(_loc4_ && param1))
               {
                  return §6m§(§>!@§[_loc2_]);
               }
               break;
            }
            _loc2_++;
         }
         while(!_loc4_);
         
         return null;
      }
   }
}
