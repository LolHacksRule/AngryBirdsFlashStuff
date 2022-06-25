package §_-ad§
{
   import §_-0Ea§.§_-AY§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-tA§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-n§.§_-0BF§;
   import §_-n§.§_-II§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.events.Event;
   
   public class StateCutScene extends §_-nG§
   {
      
      public static const §_-pk§:String = "StateCutScene";
      
      private static const §_-cr§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-pk§ = "StateCutScene";
         }
         do
         {
            §_-cr§ = 500;
         }
         while(!_loc1_);
         
      }
      
      private var §_-Bw§:§_-0BF§;
      
      private var §_-06t§:Boolean;
      
      private var §_-hI§:Number = 0;
      
      private var §_-Qe§:Number = 0;
      
      private var §_-yV§:§_-tA§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
         }
         while(true)
         {
            §_-s0§ = new §_-5q§(this);
            while(!_loc1_)
            {
               §_-s0§.init(§_-vB§.§_-ky§.Views.View_CutScene[0]);
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected function §_-Ir§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  §§push(this.§_-yV§);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§_-m5§();
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(this.§_-yV§);
                           loop3:
                           while(!_loc2_)
                           {
                              §§pop().addEventListener(Event.COMPLETE,this.§_-0Bl§);
                              if(!_loc2_)
                              {
                                 addr160:
                                 §§push(this.§_-yV§);
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc2_ && this)
                                    {
                                       continue loop1;
                                    }
                                    §§pop().addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                    if(_loc3_ || _loc2_)
                                    {
                                       continue;
                                    }
                                    addr171:
                                    while(true)
                                    {
                                       §_-s0§.getItemByName("MovieClip_Loading").setVisibility(true);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().removeEventListener(Event.COMPLETE,this.§_-0Bl§);
                                    §§goto(addr165);
                                    break loop3;
                                 }
                                 continue loop2;
                                 addr160:
                              }
                              while(true)
                              {
                                 §§goto(addr160);
                              }
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr160);
                           }
                        }
                     }
                     §§goto(addr171);
                  }
               }
            }
            else
            {
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr122);
      }
      
      private function §_-0Bl§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§_-yV§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§_-yV§);
                  loop2:
                  while(true)
                  {
                     §§pop().removeEventListener(Event.COMPLETE,this.§_-0Bl§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§_-yV§);
                        if(_loc3_ || param1)
                        {
                           if(!_loc2_)
                           {
                              §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                              do
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              while(this.§_-m5§(), !_loc3_);
                              
                              addr34:
                              break loop0;
                           }
                           break;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §_-m5§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §_-s0§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§_-al§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§_-0FF§ = §_-0FF§.§_-3S§;
         if(_loc4_ || _loc1_)
         {
            §§push(this.§_-yV§);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr65:
                     _loc2_ = this.§_-yV§.textureManager;
                     addr68:
                     this.§_-Bw§ = §_-II§.§_-N8§(_loc1_,_loc2_);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(this.§_-Bw§);
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 AngryBirdsFP11.sUserProgress.§_-fc§(_loc1_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§ in§.§_-Dc§);
                                    while(true)
                                    {
                                       §§push(true);
                                       loop8:
                                       while(true)
                                       {
                                          §§pop().§_-Vf§(§§pop());
                                          addr175:
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§ in§.§_-Dc§);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(!(_loc4_ || _loc1_))
                                                {
                                                   continue loop8;
                                                }
                                                §§pop().§_-TQ§(§§pop());
                                                while(true)
                                                {
                                                   §§push(this.§_-Bw§);
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().update(0);
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop6;
                                                      addr137:
                                                   }
                                                   continue loop4;
                                                   addr115:
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr129:
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr175);
               }
               §§goto(addr68);
            }
            §§goto(addr65);
         }
         §§goto(addr129);
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§_-yV§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     this.end();
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(this.§_-yV§);
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop0;
                        addr96:
                     }
                     else
                     {
                        while(_loc2_ || _loc2_)
                        {
                           continue loop5;
                        }
                        while(true)
                        {
                           §§push(this.§_-yV§);
                        }
                        addr89:
                        addr78:
                     }
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§_-0Bl§);
                        §§goto(addr96);
                     }
                  }
                  return;
                  addr50:
               }
               §§goto(addr89);
            }
         }
         §§goto(addr50);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               if(!this.§_-yV§)
               {
                  loop1:
                  while(true)
                  {
                     this.§_-yV§ = § in§.§_-Dc§.§_-04t§;
                     addr164:
                     while(true)
                     {
                        addr95:
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        AngryBirdsFP11.§_-8§();
                        loop10:
                        while(!(_loc3_ && _loc3_))
                        {
                           loop11:
                           while(true)
                           {
                              this.§_-06t§ = false;
                              while(!_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       §_-s0§.getItemByName("MovieClip_Loading").setVisibility(false);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop11;
                                          }
                                          continue loop10;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              addr78:
                              addr144:
                              while(_loc2_ || _loc3_)
                              {
                                 §§goto(addr95);
                              }
                              loop14:
                              while(true)
                              {
                                 addr122:
                                 while(true)
                                 {
                                    this.§_-hI§ = 0;
                                    addr126:
                                    while(true)
                                    {
                                       this.§_-Qe§ = 0;
                                       break loop11;
                                    }
                                    continue loop14;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §_-s0§.getItemByName("Button_Skip").setVisibility(false);
                                 break loop10;
                              }
                              break;
                              §§goto(addr39);
                           }
                           §§goto(addr126);
                        }
                        while(true)
                        {
                           §_-s0§.getItemByName("Button_Skip").mClip.alpha = this.§_-hI§;
                           §§goto(addr78);
                           §§goto(addr62);
                        }
                        addr62:
                     }
                  }
               }
               while(true)
               {
                  §§push(§_-AY§.§_-un§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr133);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr142);
                  §§goto(addr164);
               }
            }
         }
         §§goto(addr140);
      }
      
      protected function §_-al§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(LevelManager.§_-4w§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LevelManager.§_-1a§().§_-gy§(_loc1_ + "-OUTRO"));
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§push(LevelManager.§_-HM§);
                     addr109:
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        addr110:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(LevelManager.§_-1a§().§_-gy§(_loc1_ + "-INTRO"));
                              addr89:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr90:
                                 addr102:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!(_loc3_ && this))
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           continue loop5;
                        }
                     }
                  }
                  addr107:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr90);
                  §§goto(addr102);
               }
               return §§pop();
            }
            §§goto(addr109);
         }
         §§goto(addr107);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-Bw§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§push(this.§_-yV§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(_loc1_ || _loc2_)
                           {
                              §§push(this.§_-yV§);
                              loop10:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§_-0Bl§);
                                 addr132:
                                 addr90:
                                 addr95:
                                 while(true)
                                 {
                                    §§push(this.§_-yV§);
                                    if(_loc1_ || _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop10;
                                 }
                                 §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop4;
                                       }
                                       if(!_loc1_)
                                       {
                                          continue loop0;
                                       }
                                       addr101:
                                    }
                                    else
                                    {
                                       §§goto(addr132);
                                    }
                                    §§goto(addr90);
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§_-Bw§ = null;
                              addr137:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           addr149:
                        }
                        loop5:
                        while(true)
                        {
                           §§push(§ in§.§_-Dc§);
                           if(!(_loc2_ && this))
                           {
                              §§pop().§_-TQ§(true);
                              loop6:
                              while(true)
                              {
                                 LevelManager.§_-4w§ = null;
                                 while(!(_loc2_ && this))
                                 {
                                    super.deActivate();
                                    if(!_loc1_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          return;
                                       }
                                       addr153:
                                       while(true)
                                       {
                                          §§push(§ in§.§_-Dc§);
                                          break loop5;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr95);
                                    }
                                 }
                                 §§goto(addr137);
                              }
                           }
                           break;
                           §§goto(addr101);
                        }
                        while(true)
                        {
                           §§pop().§_-LM§.removeChild(this.§_-Bw§.sprite);
                           continue loop0;
                        }
                     }
                     §§goto(addr117);
                  }
                  addr102:
               }
               §§goto(addr153);
            }
            addr152:
         }
         while(true)
         {
            §§push(this.§_-Bw§);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().dispose();
               §§goto(addr149);
            }
            else
            {
               §§goto(addr152);
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("SKIP");
            if(_loc6_)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc5_ && this)
                        {
                        }
                     }
                     else
                     {
                        addr84:
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     addr82:
                     §§push("FULLSCREEN_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr84);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr84);
               }
               else
               {
                  §§push(2);
               }
               addr92:
               switch(§§pop())
               {
                  case 0:
                     this.§_-06t§ = true;
                     if(_loc6_ || param1)
                     {
                        break;
                     }
                     addr46:
                     break;
                  case 1:
                     AngryBirdsFP11.§_-07§.§_-0De§();
                     if(_loc6_)
                     {
                        §§goto(addr46);
                     }
               }
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr84);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§_-Qe§);
            loop0:
            while(true)
            {
               if(§§pop() <= §_-cr§)
               {
                  §§push(this);
                  §§push(this.§_-Qe§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§_-Qe§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(!(_loc4_ && param1))
                     {
                        loop2:
                        for(; this.§_-06t§; while(true)
                        {
                           continue loop2;
                        })
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 this.end();
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc3_ || param1)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          this.§_-hI§ = 1;
                                          while(true)
                                          {
                                             continue loop2;
                                          }
                                          addr102:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §_-s0§.getItemByName("Button_Skip").setVisibility(true);
                                          }
                                          addr145:
                                       }
                                    }
                                    addr97:
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§_-hI§);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() / 1000);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§_-hI§ = §§pop();
                                 }
                              }
                              return §_-nG§.STATE_STATUS_COMPLETED;
                              addr45:
                           }
                           while(true)
                           {
                              §_-s0§.getItemByName("Button_Skip").mClip.alpha = this.§_-hI§;
                              continue loop0;
                              §§goto(addr150);
                           }
                        }
                        §§push(super.run(param1));
                        if(!_loc4_)
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc3_ || _loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc3_ || this)
                           {
                              if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
                              {
                                 addr240:
                                 if(mNextState.length > 0)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr240);
                                       }
                                       if(!_loc4_)
                                       {
                                          return §_-nG§.STATE_STATUS_COMPLETED;
                                       }
                                       addr267:
                                       return _loc2_;
                                       addr266:
                                    }
                                    addr254:
                                 }
                                 addr218:
                                 §§push(Boolean(this.§_-Bw§));
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       addr228:
                                       §§pop();
                                       addr239:
                                       §§push(this.§_-Bw§);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§push(§§pop().update(param1));
                                          if(_loc3_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§goto(addr194);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr218);
                                    }
                                    addr194:
                                    if(§§pop())
                                    {
                                       if(_loc3_ || this)
                                       {
                                          addr203:
                                          this.end();
                                       }
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr254);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr239);
                                    }
                                    addr166:
                                    return §_-nG§.STATE_STATUS_RUNNING;
                                 }
                                 §§goto(addr228);
                              }
                              §§goto(addr266);
                           }
                           §§goto(addr267);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr145);
            }
         }
         §§goto(addr45);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(_loc2_ || this)
         {
            §§push(this.§_-Bw§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop9:
                        while(!§§pop())
                        {
                           §§push(this.§_-Bw§);
                           loop10:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc2_)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(LevelManager.§_-HM§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop13:
                                             while(!(_loc3_ && this))
                                             {
                                                _loc1_ = §§pop();
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(_loc1_);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            continue loop12;
                                                         }
                                                         continue loop13;
                                                      }
                                                      addr228:
                                                      while(true)
                                                      {
                                                         §§push(this.§_-Bw§);
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr45:
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      §§goto(addr27);
                                                   }
                                                }
                                                if(_loc3_)
                                                {
                                                   addr157:
                                                   if(_loc2_)
                                                   {
                                                      if(_loc2_ || this)
                                                      {
                                                         §§goto(addr27);
                                                      }
                                                      else
                                                      {
                                                         mNextState = §_-UO§.§_-pk§;
                                                         addr221:
                                                      }
                                                      §§goto(addr27);
                                                   }
                                                }
                                                addr27:
                                                return;
                                             }
                                             while(!_loc3_)
                                             {
                                                §§push(§_-0BF§.§_-rm§);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr227:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§pop();
                                                            continue loop10;
                                                         }
                                                      }
                                                      addr179:
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                   }
                                                   addr212:
                                                }
                                                while(!_loc3_)
                                                {
                                                   continue loop9;
                                                }
                                                continue loop1;
                                             }
                                             addr210:
                                             while(true)
                                             {
                                                §§goto(addr212);
                                             }
                                          }
                                       }
                                       if(_loc2_ || _loc1_)
                                       {
                                          break;
                                       }
                                       continue loop10;
                                    }
                                    mNextState = §_-7A§.§_-pk§;
                                    §§goto(addr157);
                                 }
                              }
                              §§goto(addr179);
                           }
                           continue loop2;
                        }
                        §_-UO§.§_-yr§ = StateCutScene.§_-pk§;
                        §§goto(addr221);
                     }
                     §§goto(addr227);
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function §_-03M§() : String
      {
         return §_-MG§.§_-pk§;
      }
   }
}
