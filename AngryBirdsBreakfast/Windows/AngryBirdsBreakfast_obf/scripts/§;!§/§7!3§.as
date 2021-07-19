package §;!§
{
   import § ^§.§%!a§;
   import §"n§.§!!G§;
   import §"n§.§+!a§;
   import §"n§.§[!-§;
   import §&v§.§#!R§;
   import §&v§.§%!I§;
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §<!F§.ColorFadeLayerEvent;
   import §=!L§.§%Z§;
   import §=!L§.§4k§;
   import §?@§.§ !y§;
   import §@L§.§?!'§;
   import §[!i§.§!5§;
   import §^!3§.§,"'§;
   import §^!3§.§]!j§;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §7!3§ extends §6!X§
   {
      
      private static const §4U§:Number = 50;
      
      private static const §=!!§:Number = 0.05;
      
      private static const §0!B§:int = 99;
      
      public static const §-!q§:String = "StatePlay";
      
      private static const §"+§:Number = -10000.0;
      
      private static const §]"§:Number = 15000.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §4U§ = 50;
            while(true)
            {
               §=!!§ = 0.05;
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §0!B§ = 99;
                     loop3:
                     do
                     {
                        §-!q§ = "StatePlay";
                        while(true)
                        {
                           §"+§ = -10 * 1000;
                           while(!(_loc2_ && §7!3§))
                           {
                              if(!_loc2_)
                              {
                                 §]"§ = 15 * 1000;
                                 if(_loc1_ || _loc1_)
                                 {
                                    continue loop3;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(!_loc1_);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      private var §]"+§:Boolean = false;
      
      private var §#! §:Number = -10000.0;
      
      private var §+R§:int = 0;
      
      private var §^E§:Number = 0;
      
      private var §4!q§:Number = 0;
      
      private var §6!,§:§%!a§;
      
      private var §@!H§:§%!I§;
      
      protected var §'x§:§,!e§ = null;
      
      private var §;!u§:Boolean;
      
      private var §`!h§:Boolean;
      
      public function §7!3§(param1:§5!Y§, param2:§6h§, param3:Boolean, param4:§#!R§, param5:String = "StatePlay")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2,param3,param5);
            do
            {
               this.§@!H§ = param4 as §%!I§;
            }
            while(!(_loc7_ || param1));
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'x§ = new §,!e§(0,0,0,1);
            while(true)
            {
               §?P§ = new §2W§(this);
               loop1:
               while(_loc2_)
               {
                  §?P§.init(this.§`!K§());
                  loop2:
                  while(true)
                  {
                     §?P§.container.mClip.addChild(this.§'x§);
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           this.§6!,§ = new §%!a§(this);
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §#"0§.§+#§.Views.View_LevelPlay[0];
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.levelStarted();
            while(true)
            {
               this.§;!u§ = false;
            }
            addr90:
         }
         loop1:
         while(true)
         {
            this.§^t§();
            loop2:
            while(true)
            {
               §[!-§.§@v§(§+!a§.§[`§,§&" §.currentLevel);
               while(true)
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     continue loop2;
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr90);
               }
               continue loop1;
            }
         }
      }
      
      protected function §^t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§'x§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§;!u§);
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr20:
                                 return;
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(this.§'x§);
                                 loop5:
                                 while(true)
                                 {
                                    §§pop().mouseEnabled = true;
                                    loop6:
                                    while(true)
                                    {
                                       this.§;!u§ = true;
                                       loop7:
                                       for(; _loc2_ || _loc2_; if(!(_loc1_ && _loc2_))
                                       {
                                          §§goto(addr20);
                                       })
                                       {
                                          §§push(this.§'x§);
                                          while(true)
                                          {
                                             §§push(1);
                                             addr92:
                                             while(true)
                                             {
                                                §§pop().§7z§(§§pop());
                                                continue loop4;
                                             }
                                             addr54:
                                             while(!(_loc1_ && _loc2_))
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop5;
                                                addr87:
                                                §§push(this.§'x§);
                                                if(!_loc1_)
                                                {
                                                   addr29:
                                                   §§pop().addEventListener(ColorFadeLayerEvent.§9e§,this.onFadeComplete);
                                                   if(!(_loc2_ || this))
                                                   {
                                                      while(_loc2_)
                                                      {
                                                         §§goto(addr87);
                                                         §§goto(addr29);
                                                      }
                                                      continue loop6;
                                                      addr85:
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr123);
               }
            }
         }
         §§goto(addr100);
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§'x§);
            loop0:
            while(true)
            {
               §§pop().mouseEnabled = false;
               addr75:
               while(true)
               {
                  §§push(this.§'x§);
                  if(!_loc3_)
                  {
                     §§pop().removeEventListener(ColorFadeLayerEvent.§9e§,this.onFadeComplete);
                     while(!(_loc3_ && _loc3_))
                     {
                        §?P§.container.mClip.removeChild(this.§'x§);
                        if(!_loc3_)
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §?P§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
               loop1:
               while(true)
               {
                  this.§%C§();
                  while(true)
                  {
                     §!!G§.§2Z§.updateTextFields(§?P§.container,"StatePlay");
                     continue loop0;
                     addr60:
                     if(_loc3_ || _loc2_)
                     {
                        this.§^E§ = 0;
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           while(!_loc2_)
                           {
                              this.§[P§();
                           }
                           continue loop0;
                           addr71:
                        }
                        loop6:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr60);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§""&§();
                                 §§goto(addr71);
                                 continue loop6;
                              }
                              addr77:
                           }
                        }
                        addr67:
                     }
                  }
               }
            }
         }
      }
      
      protected function §[P§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§4k§ = §6!!§.singleton.§6"#§;
         var _loc2_:Vector.<String> = _loc1_.§2s§.getTutorialNamesForMapping(§%Z§.§##§);
         if(!_loc3_)
         {
            _loc1_.§-z§(_loc2_,true,true,true,false,null,true,true);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §?P§.container.mClip.addChild(this.§'x§);
         }
         loop0:
         do
         {
            super.deActivate();
            loop1:
            while(true)
            {
               this.§6!,§.§]K§();
               do
               {
                  this.§=!C§();
                  continue loop1;
               }
               while(_loc1_);
               
               continue loop0;
            }
         }
         while(_loc1_);
         
      }
      
      private function §=!C§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         if(!_loc3_)
         {
            §§push(this.§]"+§);
            loop0:
            for(; !§§pop(); §§push(§1"&§.§'!g§),if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     §[!-§.§@v§(§+!a§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
                  }
                  §§goto(addr73);
               }
               §[!-§.§@v§(§+!a§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               if(!_loc2_)
               {
                  §§goto(addr73);
               }
               break;
            })
            {
               if(_loc2_ || _loc2_)
               {
                  if(this.§#! § <= §]"§)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     this.§]"+§ = true;
                     while(true)
                     {
                        _loc1_ = Math.round(1000 / this.§#! § * this.§+R§);
                        while(!_loc3_)
                        {
                           continue loop0;
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop1;
                           }
                        }
                     }
                     continue loop0;
                  }
                  addr127:
               }
               §§goto(addr127);
            }
            return;
         }
         §§goto(addr127);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.onUIInteraction(param1,param2,param3);
            loop0:
            while(param1 == 1)
            {
               loop1:
               while(true)
               {
                  §§push(§&!"§.§1!D§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().slingshot);
                     if(_loc6_ || param1)
                     {
                        if(!§§pop().mDragging)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(§&!"§.§1!D§);
                              if(_loc6_ || param3)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 §§pop().camera.stopDragging();
                                 if(_loc6_)
                                 {
                                    if(_loc6_ || param3)
                                    {
                                       break loop0;
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          return;
                                       }
                                       addr195:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 addr191:
                                 addr191:
                                 while(true)
                                 {
                                    §§push(§&!"§.§1!D§);
                                    break loop3;
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              §§push(§§pop().slingshot);
                              break loop2;
                           }
                        }
                        §§goto(addr191);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§pop().shoot();
                     §§goto(addr195);
                  }
               }
            }
            var _loc4_:* = param2;
            if(!_loc5_)
            {
               if("PAUSE" === _loc4_)
               {
                  if(_loc6_ || param2)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        addr326:
                     }
                  }
                  else
                  {
                     addr296:
                     §§push(5);
                     if(_loc6_ || this)
                     {
                        addr304:
                     }
                  }
               }
               else if("RESTART_LEVEL" === _loc4_)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(1);
                     if(!_loc6_)
                     {
                        addr271:
                     }
                  }
                  else
                  {
                     addr282:
                     §§push(4);
                     if(_loc5_)
                     {
                        §§goto(addr326);
                     }
                  }
               }
               else if("ZOOM_IN" === _loc4_)
               {
                  if(!(_loc5_ && param2))
                  {
                     §§push(2);
                     if(_loc5_ && param1)
                     {
                        §§goto(addr304);
                     }
                  }
                  else
                  {
                     addr268:
                     §§push(3);
                     if(!_loc5_)
                     {
                        §§goto(addr271);
                     }
                  }
               }
               else
               {
                  if("ZOOM_OUT" === _loc4_)
                  {
                     if(_loc6_ || param3)
                     {
                        §§goto(addr268);
                     }
                  }
                  else if("ZOOM_IN_RELEASE" === _loc4_)
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§goto(addr282);
                     }
                     else
                     {
                        §§goto(addr296);
                     }
                  }
                  else
                  {
                     if("ZOOM_OUT_RELEASE" === _loc4_)
                     {
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr296);
                        }
                     }
                     else if("BUTTON_FULLSCREEN" !== _loc4_)
                     {
                        addr331:
                        switch(§§pop())
                        {
                           case 0:
                              this.§7L§();
                              break;
                              addr120:
                           case 1:
                              this.§=3§();
                              if(_loc6_ || this)
                              {
                                 break;
                              }
                              break;
                           case 2:
                              this.§^E§ = §=!!§;
                              this.§4!q§ = §4U§;
                              addr92:
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr120);
                              break;
                              addr101:
                           case 3:
                              §§push(this);
                              §§push(§=!!§);
                              if(!_loc5_)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§^E§ = §§pop();
                              addr85:
                              if(_loc6_)
                              {
                                 this.§4!q§ = §4U§;
                                 break;
                                 addr75:
                              }
                              else
                              {
                                 §§goto(addr92);
                              }
                              break;
                           case 4:
                              this.§^E§ = 0;
                              addr48:
                              break;
                              addr70:
                           case 5:
                              this.§^E§ = 0;
                              addr54:
                              if(!(_loc5_ && param3))
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr75);
                              }
                              else
                              {
                                 §§goto(addr70);
                              }
                              break;
                           case 6:
                              (§6!!§.singleton as §4!=§).§?!l§();
                              if(_loc6_)
                              {
                                 if(_loc6_ || param3)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr48);
                                       }
                                       else
                                       {
                                          §§goto(addr101);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr85);
                                    }
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    §§goto(addr54);
                                 }
                              }
                        }
                        return;
                        §§push(7);
                     }
                     §§goto(addr331);
                  }
                  §§goto(addr331);
                  if(!(_loc5_ && param2))
                  {
                     §§goto(addr326);
                  }
               }
               §§goto(addr331);
            }
            §§goto(addr282);
         }
         §§goto(addr191);
      }
      
      private function §7L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§%!]§());
         if(!(_loc2_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            §6!!§.singleton.§%![§.openPopup(new §!5§(_loc1_));
         }
      }
      
      private function §=3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[j§.§=!<§();
            do
            {
               §<f§(§[j§.§-!q§);
               do
               {
                  this.§6!,§.§8o§();
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §""&§() : void
      {
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§6!,§.levelCompleted();
            do
            {
               §[!-§.§@v§(§+!a§.§-!y§,§&" §.currentLevel,this.§4!n§.getScore(10));
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      override protected function getGameLogicController(param1:§?!'§) : §,"'§
      {
         return new §]!j§(param1,§&" §);
      }
      
      private function §,B§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§#! §);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§#! § = §§pop();
            if(!_loc4_)
            {
               if(this.§#! § > 0)
               {
                  if(_loc5_ || _loc2_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§+R§);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc2_.§+R§ = _loc3_;
                     }
                  }
               }
            }
         }
      }
      
      private function §%C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§#! § = §"+§;
         }
         do
         {
            this.§+R§ = 0;
         }
         while(!_loc2_);
         
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               §§push(this.§`!h§);
               if(_loc2_ || this)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop14:
                           while(true)
                           {
                              §§pop();
                              loop15:
                              while(true)
                              {
                                 §§push(§&!"§.isPaused);
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                    }
                                    addr203:
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§`!h§ = false;
                                          addr208:
                                          while(true)
                                          {
                                             §'!c§.§&j§();
                                             addr194:
                                             while(!_loc3_)
                                             {
                                                §&!"§.§1!D§.background.§`!e§();
                                                while(true)
                                                {
                                                }
                                             }
                                             continue loop0;
                                          }
                                       }
                                       addr205:
                                    }
                                    while(true)
                                    {
                                       this.§,B§(param1);
                                       loop9:
                                       while(_loc2_)
                                       {
                                          §§push(§&!"§.isPaused);
                                          loop10:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   § !y§.§2Z§.update(param1);
                                                }
                                                loop11:
                                                while(!(_loc3_ && _loc2_))
                                                {
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      continue loop15;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§6!O§();
                                                      loop13:
                                                      while(_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§[V§(param1);
                                                            loop17:
                                                            for(; !_loc3_; if(!(_loc2_ || _loc2_))
                                                            {
                                                               continue;
                                                            },§§push(this.§6!,§),if(!(_loc3_ && this))
                                                            {
                                                               §§pop().§8o§();
                                                               §§goto(addr56);
                                                            },§§goto(addr99))
                                                            {
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                                  §§push(nextState.length > 0);
                                                                  loop18:
                                                                  for(; !_loc3_; if(!(_loc2_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  },if(!(_loc2_ || _loc3_))
                                                                  {
                                                                     continue loop14;
                                                                  },§§goto(addr93))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        while(!§§pop())
                                                                        {
                                                                           if(nextState == §"o§.§-!q§)
                                                                           {
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              addr56:
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc2_ || param1))
                                                                                 {
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§@>§());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       addr126:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop20;
                                                                                       }
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr100:
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§goto(addr194);
                                                                                 }
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        this.§6!,§.§8o§();
                                                                        §§goto(addr100);
                                                                        addr93:
                                                                     }
                                                                     §§goto(addr126);
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            continue loop13;
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                       §§goto(addr190);
                                    }
                                 }
                              }
                           }
                           addr239:
                        }
                        §§goto(addr203);
                     }
                  }
               }
               §§goto(addr239);
            }
         }
         §§goto(addr147);
      }
      
      private function §6!O§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §>A§.getScore(10);
         if(_loc3_)
         {
            §?P§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
         var _loc2_:int = (§6!!§.singleton as §4!=§).§?!b§.getScoreForLevel(§&" §.currentLevel);
         if(_loc3_)
         {
            §?P§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
         }
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§@>§();
      }
      
      protected function §@>§() : Boolean
      {
         return this.§6!,§.§+!h§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §=-§.§-!q§;
      }
      
      override public function getLoserStateName() : String
      {
         return §@!C§.§-!q§;
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.updateLocalization();
            do
            {
               §!!G§.§2Z§.updateTextFields(§?P§.container,"StatePlay");
            }
            while(!_loc1_);
            
         }
      }
      
      private function §[V§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§^E§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr19:
                  return;
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§4!q§);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§4!q§ = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr31);
      }
      
      public function get §@!R§() : §5!Y§
      {
         return §&" §;
      }
      
      public function get §4!n§() : §,"'§
      {
         return §>A§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.keyDown(param1);
         }
         var _loc2_:* = param1.keyCode;
         if(_loc3_)
         {
            if(Keyboard.R === _loc2_)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc3_ || _loc3_)
                  {
                  }
               }
               else
               {
                  addr173:
                  §§push(2);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr181:
                  }
               }
               §§goto(addr196);
            }
            else
            {
               if(Keyboard.P !== _loc2_)
               {
                  if(Keyboard.ESCAPE === _loc2_)
                  {
                     §§goto(addr173);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr196:
                  switch(§§pop())
                  {
                     case 0:
                        addr123:
                        addr122:
                        addr121:
                        if(!§6!!§.singleton.§%![§.§%&§())
                        {
                           addr124:
                           this.§=3§();
                        }
                        break;
                     case 1:
                        addr71:
                        §§push(§6!!§.singleton.§%![§);
                        if(_loc3_)
                        {
                           addr74:
                           §§push(§§pop().§%&§());
                           if(!(_loc4_ && this))
                           {
                              if(!§§pop())
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    this.§7L§();
                                    if(_loc4_ && _loc2_)
                                    {
                                    }
                                    break;
                                 }
                                 if(!(_loc3_ || param1))
                                 {
                                    §§goto(addr124);
                                 }
                              }
                              break;
                           }
                           §§goto(addr123);
                           §§goto(addr123);
                        }
                        else
                        {
                           §§goto(addr122);
                        }
                     case 2:
                        §§push(§6!!§.singleton);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc3_)
                           {
                              §§push(§§pop().§%![§);
                              if(_loc3_)
                              {
                                 §§push(§§pop().§%&§());
                                 if(_loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          if(_loc3_ || this)
                                          {
                                             this.§7L§();
                                             if(!(_loc4_ && param1))
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr123);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr124);
                                          §§goto(addr123);
                                       }
                                       break;
                                    }
                                    break;
                                 }
                                 §§goto(addr74);
                                 §§goto(addr123);
                              }
                              else
                              {
                                 §§goto(addr71);
                              }
                           }
                           else
                           {
                              §§goto(addr121);
                           }
                           §§goto(addr123);
                        }
                        else
                        {
                           §§goto(addr71);
                        }
                  }
                  §&!"§.controller.keyDown(param1);
                  return;
               }
               if(!_loc4_)
               {
                  addr160:
                  §§push(1);
                  if(!(_loc3_ || _loc3_))
                  {
                     §§goto(addr181);
                  }
               }
               else
               {
                  §§goto(addr173);
               }
               §§goto(addr196);
            }
            §§goto(addr173);
         }
         §§goto(addr160);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.keyUp(param1);
         }
         do
         {
            §&!"§.controller.keyUp(param1);
         }
         while(_loc3_);
         
      }
      
      private function §%!]§() : String
      {
         return §&" §.currentLevel.substr(2);
      }
   }
}
