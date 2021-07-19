package § C§
{
   import §!Y§.§[o§;
   import §-Z§.§?h§;
   import §0R§.§ for§;
   import §0R§.§;g§;
   import §1n§.§5#§;
   import §1n§.§try §;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import flash.events.Event;
   
   public class StateCutScene extends §-§
   {
      
      public static const §?B§:String = "StateCutScene";
      
      private static const §3!#§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?B§ = "StateCutScene";
            do
            {
               §3!#§ = 500;
            }
            while(_loc1_ && StateCutScene);
            
         }
      }
      
      private var §7t§:§;g§;
      
      private var §@d§:Boolean;
      
      private var §[e§:Number = 0;
      
      private var §7q§:Number = 0;
      
      private var §5!0§:§try §;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §,R§ = new §#H§(this);
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            §,R§.init(§set §.§&!1§.Views.View_CutScene[0]);
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §5! §(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            §§push(this.§5!0§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  this.§5q§();
                  break;
               }
               §,R§.getItemByName("MovieClip_Loading").setVisibility(true);
               §§push(this.§5!0§);
               loop1:
               while(true)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§3>§);
                  §§push(this.§5!0§);
                  loop2:
                  while(true)
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§=M§);
                     §§push(this.§5!0§);
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§3>§);
                        while(true)
                        {
                           §§push(this.§5!0§);
                           §§push("cutscene_");
                           addr60:
                           continue loop0;
                           if(!_loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§'[§(§§pop());
                           if(!(_loc3_ && param1))
                           {
                              break loop0;
                           }
                        }
                        addr44:
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return true;
         }
         else
         {
            §§push(false);
            if(_loc2_ || _loc3_)
            {
               return §§pop();
            }
         }
         return §§pop();
      }
      
      private function §3>§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§5!0§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr77:
                     §§push(this.§5!0§);
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§3>§);
                     }
                     addr77:
                  }
                  while(true)
                  {
                     §§push(this.§5!0§);
                     if(_loc3_)
                     {
                        §§pop().removeEventListener(Event.CANCEL,this.§=M§);
                        do
                        {
                           this.§5q§();
                        }
                        while(_loc2_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr77);
                  }
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      private function §5q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §,R§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§<8§());
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§5#§ = §5#§.§[8§;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§5!0§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc1_)
                  {
                     addr70:
                     _loc2_ = this.§5!0§.textureManager;
                     addr73:
                     this.§7t§ = § for§.§>+§(_loc1_,_loc2_);
                     §§push(this.§7t§);
                     loop0:
                     for(; §§pop(); §§pop().§[!C§(§§pop()),§§push(this.§7t§),if(!(_loc4_ || this))
                     {
                        continue;
                     },§§pop().update(0),§§goto(addr130))
                     {
                        AngryBirdsFP11.§64§.§6w§(_loc1_);
                        loop1:
                        while(true)
                        {
                           §§push(§[o§.§='§);
                           loop2:
                           while(true)
                           {
                              §§push(true);
                              loop3:
                              while(true)
                              {
                                 §§pop().§"3§(§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§[o§.§='§);
                                    while(true)
                                    {
                                       §§push(false);
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                       addr130:
                                       while(true)
                                       {
                                          §§push(§[o§.§='§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             §§pop().§1S§.addChild(this.§7t§.sprite);
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop4;
                                             }
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr80);
                  }
                  addr80:
                  return;
               }
               §§goto(addr73);
            }
            §§goto(addr70);
         }
         §§goto(addr152);
      }
      
      protected function §=M§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§5!0§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§5!0§);
                     loop2:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§3>§);
                        addr87:
                        loop5:
                        while(true)
                        {
                           §§push(this.§5!0§);
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           addr62:
                           §§pop().removeEventListener(Event.CANCEL,this.§=M§);
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop5;
                              §§goto(addr62);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.end();
                  if(_loc3_ || this)
                  {
                     break;
                  }
                  §§goto(addr67);
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.activate();
         }
         while(true)
         {
            if(!this.§5!0§)
            {
               while(true)
               {
                  this.§5!0§ = §[o§.§='§.§@y§;
                  if(_loc3_)
                  {
                     break;
                  }
                  loop7:
                  while(_loc2_ || this)
                  {
                     §,R§.getItemByName("MovieClip_Loading").setVisibility(false);
                     if(!_loc2_)
                     {
                        continue;
                     }
                     addr32:
                     if(_loc2_ || _loc2_)
                     {
                        if(true)
                        {
                           §§push(this.§<8§());
                           if(!_loc3_)
                           {
                              §§push(§§pop());
                           }
                           var _loc1_:* = §§pop();
                           if(!(_loc3_ && this))
                           {
                              if(!this.§5! §(_loc1_))
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    this.end();
                                 }
                              }
                           }
                           return;
                        }
                        addr96:
                        while(true)
                        {
                           this.§@d§ = false;
                           continue loop7;
                           §§goto(addr32);
                        }
                        while(true)
                        {
                           §§goto(addr32);
                        }
                        while(true)
                        {
                           this.§7q§ = 0;
                           §§goto(addr96);
                        }
                        addr96:
                        addr101:
                        addr41:
                     }
                     else
                     {
                        §§goto(addr96);
                     }
                     §,R§.getItemByName("Button_Skip").setVisibility(false);
                     if(!_loc3_)
                     {
                        §,R§.getItemByName("Button_Skip").mClip.alpha = this.§[e§;
                        if(!(_loc2_ || _loc1_))
                        {
                           loop8:
                           while(true)
                           {
                              addr97:
                              while(true)
                              {
                                 this.§[e§ = 0;
                                 §§goto(addr101);
                                 continue loop8;
                              }
                           }
                           addr112:
                        }
                        AngryBirdsFP11.§^!<§();
                        §§goto(addr41);
                     }
                     §§goto(addr96);
                  }
               }
               continue;
            }
            while(true)
            {
               §§push(§?h§.§ n§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     addr110:
                     §?h§.§ n§.color = 0;
                     §§goto(addr112);
                  }
                  §§goto(addr97);
               }
               §§goto(addr110);
            }
         }
      }
      
      protected function §<8§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§0$§.§>Q§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§0$§.§ H§().§1!2§(_loc1_ + "-OUTRO"));
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§push(§0$§.§[C§);
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        loop5:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(§0$§.§ H§().§1!2§(_loc1_ + "-INTRO"));
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                              }
                              addr72:
                              while(true)
                              {
                                 if(_loc4_ && _loc1_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue loop6;
                                 }
                                 if(_loc4_ && _loc1_)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr111:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_ || _loc3_)
                  {
                     break;
                  }
                  §§goto(addr72);
               }
               return §§pop();
            }
         }
         §§goto(addr111);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§7t§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§push(§[o§.§='§);
                  continue;
               }
               addr74:
               loop2:
               while(true)
               {
                  §§push(this.§5!0§);
                  loop3:
                  while(§§pop())
                  {
                     §§push(this.§5!0§);
                     do
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§3>§);
                        §§push(this.§5!0§);
                     }
                     while(!_loc1_);
                     
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop().removeEventListener(Event.CANCEL,this.§=M§);
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              break loop3;
                           }
                           break;
                        }
                        continue loop2;
                        addr71:
                     }
                  }
                  while(true)
                  {
                     §§push(§[o§.§='§);
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §§pop().§[!C§(true);
                     §0$§.§>Q§ = null;
                     while(_loc1_)
                     {
                        super.deActivate();
                        if(_loc1_)
                        {
                           return;
                        }
                     }
                     §§goto(addr71);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr74);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            §§push("SKIP");
            if(_loc5_ || param1)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        addr86:
                        §§push(0);
                        if(_loc5_ || param1)
                        {
                        }
                     }
                     else
                     {
                        addr98:
                        §§push(1);
                        if(_loc6_)
                        {
                        }
                     }
                     §§goto(addr106);
                  }
                  else
                  {
                     §§goto(addr97);
                  }
               }
               §§goto(addr97);
            }
            addr97:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr98);
            }
            else
            {
               §§push(2);
            }
            addr106:
            switch(§§pop())
            {
               case 0:
                  this.§@d§ = true;
                  if(!_loc6_)
                  {
                     break;
                  }
                  addr35:
                  break;
               case 1:
                  AngryBirdsFP11.§?L§.§,!!§();
                  if(_loc5_ || param3)
                  {
                     §§goto(addr35);
                  }
            }
            return;
         }
         §§goto(addr86);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§7q§);
            loop0:
            while(true)
            {
               if(§§pop() <= §3!#§)
               {
                  §§push(this);
                  §§push(this.§7q§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§7q§ = §§pop();
                  if(_loc3_)
                  {
                     loop1:
                     while(this.§@d§)
                     {
                        if(_loc3_)
                        {
                           this.end();
                           return §-§.STATE_STATUS_COMPLETED;
                        }
                        while(!(_loc3_ || _loc2_))
                        {
                           continue loop0;
                           if(§§pop() <= 1)
                           {
                              break;
                           }
                           this.§[e§ = 1;
                        }
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     §§push(super.run(param1));
                     if(_loc3_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(§§pop() != §-§.STATE_STATUS_RUNNING)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr228);
                           }
                           addr229:
                        }
                        if(mNextState.length <= 0)
                        {
                           addr184:
                           §§push(Boolean(this.§7t§));
                           if(Boolean(this.§7t§))
                           {
                              addr186:
                              §§pop();
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(this.§7t§);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(§§pop().update(param1));
                                    if(!(_loc4_ && param1))
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§goto(addr172);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr186);
                                    }
                                    addr172:
                                    §§goto(addr171);
                                 }
                              }
                              §§goto(addr184);
                           }
                           addr171:
                           if(!§§pop())
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr229);
                                 }
                                 this.end();
                              }
                           }
                           return §-§.STATE_STATUS_RUNNING;
                        }
                        return §-§.STATE_STATUS_COMPLETED;
                     }
                     addr228:
                     return _loc2_;
                  }
               }
            }
         }
         while(true)
         {
            §,R§.getItemByName("Button_Skip").setVisibility(true);
            §§push(this);
            §§push(this.§[e§);
            if(_loc3_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() / 1000);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().§[e§ = §§pop();
            §,R§.getItemByName("Button_Skip").mClip.alpha = this.§[e§;
            §§goto(addr93);
         }
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = null;
         if(!(_loc3_ && _loc1_))
         {
            §§push(this.§7t§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr223:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr225:
                           while(true)
                           {
                              §§push(this.§7t§);
                              addr199:
                              while(true)
                              {
                                 §§push(§§pop().§?g§);
                                 addr200:
                                 while(true)
                                 {
                                    §§push(§;g§.§=s§);
                                    addr202:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       addr203:
                                       while(_loc2_ || _loc1_)
                                       {
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        addr224:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(this.§7t§);
                           continue loop0;
                        }
                        if(_loc2_)
                        {
                           §4t§.§7p§ = StateCutScene.§?B§;
                        }
                     }
                  }
               }
            }
         }
         mNextState = §4t§.§?B§;
         §§goto(addr195);
      }
      
      protected function §`^§() : String
      {
         return §7!6§.§?B§;
      }
   }
}
