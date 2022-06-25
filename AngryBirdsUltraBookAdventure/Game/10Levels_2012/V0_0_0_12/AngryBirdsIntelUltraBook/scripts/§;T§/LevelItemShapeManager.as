package §;T§
{
   import §&L§.b2Vec2;
   import §6b§.Log;
   
   public class LevelItemShapeManager
   {
      
      public static var §74§:Array;
       
      
      public function LevelItemShapeManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §0!J§(param1:XMLList) : void
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
            §74§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(!_loc12_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc13_)
                  {
                     §§push(§§pop());
                     if(_loc13_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              if(!(_loc12_ && param1))
                              {
                                 §§push(_loc2_.@shape == "POLYGON");
                                 if(!_loc12_)
                                 {
                                    continue;
                                 }
                                 addr138:
                                 loop4:
                                 for(; !_loc12_; if(!(_loc13_ || _loc3_))
                                 {
                                    continue;
                                 },loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc2_.attribute("shape").length() <= 0)
                                       {
                                          if(_loc13_ || param1)
                                          {
                                             §§goto(addr299);
                                          }
                                          §§goto(addr321);
                                       }
                                       break;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc2_.@id);
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc13_ || LevelItemShapeManager)
                                          {
                                             §§push(_loc2_.@shape);
                                             if(!_loc13_)
                                             {
                                                continue;
                                             }
                                             _loc4_ = §§pop();
                                             if(!_loc12_)
                                             {
                                                continue loop7;
                                             }
                                             addr299:
                                             §§push(Log);
                                             §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                             if(_loc13_ || param1)
                                             {
                                                §§push(§§pop() + _loc2_.@id);
                                             }
                                             §§pop().log(§§pop());
                                             if(_loc13_ || _loc3_)
                                             {
                                                addr321:
                                                break loop6;
                                             }
                                             §§goto(addr368);
                                          }
                                          break;
                                       }
                                       §§goto(addr352);
                                    }
                                    §§goto(addr321);
                                 },if(_loc2_.attribute("width").length() <= 0)
                                 {
                                    §§goto(addr400);
                                 },§§goto(addr354))
                                 {
                                    §§pop();
                                    if(_loc13_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_.@shape == "NONE");
                                          if(!_loc12_)
                                          {
                                             if(_loc13_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                continue loop4;
                                             }
                                             continue loop2;
                                          }
                                          continue loop4;
                                       }
                                       continue;
                                       addr74:
                                    }
                                    else
                                    {
                                       addr354:
                                    }
                                    addr354:
                                    addr410:
                                    if(_loc2_.attribute("height").length() <= 0)
                                    {
                                       addr361:
                                       if(!(_loc12_ && LevelItemShapeManager))
                                       {
                                          addr368:
                                          §§push(Log);
                                          §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                          if(_loc13_ || param1)
                                          {
                                             §§push(§§pop() + _loc2_.@id);
                                          }
                                          §§pop().log(§§pop());
                                          addr322:
                                          §,!]§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                          if(!_loc12_)
                                          {
                                             if(_loc13_ || _loc3_)
                                             {
                                                if(_loc13_ || _loc2_)
                                                {
                                                   addr352:
                                                   if(true)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr354);
                                                }
                                                addr400:
                                                §§push(Log);
                                                §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() + _loc2_.@id);
                                                }
                                                §§pop().log(§§pop());
                                                §§goto(addr410);
                                             }
                                             §§goto(addr361);
                                          }
                                          addr393:
                                          §§goto(addr393);
                                       }
                                       §§goto(addr354);
                                    }
                                    §§goto(addr322);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr368);
                           }
                           addr161:
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr161);
               }
            }
            §§goto(addr72);
         }
      }
      
      public static function §,!]§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            §74§[§74§.length] = new LevelItemShape(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §4!"§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelItemShape = new LevelItemShape(param1,param2,-1,-1,param4);
         if(!_loc7_)
         {
            _loc5_.§`!§(param3);
         }
         do
         {
            _loc5_.§2l§();
            do
            {
               §74§[§74§.length] = _loc5_;
            }
            while(_loc7_ && LevelItemShapeManager);
            
         }
         while(!(_loc6_ || LevelItemShapeManager));
         
      }
      
      public static function §6B§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:LevelItemShape = new LevelItemShape(param1,param2,param3,param3);
         if(_loc6_ || LevelItemShapeManager)
         {
            _loc5_.§`!§(param4);
         }
         do
         {
            §74§[§74§.length] = _loc5_;
         }
         while(!_loc6_);
         
      }
      
      public static function §^c§(param1:String) : LevelItemShape
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_ || LevelItemShapeManager)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!(_loc4_ && param1))
               {
                  if(§§pop() >= §74§.length)
                  {
                     if(_loc3_ || param1)
                     {
                        if(!_loc4_)
                        {
                           §§push(Log);
                           §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                           if(!_loc4_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().log(§§pop());
                        }
                        else
                        {
                           addr95:
                           §§push(_loc2_ + 1);
                           if(!_loc4_)
                           {
                              addr101:
                              _loc2_ = int(§§pop());
                              continue;
                           }
                           §§goto(addr101);
                        }
                     }
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
                  if((§74§[_loc2_] as LevelItemShape).mName.toLowerCase() == param1.toLowerCase())
                  {
                     §§goto(addr117);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr101);
         }
         if(!(_loc4_ && LevelItemShapeManager))
         {
            return null;
         }
         addr117:
         return LevelItemShape(§74§[_loc2_]);
      }
   }
}
