package §8!_§
{
   import § !Y§.§&$§;
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §3D§.HighscoreSidebar;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §^"#§.§!j§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   import §`!j§.§9"!§;
   
   public class §6Q§ extends §6]§
   {
       
      
      protected var §!"&§:§&"$§ = null;
      
      private var §+z§:Boolean;
      
      public function §6Q§(param1:§9"!§, param2:§3!'§, param3:§8"F§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            do
            {
               this.§!"&§ = new §&"$§(0,0,0,0);
            }
            while(_loc2_);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§!j§ = null;
         if(!(_loc6_ && param1))
         {
            §§push(this.§!"&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §8!A§.container.mClip.removeChild(this.§!"&§);
                              addr180:
                              while(true)
                              {
                              }
                           }
                           addr174:
                        }
                        loop8:
                        while(true)
                        {
                           super.activate(param1);
                           while(true)
                           {
                              this.updateLocalization();
                              loop10:
                              while(!_loc6_)
                              {
                                 this.setLoadingText();
                                 loop11:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          this.§+z§ = false;
                                          loop12:
                                          while(true)
                                          {
                                             addr71:
                                             while(true)
                                             {
                                                §§push(§ !g§.§;!'§);
                                                if(!_loc6_)
                                                {
                                                   §§push((§§pop() as §`Y§).§&,§);
                                                   if(_loc5_ || this)
                                                   {
                                                      addr86:
                                                      §§push(§§pop().§ w§());
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            §§push(§ !g§.§;!'§);
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§push((§§pop() as §`Y§).§&,§);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(false);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§pop().§""8§(§§pop());
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!(_loc5_ || _loc2_))
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr71);
                                                                           }
                                                                           §§goto(addr188);
                                                                           continue loop10;
                                                                        }
                                                                        addr97:
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§ !g§.§;!'§);
                                                                              break;
                                                                           }
                                                                           break loop11;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     addr118:
                                                                     if(!_loc6_)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  addr117:
                                                                  §§pop().§4"1§(§§pop());
                                                                  §§goto(addr118);
                                                               }
                                                               addr116:
                                                               §§goto(addr117);
                                                               §§push(false);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr97);
                                                      }
                                                      else
                                                      {
                                                         while(!(_loc6_ && _loc3_))
                                                         {
                                                            continue loop5;
                                                            §§goto(addr86);
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop0;
                                                         }
                                                         addr186:
                                                         addr165:
                                                      }
                                                   }
                                                   §§goto(addr116);
                                                }
                                                break;
                                             }
                                             §§goto(addr116);
                                          }
                                          addr188:
                                          for each(_loc2_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
                                          {
                                             if(!_loc6_)
                                             {
                                                (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.addChild(_loc2_);
                                             }
                                          }
                                          return;
                                          addr125:
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr174);
                                 }
                                 continue loop8;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr186);
               }
            }
         }
         §§goto(addr125);
      }
      
      override public function deActivate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§!j§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
         {
            if(_loc4_ || _loc2_)
            {
               (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.removeChild(_loc1_);
            }
         }
         if(_loc4_)
         {
            super.deActivate();
         }
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.updateLocalization();
         }
         do
         {
            §&$§.§[!1§.updateTextFields(§8!A§.container,"StateLevelLoading");
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override protected function setLoadingText() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         if(_loc6_ || _loc1_)
         {
            if(§6u§.currentLevel != null)
            {
               loop0:
               while(true)
               {
                  §§push((§8!A§.getItemByName("TextField_LevelLoading") as §&!>§).§ !'§.text);
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr192:
                     while(true)
                     {
                        §§push(int(§6u§.currentLevel.charAt(0)) - 1);
                        loop3:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr168:
                              while(true)
                              {
                                 §§push(int(int(§6u§.currentLevel.substring(2))));
                                 loop6:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr157:
                                    addr65:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§push(HighscoreSidebar.§ true§[_loc4_]);
                     if(!_loc6_)
                     {
                        continue;
                     }
                     _loc5_ = §§pop();
                     for(; _loc6_ || _loc1_; §8!A§.setText(_loc1_ + " " + _loc5_,"TextField_LevelLoading"),if(!(_loc6_ || _loc1_))
                     {
                        continue;
                     },if(_loc6_)
                     {
                        continue loop0;
                     },§§goto(addr140))
                     {
                        if(_loc6_ || _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr168);
                  }
                  if(_loc7_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr65);
               }
            }
            return;
         }
         §§goto(addr157);
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&"§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.update(param1);
            do
            {
               this.§<!E§(param1);
            }
            while(!_loc2_);
            
         }
      }
      
      private function §<!E§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!j§ = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
         {
            if(!(_loc5_ && this))
            {
               _loc2_.update(param1);
               loop1:
               while(true)
               {
                  addr75:
                  while(!_loc2_.isAlive)
                  {
                     while(!_loc5_)
                     {
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
            while(true)
            {
               (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§.splice((§ !g§.§;!'§ as §`Y§).§&,§.§>!?§.indexOf(_loc2_),1);
               do
               {
                  (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.removeChild(_loc2_);
               }
               while(_loc5_ && _loc3_);
               
               if(_loc6_)
               {
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr75);
               }
               §§goto(addr79);
            }
         }
      }
      
      protected function §&"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§!"&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr158:
                        do
                        {
                           §§push(this.§+z§);
                           if(!_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop2;
                              }
                              §§push(!§§pop());
                           }
                        }
                        while(!_loc2_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        this.§+z§ = true;
                        addr151:
                        loop6:
                        while(true)
                        {
                           §§push(this.§!"&§);
                           loop7:
                           while(true)
                           {
                              §§push(0);
                              loop8:
                              while(true)
                              {
                                 §§pop().§24§(§§pop());
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§!"&§);
                                    loop10:
                                    while(!_loc2_)
                                    {
                                       if(§§pop().parent != §8!A§.container.mClip)
                                       {
                                          §8!A§.container.mClip.addChild(this.§!"&§);
                                          loop11:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(this.§!"&§);
                                                   loop13:
                                                   while(!_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(1);
                                                         if(_loc1_)
                                                         {
                                                            §§pop().§7t§(§§pop(),0.25);
                                                            while(_loc1_)
                                                            {
                                                               §§push(this.§!"&§);
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§pop().addEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
                                                               if(_loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  addr97:
                                                                  while(true)
                                                                  {
                                                                     §8!A§.container.mClip.removeChild(this.§!"&§);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  addr84:
                                                               }
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop10;
                                                }
                                                break loop4;
                                             }
                                             while(true)
                                             {
                                                if(_loc1_ || _loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop9;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr97);
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr151);
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!"&§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
            do
            {
               §8!^§(§1!u§());
            }
            while(_loc3_);
            
         }
      }
   }
}
