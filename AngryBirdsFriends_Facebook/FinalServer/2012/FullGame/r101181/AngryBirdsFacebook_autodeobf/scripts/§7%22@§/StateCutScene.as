package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'6§.§"]§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §6!D§.§0Y§;
   import §6!D§.§;";§;
   import §]!A§.;
   import §`!]§.§3x§;
   import §`!]§.§="A§;
   import flash.events.Event;
   
   public class StateCutScene extends §1-§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §5!#§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            STATE_NAME = "StateCutScene";
         }
         do
         {
            §5!#§ = 500;
         }
         while(!_loc1_);
         
      }
      
      private var §^!G§:§="A§;
      
      private var §=!U§:Boolean;
      
      private var §<c§:Number = 0;
      
      private var §-!V§:Number = 0;
      
      private var §%!o§:§;";§;
      
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
         if(!_loc1_)
         {
            super.init();
            while(true)
            {
               §6w§ = new §7!A§(this);
               while(_loc2_ || _loc1_)
               {
                  §6w§.init(§ "A§.§4[§.Views.View_CutScene[0]);
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      protected function §?p§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  §§push(this.§%!o§);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§3"'§();
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        §6w§.getItemByName("MovieClip_Loading").setVisibility(true);
                        loop3:
                        while(true)
                        {
                           §§push(this.§%!o§);
                           loop4:
                           while(_loc3_ || this)
                           {
                              §§pop().removeEventListener(Event.COMPLETE,this.§>!y§);
                              while(!(_loc2_ && _loc2_))
                              {
                                 §§push(this.§%!o§);
                                 loop6:
                                 for(; _loc3_ || this; loop8:
                                 while(true)
                                 {
                                    if(_loc2_ && param1)
                                    {
                                       continue loop6;
                                    }
                                    §§pop().addEventListener(Event.COMPLETE,this.§>!y§);
                                    if(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       §§push(this.§%!o§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                          while(true)
                                          {
                                             §§push(this.§%!o§);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                §§push("cutscene_");
                                                if(_loc3_ || this)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§!!_§(§§pop());
                                                if(_loc3_ || this)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop3;
                                                }
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr142);
                                    }
                                 },§§goto(addr168))
                                 {
                                    §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                    while(true)
                                    {
                                       §§push(this.§%!o§);
                                       continue loop6;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
                  addr32:
                  §§push(true);
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  §§goto(addr32);
                  addr97:
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
         §§goto(addr97);
      }
      
      private function §>!y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§%!o§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%!o§);
                     addr91:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§>!y§);
                        loop2:
                        while(true)
                        {
                           §§push(this.§%!o§);
                           if(!(_loc2_ || this))
                           {
                              break;
                           }
                           §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                           do
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                              this.§3"'§();
                           }
                           while(!(_loc2_ || this));
                           
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr91);
         }
         §§goto(addr33);
      }
      
      private function §3"'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §6w§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§`"5§());
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§0Y§ = §0Y§.§;"§;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§%!o§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr59:
                     _loc2_ = this.§%!o§.textureManager;
                     addr72:
                     this.§^!G§ = §3x§.§<!8§(_loc1_,_loc2_);
                     if(_loc3_)
                     {
                        §§push(this.§^!G§);
                        loop9:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 AngryBirdsFP11.sUserProgress.§14§(_loc1_);
                                 addr157:
                                 addr141:
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§#6§.§6!z§);
                                    addr145:
                                    while(true)
                                    {
                                       §§push(true);
                                       loop3:
                                       while(true)
                                       {
                                          §§pop().§3H§(§§pop());
                                          addr147:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop3;
                                             }
                                             §§push(§#6§.§6!z§);
                                             while(true)
                                             {
                                                §§push(false);
                                                if(!_loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                §§pop().§8Y§(§§pop());
                                                while(true)
                                                {
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    §§push(this.§^!G§);
                                    if(_loc4_)
                                    {
                                       continue loop9;
                                    }
                                    §§pop().update(0);
                                    for(; _loc3_; §§pop().§8!_§.addChild(this.§^!G§.sprite),if(!(_loc4_ && _loc3_))
                                    {
                                       if(_loc3_)
                                       {
                                          break loop0;
                                       }
                                       continue loop0;
                                    })
                                    {
                                       §§push(§#6§.§6!z§);
                                       if(_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr147);
                                    §§goto(addr134);
                                 }
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr157);
                     addr57:
                  }
                  §§goto(addr141);
               }
               §§goto(addr72);
            }
            §§goto(addr59);
         }
         §§goto(addr57);
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§%!o§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§%!o§);
                     loop1:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§>!y§);
                        addr82:
                        while(true)
                        {
                           §§push(this.§%!o§);
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                           while(true)
                           {
                              §§goto(addr39);
                           }
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr82);
               }
               addr39:
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            this.end();
            if(_loc3_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop2;
            }
            continue loop3;
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               if(!this.§%!o§)
               {
                  while(true)
                  {
                     this.§%!o§ = §#6§.§6!z§.§@F§;
                     addr165:
                     addr40:
                     while(true)
                     {
                     }
                     if(_loc3_ || _loc2_)
                     {
                        if(true)
                        {
                           §§push(this.§`"5§());
                           if(!_loc2_)
                           {
                              §§push(§§pop());
                           }
                           var _loc1_:* = §§pop();
                        }
                        loop10:
                        while(true)
                        {
                           this.§=!U§ = false;
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §6w§.getItemByName("MovieClip_Loading").setVisibility(false);
                                       if(_loc2_ && this)
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop10;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(!(_loc3_ || this))
                                             {
                                                break;
                                             }
                                             continue loop10;
                                          }
                                          addr120:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §6w§.getItemByName("Button_Skip").setVisibility(false);
                                                while(_loc3_ || this)
                                                {
                                                   §6w§.getItemByName("Button_Skip").mClip.alpha = this.§<c§;
                                                   while(true)
                                                   {
                                                      AngryBirdsFP11.§`!"§();
                                                      continue loop9;
                                                   }
                                                }
                                                continue loop0;
                                                addr108:
                                             }
                                             else
                                             {
                                                addr134:
                                             }
                                             while(true)
                                             {
                                                §§push(§"]§.§!X§);
                                                addr136:
                                                while(true)
                                                {
                                                   §§pop().color = 0;
                                                   continue loop0;
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    break;
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr101);
                           }
                           addr127:
                           while(true)
                           {
                              this.§-!V§ = 0;
                              §§goto(addr120);
                           }
                        }
                        continue;
                        if(_loc3_ || this)
                        {
                           if(!this.§?p§(_loc1_))
                           {
                              if(!_loc2_)
                              {
                                 this.end();
                              }
                           }
                        }
                        return;
                     }
                  }
               }
               while(true)
               {
                  §§push(§"]§.§!X§);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           this.§<c§ = 0;
                           §§goto(addr127);
                           addr145:
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr136);
                  §§goto(addr165);
               }
            }
         }
         §§goto(addr165);
      }
      
      protected function §`"5§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(LevelManager.§+!;§);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LevelManager.§9"D§().§<!5§(_loc1_ + "-OUTRO"));
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc3_ || _loc3_))
                     {
                        continue loop0;
                     }
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr124);
                     }
                  }
                  return §§pop();
                  addr60:
               }
               while(true)
               {
                  §§push(LevelManager.§'!O§);
                  addr123:
                  while(true)
                  {
                     §§push(§§pop());
                     addr124:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr125:
                        while(true)
                        {
                           §§push(LevelManager.§9"D§().§<!5§(_loc1_ + "-INTRO"));
                        }
                     }
                  }
               }
               while(_loc3_)
               {
                  §§push(§§pop());
                  continue loop0;
               }
               §§goto(addr123);
            }
         }
         §§goto(addr118);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§^!G§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§push(this.§%!o§);
                     loop7:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop12:
                           while(true)
                           {
                              §§push(§#6§.§6!z§);
                              if(!(_loc1_ || _loc1_))
                              {
                                 break;
                                 addr97:
                              }
                              §§pop().§8Y§(true);
                              while(!(_loc2_ && _loc2_))
                              {
                                 LevelManager.§+!;§ = null;
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§%!o§);
                                       if(!_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       addr120:
                                       while(true)
                                       {
                                          §§pop().removeEventListener(Event.COMPLETE,this.§>!y§);
                                          continue loop10;
                                       }
                                    }
                                    continue loop7;
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       break;
                                    }
                                    continue loop12;
                                 }
                                 addr159:
                                 addr111:
                                 while(!(_loc2_ && this))
                                 {
                                    §§goto(addr120);
                                    §§push(this.§%!o§);
                                 }
                                 while(!(_loc2_ && this))
                                 {
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                    §§goto(addr111);
                                 }
                                 addr111:
                                 while(true)
                                 {
                                    this.§^!G§ = null;
                                    §§goto(addr130);
                                 }
                                 addr130:
                                 §§goto(addr62);
                              }
                              addr62:
                              continue loop0;
                           }
                           while(true)
                           {
                              §§pop().§8!_§.removeChild(this.§^!G§.sprite);
                              continue loop0;
                           }
                        }
                        §§goto(addr111);
                     }
                  }
               }
               §§goto(addr163);
            }
         }
         §§goto(addr147);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param3)
         {
            §§push("SKIP");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(!(_loc6_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        addr76:
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr83:
                        §§push(1);
                        if(_loc5_ || param2)
                        {
                        }
                     }
                     §§goto(addr96);
                  }
                  else
                  {
                     §§goto(addr82);
                  }
               }
               §§goto(addr82);
            }
            addr82:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr83);
            }
            else
            {
               §§push(2);
            }
            addr96:
            switch(§§pop())
            {
               case 0:
                  this.§=!U§ = true;
                  if(_loc5_)
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§@<§.§'!+§();
                  if(_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr76);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§-!V§);
            loop0:
            while(true)
            {
               if(§§pop() <= §5!#§)
               {
                  §§push(this);
                  §§push(this.§-!V§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§-!V§ = §§pop();
                  if(_loc3_ || this)
                  {
                     loop1:
                     while(this.§=!U§)
                     {
                        this.end();
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              return §1-§.STATE_STATUS_COMPLETED;
                           }
                           continue loop0;
                        }
                        do
                        {
                           if(_loc3_ || this)
                           {
                              this.§<c§ = 1;
                           }
                           else
                           {
                              addr135:
                              while(true)
                              {
                                 §6w§.getItemByName("Button_Skip").setVisibility(true);
                                 continue loop0;
                              }
                              addr135:
                           }
                        }
                        while(§§pop() > 1);
                        
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
                     if(_loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || _loc2_)
                        {
                           if(§§pop() == §1-§.STATE_STATUS_RUNNING)
                           {
                              addr205:
                              if(mNextState.length > 0)
                              {
                                 if(_loc4_ && this)
                                 {
                                    addr230:
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          addr198:
                                          §§push(Boolean(this.§^!G§));
                                          if(!_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                addr203:
                                                §§pop();
                                                addr204:
                                                §§push(this.§^!G§);
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§push(§§pop().update(param1));
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr198);
                                             }
                                             addr179:
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.end();
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr187);
                                             }
                                             addr187:
                                             if(_loc4_ && param1)
                                             {
                                                §§goto(addr204);
                                             }
                                             return §1-§.STATE_STATUS_RUNNING;
                                          }
                                          §§goto(addr203);
                                       }
                                       addr247:
                                       return _loc2_;
                                       addr246:
                                    }
                                    §§goto(addr205);
                                 }
                                 return §1-§.STATE_STATUS_COMPLETED;
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr247);
                  }
                  while(true)
                  {
                     §§goto(addr56);
                  }
               }
               §§goto(addr135);
            }
            addr133:
         }
         while(true)
         {
            §§push(this);
            §§push(this.§<c§);
            if(_loc3_ || this)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(§§pop() / 1000);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().§<c§ = §§pop();
            §6w§.getItemByName("Button_Skip").mClip.alpha = this.§<c§;
            §§push(this.§<c§);
            if(!_loc4_)
            {
               §§goto(addr80);
            }
            else
            {
               §§goto(addr133);
            }
         }
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§^!G§);
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
                           §§push(this.§^!G§);
                           loop10:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop11:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop15:
                                    while(!§§pop())
                                    {
                                       §§push(LevelManager.§'!O§);
                                       loop16:
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop());
                                          loop17:
                                          for(; _loc3_; §§push(_loc1_),if(_loc2_)
                                          {
                                             continue;
                                          },if(!_loc3_)
                                          {
                                             continue loop16;
                                          },if(!§§pop())
                                          {
                                             §§goto(addr34);
                                          },if(_loc3_ || _loc2_)
                                          {
                                             mNextState = this.getLevelLoadState();
                                          },§§goto(addr69))
                                          {
                                             _loc1_ = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc3_ || this))
                                                {
                                                   return;
                                                }
                                                addr28:
                                                if(!(_loc3_ || this))
                                                {
                                                   break loop15;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop17;
                                                }
                                                addr34:
                                                continue loop10;
                                                mNextState = this.getLevelSelectionState();
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc3_ || this))
                                                {
                                                   addr187:
                                                   if(_loc2_)
                                                   {
                                                      break loop9;
                                                   }
                                                }
                                                §§goto(addr28);
                                             }
                                             §§goto(addr28);
                                          }
                                          while(true)
                                          {
                                             §§push(§="A§.§72§);
                                             if(_loc2_ && _loc1_)
                                             {
                                                break;
                                             }
                                             addr135:
                                             §§push(§§pop() == §§pop());
                                             if(_loc3_ || this)
                                             {
                                                if(_loc2_ && _loc2_)
                                                {
                                                   continue loop11;
                                                }
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   continue loop1;
                                                }
                                                addr233:
                                                addr214:
                                                while(_loc3_ || _loc1_)
                                                {
                                                   continue loop9;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr234:
                                                   while(true)
                                                   {
                                                      §§push(this.§^!G§);
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop10;
                                                   §§goto(addr135);
                                                }
                                                addr180:
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr214);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr213);
                                          §§goto(addr75);
                                       }
                                       addr75:
                                    }
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          mNextState = §9<§.STATE_NAME;
                                          §§goto(addr28);
                                       }
                                       else
                                       {
                                          §§goto(addr234);
                                       }
                                    }
                                    else
                                    {
                                       mNextState = this.getLevelSelectionState();
                                       §§goto(addr187);
                                       addr227:
                                    }
                                    §§goto(addr28);
                                 }
                                 §§goto(addr180);
                              }
                              continue loop2;
                           }
                        }
                        §8"D§.§5;§ = StateCutScene.STATE_NAME;
                        §§goto(addr227);
                     }
                     §§goto(addr233);
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function getLevelSelectionState() : String
      {
         return §8"D§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
   }
}
