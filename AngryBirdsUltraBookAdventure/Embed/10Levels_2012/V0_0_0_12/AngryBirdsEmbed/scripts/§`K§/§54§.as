package §`K§
{
   import §0!<§.§#y§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §54§
   {
      
      public static var §[!3§:Array;
       
      
      public function §54§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §>j§(param1:XMLList) : void
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
            §[!3§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            if(_loc13_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               if(!(_loc12_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc13_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc12_ && _loc3_))
                        {
                           §§pop();
                           if(!(_loc12_ && param1))
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              if(!_loc12_)
                              {
                                 addr91:
                                 if(!§§pop())
                                 {
                                    if(_loc13_)
                                    {
                                       addr95:
                                       §§pop();
                                       addr100:
                                       addr96:
                                       if(_loc2_.@shape == "NONE")
                                       {
                                          §§push(_loc2_.@id);
                                          if(!_loc12_)
                                          {
                                             _loc3_ = §§pop();
                                             §§push(_loc2_.@shape);
                                          }
                                          _loc4_ = §§pop();
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             _loc5_ = new Array();
                                             if(_loc13_ || param1)
                                             {
                                                var _loc10_:int = 0;
                                                if(_loc13_)
                                                {
                                                   for each(_loc6_ in _loc2_.Vertex)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                      }
                                                   }
                                                }
                                                if(_loc13_ || §54§)
                                                {
                                                   if(_loc4_ == "CIRCLE")
                                                   {
                                                      if(!(_loc12_ && _loc3_))
                                                      {
                                                         addr185:
                                                         _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                         if(_loc13_)
                                                         {
                                                            addr196:
                                                            §@!H§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                            if(!_loc13_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §>!8§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr196);
                                          }
                                          else
                                          {
                                             addr252:
                                             §§push(§#y§);
                                             §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() + _loc2_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             if(!(_loc13_ || §54§))
                                             {
                                                continue;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          if(_loc2_.attribute("shape").length() <= 0)
                                          {
                                             §§push(§#y§);
                                             §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() + _loc2_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             addr227:
                                             if(_loc2_.attribute("width").length() <= 0)
                                             {
                                                §§push(§#y§);
                                                §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                if(_loc13_ || param1)
                                                {
                                                   §§push(§§pop() + _loc2_.@id);
                                                }
                                                §§pop().log(§§pop());
                                             }
                                             if(_loc2_.attribute("height").length() <= 0)
                                             {
                                                §§goto(addr252);
                                             }
                                          }
                                          §§goto(addr227);
                                       }
                                       §!7§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr95);
            }
            §§goto(addr96);
         }
      }
      
      public static function §!7§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §[!3§[§[!3§.length] = new §2z§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §>!8§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§2z§;
         (_loc5_ = new §2z§(param1,param2,-1,-1,param4)).§+!@§(param3);
         if(!_loc6_)
         {
            _loc5_.§'C§();
            if(!_loc6_)
            {
               addr45:
               §[!3§[§[!3§.length] = _loc5_;
            }
            return;
         }
         §§goto(addr45);
      }
      
      public static function §@!H§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§2z§;
         (_loc5_ = new §2z§(param1,param2,param3,param3)).§+!@§(param4);
         if(_loc7_ || §54§)
         {
            §[!3§[§[!3§.length] = _loc5_;
         }
      }
      
      public static function §'4§(param1:String) : §2z§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §[!3§.length)
            {
               if(_loc3_)
               {
                  §§push(§#y§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(_loc3_ || §54§)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               break;
            }
            if((§[!3§[_loc2_] as §2z§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(!_loc4_)
               {
                  return §2z§(§[!3§[_loc2_]);
               }
               break;
            }
            _loc2_++;
         }
         while(_loc3_ || _loc3_);
         
         return null;
      }
   }
}
