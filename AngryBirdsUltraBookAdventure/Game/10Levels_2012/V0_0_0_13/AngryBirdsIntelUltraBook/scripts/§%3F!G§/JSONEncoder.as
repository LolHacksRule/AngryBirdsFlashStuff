package §?!G§
{
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class JSONEncoder
   {
       
      
      private var §0!#§:String;
      
      public function JSONEncoder(param1:*)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.§0!#§ = this.§3A§(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public function getString() : String
      {
         return this.§0!#§;
      }
      
      private function §3A§(param1:*) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(!(_loc7_ && _loc3_))
         {
            if(getQualifiedClassName(param1).indexOf("__AS3__.vec::Vector") == 0)
            {
               addr36:
               _loc2_ = new Array();
               for each(_loc3_ in param1)
               {
                  if(!(_loc7_ && this))
                  {
                     _loc2_.push(_loc3_);
                  }
               }
               param1 = _loc2_;
            }
            §§push(param1 is String);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§push(this.§=!g§(param1 as String));
                     if(_loc6_ || _loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr294);
                  }
               }
               else
               {
                  §§push(param1 is Number);
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(param1 is Boolean);
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push(Boolean(param1));
                                       loop2:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push("false");
                                             break;
                                          }
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr275:
                                             §§push("true");
                                          }
                                          else
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                addr224:
                                                while(true)
                                                {
                                                   §§push(param1 is Array);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr250:
                                                               §§push(this.§`!b§(param1 as Array));
                                                               if(!_loc7_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr308:
                                                               §§push(param1.toString());
                                                               if(_loc7_ && _loc3_)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr321);
                                                         }
                                                         loop5:
                                                         while(true)
                                                         {
                                                            addr180:
                                                            while(true)
                                                            {
                                                               §§push(param1 is Object);
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               loop7:
                                                               for(; _loc6_ || this; if(_loc7_ && param1)
                                                               {
                                                                  continue;
                                                               },if(_loc7_)
                                                               {
                                                                  continue loop0;
                                                               },§§goto(addr143))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!(_loc6_ || param1))
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§push(this.§6!?§(param1));
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr294);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr250);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr320:
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 §§push(param1 == null);
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                                 addr132:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr210:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr301:
                                                                                 if(!isFinite(param1 as Number))
                                                                                 {
                                                                                    §§push("null");
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                           }
                                                                           §§push(§§pop());
                                                                        }
                                                                        addr321:
                                                                        return §§pop();
                                                                     }
                                                                     §§push("null");
                                                                     if(_loc7_)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     if(!_loc7_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     addr276:
                                                                     §§push(§§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                     }
                                                                     addr294:
                                                                     return §§pop();
                                                                     addr143:
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr276);
                                       }
                                       if(_loc6_)
                                       {
                                          §§goto(addr294);
                                          §§push(§§pop());
                                       }
                                       else
                                       {
                                          §§goto(addr320);
                                       }
                                       addr267:
                                    }
                                    §§goto(addr275);
                                 }
                                 §§goto(addr224);
                              }
                              addr262:
                           }
                           §§goto(addr267);
                        }
                     }
                  }
               }
               §§goto(addr301);
            }
            §§goto(addr262);
         }
         §§goto(addr36);
      }
      
      private function §=!g§(param1:String) : String
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         §§push(0);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(§§pop() < _loc4_)
            {
               §§push(param1);
               loop2:
               while(true)
               {
                  §§push(_loc5_);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop().charAt(§§pop()));
                     loop4:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop6:
                           while(true)
                           {
                              var _loc8_:* = §§pop();
                              if(!(_loc9_ && param1))
                              {
                                 §§push("\"");
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(_loc8_);
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             §§push(0);
                                             if(_loc9_ && param1)
                                             {
                                                addr556:
                                             }
                                          }
                                          else
                                          {
                                             addr512:
                                             §§push(1);
                                             if(!_loc10_)
                                             {
                                                addr579:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("\\");
                                          if(!_loc9_)
                                          {
                                             §§push(_loc8_);
                                             if(_loc10_ || param1)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§goto(addr512);
                                                   }
                                                   addr634:
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      loop22:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            addr440:
                                                            _loc2_ += "\\\"";
                                                            addr650:
                                                            §§push(_loc5_);
                                                            if(_loc10_)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop1;
                                                            break;
                                                            addr438:
                                                            addr441:
                                                            addr437:
                                                            addr439:
                                                         case 1:
                                                            addr424:
                                                            §§push(_loc2_);
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr431:
                                                               _loc2_ = §§pop() + "\\\\";
                                                               §§goto(addr650);
                                                               addr430:
                                                            }
                                                            continue loop4;
                                                            addr429:
                                                            addr432:
                                                            break;
                                                         case 2:
                                                            addr414:
                                                            §§push(_loc2_);
                                                            §§push("\\b");
                                                            if(!_loc9_)
                                                            {
                                                               addr418:
                                                               _loc2_ = §§pop() + §§pop();
                                                               addr417:
                                                               addr419:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr438);
                                                            }
                                                            §§goto(addr650);
                                                         case 3:
                                                            addr402:
                                                            §§push(_loc2_ + "\\f");
                                                            if(!_loc9_)
                                                            {
                                                               addr407:
                                                               _loc2_ = §§pop();
                                                               addr408:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr430);
                                                            }
                                                            §§goto(addr650);
                                                         case 4:
                                                            addr359:
                                                            §§push(_loc2_);
                                                            §§push("\\n");
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc10_ || this)
                                                               {
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     addr382:
                                                                     §§push(§§pop());
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr390:
                                                                        if(!(_loc10_ || this))
                                                                        {
                                                                           §§goto(addr441);
                                                                        }
                                                                        §§goto(addr650);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr437);
                                                                     }
                                                                  }
                                                                  §§goto(addr439);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr414);
                                                            §§goto(addr650);
                                                         case 5:
                                                            addr312:
                                                            §§push(_loc2_);
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  addr322:
                                                                  §§push("\\r");
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     addr330:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        addr351:
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr650);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr390);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr417);
                                                                     }
                                                                     §§goto(addr650);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr359);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr424);
                                                               }
                                                               §§goto(addr650);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr359);
                                                            }
                                                         case 6:
                                                            addr299:
                                                            §§push(_loc2_);
                                                            §§push("\\t");
                                                            if(!_loc9_)
                                                            {
                                                               addr303:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  addr306:
                                                                  _loc2_ = §§pop();
                                                                  addr307:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr330);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr429);
                                                            }
                                                            §§goto(addr650);
                                                         default:
                                                            §§push(_loc3_);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(" ");
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!(_loc10_ || _loc3_))
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() + _loc3_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              if(!(_loc10_ || this))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(!(_loc9_ && _loc2_))
                                                                                                            {
                                                                                                               §§push("\\u");
                                                                                                               if(_loc10_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr144:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc10_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                        }
                                                                                                                        if(!(_loc10_ || this))
                                                                                                                        {
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                          loop17:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop().length == 2)
                                                                                                                                             {
                                                                                                                                                while(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr222:
                                                                                                                                                   §§push("00");
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  addr253:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr274:
                                                                                                                                                                                 while(_loc10_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().charCodeAt(§§pop()).toString(16));
                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop6;
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                                                                       while(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr351);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop3;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop5;
                                                                                                                                                                              }
                                                                                                                                                                              addr265:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr431);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr650);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr382);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr299);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr431);
                                                                                                                                                               }
                                                                                                                                                               addr252:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr402);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr431);
                                                                                                                                                         }
                                                                                                                                                         addr231:
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                      §§goto(addr222);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr303);
                                                                                                                                                }
                                                                                                                                                §§goto(addr419);
                                                                                                                                                addr220:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr234:
                                                                                                                                                §§push("000");
                                                                                                                                                while(!(_loc9_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr252);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr312);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr234);
                                                                                                                                                }
                                                                                                                                                addr235:
                                                                                                                                             }
                                                                                                                                             §§goto(addr402);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr306);
                                                                                                                                       addr168:
                                                                                                                                    }
                                                                                                                                    §§goto(addr223);
                                                                                                                                 }
                                                                                                                                 §§goto(addr235);
                                                                                                                              }
                                                                                                                              addr683:
                                                                                                                              §§push(§§pop() + _loc2_);
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 addr692:
                                                                                                                                 §§push(§§pop() + "\"");
                                                                                                                                 break loop22;
                                                                                                                              }
                                                                                                                              break loop22;
                                                                                                                           }
                                                                                                                           §§goto(addr322);
                                                                                                                        }
                                                                                                                        §§goto(addr299);
                                                                                                                     }
                                                                                                                     §§goto(addr144);
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr402);
                                                                                                               }
                                                                                                               §§goto(addr144);
                                                                                                            }
                                                                                                            §§goto(addr440);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr414);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                   }
                                                                                                   §§goto(addr282);
                                                                                                }
                                                                                                §§goto(addr231);
                                                                                             }
                                                                                             §§goto(addr253);
                                                                                          }
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr450:
                                                                                       }
                                                                                       §§goto(addr440);
                                                                                    }
                                                                                    §§goto(addr307);
                                                                                 }
                                                                                 §§goto(addr292);
                                                                              }
                                                                              §§goto(addr220);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr168);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                      }
                                                      return §§pop();
                                                   }
                                                   break;
                                                }
                                                §§push("\b");
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc10_ || this)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            addr535:
                                                            §§push(2);
                                                            if(!_loc10_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr571:
                                                            §§push(4);
                                                            if(!(_loc10_ || param1))
                                                            {
                                                               addr621:
                                                            }
                                                         }
                                                         §§goto(addr634);
                                                      }
                                                      else
                                                      {
                                                         §§push("\f");
                                                         if(!_loc9_)
                                                         {
                                                            addr542:
                                                            §§push(_loc8_);
                                                            if(_loc10_)
                                                            {
                                                               addr545:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     §§push(3);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§goto(addr556);
                                                                     }
                                                                     §§goto(addr634);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr571);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("\n");
                                                                  if(!_loc10_)
                                                                  {
                                                                  }
                                                                  addr588:
                                                                  §§push(_loc8_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr591:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           §§push(5);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§goto(addr634);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr621);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr624:
                                                                           §§push(7);
                                                                           if(_loc9_ && this)
                                                                           {
                                                                           }
                                                                           §§goto(addr634);
                                                                        }
                                                                        §§goto(addr634);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr610:
                                                                        if("\t" === _loc8_)
                                                                        {
                                                                           if(!(_loc9_ && _loc2_))
                                                                           {
                                                                              §§push(6);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§goto(addr621);
                                                                              }
                                                                              §§goto(addr634);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr624);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr624);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr634);
                                                                              §§push(7);
                                                                           }
                                                                           §§goto(addr634);
                                                                        }
                                                                        §§goto(addr624);
                                                                     }
                                                                  }
                                                                  §§goto(addr610);
                                                               }
                                                               §§goto(addr634);
                                                            }
                                                            §§goto(addr591);
                                                         }
                                                         §§push(_loc8_);
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  §§goto(addr571);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr624);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("\r");
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  §§goto(addr588);
                                                               }
                                                               §§goto(addr610);
                                                            }
                                                            §§goto(addr624);
                                                         }
                                                      }
                                                      §§goto(addr634);
                                                   }
                                                   §§goto(addr591);
                                                }
                                                §§goto(addr542);
                                                §§goto(addr624);
                                             }
                                             §§goto(addr545);
                                          }
                                          §§goto(addr542);
                                       }
                                       §§goto(addr634);
                                    }
                                    §§goto(addr610);
                                 }
                                 §§goto(addr588);
                              }
                              §§goto(addr535);
                           }
                           §§push(§§pop() + 1);
                           if(_loc10_)
                           {
                              §§push(int(§§pop()));
                              if(!(_loc9_ && this))
                              {
                                 _loc5_ = §§pop();
                                 if(_loc9_)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§push("\"");
            if(_loc10_)
            {
               §§goto(addr683);
            }
            §§goto(addr692);
         }
      }
      
      private function §`!b§(param1:Array) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = "";
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() >= param1.length)
                  {
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push("[");
                           if(_loc5_ || _loc2_)
                           {
                              §§push(§§pop() + _loc2_);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + "]");
                              }
                           }
                           if(_loc5_ || _loc2_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              addr159:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                           }
                           addr158:
                        }
                        loop5:
                        while(true)
                        {
                           addr103:
                           addr92:
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr121:
                                    §§push(§§pop() + this.§3A§(param1[_loc3_]));
                                    if(_loc5_ || param1)
                                    {
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop3;
                                          }
                                          addr155:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                          }
                                       }
                                       addr139:
                                    }
                                    §§goto(addr159);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr158);
                                 }
                              }
                              §§goto(addr121);
                              continue loop5;
                           }
                           §§push(_loc3_ + 1);
                           if(_loc5_ || _loc3_)
                           {
                              addr101:
                              _loc3_ = int(§§pop());
                              continue loop0;
                           }
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr139);
                  }
                  else
                  {
                     §§push(_loc2_);
                     if(_loc5_ || _loc3_)
                     {
                        if(§§pop().length > 0)
                        {
                           §§goto(addr155);
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr159);
               }
               §§goto(addr92);
            }
            §§goto(addr101);
         }
         return §§pop();
      }
      
      private function §6!?§(param1:Object) : String
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               if(_loc10_)
               {
                  §§push(§§newactivation());
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     addr107:
                     while(_loc10_ || this)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           §§pop().§§slot[5] = §§pop();
                           addr116:
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop2;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
               addr130:
               var _loc3_:int = 0;
               var _loc4_:* = o;
               addr280:
               §§push(§§hasnext(_loc4_,_loc3_));
               if(!(_loc11_ && param1))
               {
                  if(§§pop())
                  {
                     addr278:
                     var key:String = §§nextname(_loc3_,_loc4_);
                     addr264:
                     var value:Object = o[key];
                     addr279:
                     addr270:
                     addr263:
                     addr274:
                     §§push(§§newactivation());
                     if(_loc10_ || this)
                     {
                        if(§§pop().§§slot[4] is Function)
                        {
                           if(!_loc11_)
                           {
                              if(_loc10_ || this)
                              {
                                 if(_loc10_)
                                 {
                                    §§goto(addr280);
                                 }
                                 §§goto(addr279);
                              }
                              §§goto(addr270);
                           }
                           addr260:
                           §§push(§§newactivation());
                           if(!(_loc11_ && _loc2_))
                           {
                              if(!_loc11_)
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    if(_loc10_ || param1)
                                    {
                                       §§push(§§pop().§§slot[2]);
                                       if(_loc10_)
                                       {
                                          if(_loc10_)
                                          {
                                             addr254:
                                             if(!_loc11_)
                                             {
                                                §§push(this.§=!g§(key) + ":");
                                                if(_loc10_ || _loc3_)
                                                {
                                                   §§push(§§pop() + this.§3A§(value));
                                                }
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc10_ || param1)
                                                   {
                                                      addr199:
                                                      §§pop().§§slot[2] = §§pop();
                                                      if(!_loc11_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr279);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   addr256:
                                                   §§push(§§pop());
                                                   if(_loc10_)
                                                   {
                                                      §§pop().§§slot[2] = §§pop();
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                addr255:
                                                §§goto(addr256);
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr255);
                                             §§push(",");
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr264);
                                 }
                                 addr253:
                                 §§goto(addr254);
                                 §§push(§§pop().§§slot[2]);
                              }
                              §§goto(addr263);
                           }
                           addr250:
                           if(!_loc11_)
                           {
                              §§goto(addr253);
                              §§push(§§newactivation());
                           }
                           §§goto(addr274);
                        }
                        §§push(§§newactivation());
                        if(!(_loc11_ && _loc3_))
                        {
                           if(§§pop().§§slot[2].length > 0)
                           {
                              if(!(_loc11_ && this))
                              {
                                 §§goto(addr250);
                                 §§push(§§newactivation());
                              }
                           }
                           §§goto(addr260);
                        }
                     }
                     §§goto(addr250);
                  }
                  if(!_loc11_)
                  {
                     if(_loc10_)
                     {
                        if(!_loc10_)
                        {
                        }
                     }
                     else
                     {
                        §§goto(addr302);
                     }
                     §§goto(addr709);
                  }
                  §§goto(addr302);
               }
               §§goto(addr705);
            }
            if(!(_loc10_ || this))
            {
               continue;
            }
            §§push("");
            if(!_loc11_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc10_ || _loc3_)
               {
                  if(_loc10_)
                  {
                     §§push(§§newactivation());
                     if(_loc10_)
                     {
                        §§pop().§§slot[3] = describeType(o);
                        if(!_loc11_)
                        {
                           if(false)
                           {
                              §§goto(addr35);
                           }
                           §§push(§§newactivation());
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr79);
               }
               §§goto(addr130);
            }
            §§goto(addr115);
         }
      }
   }
}
