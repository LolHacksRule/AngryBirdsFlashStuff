package §"!"§
{
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class §7!!§
   {
       
      
      private var §%o§:String;
      
      public function §7!!§(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§%o§ = this.§&<§(param1);
         }
         while(_loc3_ && this);
         
      }
      
      public function getString() : String
      {
         return this.§%o§;
      }
      
      private function §&<§(param1:*) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(!(_loc6_ && _loc2_))
         {
            if(getQualifiedClassName(param1).indexOf("__AS3__.vec::Vector") == 0)
            {
               addr37:
               _loc2_ = new Array();
               for each(_loc3_ in param1)
               {
                  if(!_loc6_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
               param1 = _loc2_;
            }
            if(!(param1 is String))
            {
               if(!(param1 is Number))
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1 is Boolean);
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(!(param1 is Array))
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(param1 is Object);
                                 while(!(_loc6_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          §§push(param1 == null);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(!§§pop());
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr116:
                                             if(!§§pop())
                                             {
                                                §§push("null");
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr208:
                                                   §§goto(addr204);
                                                }
                                             }
                                             if(_loc7_)
                                             {
                                                §§push(this.§4c§(param1));
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr132);
                                                   }
                                                   else
                                                   {
                                                      addr223:
                                                   }
                                                   break loop2;
                                                }
                                                §§goto(addr174);
                                             }
                                             if(_loc6_)
                                             {
                                                break loop0;
                                             }
                                             continue loop2;
                                             break loop1;
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr116);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr225);
                           }
                           §§push(this.§7!+§(param1 as Array));
                           addr174:
                           return §§pop();
                        }
                        if(!(_loc6_ && this))
                        {
                           if(!param1)
                           {
                              §§push("false");
                              break;
                           }
                           §§push("true");
                        }
                        continue loop0;
                        addr204:
                        return §§pop();
                     }
                     if(!_loc6_)
                     {
                        §§goto(addr208);
                     }
                     else
                     {
                        §§goto(addr225);
                     }
                  }
               }
               if(isFinite(param1 as Number))
               {
                  §§goto(addr223);
                  §§push(param1.toString());
               }
               else
               {
                  §§push("null");
               }
               addr225:
               return §§pop();
            }
            §§push(this.§#Y§(param1 as String));
            if(_loc7_ || _loc3_)
            {
               return §§pop();
            }
            addr132:
            return §§pop();
         }
         §§goto(addr37);
      }
      
      private function §#Y§(param1:String) : String
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               if(§§pop() < _loc4_)
               {
                  §§push(param1);
                  while(true)
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        _loc3_ = §§pop().charAt(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop5:
                           while(true)
                           {
                              var _loc8_:* = §§pop();
                              if(_loc9_ || param1)
                              {
                                 §§push("\"");
                                 §§push(_loc8_);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          §§push(0);
                                          if(_loc10_)
                                          {
                                             addr325:
                                          }
                                       }
                                       else
                                       {
                                          addr301:
                                          §§push(1);
                                          if(_loc10_ && _loc2_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push("\\");
                                       if(!_loc10_)
                                       {
                                          §§push(_loc8_);
                                          if(_loc9_)
                                          {
                                             addr298:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr301);
                                                }
                                                addr386:
                                                if(_loc10_ && _loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      _loc2_ += "\\\"";
                                                      break loop5;
                                                   case 1:
                                                      _loc2_ += "\\\\";
                                                      if(!_loc10_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop4;
                                                   case 2:
                                                      addr230:
                                                      §§push(_loc2_ + "\\b");
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         break loop5;
                                                      }
                                                      addr425:
                                                      addr425:
                                                      return §§pop();
                                                      break;
                                                   case 3:
                                                      addr216:
                                                      _loc2_ += "\\f";
                                                      addr214:
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop0;
                                                   case 4:
                                                      §§push(_loc2_);
                                                      §§push("\\n");
                                                      if(!_loc10_)
                                                      {
                                                         _loc2_ = §§pop() + §§pop();
                                                         break loop5;
                                                      }
                                                      §§goto(addr230);
                                                      break;
                                                   case 5:
                                                      _loc2_ += "\\r";
                                                      if(_loc9_ || param1)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop0;
                                                   case 6:
                                                      addr167:
                                                      §§push(_loc2_ + "\\t");
                                                      if(!_loc10_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc9_)
                                                         {
                                                            break loop5;
                                                         }
                                                         addr411:
                                                         §§push("\"");
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop() + _loc2_);
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               addr423:
                                                               §§push(§§pop() + "\"");
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                      }
                                                      §§goto(addr423);
                                                   default:
                                                      continue;
                                                }
                                                addr386:
                                             }
                                             else
                                             {
                                                §§push("\b");
                                                if(!_loc10_)
                                                {
                                                   if(§§pop() === _loc8_)
                                                   {
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         addr322:
                                                         §§push(2);
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr325);
                                                         }
                                                         else
                                                         {
                                                            addr346:
                                                            §§goto(addr386);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr338:
                                                         §§push(3);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            §§goto(addr346);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr386);
                                                   }
                                                   else
                                                   {
                                                      §§push("\f");
                                                      if(_loc9_)
                                                      {
                                                         if(§§pop() === _loc8_)
                                                         {
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               §§goto(addr338);
                                                            }
                                                            else
                                                            {
                                                               addr373:
                                                               §§goto(addr386);
                                                               §§push(5);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                         else
                                                         {
                                                            §§push("\n");
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                   }
                                                   §§goto(addr386);
                                                }
                                                if(§§pop() === _loc8_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§push(4);
                                                      if(_loc10_ && this)
                                                      {
                                                         addr381:
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr362:
                                                   §§push("\r");
                                                   §§push(_loc8_);
                                                   if(_loc9_)
                                                   {
                                                      addr365:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc9_ || param1)
                                                         {
                                                            §§goto(addr373);
                                                         }
                                                         else
                                                         {
                                                            addr378:
                                                            §§push(6);
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr381);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("\t");
                                                         §§push(_loc8_);
                                                      }
                                                      §§goto(addr378);
                                                   }
                                                   if(§§pop() !== §§pop())
                                                   {
                                                      §§goto(addr386);
                                                      §§push(7);
                                                   }
                                                }
                                                §§goto(addr386);
                                             }
                                             §§goto(addr378);
                                          }
                                          §§goto(addr365);
                                       }
                                       §§goto(addr362);
                                    }
                                    §§goto(addr386);
                                 }
                                 §§goto(addr298);
                              }
                              §§goto(addr322);
                           }
                           _loc5_++;
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr411);
            }
         }
      }
      
      private function §7!+§(param1:Array) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     §§push("[");
                     if(_loc4_)
                     {
                        §§push(§§pop() + _loc2_);
                        if(_loc4_)
                        {
                           addr37:
                           §§push(§§pop() + "]");
                        }
                        if(!(_loc5_ && this))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr108:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + this.§&<§(param1[_loc3_]));
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(!_loc5_)
                                 {
                                    _loc2_ = §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       _loc3_++;
                                       addr61:
                                       do
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       while(!(_loc4_ || _loc3_));
                                       
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(§§pop().length <= 0)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    addr101:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    break loop3;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr37);
                  }
                  §§goto(addr108);
               }
               §§goto(addr61);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr101);
         }
         return §§pop();
      }
      
      private function §4c§(param1:Object) : String
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               §§push(null);
               while(true)
               {
                  §§pop().§§slot[5] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     §§push(null);
                     if(_loc11_)
                     {
                        break;
                     }
                     if(_loc10_ || _loc2_)
                     {
                        §§pop().§§slot[6] = §§pop();
                        §§push(§§newactivation());
                        loop4:
                        for(; !_loc11_; §§push(§§newactivation()),if(_loc11_)
                        {
                           continue;
                        },§§pop().§§slot[3] = describeType(o),if(_loc10_ || this)
                        {
                           if(!_loc11_)
                           {
                              if(!_loc11_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr44);
                                 }
                                 if(classInfo.@name.toString() == "Object")
                                 {
                                    §§goto(addr90);
                                 }
                                 else
                                 {
                                    _loc3_ = 0;
                                    if(_loc10_)
                                    {
                                       §§goto(addr273);
                                    }
                                 }
                                 §§goto(addr594);
                              }
                              §§goto(addr57);
                           }
                           §§goto(addr48);
                        },§§goto(addr90))
                        {
                           §§pop().§§slot[1] = param1;
                           while(true)
                           {
                              addr44:
                              while(true)
                              {
                                 var s:String = "";
                                 addr48:
                                 addr90:
                                 while(true)
                                 {
                                    if(!_loc11_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                                 addr90:
                                 var _loc3_:int = 0;
                                 var _loc4_:* = o;
                                 addr256:
                                 §§push(§§hasnext(_loc4_,_loc3_));
                                 if(!_loc11_)
                                 {
                                    if(§§pop())
                                    {
                                       addr254:
                                       var key:String = §§nextname(_loc3_,_loc4_);
                                       addr240:
                                       var value:Object = o[key];
                                       addr197:
                                       addr255:
                                       addr250:
                                       addr239:
                                       addr246:
                                       §§push(§§newactivation());
                                       if(_loc10_ || _loc3_)
                                       {
                                          if(§§pop().§§slot[4] is Function)
                                          {
                                             addr210:
                                             §§goto(addr256);
                                          }
                                          addr212:
                                          if(s.length > 0)
                                          {
                                             if(_loc10_ || _loc2_)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   addr235:
                                                   s += ",";
                                                   addr236:
                                                   addr233:
                                                   addr234:
                                                   addr232:
                                                   §§push(§§newactivation());
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            if(_loc10_ || param1)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop().§§slot[2]);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(this.§#Y§(key) + ":");
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + this.§&<§(value));
                                                                        }
                                                                        if(_loc10_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              addr169:
                                                                              §§push(§§pop());
                                                                              if(!(_loc11_ && this))
                                                                              {
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    §§pop().§§slot[2] = §§pop();
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr197);
                                                                                             }
                                                                                             §§goto(addr256);
                                                                                          }
                                                                                          §§goto(addr255);
                                                                                       }
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    §§goto(addr236);
                                                                                 }
                                                                                 §§goto(addr254);
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                           §§goto(addr235);
                                                                        }
                                                                        §§goto(addr234);
                                                                     }
                                                                     §§goto(addr169);
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   addr231:
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr246);
                                             }
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                    if(_loc10_)
                                    {
                                       if(_loc10_)
                                       {
                                          if(_loc11_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr273:
                                          var _loc6_:int = 0;
                                          var _loc7_:* = §§checkfilter(classInfo..§*§);
                                          var _loc5_:* = new XMLList("");
                                          if(_loc11_)
                                          {
                                          }
                                          addr392:
                                          for each(var _loc8_ in _loc7_)
                                          {
                                             var _loc9_:*;
                                             with(_loc9_ = _loc8_)
                                             {
                                                
                                                if(_loc10_ || _loc3_)
                                                {
                                                   §§push(name() == "variable");
                                                   if(!(_loc11_ && this))
                                                   {
                                                      addr386:
                                                      if(!§§pop())
                                                      {
                                                         addr387:
                                                         §§pop();
                                                         addr349:
                                                         addr388:
                                                         §§push(name() == "accessor");
                                                         if(_loc10_ || this)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr370:
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§pop();
                                                                     addr373:
                                                                     §§push(attribute("access").charAt(0) == "r");
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        addr330:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 _loc5_[_loc6_] = _loc8_;
                                                                                 addr345:
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr347:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                    addr389:
                                                                                 }
                                                                                 §§goto(addr392);
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                        §§goto(addr345);
                                                                     }
                                                                     §§goto(addr389);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr387);
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr370);
                                                   }
                                                   §§goto(addr330);
                                                }
                                                §§goto(addr387);
                                             }
                                             §§goto(addr347);
                                          }
                                          _loc4_ = _loc5_;
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             addr591:
                                             if(§§hasnext(_loc4_,_loc3_))
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc11_ && param1))
                                                {
                                                   §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                   §§push(§§newactivation());
                                                   if(!_loc11_)
                                                   {
                                                      §§push(Boolean(§§pop().§§slot[6].metadata));
                                                      if(_loc10_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               §§pop();
                                                               _loc6_ = 0;
                                                               _loc7_ = §§checkfilter(v.metadata);
                                                               _loc5_ = new XMLList("");
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                               }
                                                               addr484:
                                                               for each(_loc8_ in _loc7_)
                                                               {
                                                                  with(_loc8_)
                                                                  {
                                                                     
                                                                     if(_loc10_)
                                                                     {
                                                                        if(@name == "Transient")
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              _loc5_[_loc6_] = _loc8_;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr484);
                                                               }
                                                               addr493:
                                                               if(_loc5_.length() > 0)
                                                               {
                                                                  if(!(_loc11_ && _loc2_))
                                                                  {
                                                                     §§goto(addr591);
                                                                  }
                                                                  addr554:
                                                                  §§push(§§newactivation());
                                                                  §§push(s);
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr589:
                                                                     §§push(this.§#Y§(v.@name.toString()) + ":");
                                                                     if(_loc10_)
                                                                     {
                                                                        addr579:
                                                                        §§push(§§pop() + this.§&<§(o[v.@name]));
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§pop().§§slot[2] = §§pop();
                                                                  §§goto(addr591);
                                                               }
                                                               §§push(§§newactivation());
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  addr510:
                                                                  if(§§pop().§§slot[2].length > 0)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr516:
                                                                        §§push(§§newactivation());
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           addr524:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(§§pop().§§slot[2]);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(",");
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       §§pop().§§slot[2] = §§pop();
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                       §§goto(addr591);
                                                                                    }
                                                                                    §§goto(addr589);
                                                                                 }
                                                                                 §§goto(addr579);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr554);
                                                                     }
                                                                     §§goto(addr591);
                                                                  }
                                                                  §§goto(addr554);
                                                               }
                                                               §§goto(addr524);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr493);
                                                   }
                                                   §§goto(addr510);
                                                }
                                                §§goto(addr554);
                                             }
                                             addr595:
                                             §§push("{");
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() + s);
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() + "}");
                                                }
                                             }
                                             return §§pop();
                                             addr593:
                                             addr594:
                                          }
                                          §§goto(addr516);
                                       }
                                       §§goto(addr595);
                                    }
                                    §§goto(addr593);
                                 }
                                 §§goto(addr591);
                              }
                           }
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
   }
}
