package §_-HU§
{
   import §_-Ja§.b2Vec2;
   import §_-e3§.§_-54§;
   
   public class §_-6K§
   {
      
      public static var §_-MN§:Array;
       
      
      public function §_-6K§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §_-vb§(param1:XMLList) : void
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
            §_-MN§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            §§push(_loc2_.@shape == "CIRCLE");
            if(_loc13_)
            {
               §§push(§§pop());
               if(!_loc12_)
               {
                  if(!§§pop())
                  {
                     if(!_loc12_)
                     {
                        addr62:
                        §§pop();
                        §§push(_loc2_.@shape == "POLYGON");
                        if(_loc13_ || §_-6K§)
                        {
                           addr74:
                           if(!§§pop())
                           {
                              if(_loc12_ && _loc3_)
                              {
                              }
                              addr88:
                              if(§§pop())
                              {
                                 §§push(_loc2_.@id);
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    _loc3_ = §§pop();
                                    §§push(_loc2_.@shape);
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc13_)
                                 {
                                    _loc5_ = new Array();
                                    if(_loc13_)
                                    {
                                       var _loc10_:int = 0;
                                       if(!(_loc12_ && §_-6K§))
                                       {
                                          for each(_loc6_ in _loc2_.Vertex)
                                          {
                                             if(!_loc12_)
                                             {
                                                _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                             }
                                          }
                                       }
                                       if(_loc13_)
                                       {
                                          if(_loc4_ == "CIRCLE")
                                          {
                                             if(!_loc12_)
                                             {
                                                addr160:
                                                _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                if(_loc13_)
                                                {
                                                   addr171:
                                                   §_-0y§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                   if(_loc13_ || param1)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §_-1e§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                          }
                                          continue;
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr171);
                                 }
                                 else
                                 {
                                    addr227:
                                    §_-54§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
                                    if(!(_loc13_ || §_-6K§))
                                    {
                                       continue;
                                    }
                                 }
                              }
                              else
                              {
                                 if(_loc2_.attribute("shape").length() <= 0)
                                 {
                                    if(!_loc12_)
                                    {
                                       §_-54§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                                       addr207:
                                       if(_loc2_.attribute("width").length() <= 0)
                                       {
                                          §_-54§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                       }
                                    }
                                    if(_loc2_.attribute("height").length() <= 0)
                                    {
                                       if(_loc13_)
                                       {
                                          §§goto(addr227);
                                       }
                                       §_-sn§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                       addr240:
                                       continue;
                                    }
                                    §§goto(addr240);
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr240);
                           }
                           §§goto(addr88);
                        }
                        §§pop();
                        §§push(_loc2_.@shape == "NONE");
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr62);
         }
      }
      
      public static function §_-sn§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || §_-6K§)
         {
            §_-MN§[§_-MN§.length] = new §_-Ju§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §_-1e§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-Ju§;
         (_loc5_ = new §_-Ju§(param1,param2,-1,-1,param4)).§_-E5§(param3);
         if(!_loc7_)
         {
            _loc5_.§_-Ej§();
            if(_loc6_)
            {
               addr45:
               §_-MN§[§_-MN§.length] = _loc5_;
            }
            return;
         }
         §§goto(addr45);
      }
      
      public static function §_-0y§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-Ju§;
         (_loc5_ = new §_-Ju§(param1,param2,param3,param3)).§_-E5§(param4);
         if(_loc6_ || param2)
         {
            §_-MN§[§_-MN§.length] = _loc5_;
         }
      }
      
      public static function §_-9B§(param1:String) : §_-Ju§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §_-MN§.length)
            {
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr65);
            }
            if((§_-MN§[_loc2_] as §_-Ju§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(_loc3_)
               {
                  return §_-Ju§(§_-MN§[_loc2_]);
               }
            }
            else
            {
               _loc2_++;
               if(_loc4_)
               {
                  break;
               }
            }
         }
         §_-54§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         addr65:
         return null;
      }
   }
}
