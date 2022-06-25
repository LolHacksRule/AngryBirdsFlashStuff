package §]z§
{
   import §4[§.§-w§;
   import §>§.§[0§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §%!r§ extends §1!?§
   {
       
      
      private var §]!Q§:LevelScorePlateAsset;
      
      public function §%!r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         do
         {
            this.init();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private static function §3R§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         if(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1)
         {
            §§push(_loc7_);
            if(_loc14_ || param3)
            {
               §§push(int(§§pop().length));
               if(_loc14_)
               {
                  addr72:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               addr62:
               §§push(int(§§pop().indexOf(".")));
               if(_loc14_ || §%!r§)
               {
                  §§goto(addr72);
               }
            }
            var _loc9_:* = §§pop();
            if(!_loc13_)
            {
               §§push(_loc8_);
               if(_loc14_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc13_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           addr86:
                           §§pop();
                           if(!_loc13_)
                           {
                              addr89:
                              §§push(param3);
                              if(!(_loc13_ && param3))
                              {
                                 §§push(!§§pop());
                                 if(!(_loc13_ && §%!r§))
                                 {
                                    addr105:
                                    if(§§pop())
                                    {
                                       if(!_loc13_)
                                       {
                                          addr127:
                                          var _loc10_:* = (!(_loc13_ && param3) ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          §§push("");
                                          if(_loc14_ || param1)
                                          {
                                             if(param3)
                                             {
                                                if(!_loc13_)
                                                {
                                                   _loc11_ = 0;
                                                   addr189:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(param2);
                                                            if(!_loc13_)
                                                            {
                                                               if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                               {
                                                                  if(_loc14_ || param3)
                                                                  {
                                                                     addr216:
                                                                     do
                                                                     {
                                                                        §§push(_loc5_);
                                                                        break loop2;
                                                                        _loc10_ = §§pop();
                                                                     }
                                                                     while(!(_loc13_ && param3));
                                                                     
                                                                     addr262:
                                                                  }
                                                                  addr298:
                                                                  §§push(_loc7_);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(§§pop() + "0");
                                                                     if(_loc14_ || param3)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(!(_loc13_ && param3))
                                                                        {
                                                                           _loc11_++;
                                                                           if(!_loc13_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§goto(addr298);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr229:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                              if(_loc14_ || param3)
                                                                              {
                                                                                 §§goto(addr254);
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                        addr225:
                                                                     }
                                                                  }
                                                               }
                                                               return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc13_ && param2))
                                                               {
                                                                  if(_loc7_.substr(0,1) == "-")
                                                                  {
                                                                     addr289:
                                                                     if(_loc9_ < (!!_loc14_ ? §§pop() - 1 : §§pop()))
                                                                     {
                                                                        if(param4)
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              §§push(".");
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§goto(addr225);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr228:
                                                                                 §§push(§§pop());
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                           §§goto(addr298);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(",");
                                                                        }
                                                                        §§goto(addr228);
                                                                     }
                                                                     §§goto(addr298);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc9_);
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            addr264:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr264);
                                                         §§goto(addr262);
                                                      }
                                                   }
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr189);
                                       }
                                       else
                                       {
                                          addr120:
                                          §§push(",");
                                          if(_loc14_)
                                          {
                                             §§goto(addr123);
                                          }
                                          else
                                          {
                                             addr126:
                                             §§push(§§pop());
                                          }
                                          §§goto(addr127);
                                       }
                                    }
                                    else
                                    {
                                       addr119:
                                       if(param4)
                                       {
                                          §§goto(addr120);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr127);
                        }
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr89);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr62);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            addChild(this.§]!Q§ = new LevelScorePlateAsset());
            if(!(_loc2_ && _loc2_))
            {
               this.§]!Q§.§-!A§.stop();
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§1p§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     loop20:
                     while(true)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(this.§1p§);
                           if(!(_loc2_ && this))
                           {
                              if(_loc1_)
                              {
                                 addr248:
                                 §§push(§§pop().§=!w§);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(0);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(!_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc2_)
                                                   {
                                                      addr269:
                                                      if(!§§pop())
                                                      {
                                                         while(!_loc2_)
                                                         {
                                                            §§pop();
                                                            continue loop20;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            break loop18;
                                                         }
                                                         addr296:
                                                         addr313:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(this.§]!Q§);
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§pop().§-!A§.visible = false;
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(this.§]!Q§);
                                                                  loop24:
                                                                  for(; !_loc2_; loop26:
                                                                  while(_loc1_ || this)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        continue loop22;
                                                                     }
                                                                     §§pop().§4!`§.text = this.§1p§.§0v§.toString() || "";
                                                                     loop27:
                                                                     for(; _loc1_; if(!(_loc1_ || _loc1_))
                                                                     {
                                                                        continue;
                                                                     },if(_loc1_)
                                                                     {
                                                                        addr316:
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§goto(addr95);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§1p§);
                                                                           continue loop0;
                                                                        }
                                                                        addr316:
                                                                     },§§goto(addr205))
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§]!Q§);
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§1!A§.text = §3R§(this.§1p§.§'!j§) || "0";
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§]!Q§);
                                                                                 loop31:
                                                                                 for(; !_loc2_; if(_loc2_ && _loc1_)
                                                                                 {
                                                                                    continue;
                                                                                 },if(_loc1_)
                                                                                 {
                                                                                    §§goto(addr47);
                                                                                 },§§goto(addr225))
                                                                                 {
                                                                                    §§pop().mcStar1.visible = this.§1p§.stars >= 1;
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§]!Q§);
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             continue loop29;
                                                                                          }
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop26;
                                                                                          }
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§pop().mcStar2.visible = this.§1p§.stars >= 2;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                continue loop30;
                                                                                             }
                                                                                             continue loop32;
                                                                                             addr47:
                                                                                             §§pop().mcStar3.visible = this.§1p§.stars >= 3;
                                                                                             if(_loc2_ && _loc2_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr346);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc2_ && _loc1_))
                                                                                             {
                                                                                                if(!(_loc2_ && this))
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop28;
                                                                                                }
                                                                                                addr276:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§]!Q§);
                                                                                                   addr225:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§4!`§.visible = false;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr228:
                                                                                             while(_loc1_ || _loc1_)
                                                                                             {
                                                                                                §§push(this.§]!Q§);
                                                                                                break loop33;
                                                                                             }
                                                                                          }
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             §§push(this.§1p§);
                                                                                             break loop20;
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                          addr95:
                                                                                          §§push(this.§]!Q§);
                                                                                          if(_loc1_ || _loc2_)
                                                                                          {
                                                                                             continue loop31;
                                                                                          }
                                                                                       }
                                                                                       while(!(_loc2_ && this))
                                                                                       {
                                                                                          §§pop().§-!A§.gotoAndStop(this.§1p§.§0v§);
                                                                                          §§goto(addr205);
                                                                                       }
                                                                                       addr273:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§-!A§.visible = true;
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr178);
                                                                  })
                                                                  {
                                                                     addr158:
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§pop().§4!`§.visible = true;
                                                                        while(!_loc2_)
                                                                        {
                                                                           §§push(this.§]!Q§);
                                                                           continue loop24;
                                                                        }
                                                                        continue loop23;
                                                                        addr178:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr350:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§1c§)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(2);
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 addr358:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().gotoAndStop(§§pop());
                                                                                 addr360:
                                                                                 while(true)
                                                                                 {
                                                                                    §3!F§();
                                                                                    addr346:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§]!Q§);
                                                                                       break loop24;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr352:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(1);
                                                                        }
                                                                        §§goto(addr358);
                                                                        §§goto(addr158);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().§3"§.text = this.§1p§.userName || "";
                                                                     §§goto(addr340);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr273);
                                                            §§goto(addr228);
                                                         }
                                                      }
                                                      addr269:
                                                   }
                                                   break;
                                                }
                                                addr315:
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§goto(addr316);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr315);
                                                }
                                                else
                                                {
                                                   §§goto(addr269);
                                                }
                                             }
                                             addr290:
                                          }
                                          §§goto(addr269);
                                       }
                                       §§goto(addr296);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr289:
                                    }
                                    §§goto(addr290);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§goto(addr248);
                                    }
                                    addr288:
                                 }
                                 §§goto(addr289);
                              }
                              break;
                           }
                           continue loop0;
                           addr306:
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        §§goto(addr313);
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr350);
               }
            }
            return;
         }
         §§goto(addr221);
      }
      
      private function §-!4§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §[0§(§[0§.§1!=§,this.§1p§,true));
            do
            {
               this.§1p§.§6!s§ = false;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function get §1p§() : §-w§
      {
         return data as §-w§;
      }
   }
}
