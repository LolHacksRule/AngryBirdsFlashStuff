package § C§
{
   import §!F§.§>J§;
   import §!Y§.§[o§;
   import §0!!§.§;!&§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3O§.§@6§;
   import §[v§.§&F§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §,!?§ extends §-§
   {
      
      public static const §?B§:String = "LevelStartState";
      
      private static var §1!&§:BitmapData = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,!?§))
         {
            §?B§ = "LevelStartState";
         }
         do
         {
            §1!&§ = null;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §%+§:Boolean = false;
      
      private var §?!$§:Boolean = false;
      
      private var §6!6§:§>J§ = null;
      
      private var §=!!§:Boolean = false;
      
      private var §0w§:Boolean = false;
      
      private var §%$§:Number = 0;
      
      private var §5T§:Number = 0;
      
      private var §6c§:Number = 0;
      
      private var §2#§:Number = 0;
      
      private var §&!8§:Number;
      
      private var §,,§:Number;
      
      private var §!!,§:Number;
      
      private var §3X§:Number;
      
      private var §15§:§;!&§;
      
      public function §,!?§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function get §<J§() : BitmapData
      {
         return §1!&§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            §,R§ = new §#H§(this);
            §,R§.init(§set §.§&!1§.Views.View_LevelStart[0]);
            this.§6!6§ = new §>J§(§[o§.§='§);
            do
            {
               this.§&!8§ = (§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).height;
               this.§,,§ = (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).height;
            }
            while(_loc1_);
            
            this.§!!,§ = §,R§.getItemByName("Button_LeftMenuOpen").y - 50;
         }
         do
         {
            this.§3X§ = §,R§.getItemByName("Button_RightMenuOpen").y - 50;
         }
         while(!_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.activate();
            §[o§.§='§.§"3§(true);
         }
         §[o§.§%!<§(this.§6!6§);
         this.§6!6§.init();
         AngryBirdsFP11.§]!"§();
         §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;9§());
         §,R§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§[o§.§%!!§());
         do
         {
            §,R§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.§64§.§7!@§ ? false : true);
         }
         while(!_loc2_);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == §-§.STATE_STATUS_RUNNING)
               {
                  this.§!!,§ = §,R§.getItemByName("Button_LeftMenuOpen").y - 50;
                  loop0:
                  while(true)
                  {
                     this.§3X§ = §,R§.getItemByName("Button_RightMenuOpen").y - 50;
                     do
                     {
                        this.§,f§(param1);
                     }
                     while(!(_loc3_ || _loc2_));
                     
                     if(!this.§?!$§)
                     {
                        §[o§.controller.update(param1);
                        while(true)
                        {
                        }
                        addr72:
                     }
                     while(true)
                     {
                        if(mNextState.length <= 0)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  return §-§.STATE_STATUS_RUNNING;
               }
               return _loc2_;
            }
         }
         §§goto(addr72);
      }
      
      private function §,f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         (§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).mClip.scrollRect = new Rectangle(0,0,(§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).width,this.§&!8§ + 20 - (this.§&!8§ - this.§6c§));
         loop0:
         while(true)
         {
            (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).mClip.scrollRect = new Rectangle(0,0,(§,R§.getItemByName("Container_MenuRightButtons") as §&F§).width,this.§,,§ + 20 - (this.§,,§ - this.§2#§));
            §§push(this.§=!!§);
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     (§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).setVisibility(true);
                     addr630:
                     while(true)
                     {
                        if(this.§%$§ < 90)
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§%$§);
                              if(_loc3_ || this)
                              {
                                 §§push(0.3);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§%$§ = §§pop();
                              addr618:
                              while(true)
                              {
                              }
                           }
                           addr601:
                        }
                        addr587:
                        while(true)
                        {
                           §§push(this.§%$§);
                        }
                     }
                  }
                  addr623:
               }
               else
               {
                  §§push(this.§%$§);
                  §§push(0);
                  loop2:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        §§push(this);
                        §§push(this.§%$§);
                        if(_loc3_ || this)
                        {
                           §§push(0.3);
                           if(!(_loc2_ && param1))
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().§%$§ = §§pop();
                        if(_loc3_ || _loc3_)
                        {
                           addr504:
                           §§push(this.§%$§);
                           §§push(0);
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 while(true)
                                 {
                                    this.§%$§ = 0;
                                 }
                                 addr509:
                              }
                              addr481:
                              while(true)
                              {
                                 if(this.§6c§ > 0)
                                 {
                                    §§push(this);
                                    §§push(this.§6c§);
                                    if(!_loc2_)
                                    {
                                       §§push(0.5);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§6c§ = §§pop();
                                    while(true)
                                    {
                                    }
                                    addr503:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§6c§);
                                    if(_loc3_)
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             (§,R§.getItemByName("Container_MenuLeftButtons") as §&F§).setVisibility(false);
                                             addr480:
                                             while(true)
                                             {
                                                this.§6c§ = 0;
                                                addr463:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr601);
                                                }
                                             }
                                          }
                                       }
                                       addr472:
                                    }
                                    addr590:
                                    while(true)
                                    {
                                       if(§§pop() > 90)
                                       {
                                          loop52:
                                          while(true)
                                          {
                                             this.§%$§ = 90;
                                             addr595:
                                             while(true)
                                             {
                                                continue loop52;
                                             }
                                          }
                                          addr592:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§6c§);
                                          addr566:
                                          while(true)
                                          {
                                             §§push(this.§&!8§);
                                             addr568:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(this);
                                                   §§push(this.§6c§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(0.5);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * param1);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§6c§ = §§pop();
                                                }
                                                §§push(this.§6c§);
                                                addr553:
                                                while(true)
                                                {
                                                   §§push(this.§&!8§);
                                                   addr555:
                                                   while(true)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         this.§6c§ = this.§&!8§;
                                                         while(!_loc2_)
                                                         {
                                                         }
                                                         §§goto(addr592);
                                                         addr560:
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr508:
                        }
                        §§goto(addr595);
                     }
                     §§goto(addr504);
                     addr458:
                     §§push(this.§5T§);
                     §§push(180);
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     if(§§pop() < §§pop())
                     {
                        §§push(this);
                        §§push(this.§5T§);
                        if(!_loc2_)
                        {
                           §§push(0.5);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§5T§ = §§pop();
                        loop32:
                        while(true)
                        {
                           (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).y = (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).y - 0.5 * param1;
                           loop33:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    if(this.§5T§ > 180)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§5T§ = 180;
                                          addr352:
                                          §§push(this.§2#§);
                                          §§push(this.§,,§);
                                          loop35:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§2#§);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(0.5);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§pop() * param1);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().§2#§ = §§pop();
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§2#§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        §§push(this.§,,§);
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop35;
                                                                        }
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    this.§2#§ = this.§,,§;
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                    }
                                                                                    continue loop16;
                                                                                    addr349:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr456:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break loop18;
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                                 continue loop2;
                                                                                 addr231:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§2#§);
                                                                                          if(_loc2_ && param1)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(0);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).setVisibility(false);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      this.§2#§ = 0;
                                                                                                      while(_loc2_)
                                                                                                      {
                                                                                                         loop14:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).y = (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).y + 0.5 * param1;
                                                                                                            loop36:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§5T§);
                                                                                                               §§push(0);
                                                                                                               addr243:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           this.§5T§ = 0;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr256:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§2#§);
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr508);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                        {
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ || this)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(this.§5T§);
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(0.5);
                                                                                                                                 if(!(_loc2_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * param1);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                              }
                                                                                                                              §§pop().§5T§ = §§pop();
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr472);
                                                                                                                     addr281:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr481);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr138:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         (§,R§.getItemByName("Button_LeftMenuOpen") as §^P§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  if(_loc3_ || this)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  §§goto(addr503);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                         §§goto(addr349);
                                                                                                      }
                                                                                                      §§goto(addr473);
                                                                                                      addr138:
                                                                                                      addr173:
                                                                                                   }
                                                                                                   §§goto(addr618);
                                                                                                }
                                                                                                §§goto(addr289);
                                                                                             }
                                                                                             §§goto(addr138);
                                                                                          }
                                                                                          §§goto(addr243);
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       continue loop32;
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                              }
                                                                              §§goto(addr509);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr138);
                                                                           }
                                                                        }
                                                                        §§goto(addr555);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr553);
                                                               }
                                                               §§goto(addr566);
                                                               addr314:
                                                            }
                                                            §§goto(addr560);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            (§,R§.getItemByName("Container_MenuRightButtons") as §&F§).setVisibility(true);
                                                         }
                                                         addr449:
                                                      }
                                                      §§goto(addr456);
                                                   }
                                                }
                                                §§goto(addr314);
                                             }
                                             §§goto(addr568);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr352);
                                 }
                                 §§goto(addr480);
                                 addr377:
                              }
                              else
                              {
                                 §§goto(addr630);
                              }
                              §§goto(addr587);
                           }
                        }
                     }
                     §§goto(addr377);
                  }
               }
               §§goto(addr590);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§,R§.getItemByName("Button_Play") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
            do
            {
               this.§%+§ = false;
               do
               {
                  super.deActivate();
               }
               while(_loc1_ && this);
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc7_)
         {
            §§push("OPEN_LEFT_MENU");
            if(!(_loc8_ && this))
            {
               if(§§pop() === _loc6_)
               {
                  if(_loc7_)
                  {
                     §§push(0);
                  }
                  else
                  {
                     addr345:
                     §§push(3);
                     if(!(_loc7_ || param1))
                     {
                        addr430:
                     }
                  }
               }
               else
               {
                  §§push("OPEN_RIGHT_MENU");
                  if(_loc7_ || param1)
                  {
                     §§push(_loc6_);
                     if(!(_loc8_ && param1))
                     {
                        if(§§pop() === §§pop())
                        {
                           §§push(1);
                           if(_loc8_ && param2)
                           {
                              addr449:
                           }
                           §§goto(addr504);
                        }
                        else if("PLAY_LEVEL" === _loc6_)
                        {
                           if(!(_loc8_ && param2))
                           {
                              addr504:
                              loop2:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr267:
                                    if(this.§=!!§)
                                    {
                                       this.§=!!§ = false;
                                    }
                                    else
                                    {
                                       this.§=!!§ = true;
                                       addr262:
                                    }
                                    break;
                                 case 1:
                                    if(this.§0w§)
                                    {
                                       addr242:
                                       this.§0w§ = false;
                                    }
                                    else
                                    {
                                       this.§0w§ = true;
                                    }
                                    break;
                                 case 2:
                                    §@6§.playSound("Menu_Confirm");
                                    mNextState = §9,§.§?B§;
                                    break;
                                    addr228:
                                 case 3:
                                    §,R§.setItemVisibility("Container_MenuButtons",!§,R§.getItemByName("Container_MenuButtons").visible);
                                    break;
                                    addr215:
                                 case 4:
                                    break;
                                 case 5:
                                    break;
                                 case 6:
                                    addr199:
                                    §§push(!§[o§.§%!!§());
                                    if(_loc7_)
                                    {
                                       _loc4_ = §§pop();
                                       §[o§.§#i§(_loc4_);
                                       addr203:
                                       if(_loc7_ || param3)
                                       {
                                          §,R§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                          break;
                                       }
                                       addr203:
                                    }
                                    else
                                    {
                                       §§goto(addr267);
                                    }
                                    §§goto(addr262);
                                 case 7:
                                    §@6§.playSound("Menu_Confirm");
                                    addr167:
                                    if(!_loc8_)
                                    {
                                       AngryBirdsFP11.§?L§.§,!!§();
                                       break;
                                       addr160:
                                    }
                                    else
                                    {
                                       §§goto(addr242);
                                    }
                                    break;
                                 case 8:
                                    §@6§.playSound("Menu_Confirm");
                                    break;
                                 case 9:
                                    §@6§.playSound("Menu_Confirm");
                                    if(_loc7_ || param2)
                                    {
                                       mNextState = §%H§.§?B§;
                                       addr125:
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && param2))
                                          {
                                             this.§=!!§ = false;
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             break;
                                          }
                                          §§goto(addr203);
                                       }
                                       else
                                       {
                                          §§goto(addr167);
                                       }
                                    }
                                    §§goto(addr160);
                                 case 10:
                                    §@6§.playSound("Menu_Confirm");
                                    addr110:
                                    if(_loc7_)
                                    {
                                       §§push(AngryBirdsFP11.§;9§());
                                       if(!_loc8_)
                                       {
                                          _loc5_ = !§§pop();
                                          AngryBirdsFP11.§-!9§(_loc5_);
                                          if(_loc5_)
                                          {
                                             addr88:
                                             AngryBirdsFP11.§]!"§();
                                          }
                                          §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
                                          break;
                                          addr84:
                                          addr95:
                                       }
                                       else
                                       {
                                          §§goto(addr199);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr125);
                                    }
                                    §§goto(addr203);
                                 case 11:
                                    break;
                                 case 12:
                                    if(this.§15§ == null)
                                    {
                                       this.§15§ = new §;!&§("http://www.youtube.com/v/-eyig_V-_5o");
                                       if(_loc7_)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!_loc8_)
                                             {
                                                loop0:
                                                while(true)
                                                {
                                                   (§,R§.getItemByName("MovieClip_YouTubeArea") as §=!=§).changeMovieClip(this.§15§);
                                                   while(true)
                                                   {
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         (§,R§.getItemByName("MovieClip_YouTubeArea") as §=!=§).setVisibility(true);
                                                         if(_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  addr272:
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr110);
                                                            }
                                                            §§goto(addr88);
                                                         }
                                                         §§goto(addr84);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr215);
                                                      }
                                                   }
                                                   break loop2;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr228);
                                             }
                                          }
                                          §§goto(addr95);
                                       }
                                       §§goto(addr88);
                                    }
                                    §§goto(addr272);
                              }
                              return;
                              §§push(2);
                           }
                           else
                           {
                              addr448:
                              §§goto(addr449);
                              §§push(9);
                           }
                           §§goto(addr504);
                        }
                        else
                        {
                           §§push("OPEN_MENU");
                           if(_loc7_ || param1)
                           {
                              addr339:
                              §§push(_loc6_);
                              if(_loc7_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§goto(addr345);
                                    }
                                    else
                                    {
                                       addr427:
                                       §§push(8);
                                       if(!_loc7_)
                                       {
                                          addr492:
                                       }
                                       §§goto(addr504);
                                    }
                                 }
                                 else
                                 {
                                    §§push("OPEN_AVATAR_CREATOR");
                                    §§push(_loc6_);
                                    if(_loc7_ || param1)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             §§goto(addr504);
                                             §§push(4);
                                          }
                                          else
                                          {
                                             §§goto(addr427);
                                          }
                                          §§goto(addr504);
                                       }
                                       else
                                       {
                                          §§push("TOGGLE_SOUNDS");
                                          §§push(_loc6_);
                                          if(!_loc8_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr504);
                                                §§push(5);
                                             }
                                             else
                                             {
                                                §§push("TOGGLE_PARTICLES");
                                                if(!(_loc8_ && this))
                                                {
                                                   addr388:
                                                   §§push(_loc6_);
                                                   if(_loc7_ || this)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            §§goto(addr504);
                                                            §§push(6);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr427);
                                                         }
                                                         §§goto(addr504);
                                                      }
                                                      else
                                                      {
                                                         §§push("FULLSCREEN_BUTTON");
                                                         if(_loc7_ || this)
                                                         {
                                                            addr410:
                                                            if(§§pop() === _loc6_)
                                                            {
                                                               §§goto(addr504);
                                                               §§push(7);
                                                            }
                                                            else
                                                            {
                                                               §§push("OPEN_CREDITS");
                                                               if(_loc8_ && param1)
                                                               {
                                                               }
                                                               addr482:
                                                               if(§§pop() === _loc6_)
                                                               {
                                                                  if(_loc7_ || param3)
                                                                  {
                                                                     addr491:
                                                                     §§goto(addr492);
                                                                     §§push(11);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr495:
                                                                  if("ME_POPUP_VIDEO" !== _loc6_)
                                                                  {
                                                                     §§goto(addr504);
                                                                     §§push(13);
                                                                  }
                                                               }
                                                               §§goto(addr504);
                                                               §§goto(addr504);
                                                            }
                                                            §§goto(addr504);
                                                         }
                                                         §§goto(addr482);
                                                      }
                                                   }
                                                   addr424:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr427);
                                                      }
                                                      else
                                                      {
                                                         addr467:
                                                         §§push(10);
                                                         if(_loc8_)
                                                         {
                                                         }
                                                         §§goto(addr504);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("CREDITS_BUTTON");
                                                      if(!(_loc8_ && this))
                                                      {
                                                         addr440:
                                                         if(§§pop() === _loc6_)
                                                         {
                                                            if(_loc7_ || param3)
                                                            {
                                                               §§goto(addr448);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr491);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("SOUNDS_BUTTON");
                                                            if(!(_loc8_ && this))
                                                            {
                                                               addr458:
                                                               §§push(_loc6_);
                                                               if(_loc7_ || this)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     §§goto(addr467);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr482);
                                                                     §§push("POPUP_CREDITS_CLOSE");
                                                                  }
                                                                  §§goto(addr504);
                                                               }
                                                            }
                                                            §§goto(addr495);
                                                         }
                                                         §§goto(addr504);
                                                      }
                                                      §§goto(addr458);
                                                   }
                                                   §§goto(addr504);
                                                }
                                                §§push(_loc6_);
                                                if(_loc8_)
                                                {
                                                }
                                                §§goto(addr495);
                                             }
                                             §§goto(addr504);
                                          }
                                          §§goto(addr424);
                                       }
                                    }
                                    §§goto(addr410);
                                 }
                                 §§goto(addr504);
                              }
                              §§goto(addr440);
                           }
                           §§goto(addr482);
                        }
                        §§goto(addr504);
                     }
                     §§goto(addr495);
                  }
                  §§goto(addr339);
               }
               §§goto(addr504);
            }
            §§goto(addr388);
         }
         §§goto(addr448);
      }
   }
}
