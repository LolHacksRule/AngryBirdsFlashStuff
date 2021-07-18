package §^!o§
{
   import §+!c§.§9"H§;
   import §,l§.§#!,§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.StatePopupManager;
   import §59§.§#l§;
   import §59§.§="C§;
   import §9@§.§3,§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.utils.setTimeout;
   
   public class §1! § extends §^"$§
   {
      
      public static const §2"J§:String = "VCIntro";
      
      private static var §,"5§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2"J§ = "VCIntro";
         }
         do
         {
            §,"5§ = §5>§;
         }
         while(!_loc2_);
         
      }
      
      private var §^!?§:Boolean = false;
      
      private var §2!H§:§3d§;
      
      public function §1! §(param1:§`_§, param2:StatePopupManager, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2,param3,§9"H§.§5!h§(§,"5§));
         }
      }
      
      override public function injectData(param1:§="C§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(_loc7_ || _loc2_)
         {
            mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         }
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < §10§)
         {
            _loc3_ = mClip.Container_CoinShopPopup[§9"X§ + _loc2_];
            if(_loc7_)
            {
               §§push(param1.getPricePoint(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop().§#!-§());
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(§3,§.§3!Y§(param1.getPricePoint(_loc2_).§ !?§));
                        if(!_loc6_)
                        {
                           continue loop2;
                        }
                        addr250:
                        _loc5_ = §§pop();
                        loop4:
                        while(true)
                        {
                           _loc3_.title.text = "x " + _loc5_;
                           continue loop1;
                           addr113:
                           if(_loc7_ || _loc2_)
                           {
                              _loc3_.transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
                              loop11:
                              while(!(_loc6_ && this))
                              {
                                 if(_loc6_ && _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    _loc3_.visible = true;
                                    loop13:
                                    while(!_loc6_)
                                    {
                                       while(true)
                                       {
                                          _loc2_++;
                                          if(!(_loc7_ || _loc2_))
                                          {
                                             continue loop13;
                                          }
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   continue loop12;
                                                }
                                                addr197:
                                                loop9:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc7_ || this))
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() != §10§ - 1)
                                                      {
                                                         _loc3_.mouseEnabled = false;
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr113);
                                                            }
                                                         }
                                                         continue loop4;
                                                         addr111:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc3_.addEventListener(MouseEvent.CLICK,§8q§);
                                                         addr148:
                                                         while(true)
                                                         {
                                                            continue loop12;
                                                         }
                                                      }
                                                      addr169:
                                                   }
                                                   addr177:
                                                   while(true)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc3_.cost.text = §%"S§.§!C§.§9"%§.§@!K§.§=";§(param1.getPricePoint(_loc2_).price);
                                                            continue loop9;
                                                            addr214:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc3_.offer.text = "(" + _loc4_ + " free)";
                                                            break loop11;
                                                         }
                                                         addr199:
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() <= 0)
                                                   {
                                                      _loc3_.offer.text = "";
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr199);
                                                   §§goto(addr169);
                                                }
                                             }
                                             §§goto(addr148);
                                          }
                                          §§goto(addr111);
                                       }
                                       continue loop0;
                                    }
                                    continue loop11;
                                 }
                              }
                              while(_loc7_ || _loc3_)
                              {
                                 §§goto(addr214);
                              }
                              continue loop1;
                              addr207:
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr76);
         }
      }
      
      override protected function buyItem(param1:String, param2:§#l§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(!this.§^!?§)
            {
               loop0:
               while(true)
               {
                  this.§^!?§ = true;
                  addr159:
                  while(true)
                  {
                     this.§2!H§ = new §3d§();
                     loop2:
                     for(; _loc4_; while(_loc4_ || param2)
                     {
                        §§goto(addr101);
                     })
                     {
                        §§push(this.§2!H§);
                        loop3:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§9!y§);
                           loop4:
                           while(true)
                           {
                              §§push(this.§2!H§);
                              loop5:
                              while(true)
                              {
                                 §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§?e§);
                                 loop6:
                                 while(_loc4_)
                                 {
                                    §§push(this.§2!H§);
                                    loop7:
                                    while(_loc4_)
                                    {
                                       §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?e§);
                                       while(_loc4_)
                                       {
                                          §§push(this.§2!H§);
                                          while(true)
                                          {
                                             §§pop().addEventListener(§9G§.§33§,this.§?e§);
                                             §§push(this.§2!H§);
                                             addr101:
                                             continue loop2;
                                             if(!(_loc3_ && param1))
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(§9!7§);
                                                §§push(AngryBirdsFP11.§?8§ + "/claimfreebundle/");
                                                if(_loc4_ || param2)
                                                {
                                                   §§push(§§pop() + §2"J§);
                                                }
                                                §§pop().load(§§pop().§,!l§(§§pop()));
                                                if(!_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                §§goto(addr76);
                                                continue loop7;
                                             }
                                          }
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr25);
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop6;
                                    }
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr25:
            return;
         }
         §§goto(addr159);
      }
      
      private function §?e§(param1:Event) : void
      {
      }
      
      private function §9!y§(param1:Event = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_ || param1)
         {
            §§pop().§§slot[2] = null;
            loop0:
            while(true)
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  break;
               }
               §§pop().§§slot[1] = param1;
               loop1:
               while(!(_loc4_ && param1))
               {
                  while(true)
                  {
                     §@M§(§2"J§,1);
                     if(_loc5_ || _loc2_)
                     {
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        §§push(§§newactivation());
                        if(!(_loc5_ || param1))
                        {
                           break loop0;
                        }
                        §§push(§§pop().§§slot[1].currentTarget.data == null);
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                           if(!(_loc5_ || _loc2_))
                           {
                              continue;
                           }
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 continue;
                              }
                              addr109:
                              addr109:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           §§push(§§newactivation());
                           if(_loc5_ || _loc2_)
                           {
                              addr172:
                              if(§§pop().§§slot[2])
                              {
                                 if(!_loc4_)
                                 {
                                    §#!,§.§&"5§.§6"M§(parsedResponse);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr255:
                                       §§push(§§newactivation());
                                       while(true)
                                       {
                                          §§pop().§§slot[3] = mClip.Container_CoinShopPopup[§9"X§ + (§10§ - 1)];
                                       }
                                       addr256:
                                    }
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       while(!(_loc4_ && _loc2_))
                                       {
                                          §§pop().§§slot[3].mouseEnabled = false;
                                          loop5:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§pop().§§slot[3].transform.colorTransform = new ColorTransform(0.4,0.4,0.4,1,30,30,30);
                                                continue loop5;
                                             }
                                          }
                                       }
                                       §§goto(addr256);
                                    }
                                 }
                                 return;
                                 addr207:
                              }
                              §§goto(addr255);
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr109);
                     }
                     break;
                  }
                  try
                  {
                     §§push(§§newactivation());
                     if(!_loc4_)
                     {
                        §§pop().§§slot[2] = JSON.parse(e.currentTarget.data as String);
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr164);
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr172);
                  }
                  catch(error:Error)
                  {
                     var _loc3_:* = error;
                     if(_loc5_ || _loc2_)
                     {
                        §9"6§.§#!o§();
                     }
                  }
                  §§goto(addr164);
               }
            }
         }
         §§push(§§pop().§§slot[1].currentTarget.data == "");
         if(_loc5_)
         {
            §§goto(addr109);
         }
         §§goto(addr110);
      }
   }
}
