package §?!6§
{
   import § !r§.§`![§;
   import §<!B§.b2Vec2;
   
   public class §3>§
   {
      
      public static var §"w§:Array;
       
      
      public function §3>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §+!m§(param1:XMLList) : void
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
            §"w§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            if(_loc13_ || _loc3_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               if(!_loc12_)
               {
                  §§push(§§pop());
                  if(_loc13_)
                  {
                     if(!§§pop())
                     {
                        if(_loc13_)
                        {
                           §§pop();
                           §§push(_loc2_.@shape == "POLYGON");
                           if(_loc13_ || _loc3_)
                           {
                              addr84:
                              if(!§§pop())
                              {
                                 if(!_loc13_)
                                 {
                                 }
                                 addr100:
                                 if(§§pop())
                                 {
                                    addr101:
                                    §§push(_loc2_.@id);
                                    if(_loc13_)
                                    {
                                       _loc3_ = §§pop();
                                       §§push(_loc2_.@shape);
                                    }
                                    _loc4_ = §§pop();
                                    _loc5_ = new Array();
                                    if(!_loc12_)
                                    {
                                       var _loc10_:int = 0;
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          for each(_loc6_ in _loc2_.Vertex)
                                          {
                                             if(!(_loc12_ && §3>§))
                                             {
                                                _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                             }
                                          }
                                       }
                                       if(_loc13_ || _loc3_)
                                       {
                                          addr173:
                                          if(_loc4_ == "CIRCLE")
                                          {
                                             if(_loc13_)
                                             {
                                                _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                if(!(_loc12_ && §3>§))
                                                {
                                                   §2k§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                   if(_loc12_ && _loc3_)
                                                   {
                                                   }
                                                   addr215:
                                                   continue;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §=c§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                          }
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr173);
                                 }
                                 else
                                 {
                                    if(_loc2_.attribute("shape").length() <= 0)
                                    {
                                       if(_loc12_)
                                       {
                                          continue;
                                       }
                                       §§push(§`![§);
                                       §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() + _loc2_.@id);
                                       }
                                       §§pop().log(§§pop());
                                       if(!_loc12_)
                                       {
                                          addr234:
                                          if(_loc2_.attribute("width").length() <= 0)
                                          {
                                             if(_loc13_ || _loc3_)
                                             {
                                                §§push(§`![§);
                                                §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                if(!(_loc12_ && §3>§))
                                                {
                                                   §§push(§§pop() + _loc2_.@id);
                                                }
                                                §§pop().log(§§pop());
                                                addr260:
                                                if(_loc2_.attribute("height").length() <= 0)
                                                {
                                                   addr266:
                                                   §§push(§`![§);
                                                   §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                                   if(_loc13_ || _loc2_)
                                                   {
                                                      §§push(§§pop() + _loc2_.@id);
                                                   }
                                                   §§pop().log(§§pop());
                                                   if(_loc12_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §5![§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                continue;
                                             }
                                             §§goto(addr266);
                                          }
                                       }
                                       §§goto(addr260);
                                    }
                                    §§goto(addr234);
                                 }
                              }
                              §§goto(addr100);
                           }
                           §§pop();
                           if(_loc13_ || param1)
                           {
                              §§goto(addr100);
                              §§push(_loc2_.@shape == "NONE");
                           }
                           §§goto(addr260);
                        }
                     }
                  }
                  §§goto(addr84);
               }
               §§goto(addr100);
            }
            §§goto(addr101);
         }
      }
      
      public static function §5![§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §"w§[§"w§.length] = new §"!0§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §=c§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§"!0§;
         (_loc5_ = new §"!0§(param1,param2,-1,-1,param4)).§@!@§(param3);
         if(_loc6_ || param3)
         {
            _loc5_.§]3§();
            if(!_loc7_)
            {
               addr49:
               §"w§[§"w§.length] = _loc5_;
            }
            return;
         }
         §§goto(addr49);
      }
      
      public static function §2k§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§"!0§;
         (_loc5_ = new §"!0§(param1,param2,param3,param3)).§@!@§(param4);
         if(!_loc7_)
         {
            §"w§[§"w§.length] = _loc5_;
         }
      }
      
      public static function §?p§(param1:String) : §"!0§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §"w§.length)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr84:
                  §§push(§`![§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               break;
            }
            if((§"w§[_loc2_] as §"!0§).mName.toLowerCase() != param1.toLowerCase())
            {
               continue;
            }
            if(!(_loc4_ && _loc2_))
            {
               return §"!0§(§"w§[_loc2_]);
            }
            §§goto(addr84);
         }
         while(_loc2_++, _loc3_ || param1);
         
         return null;
      }
   }
}
