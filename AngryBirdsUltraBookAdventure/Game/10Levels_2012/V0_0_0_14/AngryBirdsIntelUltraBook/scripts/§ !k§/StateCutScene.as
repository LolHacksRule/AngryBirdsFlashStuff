package § !k§
{
   import §!!§.LevelManager;
   import §"!&§.§"R§;
   import §"!&§.§[>§;
   import §,6§.§!o§;
   import §,6§.§]!f§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§7!"§;
   import §@4§.§,!]§;
   import flash.events.Event;
   
   public class StateCutScene extends §+_§
   {
      
      public static const §3F§:String = "StateCutScene";
      
      private static const §9!Z§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §3F§ = "StateCutScene";
            do
            {
               §9!Z§ = 500;
            }
            while(_loc1_ && StateCutScene);
            
         }
      }
      
      private var §@!Q§:§"R§;
      
      private var §'!8§:Boolean;
      
      private var §2!s§:Number = 0;
      
      private var §^!$§:Number = 0;
      
      private var §[T§:§]!f§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            do
            {
               §`-§ = new § C§(this);
               do
               {
                  §`-§.init(dynamic.§[6§.Views.View_CutScene[0]);
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      protected function §"!,§(param1:String) : Boolean
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
                  §§push(this.§[T§);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§2r§();
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§[T§);
                                    loop3:
                                    while(!_loc2_)
                                    {
                                       §§pop().removeEventListener(Event.COMPLETE,this.§-!f§);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§[T§);
                                          loop5:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                             addr149:
                                             while(true)
                                             {
                                                §§push(this.§[T§);
                                                loop7:
                                                while(true)
                                                {
                                                   §§pop().addEventListener(Event.COMPLETE,this.§-!f§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(this.§[T§);
                                                      loop9:
                                                      while(!_loc2_)
                                                      {
                                                         §§pop().addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               continue loop8;
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            addr97:
                                                            addr37:
                                                            continue loop9;
                                                            §§push(this.§[T§);
                                                            if(_loc2_)
                                                            {
                                                               continue loop9;
                                                               return true;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              §§goto(addr37);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr166);
                  }
               }
               addr163:
            }
            else
            {
               §§push(false);
               if(!(_loc2_ && _loc3_))
               {
                  return §§pop();
               }
            }
            §§goto(addr37);
         }
         §§goto(addr163);
      }
      
      private function §-!f§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§[T§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§[T§);
                     addr86:
                     loop1:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§-!f§);
                        addr91:
                        while(true)
                        {
                           §§push(this.§[T§);
                           if(!_loc3_)
                           {
                              §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr19);
            }
            §§goto(addr86);
         }
         §§goto(addr73);
      }
      
      private function §2r§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §`-§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§-!-§());
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§!o§ = §!o§.§^Z§;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§[T§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr60:
                     _loc2_ = this.§[T§.textureManager;
                     addr63:
                     this.§@!Q§ = §[>§.§4i§(_loc1_,_loc2_);
                     if(!_loc3_)
                     {
                        §§push(this.§@!Q§);
                        loop8:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 AngryBirdsFP11.sUserProgress.§6!I§(_loc1_);
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(§4!]§.§8C§);
                                 while(true)
                                 {
                                    §§push(true);
                                    loop3:
                                    while(true)
                                    {
                                       §§pop().§1B§(§§pop());
                                       addr163:
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§4!]§.§8C§);
                                          addr129:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                break loop3;
                                             }
                                             §§push(false);
                                             if(!(_loc3_ && this))
                                             {
                                                §§pop().§+!b§(§§pop());
                                                continue loop1;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                              loop0:
                              while(true)
                              {
                                 §§push(this.§@!Q§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§pop().update(0);
                                    for(; !_loc3_; §§pop().§]"§.addChild(this.§@!Q§.sprite),if(_loc3_ && _loc2_)
                                    {
                                       continue;
                                    },if(!_loc3_)
                                    {
                                       break loop0;
                                    },§§goto(addr163))
                                    {
                                       §§push(§4!]§.§8C§);
                                       if(_loc4_ || _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr129);
                                    }
                                    continue;
                                 }
                                 continue loop8;
                              }
                              addr157:
                           }
                           return;
                        }
                     }
                     addr58:
                  }
                  §§goto(addr157);
               }
               §§goto(addr63);
            }
            §§goto(addr60);
         }
         §§goto(addr58);
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§[T§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§[T§);
                     loop2:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§-!f§);
                        loop3:
                        while(true)
                        {
                           §§push(this.§[T§);
                           if(!(_loc3_ && this))
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                              loop4:
                              while(_loc2_ || this)
                              {
                                 while(true)
                                 {
                                    this.end();
                                    if(!(_loc3_ && param1))
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 return;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr28);
            }
         }
         §§goto(addr55);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               if(!this.§[T§)
               {
                  loop1:
                  while(true)
                  {
                     this.§[T§ = §4!]§.§8C§.§9<§;
                     addr140:
                     while(true)
                     {
                     }
                     loop6:
                     while(true)
                     {
                        if(_loc2_ && _loc1_)
                        {
                           continue loop1;
                        }
                        §`-§.getItemByName("Button_Skip").setVisibility(false);
                        loop7:
                        while(_loc3_ || _loc1_)
                        {
                           §`-§.getItemByName("Button_Skip").mClip.alpha = this.§2!s§;
                           loop8:
                           while(true)
                           {
                              AngryBirdsFP11.§`!P§();
                              loop9:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                          addr51:
                                          addr128:
                                       }
                                       while(true)
                                       {
                                          this.§'!8§ = false;
                                          while(_loc3_)
                                          {
                                             §`-§.getItemByName("MovieClip_Loading").setVisibility(false);
                                             if(_loc3_)
                                             {
                                                continue loop6;
                                             }
                                          }
                                          continue loop9;
                                       }
                                       while(!_loc2_)
                                       {
                                          addr130:
                                          while(true)
                                          {
                                             this.§2!s§ = 0;
                                             break loop9;
                                             §§goto(addr130);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop7;
                                 }
                                 continue loop8;
                              }
                              while(true)
                              {
                                 this.§^!$§ = 0;
                                 continue loop6;
                              }
                           }
                        }
                        §§goto(addr140);
                     }
                  }
               }
               while(true)
               {
                  §§push(§,!]§.§!9§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr124);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr126);
                  §§goto(addr140);
               }
            }
         }
         §§goto(addr124);
      }
      
      protected function §-!-§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(LevelManager.§<5§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LevelManager.§5!K§().§4!#§(_loc1_ + "-OUTRO"));
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(LevelManager.§^!F§);
                     addr103:
                     while(true)
                     {
                        §§push(§§pop());
                        addr104:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr105:
                           loop5:
                           while(true)
                           {
                              §§push(LevelManager.§5!K§().§4!#§(_loc1_ + "-INTRO"));
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                              }
                              addr86:
                              addr96:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop5;
                              }
                              addr96:
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_ || _loc1_)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr86);
                  §§goto(addr96);
               }
               return §§pop();
            }
            §§goto(addr103);
         }
         §§goto(addr105);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§@!Q§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§push(this.§[T§);
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              addr104:
                              if(!(_loc1_ || this))
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc1_ || this)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop6;
                                    }
                                    addr154:
                                    while(true)
                                    {
                                       this.§@!Q§ = null;
                                       continue loop5;
                                    }
                                 }
                                 continue loop0;
                              }
                              §§push(this.§[T§);
                              loop8:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§-!f§);
                                 addr118:
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§[T§);
                                    if(!_loc1_)
                                    {
                                       continue loop8;
                                    }
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                    loop10:
                                    while(true)
                                    {
                                       addr48:
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§4!]§.§8C§);
                                          if(_loc2_ && this)
                                          {
                                             break;
                                          }
                                          §§pop().§+!b§(true);
                                          loop12:
                                          while(true)
                                          {
                                             if(!(_loc1_ || _loc2_))
                                             {
                                                continue loop9;
                                             }
                                             if(_loc1_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   LevelManager.§<5§ = null;
                                                   while(_loc1_)
                                                   {
                                                      continue loop10;
                                                      super.deActivate();
                                                      if(!_loc2_)
                                                      {
                                                         return;
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                                addr84:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§4!]§.§8C§);
                                                   break loop11;
                                                }
                                                addr158:
                                             }
                                          }
                                          continue loop10;
                                       }
                                       while(true)
                                       {
                                          §§pop().§]"§.removeChild(this.§@!Q§.sprite);
                                          continue loop0;
                                       }
                                    }
                                 }
                                 continue loop7;
                              }
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr48);
                     }
                  }
               }
               §§goto(addr158);
            }
         }
         §§goto(addr84);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            §§push("SKIP");
            if(_loc6_ || param2)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        addr77:
                        §§push(0);
                        if(_loc5_ && param3)
                        {
                           addr97:
                        }
                     }
                     else
                     {
                        addr89:
                        §§push(1);
                        if(_loc6_ || param1)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr102);
                  }
                  else
                  {
                     §§goto(addr88);
                  }
               }
               §§goto(addr88);
            }
            addr88:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr89);
            }
            else
            {
               §§push(2);
            }
            addr102:
            switch(§§pop())
            {
               case 0:
                  this.§'!8§ = true;
                  if(_loc6_)
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§`!c§.§catch§();
                  if(!_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr77);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§^!$§);
            loop0:
            while(true)
            {
               if(§§pop() <= §9!Z§)
               {
                  §§push(this);
                  §§push(this.§^!$§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§^!$§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        loop2:
                        while(this.§'!8§)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc3_)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    this.end();
                                    if(_loc3_)
                                    {
                                       return §+_§.STATE_STATUS_COMPLETED;
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                              addr92:
                              while(true)
                              {
                                 this.§2!s§ = 1;
                              }
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              addr145:
                              addr145:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§2!s§);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(param1);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() / 1000);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§2!s§ = §§pop();
                                 continue loop0;
                              }
                           }
                        }
                        §§push(super.run(param1));
                        if(!_loc4_)
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc4_ && param1))
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(§§pop() == §+_§.STATE_STATUS_RUNNING)
                              {
                                 addr244:
                                 if(mNextState.length <= 0)
                                 {
                                    addr221:
                                    §§push(Boolean(this.§@!Q§));
                                    if(Boolean(this.§@!Q§))
                                    {
                                       addr223:
                                       §§pop();
                                       addr224:
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(this.§@!Q§);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().update(param1));
                                                if(_loc3_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr221);
                                          }
                                          addr249:
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             return §+_§.STATE_STATUS_COMPLETED;
                                          }
                                          addr272:
                                          return _loc2_;
                                          addr271:
                                       }
                                       §§goto(addr221);
                                    }
                                    addr191:
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.end();
                                       }
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc4_ && _loc3_)
                                          {
                                             §§goto(addr244);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr224);
                                    }
                                    addr161:
                                    return §+_§.STATE_STATUS_RUNNING;
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr271);
                           }
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr145);
                  }
               }
               while(true)
               {
                  §`-§.getItemByName("Button_Skip").setVisibility(true);
               }
            }
         }
         §§goto(addr145);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§@!Q§);
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
                        loop8:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(this.§@!Q§);
                                 loop10:
                                 for(; _loc3_; while(true)
                                 {
                                    §§push(this.§@!Q§);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr105);
                                    §§push(§§pop().§`!`§);
                                    §§goto(addr192);
                                 })
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc2_ && this))
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop());
                                          if(!_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         mNextState = §6!5§.§3F§;
                                                         addr158:
                                                         if(!(_loc3_ || this))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§@!Q§);
                                                               break loop10;
                                                            }
                                                            addr244:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr237);
                                                      }
                                                      §§goto(addr28);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                else
                                                {
                                                   §§push(LevelManager.§^!F§);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         while(_loc3_ || _loc3_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc2_ && _loc3_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        mNextState = this.set();
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr158);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  mNextState = §6!U§.§3F§;
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        addr53:
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            addr221:
                                                            addr105:
                                                            while(!(_loc2_ && this))
                                                            {
                                                               §§push(§"R§.§continue§);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr192:
                                                                  addr192:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  addr223:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr223);
                                                               §§goto(addr105);
                                                            }
                                                            addr105:
                                                         }
                                                         addr28:
                                                         return;
                                                      }
                                                   }
                                                }
                                                §§goto(addr199);
                                                addr136:
                                                if(_loc3_ || _loc2_)
                                                {
                                                   continue;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          addr243:
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr192);
                                 }
                                 continue loop0;
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 §6!U§.§2s§ = StateCutScene.§3F§;
                              }
                              mNextState = §6!U§.§3F§;
                              addr237:
                              §§goto(addr199);
                           }
                        }
                     }
                     §§goto(addr243);
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function set() : String
      {
         return §%]§.§3F§;
      }
   }
}
