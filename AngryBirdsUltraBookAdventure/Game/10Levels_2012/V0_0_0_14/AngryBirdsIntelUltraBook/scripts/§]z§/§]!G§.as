package §]z§
{
   import §4[§.§>!P§;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §]!G§ extends §1!?§
   {
       
      
      private var §]!Q§:OverallIntelScorePlateGFX;
      
      public function §]!G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
         do
         {
            this.init();
         }
         while(!(_loc2_ || _loc1_));
         
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
            if(_loc14_ || param2)
            {
               §§push(int(§§pop().length));
               if(_loc14_ || param3)
               {
                  addr77:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               addr67:
               §§push(int(§§pop().indexOf(".")));
               if(_loc14_ || §]!G§)
               {
                  §§goto(addr77);
               }
            }
            var _loc9_:* = §§pop();
            if(_loc14_)
            {
               §§push(_loc8_);
               if(_loc14_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc14_)
                  {
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                        }
                        addr100:
                        if(§§pop())
                        {
                           if(_loc14_)
                           {
                              addr127:
                              var _loc10_:* = (_loc14_ || param2 ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                              §§push("");
                              if(_loc14_)
                              {
                                 if(param3)
                                 {
                                    if(_loc14_ || param1)
                                    {
                                       _loc11_ = 0;
                                       addr184:
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
                                                if(_loc14_ || §]!G§)
                                                {
                                                   if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                   {
                                                      if(_loc14_ || param3)
                                                      {
                                                         addr216:
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            break loop2;
                                                            addr259:
                                                            while(true)
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(_loc13_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         addr262:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc10_);
                                                      if(!_loc13_)
                                                      {
                                                         addr238:
                                                         §§push(§§pop() + "0");
                                                         if(_loc14_ || param1)
                                                         {
                                                            _loc10_ = §§pop();
                                                            if(!_loc13_)
                                                            {
                                                               _loc11_++;
                                                               if(_loc14_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            addr239:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                               if(!_loc13_)
                                                               {
                                                                  §§goto(addr259);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr294);
                                                         }
                                                         addr238:
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   addr293:
                                                   addr294:
                                                   return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                   §§push(_loc7_);
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc13_)
                                                   {
                                                      if(_loc7_.substr(0,1) == "-")
                                                      {
                                                         addr284:
                                                         if(_loc9_ < (!_loc13_ ? §§pop() - 1 : §§pop()))
                                                         {
                                                            if(param4)
                                                            {
                                                               if(!(_loc13_ && §]!G§))
                                                               {
                                                                  §§push(".");
                                                                  if(!(_loc13_ && §]!G§))
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr238);
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            else
                                                            {
                                                               §§push(",");
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc9_);
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                   §§goto(addr284);
                                                }
                                                addr274:
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr274);
                                          }
                                       }
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr184);
                           }
                           else
                           {
                              addr115:
                              §§push(",");
                              if(_loc14_ || param1)
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
                           addr114:
                           if(param4)
                           {
                              §§goto(addr115);
                           }
                           else
                           {
                              §§push(".");
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr100);
                  }
                  §§pop();
                  if(_loc14_)
                  {
                     §§push(param3);
                     if(!_loc13_)
                     {
                        §§push(!§§pop());
                        if(_loc14_)
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr115);
               }
               §§goto(addr100);
            }
            §§goto(addr127);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr67);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            addChild(this.§]!Q§ = new OverallIntelScorePlateGFX());
            if(!(_loc2_ && _loc2_))
            {
               this.§]!Q§.§^=§.autoSize = TextFieldAutoSize.LEFT;
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(data)
            {
               loop0:
               while(true)
               {
                  §§push(this.§]!Q§);
                  loop1:
                  while(true)
                  {
                     if(!§1c§)
                     {
                        §§push(1);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              §§pop().gotoAndStop(§§pop());
                              loop4:
                              while(!(_loc2_ && _loc2_))
                              {
                                 §3!F§();
                                 loop5:
                                 for(; !_loc2_; while(_loc1_ || _loc2_)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       continue loop4;
                                    }
                                    §§push(this.§]!Q§);
                                    loop8:
                                    while(!_loc2_)
                                    {
                                       §§pop().§1!A§.text = this.§>d§.§6f§.toString() || "0";
                                       while(true)
                                       {
                                          §§push(this.§]!Q§);
                                          if(!(_loc1_ || this))
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc1_ || this)
                                             {
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          addr139:
                                          while(true)
                                          {
                                             §§push(2);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop());
                                                continue loop3;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr93);
                                    if(_loc2_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr62);
                                 })
                                 {
                                    §§push(this.§]!Q§);
                                    while(true)
                                    {
                                       §§pop().§3"§.text = this.§>d§.userName || "";
                                       continue loop5;
                                    }
                                 }
                                 return;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr139);
                  }
               }
            }
            §§goto(addr157);
         }
         §§goto(addr89);
      }
      
      public function get §>d§() : §>!P§
      {
         return §>!P§(data);
      }
   }
}
