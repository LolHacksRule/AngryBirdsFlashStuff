package §-5§
{
   import §4H§.§9?§;
   import §@! §.§[! §;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §?[§ extends § !<§
   {
       
      
      private var §=1§:LevelScorePlateAsset;
      
      public function §?[§()
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
            while(_loc1_);
            
         }
      }
      
      private static function §2>§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
            if(_loc13_ || §?[§)
            {
               §§push(int(§§pop().length));
               if(!_loc14_)
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
            if(!(_loc14_ && §?[§))
            {
               §§push(_loc8_);
               if(!(_loc14_ && param2))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc13_ || param3)
                  {
                     if(§§pop())
                     {
                        if(_loc13_ || §?[§)
                        {
                           §§pop();
                           if(_loc13_)
                           {
                              §§push(param3);
                              if(_loc13_ || param1)
                              {
                                 §§push(!§§pop());
                                 if(_loc13_ || param2)
                                 {
                                    addr119:
                                    if(§§pop())
                                    {
                                       if(_loc13_ || param1)
                                       {
                                          var _loc10_:* = (!_loc14_ ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          addr146:
                                          §§push("");
                                          if(_loc13_ || param1)
                                          {
                                             if(param3)
                                             {
                                                if(_loc13_ || param3)
                                                {
                                                   addr201:
                                                   _loc11_ = 0;
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         §§push(param2);
                                                         if(_loc13_ || param2)
                                                         {
                                                            if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                            {
                                                               if(_loc13_ || param2)
                                                               {
                                                                  addr281:
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break loop1;
                                                                     addr278:
                                                                     while(true)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  addr281:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc13_)
                                                               {
                                                                  addr257:
                                                                  §§push(§§pop() + "0");
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        _loc11_++;
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr258:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                        if(_loc13_)
                                                                        {
                                                                           §§goto(addr278);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  addr257:
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc14_ && §?[§))
                                                            {
                                                               if(_loc7_.substr(0,1) == "-")
                                                               {
                                                                  §§goto(addr308);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc9_);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            addr308:
                                                            if(_loc9_ < (!_loc14_ ? §§pop() - 1 : §§pop()))
                                                            {
                                                               if(param4)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(".");
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr257);
                                                                     }
                                                                     §§goto(addr258);
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               else
                                                               {
                                                                  §§push(",");
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            addr318:
                                                            return _loc7_.substr(0,_loc9_ - _loc5_) + _loc10_;
                                                         }
                                                         addr283:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr283);
                                                      §§goto(addr281);
                                                   }
                                                }
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr201);
                                       }
                                       else
                                       {
                                          addr134:
                                          §§push(",");
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             §§goto(addr145);
                                          }
                                          §§goto(addr146);
                                       }
                                    }
                                    else
                                    {
                                       addr133:
                                       if(param4)
                                       {
                                          §§goto(addr134);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr146);
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr133);
               }
               §§goto(addr119);
            }
            §§goto(addr134);
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
         if(!(_loc2_ && _loc2_))
         {
            addChild(this.§=1§ = new LevelScorePlateAsset());
            if(!_loc2_)
            {
               this.§=1§.§#§.stop();
            }
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§<l§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr396:
                  return;
               }
               loop1:
               while(true)
               {
                  §§push(this.§=1§);
                  if(_loc1_)
                  {
                     if(§[!U§)
                     {
                        addr379:
                        loop37:
                        while(true)
                        {
                           §§push(2);
                           if(!(_loc2_ && this))
                           {
                              §§push(§§pop());
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 continue loop37;
                              }
                              addr390:
                           }
                           while(true)
                           {
                              §§pop().gotoAndStop(§§pop());
                              addr392:
                              while(true)
                              {
                                 §&!^§();
                                 addr371:
                                 while(true)
                                 {
                                    §§push(this.§=1§);
                                    addr340:
                                    while(true)
                                    {
                                       §§pop().§>!x§.text = this.§<l§.userName || "";
                                       while(_loc1_ || _loc2_)
                                       {
                                          §§push(this.§<l§);
                                          continue loop0;
                                          if(_loc1_ || _loc2_)
                                          {
                                             return;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        addr379:
                     }
                     else
                     {
                        §§push(1);
                     }
                     §§goto(addr390);
                  }
                  §§goto(addr379);
               }
            }
         }
         §§goto(addr214);
      }
      
      private function §2!$§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §[! §(§[! §.§6y§,this.§<l§,true));
            do
            {
               this.§<l§.§7!J§ = false;
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public function get §<l§() : §9?§
      {
         return data as §9?§;
      }
   }
}
