package §_-05L§
{
   import §_-01E§.§_-00n§;
   import com.angrybirds.friendsbar.OverallIntelScorePlateGFX;
   import flash.text.TextFieldAutoSize;
   
   public class §_-TN§ extends §_-Po§
   {
       
      
      private var §_-nQ§:OverallIntelScorePlateGFX;
      
      public function §_-TN§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            do
            {
               this.init();
            }
            while(!_loc2_);
            
         }
      }
      
      private static function § case§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
            if(!_loc14_)
            {
               §§push(int(§§pop().length));
               if(_loc13_ || param3)
               {
               }
               addr66:
               §§push(int(§§pop()));
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
            if(_loc13_)
            {
               §§push(_loc8_);
               if(!_loc14_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc14_)
                  {
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                           addr80:
                           §§pop();
                           if(_loc13_ || param3)
                           {
                              §§push(param3);
                              if(_loc13_)
                              {
                                 addr91:
                                 §§push(!§§pop());
                                 if(_loc13_ || param3)
                                 {
                                    addr99:
                                    if(§§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          addr126:
                                          var _loc10_:* = (_loc13_ || param3 ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          §§push("");
                                          if(_loc13_)
                                          {
                                             if(param3)
                                             {
                                                if(_loc13_)
                                                {
                                                   addr181:
                                                   _loc11_ = 0;
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(!(_loc14_ && param3))
                                                      {
                                                         §§push(param2);
                                                         if(_loc13_ || param3)
                                                         {
                                                            if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                            {
                                                               if(_loc13_ || param2)
                                                               {
                                                                  addr220:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc13_ || param2)
                                                               {
                                                                  §§push(§§pop() + "0");
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        _loc11_++;
                                                                        if(_loc13_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(".");
                                                                           if(_loc13_ || param2)
                                                                           {
                                                                              §§push(§§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                                 if(!(_loc14_ && param1))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc10_ = §§pop();
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          addr266:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             break loop1;
                                                                                          }
                                                                                          addr266:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr307:
                                                                                    §§push(_loc7_);
                                                                                    addr263:
                                                                                 }
                                                                                 return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                                              }
                                                                              addr238:
                                                                           }
                                                                           addr237:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr238);
                                                                           }
                                                                        }
                                                                        addr226:
                                                                     }
                                                                     §§goto(addr307);
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc14_ && param3))
                                                            {
                                                               if(_loc7_.substr(0,1) == "-")
                                                               {
                                                                  addr293:
                                                                  if(_loc9_ < (_loc13_ || §_-TN§ ? §§pop() - 1 : §§pop()))
                                                                  {
                                                                     if(param4)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§goto(addr226);
                                                                        }
                                                                        §§goto(addr266);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(",");
                                                                     }
                                                                     §§goto(addr237);
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc9_);
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§goto(addr293);
                                                         }
                                                         addr268:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr268);
                                                      §§goto(addr266);
                                                   }
                                                }
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr181);
                                       }
                                       else
                                       {
                                          addr114:
                                          §§push(",");
                                          if(_loc13_ || param2)
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
                                       addr113:
                                       if(param4)
                                       {
                                          §§goto(addr114);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr125);
                                    }
                                 }
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr113);
               }
               §§goto(addr80);
            }
            §§goto(addr126);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr61);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            addChild(this.§_-nQ§ = new OverallIntelScorePlateGFX());
            if(!(_loc3_ && _loc1_))
            {
               addr45:
               this.§_-nQ§.§_-y8§.autoSize = TextFieldAutoSize.LEFT;
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(data)
            {
               loop0:
               while(true)
               {
                  §§push(this.§_-nQ§);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!§_-h7§)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(§§pop());
                           addr143:
                           while(true)
                           {
                              §§pop().gotoAndStop(§§pop());
                              addr144:
                              loop4:
                              while(true)
                              {
                                 §_-0-m§();
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       §§push(this.§_-nQ§);
                                       loop6:
                                       while(true)
                                       {
                                          §§pop().§_-AQ§.text = this.§_-F7§.userName || "";
                                          while(_loc1_)
                                          {
                                             if(_loc2_ && _loc1_)
                                             {
                                                break loop6;
                                             }
                                             §§push(this.§_-nQ§);
                                             continue loop6;
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc1_)
                                                {
                                                   return;
                                                }
                                                addr147:
                                                return;
                                             }
                                          }
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        addr142:
                     }
                  }
                  while(true)
                  {
                     §§push(2);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                     }
                     else
                     {
                        §§goto(addr142);
                     }
                     §§goto(addr143);
                  }
               }
            }
            §§goto(addr147);
         }
         §§goto(addr144);
      }
      
      public function get §_-F7§() : §_-00n§
      {
         return §_-00n§(data);
      }
   }
}
