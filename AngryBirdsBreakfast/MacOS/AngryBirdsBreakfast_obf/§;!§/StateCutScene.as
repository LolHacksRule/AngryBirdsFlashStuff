package §;!§
{
   import § ! §.§5!x§;
   import § ! §.§=!>§;
   import §,L§.§6!W§;
   import §4!o§.§+!N§;
   import §4!o§.§?!Z§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   import flash.events.Event;
   
   public class StateCutScene extends §;" §
   {
      
      public static const §-!q§:String = "StateCutScene";
      
      private static const §<!U§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!q§ = "StateCutScene";
            do
            {
               §<!U§ = 500;
            }
            while(_loc1_);
            
         }
      }
      
      private var §+!S§:§?!Z§;
      
      private var §;!a§:Boolean;
      
      private var §5+§:Number = 0;
      
      private var §<!^§:Number = 0;
      
      protected var §9k§:§=!>§;
      
      public function StateCutScene(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      protected function get §;P§() : §?!Z§
      {
         return this.§+!S§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §?P§ = new §2W§(this);
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            §?P§.init(§#"0§.§+#§.Views.View_CutScene[0]);
            if(_loc1_)
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §6=§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  §§push(this.§9k§);
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr153:
                        while(true)
                        {
                           §?P§.getItemByName("MovieClip_Loading").setVisibility(true);
                           addr158:
                           while(true)
                           {
                              §§push(this.§9k§);
                              addr130:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§'!k§);
                              }
                           }
                        }
                        addr153:
                     }
                     else
                     {
                        this.startCutScene();
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                     }
                     while(true)
                     {
                        §§push(this.§9k§);
                        continue loop0;
                        §§goto(addr130);
                     }
                  }
                  §§push(true);
               }
               §§goto(addr153);
            }
            else
            {
               §§push(false);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr153);
      }
      
      protected function loadCutSceneContent(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9k§.loadContent("cutscene_" + param1);
         }
      }
      
      protected function §'!k§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9k§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§9k§);
                     addr86:
                     loop1:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§'!k§);
                        addr91:
                        while(true)
                        {
                           §§push(this.§9k§);
                           if(_loc2_)
                           {
                              §§pop().removeEventListener(Event.CANCEL,this.§@^§);
                              do
                              {
                                 this.startCutScene();
                              }
                              while(_loc3_ && _loc3_);
                              
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        addr52:
                     }
                  }
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr91);
      }
      
      protected function startCutScene() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §?P§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.getCutSceneName());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§5!x§ = §5!x§.§2Z§;
         if(!_loc3_)
         {
            §§push(this.§9k§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr50:
                     _loc2_ = this.§9k§.§58§;
                     addr53:
                     this.§+!S§ = §+!N§.§2! §(_loc1_,_loc2_);
                     if(!_loc3_)
                     {
                        §§push(this.§+!S§);
                        loop8:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §6!!§.singleton.§<!S§.userProgress.§[2§(_loc1_);
                              }
                              loop1:
                              do
                              {
                                 §§push(§&!"§.§1!D§);
                                 addr146:
                                 while(true)
                                 {
                                    §§push(true);
                                    addr147:
                                    while(true)
                                    {
                                       §§pop().§"!Q§(§§pop());
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§&!"§.§1!D§);
                                          addr124:
                                          while(true)
                                          {
                                             §§push(false);
                                             if(!_loc4_)
                                             {
                                                break loop3;
                                             }
                                             §§pop().§2f§(§§pop());
                                             while(true)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(_loc3_ && _loc3_);
                              
                              loop0:
                              while(true)
                              {
                                 §§push(this.§+!S§);
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    continue loop8;
                                 }
                                 §§pop().update(0);
                                 while(true)
                                 {
                                    §§push(§&!"§.§1!D§);
                                    if(_loc4_ || _loc1_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§pop().§<x§.addChild(this.§+!S§.sprite);
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc4_ || this)
                                          {
                                             addr107:
                                             break loop0;
                                          }
                                          §§goto(addr128);
                                       }
                                       else
                                       {
                                          §§goto(addr146);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr124);
                                 §§goto(addr135);
                              }
                              addr142:
                           }
                           return;
                        }
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr142);
               }
               §§goto(addr53);
            }
            §§goto(addr50);
         }
         §§goto(addr107);
      }
      
      protected function §@^§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§9k§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.end();
                     if(!(_loc3_ || _loc2_))
                     {
                        while(!_loc3_)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§9k§);
                              if(_loc3_ || _loc2_)
                              {
                                 continue loop0;
                              }
                              addr97:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§'!k§);
                                 continue loop5;
                              }
                           }
                           §§pop().removeEventListener(Event.CANCEL,this.§@^§);
                        }
                        continue;
                     }
                     if(!(_loc2_ && param1))
                     {
                        break;
                     }
                     §§goto(addr102);
                  }
                  return;
               }
               while(true)
               {
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr102);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§&!"§.§1!D§);
               while(true)
               {
                  §§pop().clearLevel();
                  loop2:
                  while(true)
                  {
                     §§push(§&!"§.§1!D§);
                     if(_loc4_)
                     {
                        break;
                     }
                     §§pop().§"!Q§(false);
                     loop3:
                     while(true)
                     {
                        if(this.§9k§)
                        {
                           while(true)
                           {
                              §§push(§1"&§.§1i§);
                              if(!(_loc4_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(§1"&§.§1i§);
                                       addr143:
                                       while(true)
                                       {
                                          §§pop().color = 0;
                                          addr145:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr68:
                                       if(_loc4_ && this)
                                       {
                                          continue;
                                       }
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             while(true)
                                             {
                                                §?P§.getItemByName("MovieClip_Loading").setVisibility(false);
                                                if(_loc3_ || this)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         loop14:
                                                         while(true)
                                                         {
                                                            this.§;!a§ = false;
                                                            addr47:
                                                            addr155:
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  addr54:
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(!(_loc3_ || _loc2_))
                                                                     {
                                                                        while(_loc3_)
                                                                        {
                                                                           this.§<!^§ = 0;
                                                                        }
                                                                        continue loop3;
                                                                        addr127:
                                                                     }
                                                                     §§goto(addr68);
                                                                  }
                                                                  while(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §?P§.getItemByName("Button_Skip").setVisibility(false);
                                                                     while(true)
                                                                     {
                                                                        §?P§.getItemByName("Button_Skip").mClip.alpha = this.§5+§;
                                                                     }
                                                                     §§goto(addr54);
                                                                  }
                                                                  §§goto(addr145);
                                                               }
                                                               while(true)
                                                               {
                                                                  §6!!§.singleton.§2!>§();
                                                                  addr84:
                                                                  while(true)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                            }
                                                            while(_loc3_ || _loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                      §§goto(addr110);
                                                   }
                                                   §§goto(addr84);
                                                }
                                                §§goto(addr47);
                                             }
                                             §§push(this.getCutSceneName());
                                             if(_loc3_)
                                             {
                                                §§push(§§pop());
                                             }
                                             var _loc2_:* = §§pop();
                                             if(!_loc4_)
                                             {
                                                if(!this.§6=§(_loc2_))
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr216:
                                                      this.end();
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr216);
                                             addr79:
                                          }
                                          while(true)
                                          {
                                             this.§9k§ = §&!"§.§1!D§.§ ""§;
                                          }
                                          addr150:
                                       }
                                       §§goto(addr155);
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§5+§ = 0;
                                    §§goto(addr127);
                                    §§goto(addr145);
                                 }
                              }
                              §§goto(addr143);
                           }
                           addr130:
                        }
                        §§goto(addr150);
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function getCutSceneName() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = §&" §.previousLevel;
         var _loc2_:String = §&" §.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  do
                  {
                     §§push(_loc2_);
                     if(!(_loc3_ || _loc2_))
                     {
                        continue loop0;
                     }
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  return §§pop();
                  addr31:
               }
               addr96:
               while(true)
               {
                  §§push(§&" §.currentLevel);
               }
               while(true)
               {
                  _loc1_ = §§pop();
               }
            }
         }
         while(true)
         {
            §§goto(addr68);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+!S§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§push(this.§9k§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           loop7:
                           for(; _loc2_ || this; if(!(_loc1_ && this))
                           {
                              if(!_loc1_)
                              {
                                 break loop6;
                              }
                              continue loop0;
                           })
                           {
                              if(_loc2_)
                              {
                                 §§push(this.§9k§);
                                 while(true)
                                 {
                                    §§pop().removeEventListener(Event.COMPLETE,this.§'!k§);
                                    addr109:
                                    loop12:
                                    while(true)
                                    {
                                       §§push(this.§9k§);
                                       if(_loc1_)
                                       {
                                          continue;
                                       }
                                       addr74:
                                       §§pop().removeEventListener(Event.CANCEL,this.§@^§);
                                       while(!(_loc2_ || _loc1_))
                                       {
                                          continue loop12;
                                          §§goto(addr74);
                                       }
                                       addr86:
                                       while(true)
                                       {
                                          §§push(§&!"§.§1!D§);
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§pop().§2f§(true);
                                          while(!(_loc1_ && this))
                                          {
                                             super.deActivate();
                                             if(_loc2_ || this)
                                             {
                                                continue loop7;
                                             }
                                          }
                                          §§goto(addr79);
                                          §§goto(addr86);
                                       }
                                       addr79:
                                       while(true)
                                       {
                                          §§pop().§<x§.removeChild(this.§+!S§.sprite);
                                          continue loop0;
                                       }
                                    }
                                 }
                                 addr104:
                              }
                              else
                              {
                                 while(!_loc1_)
                                 {
                                    this.§+!S§ = null;
                                    break loop7;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr139);
                                 }
                                 addr137:
                                 addr121:
                              }
                           }
                           continue;
                           addr93:
                        }
                        §§goto(addr44);
                     }
                     §§goto(addr104);
                  }
                  return;
               }
               §§goto(addr137);
            }
         }
         §§goto(addr109);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param3))
         {
            if("SKIP" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr75);
               }
               else
               {
                  §§push(2);
               }
               addr98:
               switch(§§pop())
               {
                  case 0:
                     this.§;!a§ = true;
                     if(_loc6_ || this)
                     {
                        break;
                     }
                     addr51:
                     break;
                  case 1:
                     §6!!§.singleton.§%!O§();
                     if(_loc6_ || param1)
                     {
                        §§goto(addr51);
                     }
               }
               return;
            }
            if(!_loc5_)
            {
               §§push(0);
               if(_loc5_)
               {
               }
            }
            else
            {
               addr75:
               §§push(1);
               if(_loc6_ || param2)
               {
               }
            }
            §§goto(addr98);
         }
         §§goto(addr75);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§<!^§);
            loop0:
            while(true)
            {
               if(§§pop() <= §<!U§)
               {
                  §§push(this);
                  §§push(this.§<!^§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§<!^§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§;!a§);
                           if(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.§+!S§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr99:
                                             while(!_loc2_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                if(§§pop())
                                                {
                                                   while(_loc3_)
                                                   {
                                                      §§pop();
                                                      continue loop1;
                                                   }
                                                   continue loop5;
                                                   addr105:
                                                }
                                             }
                                             addr115:
                                             continue loop3;
                                             while(true)
                                             {
                                                §§push(this.§+!S§);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(§§pop().update(param1));
                                                   if(_loc3_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr99);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr53);
                                                            }
                                                            while(true)
                                                            {
                                                               §?P§.getItemByName("Button_Skip").setVisibility(true);
                                                               §§goto(addr197);
                                                            }
                                                            addr52:
                                                            addr192:
                                                         }
                                                         §§goto(addr105);
                                                      }
                                                   }
                                                   addr53:
                                                }
                                                continue loop7;
                                                while(§§pop())
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr61:
                                                      if(_loc2_ && _loc3_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         break loop11;
                                                      }
                                                      this.end();
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      if(!(_loc2_ && this))
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr150:
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §?P§.getItemByName("Button_Skip").mClip.alpha = this.§5+§;
                                                            continue loop0;
                                                         }
                                                         addr197:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§5+§);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(param1);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() / 1000);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§5+§ = §§pop();
                                                            continue loop16;
                                                         }
                                                      }
                                                      addr147:
                                                      while(true)
                                                      {
                                                         this.§5+§ = 1;
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                                return;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr52);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr147);
                     }
                     §§goto(addr150);
                  }
               }
               §§goto(addr192);
            }
         }
         §§goto(addr115);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(_loc2_)
         {
            §§push(this.§9k§);
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§push(this.§+!S§);
                     loop6:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop7:
                        while(true)
                        {
                           §§push(§§pop());
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    loop10:
                                    while(!_loc3_)
                                    {
                                       §§push(this.§+!S§);
                                       while(true)
                                       {
                                          §§push(§§pop().§^R§);
                                          addr195:
                                          while(true)
                                          {
                                             §§push(§?!Z§.§-!o§);
                                             addr197:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                             }
                                          }
                                          loop16:
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                §§push(§§pop());
                                                if(_loc3_ && this)
                                                {
                                                   continue loop8;
                                                }
                                                if(!§§pop())
                                                {
                                                   while(!§§pop())
                                                   {
                                                      §§push(§&" §.currentLevel);
                                                      loop22:
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         addr99:
                                                         while(!_loc3_)
                                                         {
                                                            continue loop22;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§+!S§);
                                                            if(_loc3_ && _loc1_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr115);
                                                            §§push(§§pop().§^R§);
                                                         }
                                                         continue loop6;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr22);
                                                   }
                                                   §<f§(§&4§.§-!q§);
                                                   §§goto(addr69);
                                                }
                                                §§goto(addr174);
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr199);
                              }
                              §§goto(addr147);
                           }
                        }
                     }
                  }
               }
               §§goto(addr255);
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§pop().removeEventListener(Event.CANCEL,this.§@^§);
               §§goto(addr241);
            }
         }
         §§goto(addr202);
      }
      
      protected function get § !0§() : String
      {
         return §+A§.§-!q§;
      }
      
      protected function §8!w§() : String
      {
         return §[j§.§-!q§;
      }
   }
}
