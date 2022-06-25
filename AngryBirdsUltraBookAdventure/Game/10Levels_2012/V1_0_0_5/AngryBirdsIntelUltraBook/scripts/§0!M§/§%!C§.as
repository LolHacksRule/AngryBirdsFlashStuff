package §0!M§
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §%!C§ extends §=!=§
   {
       
      
      public function §%!C§(param1:XML, param2:Vector.<XML>, param3:BitmapData)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super(param3);
            do
            {
               this.§<0§(param1,param2);
            }
            while(_loc4_ && param2);
            
         }
      }
      
      protected function §<0§(param1:XML, param2:Vector.<XML>) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc5_:XML = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§7!8§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:Rectangle = null;
         var _loc16_:§,'§ = null;
         var _loc3_:Dictionary = this.§<!c§(param2);
         var _loc4_:XMLList = param1.child("sprite");
         for each(_loc5_ in _loc4_)
         {
            §§push(_loc5_.@name);
            if(_loc19_ || param2)
            {
               _loc6_ = §§pop();
               if(_loc19_)
               {
                  addr108:
                  _loc7_ = _loc5_.@file;
                  while(true)
                  {
                     addr97:
                     while(true)
                     {
                        §§push(int(parseInt(_loc5_.@x)));
                        addr103:
                        while(true)
                        {
                           _loc8_ = §§pop();
                        }
                     }
                  }
                  addr109:
               }
               while(true)
               {
                  §§push(int(parseInt(_loc5_.@y)));
                  if(_loc19_)
                  {
                     _loc9_ = §§pop();
                     if(_loc20_)
                     {
                        continue;
                     }
                     if(_loc19_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr103);
               }
               if((_loc10_ = _loc3_[this.§18§(_loc7_,_loc6_)]) == null)
               {
                  if(_loc19_ || param1)
                  {
                     §§push(int(parseInt(_loc5_.@width)));
                     if(_loc19_ || param1)
                     {
                        _loc11_ = §§pop();
                        if(!(_loc20_ && param1))
                        {
                           §§push(int(parseInt(_loc5_.@height)));
                           if(!(_loc20_ && this))
                           {
                              _loc12_ = §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(int(parseInt(_loc5_.@pivotX)));
                                 addr225:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr202);
               }
               §§goto(addr251);
            }
            §§goto(addr108);
         }
         if(!_loc20_)
         {
            mName = param1.@file;
         }
      }
      
      private function §18§(param1:String, param2:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1 + "#");
         if(!(_loc3_ && param2))
         {
            return §§pop() + param2;
         }
      }
      
      private function §<!c§(param1:Vector.<XML>) : Dictionary
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:XMLList = null;
         var _loc6_:XML = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:XMLList = null;
         var _loc15_:XML = null;
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc3_ in param1)
         {
            if(_loc21_ || _loc2_)
            {
               _loc4_ = _loc3_.@file;
            }
            _loc5_ = _loc3_.child("clipArea");
            if(_loc21_ || _loc2_)
            {
               var _loc18_:int = 0;
               if(!(_loc20_ && _loc3_))
               {
                  for each(_loc6_ in _loc5_)
                  {
                     if(!(_loc20_ && param1))
                     {
                        §§push(this.§18§(_loc4_,_loc6_.@name));
                        if(_loc21_ || param1)
                        {
                           §§push(§§pop());
                        }
                        _loc7_ = §§pop();
                        loop2:
                        while(_loc2_[_loc7_] == null)
                        {
                           while(true)
                           {
                              §§push(int(parseInt(_loc6_.@width)));
                              addr242:
                              addr205:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                              }
                              if(_loc20_ && _loc2_)
                              {
                                 continue;
                              }
                              loop12:
                              while(true)
                              {
                                 §§push(int(parseInt(_loc6_.@x)));
                                 loop13:
                                 while(true)
                                 {
                                    _loc12_ = §§pop();
                                    while(true)
                                    {
                                       §§push(int(parseInt(_loc6_.@y)));
                                       if(!(_loc21_ || _loc3_))
                                       {
                                          continue loop13;
                                       }
                                       if(_loc21_)
                                       {
                                          addr131:
                                          if(!(_loc20_ && this))
                                          {
                                             addr138:
                                             if(!(_loc20_ && param1))
                                             {
                                                if(_loc21_ || param1)
                                                {
                                                   _loc13_ = §§pop();
                                                   if(!_loc20_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr242);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             addr220:
                                             while(true)
                                             {
                                                §§push(int(parseInt(_loc6_.@pivotY)));
                                             }
                                             §§goto(addr131);
                                          }
                                          addr219:
                                       }
                                       while(true)
                                       {
                                          _loc11_ = §§pop();
                                          break loop12;
                                       }
                                    }
                                    addr227:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       addr228:
                                       while(true)
                                       {
                                          if(!_loc21_)
                                          {
                                             continue loop2;
                                          }
                                          §§goto(addr219);
                                          §§push(int(parseInt(_loc6_.@pivotX)));
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!(_loc20_ && param1))
                                 {
                                    if(!_loc20_)
                                    {
                                       if(_loc21_ || _loc3_)
                                       {
                                          §§goto(addr205);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr227);
                                       }
                                       addr243:
                                    }
                                    break;
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr228);
                           }
                        }
                        continue;
                     }
                     §§goto(addr243);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}
