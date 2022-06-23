package §^!L§
{
   import §3a§.§7!+§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §#"§
   {
      
      public static var §!u§:Array;
       
      
      public function §#"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §#!!§(param1:XMLList) : void
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
            §!u§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            §§push(_loc2_.@shape == "CIRCLE");
            if(!(_loc13_ && _loc2_))
            {
               §§push(§§pop());
               if(!(_loc13_ && param1))
               {
                  if(!§§pop())
                  {
                     if(!_loc13_)
                     {
                        §§pop();
                        if(!_loc13_)
                        {
                           §§push(_loc2_.@shape == "POLYGON");
                           if(_loc12_)
                           {
                              addr83:
                              if(!§§pop())
                              {
                                 if(_loc13_ && param1)
                                 {
                                 }
                                 addr99:
                                 if(§§pop())
                                 {
                                    if(_loc12_)
                                    {
                                       §§push(_loc2_.@id);
                                       if(!(_loc13_ && param1))
                                       {
                                          _loc3_ = §§pop();
                                          if(!(_loc12_ || §#"§))
                                          {
                                             addr299:
                                             §]m§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                             continue;
                                          }
                                          §§push(_loc2_.@shape);
                                       }
                                       _loc4_ = §§pop();
                                       _loc5_ = new Array();
                                       if(!_loc13_)
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
                                          if(!_loc13_)
                                          {
                                             if(_loc4_ == "CIRCLE")
                                             {
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      addr197:
                                                      §%C§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                      }
                                                      addr218:
                                                      continue;
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr197);
                                             }
                                             else
                                             {
                                                §6W§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                             }
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    else
                                    {
                                       addr273:
                                       if(_loc2_.attribute("height").length() <= 0)
                                       {
                                          if(!_loc12_)
                                          {
                                             continue;
                                          }
                                          addr291:
                                          §§push(§7!+§);
                                          §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() + _loc2_.@id);
                                          }
                                          §§pop().log(§§pop());
                                       }
                                    }
                                    §§goto(addr299);
                                 }
                                 else
                                 {
                                    if(_loc2_.attribute("shape").length() <= 0)
                                    {
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          addr232:
                                          §§push(§7!+§);
                                          §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                          if(_loc12_ || param1)
                                          {
                                             §§push(§§pop() + _loc2_.@id);
                                          }
                                          §§pop().log(§§pop());
                                          if(!(_loc13_ && param1))
                                          {
                                             addr252:
                                             if(_loc2_.attribute("width").length() <= 0)
                                             {
                                                addr258:
                                                §§push(§7!+§);
                                                §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                if(_loc12_)
                                                {
                                                   §§push(§§pop() + _loc2_.@id);
                                                }
                                                §§pop().log(§§pop());
                                                if(_loc13_ && §#"§)
                                                {
                                                   continue;
                                                }
                                             }
                                             §§goto(addr273);
                                          }
                                       }
                                       §§goto(addr291);
                                    }
                                    §§goto(addr252);
                                 }
                              }
                              §§goto(addr99);
                           }
                           §§pop();
                           if(!_loc13_)
                           {
                              §§goto(addr99);
                              §§push(_loc2_.@shape == "NONE");
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr258);
                     }
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr99);
         }
      }
      
      public static function §]m§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            §!u§[§!u§.length] = new §"c§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §6W§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§"c§;
         (_loc5_ = new §"c§(param1,param2,-1,-1,param4)).§[[§(param3);
         if(!_loc7_)
         {
            _loc5_.§9%§();
            if(_loc6_ || param2)
            {
               addr49:
               §!u§[§!u§.length] = _loc5_;
            }
            return;
         }
         §§goto(addr49);
      }
      
      public static function §%C§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§"c§;
         (_loc5_ = new §"c§(param1,param2,param3,param3)).§[[§(param4);
         if(!(_loc6_ && param3))
         {
            §!u§[§!u§.length] = _loc5_;
         }
      }
      
      public static function §3@§(param1:String) : §"c§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §!u§.length)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               §§goto(addr86);
            }
            if((§!u§[_loc2_] as §"c§).mName.toLowerCase() == param1.toLowerCase())
            {
               if(!(_loc4_ && §#"§))
               {
                  return §"c§(§!u§[_loc2_]);
               }
               break;
            }
            _loc2_++;
         }
         while(!_loc4_);
         
         §§push(§7!+§);
         §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
         if(!_loc4_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().log(§§pop());
         addr86:
         return null;
      }
   }
}
