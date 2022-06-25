package §#!"§
{
   import §#&§.§35§;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §%s§ extends §+M§
   {
       
      
      private var §0!p§:OverallIntelScorePlateGFX;
      
      public function §%s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.init();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      private static function §4!w§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         if(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1)
         {
            §§push(_loc7_);
            if(_loc13_)
            {
               §§push(int(§§pop().length));
               if(_loc13_ || §%s§)
               {
                  addr66:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               addr61:
               §§push(int(§§pop().indexOf(".")));
               if(_loc13_)
               {
                  §§goto(addr66);
               }
            }
            var _loc9_:* = §§pop();
            if(_loc13_ || param1)
            {
               §§push(_loc8_);
               if(!(_loc14_ && §%s§))
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc14_)
                  {
                     if(§§pop())
                     {
                        if(!_loc14_)
                        {
                           addr90:
                           §§pop();
                           if(_loc13_)
                           {
                              addr93:
                              §§push(param3);
                              if(_loc13_ || param3)
                              {
                                 addr101:
                                 §§push(!§§pop());
                                 if(_loc13_)
                                 {
                                    addr104:
                                    if(§§pop())
                                    {
                                       if(_loc13_ || param3)
                                       {
                                          var _loc10_:* = (!_loc14_ ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          addr126:
                                          §§push("");
                                          if(_loc13_)
                                          {
                                             if(param3)
                                             {
                                                if(_loc13_)
                                                {
                                                   addr186:
                                                   _loc11_ = 0;
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(param2);
                                                         if(_loc13_)
                                                         {
                                                            if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  addr210:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break loop1;
                                                                  }
                                                                  addr256:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(".");
                                                                  if(_loc13_ || param3)
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                        if(_loc13_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(!(_loc14_ && §%s§))
                                                                              {
                                                                                 §§goto(addr256);
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr287:
                                                                           §§push(_loc7_);
                                                                           break;
                                                                           addr248:
                                                                        }
                                                                        break;
                                                                     }
                                                                     return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                                     addr228:
                                                                  }
                                                                  addr227:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr228);
                                                                  }
                                                               }
                                                               addr216:
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc13_ || param3)
                                                               {
                                                                  §§push(§§pop() + "0");
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        _loc11_++;
                                                                        if(!(_loc14_ && §%s§))
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr210);
                                                                     }
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc14_)
                                                            {
                                                               if(_loc7_.substr(0,1) == "-")
                                                               {
                                                                  addr278:
                                                                  if(_loc9_ < (!!_loc13_ ? §§pop() - 1 : §§pop()))
                                                                  {
                                                                     if(param4)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§goto(addr216);
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(",");
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc9_);
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         addr268:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr268);
                                                   }
                                                }
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr186);
                                       }
                                       else
                                       {
                                          addr119:
                                          §§push(",");
                                          if(_loc13_)
                                          {
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             §§goto(addr125);
                                          }
                                          §§goto(addr126);
                                       }
                                    }
                                    else
                                    {
                                       addr118:
                                       if(param4)
                                       {
                                          §§goto(addr119);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr125);
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr118);
               }
               §§goto(addr90);
            }
            §§goto(addr93);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr61);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            addChild(this.§0!p§ = new OverallIntelScorePlateGFX());
            if(_loc3_ || _loc3_)
            {
               this.§0!p§.§2!g§.autoSize = TextFieldAutoSize.LEFT;
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!data)
            {
               if(_loc1_ || _loc2_)
               {
                  return;
               }
               while(true)
               {
               }
               addr163:
            }
            loop1:
            while(true)
            {
               §§push(this.§0!p§);
               loop2:
               while(true)
               {
                  if(!§8B§)
                  {
                     §§push(1);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        addr151:
                        addr139:
                        while(true)
                        {
                           §§pop().gotoAndStop(§§pop());
                           addr152:
                           loop6:
                           while(true)
                           {
                              §!R§();
                              loop7:
                              while(true)
                              {
                                 §§push(this.§0!p§);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().§ F§.text = this.§;!J§.userName || "";
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop7;
                                       }
                                       if(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(this.§0!p§);
                                       while(true)
                                       {
                                          §§pop().§3!c§.text = this.§;!J§.§`x§.toString() || "0";
                                          §§push(this.§0!p§);
                                          addr101:
                                          continue loop6;
                                          if(_loc1_)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       addr62:
                                       if(!(_loc2_ && this))
                                       {
                                          return;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(2);
                           if(!(_loc1_ || this))
                           {
                              continue loop3;
                           }
                           §§goto(addr151);
                           §§push(§§pop());
                        }
                     }
                  }
                  §§goto(addr139);
               }
            }
         }
         §§goto(addr152);
      }
      
      public function get §;!J§() : §35§
      {
         return §35§(data);
      }
   }
}
