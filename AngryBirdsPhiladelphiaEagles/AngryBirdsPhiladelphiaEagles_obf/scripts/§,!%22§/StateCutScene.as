package §,!"§
{
   import §#e§.§'?§;
   import §#e§.§1b§;
   import §'!O§.§'!#§;
   import §'7§.§-!K§;
   import §'7§.§2X§;
   import §5Z§.§[Z§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   import flash.events.Event;
   
   public class StateCutScene extends §'!#§
   {
      
      public static const §-A§:String = "StateCutScene";
      
      private static const §>!;§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-A§ = "StateCutScene";
            do
            {
               §>!;§ = 500;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §[m§:§2X§;
      
      private var §7!5§:Boolean;
      
      private var §3F§:Number = 0;
      
      private var § !$§:Number = 0;
      
      private var §]-§:§1b§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
            do
            {
               §0q§ = new §`o§(this);
               do
               {
                  §0q§.init(§`Z§.§5c§.Views.View_CutScene[0]);
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §'R§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1)
            {
               §§push(this.§]-§);
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§>!K§();
                     if(_loc2_ || _loc3_)
                     {
                        break;
                     }
                     addr116:
                     while(true)
                     {
                        §§push(this.§]-§);
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        if(_loc2_ || _loc3_)
                        {
                           §§push("cutscene_");
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§+W§(§§pop());
                           if(_loc2_)
                           {
                              break loop0;
                           }
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    break;
                                 }
                                 addr177:
                                 while(true)
                                 {
                                    §0q§.getItemByName("MovieClip_Loading").setVisibility(true);
                                    addr182:
                                    while(true)
                                    {
                                       §§push(this.§]-§);
                                       addr166:
                                       while(true)
                                       {
                                          §§pop().removeEventListener(Event.COMPLETE,this.§-a§);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§]-§);
                                 addr140:
                                 while(!(_loc3_ && param1))
                                 {
                                    §§pop().removeEventListener(Event.CANCEL,this.§6!$§);
                                    §§push(this.§]-§);
                                 }
                                 §§goto(addr166);
                              }
                              addr122:
                              §§pop().addEventListener(Event.COMPLETE,this.§-a§);
                           }
                           §§push(this.§]-§);
                           continue;
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr122);
                           }
                           §§goto(addr140);
                        }
                     }
                     continue;
                  }
                  §§goto(addr177);
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
         §§goto(addr182);
      }
      
      private function §-a§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§]-§);
            while(§§pop())
            {
               addr73:
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§pop().removeEventListener(Event.CANCEL,this.§6!$§);
               do
               {
                  this.§>!K§();
               }
               while(_loc3_ && _loc2_);
               
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§]-§);
                        while(true)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§-a§);
                           addr96:
                           while(true)
                           {
                              §§push(this.§]-§);
                              if(_loc3_ && param1)
                              {
                                 break;
                              }
                              §§goto(addr73);
                           }
                        }
                     }
                     addr89:
                  }
                  break;
               }
               §§goto(addr96);
            }
            return;
         }
         §§goto(addr89);
      }
      
      private function §>!K§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §0q§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§=8§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§'?§ = §'?§.§>o§;
         if(_loc4_)
         {
            §§push(this.§]-§);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr60:
                     _loc2_ = this.§]-§.textureManager;
                     addr73:
                     this.§[m§ = §-!K§.§+!7§(_loc1_,_loc2_);
                     §§push(this.§[m§);
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop0:
                           while(true)
                           {
                              AngryBirdsFP11.§`I§.§=O§(_loc1_);
                              loop1:
                              while(true)
                              {
                                 §§push(§#! §.§`'§);
                                 while(true)
                                 {
                                    §§push(true);
                                    loop3:
                                    while(true)
                                    {
                                       §§pop().§^!6§(§§pop());
                                       while(_loc4_ || _loc3_)
                                       {
                                          §§push(§#! §.§`'§);
                                          while(true)
                                          {
                                             §§push(false);
                                             if(_loc4_)
                                             {
                                                §§pop().§%_§(§§pop());
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                §§push(this.§[m§);
                                                if(!(_loc3_ && this))
                                                {
                                                   §§pop().update(0);
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             continue loop3;
                                          }
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           addr155:
                        }
                        return;
                     }
                     addr58:
                  }
                  §§goto(addr155);
               }
               §§goto(addr73);
            }
            §§goto(addr60);
         }
         §§goto(addr58);
      }
      
      protected function §6!$§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§]-§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]-§);
                     addr82:
                     loop4:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§-a§);
                        addr87:
                        addr60:
                        addr65:
                        while(true)
                        {
                           §§push(this.§]-§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        §§pop().removeEventListener(Event.CANCEL,this.§6!$§);
                        addr69:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr87);
                           §§goto(addr60);
                        }
                     }
                  }
               }
               while(true)
               {
                  this.end();
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr65);
                  §§goto(addr69);
               }
               return;
               addr44:
            }
            §§goto(addr82);
         }
         §§goto(addr44);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super.activate();
         if(!this.§]-§)
         {
            while(true)
            {
               this.§]-§ = §#! §.§`'§.§5-§;
               addr119:
               while(true)
               {
               }
               addr86:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §0q§.getItemByName("Button_Skip").setVisibility(false);
               addr93:
               if(_loc2_)
               {
                  §0q§.getItemByName("Button_Skip").mClip.alpha = this.§3F§;
                  loop5:
                  while(true)
                  {
                     AngryBirdsFP11.§1k§();
                     loop6:
                     while(true)
                     {
                        addr43:
                        addr98:
                        while(true)
                        {
                           this.§7!5§ = false;
                           do
                           {
                              §0q§.getItemByName("MovieClip_Loading").setVisibility(false);
                           }
                           while(_loc3_);
                           
                           if(_loc2_ || _loc3_)
                           {
                              continue loop5;
                           }
                           continue loop6;
                        }
                        while(true)
                        {
                           this.§ !$§ = 0;
                           addr84:
                           while(_loc2_)
                           {
                              §§goto(addr86);
                              §§goto(addr93);
                           }
                           §§goto(addr119);
                        }
                     }
                  }
               }
               §§goto(addr84);
            }
         }
         while(true)
         {
            §§push(§[Z§.§%m§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr107:
                  §[Z§.§%m§.color = 0;
               }
               this.§3F§ = 0;
               §§goto(addr98);
            }
            §§goto(addr107);
            §§goto(addr119);
         }
      }
      
      protected function §=8§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§`!K§.§0r§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§`!K§.§]V§().§?3§(_loc1_ + "-OUTRO"));
         if(_loc3_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            do
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§`!K§.§5g§);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§§pop());
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr66:
                        if(!(_loc4_ && _loc2_))
                        {
                           continue loop0;
                        }
                     }
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§`!K§.§]V§().§?3§(_loc1_ + "-INTRO"));
                     while(true)
                     {
                        §§push(§§pop());
                        addr101:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           if(!_loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                        }
                        continue loop2;
                        addr59:
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr66);
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     §§goto(addr59);
                  }
                  §§goto(addr101);
               }
            }
            while(_loc4_ && _loc2_);
            
            return §§pop();
         }
         §§goto(addr104);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[m§);
         loop0:
         while(true)
         {
            if(§§pop())
            {
               §§push(§#! §.§`'§);
            }
            else
            {
               loop4:
               while(true)
               {
                  §§push(this.§]-§);
                  loop5:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(§#! §.§`'§);
                           if(_loc2_ || this)
                           {
                              §§pop().§%_§(true);
                              if(_loc2_)
                              {
                                 §`!K§.§0r§ = null;
                                 super.deActivate();
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              addr109:
                              while(_loc2_ || this)
                              {
                                 this.§[m§ = null;
                                 continue loop4;
                              }
                              continue loop0;
                           }
                        }
                     }
                     else
                     {
                        addr33:
                     }
                     continue;
                     return;
                  }
               }
            }
            while(true)
            {
               §§pop().§,?§.removeChild(this.§[m§.sprite);
               continue loop0;
               §§goto(addr33);
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("SKIP");
            if(_loc5_)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && param3))
                     {
                        addr76:
                        §§push(0);
                        if(!(_loc5_ || this))
                        {
                           addr96:
                        }
                     }
                     else
                     {
                        addr88:
                        §§push(1);
                        if(_loc5_ || param3)
                        {
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr101);
                  }
                  else
                  {
                     §§goto(addr87);
                  }
               }
               §§goto(addr87);
            }
            addr87:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr88);
            }
            else
            {
               §§push(2);
            }
            addr101:
            switch(§§pop())
            {
               case 0:
                  this.§7!5§ = true;
                  if(_loc5_ || param1)
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§`y§.§,,§();
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
         if(!(_loc4_ && this))
         {
            §§push(this.§ !$§);
            while(true)
            {
               if(§§pop() <= §>!;§)
               {
                  §§push(this);
                  §§push(this.§ !$§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
               }
               do
               {
                  §0q§.getItemByName("Button_Skip").setVisibility(true);
                  §§push(this);
                  §§push(this.§3F§);
                  if(!_loc4_)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§3F§ = §§pop();
                  §0q§.getItemByName("Button_Skip").mClip.alpha = this.§3F§;
               }
               while(!(_loc3_ || this));
               
               continue;
               §§pop().§ !$§ = §§pop();
               break;
            }
            loop2:
            for(; this.§7!5§; while(true)
            {
               continue loop2;
            })
            {
               if(_loc3_ || _loc2_)
               {
                  this.end();
               }
               if(_loc3_ || _loc3_)
               {
                  return §'!#§.STATE_STATUS_COMPLETED;
               }
               addr75:
               while(true)
               {
                  this.§3F§ = 1;
                  continue loop2;
               }
            }
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
                  if(§§pop() != §'!#§.STATE_STATUS_RUNNING)
                  {
                     return _loc2_;
                  }
                  else
                  {
                     do
                     {
                        if(mNextState.length > 0)
                        {
                           continue;
                        }
                        §§push(this.§[m§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr185:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       this.end();
                                    }
                                 }
                              }
                              else
                              {
                                 addr164:
                              }
                              continue loop4;
                              return §'!#§.STATE_STATUS_RUNNING;
                           }
                        }
                     }
                     while(!_loc3_);
                     
                     §§goto(addr196);
                  }
               }
               return §§pop();
            }
            addr196:
            return §'!#§.STATE_STATUS_COMPLETED;
            addr121:
            addr30:
         }
         while(true)
         {
            §§push(this.§3F§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() > 1)
               {
                  §§goto(addr75);
               }
               §§goto(addr51);
            }
            else
            {
               §§goto(addr121);
            }
         }
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         §§push(this.§[m§);
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
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this.§[m§);
                           while(_loc3_)
                           {
                              §§push(§§pop().§=!6§);
                              while(true)
                              {
                                 §§push(§2X§.§[<§);
                                 addr204:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    addr205:
                                    while(_loc3_ || this)
                                    {
                                    }
                                    continue loop1;
                                 }
                              }
                              loop10:
                              while(!(_loc2_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_ && _loc1_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       while(!§§pop())
                                       {
                                          §§push(§`!K§.§5g§);
                                          loop16:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop17:
                                             while(!_loc2_)
                                             {
                                                _loc1_ = §§pop();
                                                while(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc3_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         continue loop17;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                            §0!5§.§=l§ = StateCutScene.§-A§;
                                                         }
                                                         else
                                                         {
                                                            addr214:
                                                         }
                                                         §§push(this.§[m§);
                                                         if(!_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§goto(addr112);
                                                         §§push(§§pop().§=!6§);
                                                         continue loop10;
                                                      }
                                                      mNextState = §0!5§.§-A§;
                                                      addr172:
                                                      addr218:
                                                   }
                                                   return;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr21);
                                             }
                                             addr112:
                                             while(true)
                                             {
                                                §§push(§2X§.§9=§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc2_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   addr157:
                                                   while(!(_loc2_ && this))
                                                   {
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§pop();
                                                      §§goto(addr172);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr205);
                                             }
                                             continue loop11;
                                          }
                                       }
                                       mNextState = §,!#§.§-A§;
                                       §§goto(addr132);
                                       addr126:
                                    }
                                    §§goto(addr157);
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr140);
                        §§push(this.§[m§);
                     }
                     §§goto(addr214);
                  }
               }
            }
         }
      }
      
      protected function §5!'§() : String
      {
         return §-O§.§-A§;
      }
   }
}
