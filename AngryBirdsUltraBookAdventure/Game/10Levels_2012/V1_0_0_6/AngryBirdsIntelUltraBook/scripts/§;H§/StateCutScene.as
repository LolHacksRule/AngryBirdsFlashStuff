package §;H§
{
   import §!!K§.§else§;
   import §+0§.§,!E§;
   import §3!G§.LevelManager;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §@!L§.§#L§;
   import §@!L§.§-`§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §^!Y§.§'R§;
   import §^!Y§.§]e§;
   import flash.events.Event;
   
   public class StateCutScene extends §,!E§
   {
      
      public static const §"!s§:String = "StateCutScene";
      
      private static const §4!R§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §"!s§ = "StateCutScene";
            do
            {
               §4!R§ = 500;
            }
            while(_loc1_ && StateCutScene);
            
         }
      }
      
      private var §]!o§:§#L§;
      
      private var §&!;§:Boolean;
      
      private var §5z§:Number = 0;
      
      private var §2!_§:Number = 0;
      
      private var §&!M§:§]e§;
      
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
               §&!m§ = new §4`§(this);
               do
               {
                  §&!m§.init(§ !I§.§3!a§.Views.View_CutScene[0]);
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      protected function §8!M§(param1:String) : Boolean
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
                  §§push(this.§&!M§);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§7!f§();
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
                                    §§push(this.§&!M§);
                                    loop3:
                                    while(!_loc2_)
                                    {
                                       §§pop().removeEventListener(Event.COMPLETE,this.§8V§);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§&!M§);
                                          loop5:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                             addr149:
                                             while(true)
                                             {
                                                §§push(this.§&!M§);
                                                loop7:
                                                while(true)
                                                {
                                                   §§pop().addEventListener(Event.COMPLETE,this.§8V§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(this.§&!M§);
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
                                                            §§push(this.§&!M§);
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
      
      private function §8V§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&!M§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§&!M§);
                     addr86:
                     loop1:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§8V§);
                        addr91:
                        while(true)
                        {
                           §§push(this.§&!M§);
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
      
      private function §7!f§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §&!m§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§@!P§());
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§'R§ = §'R§.§7!j§;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§&!M§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr60:
                     _loc2_ = this.§&!M§.textureManager;
                     addr63:
                     this.§]!o§ = §-`§.§[!,§(_loc1_,_loc2_);
                     if(!_loc3_)
                     {
                        §§push(this.§]!o§);
                        loop8:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 AngryBirdsFP11.sUserProgress.§6!E§(_loc1_);
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(§^!c§.§5!Y§);
                                 while(true)
                                 {
                                    §§push(true);
                                    loop3:
                                    while(true)
                                    {
                                       §§pop().§@!v§(§§pop());
                                       addr163:
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§^!c§.§5!Y§);
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
                                                §§pop().§"!B§(§§pop());
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
                                 §§push(this.§]!o§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§pop().update(0);
                                    for(; !_loc3_; §§pop().§#!C§.addChild(this.§]!o§.sprite),if(_loc3_ && _loc2_)
                                    {
                                       continue;
                                    },if(!_loc3_)
                                    {
                                       break loop0;
                                    },§§goto(addr163))
                                    {
                                       §§push(§^!c§.§5!Y§);
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
            §§push(this.§&!M§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§&!M§);
                     loop2:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§8V§);
                        loop3:
                        while(true)
                        {
                           §§push(this.§&!M§);
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
               if(!this.§&!M§)
               {
                  loop1:
                  while(true)
                  {
                     this.§&!M§ = §^!c§.§5!Y§.§&c§;
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
                        §&!m§.getItemByName("Button_Skip").setVisibility(false);
                        loop7:
                        while(_loc3_ || _loc1_)
                        {
                           §&!m§.getItemByName("Button_Skip").mClip.alpha = this.§5z§;
                           loop8:
                           while(true)
                           {
                              AngryBirdsFP11.§8#§();
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
                                          this.§&!;§ = false;
                                          while(_loc3_)
                                          {
                                             §&!m§.getItemByName("MovieClip_Loading").setVisibility(false);
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
                                             this.§5z§ = 0;
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
                                 this.§2!_§ = 0;
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
                  §§push(§else§.§^!A§);
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
      
      protected function §@!P§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(LevelManager.§"!N§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LevelManager.§];§().§`!q§(_loc1_ + "-OUTRO"));
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
                     §§push(LevelManager.§%n§);
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
                              §§push(LevelManager.§];§().§`!q§(_loc1_ + "-INTRO"));
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
            §§push(this.§]!o§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§push(this.§&!M§);
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
                                       this.§]!o§ = null;
                                       continue loop5;
                                    }
                                 }
                                 continue loop0;
                              }
                              §§push(this.§&!M§);
                              loop8:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§8V§);
                                 addr118:
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§&!M§);
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
                                          §§push(§^!c§.§5!Y§);
                                          if(_loc2_ && this)
                                          {
                                             break;
                                          }
                                          §§pop().§"!B§(true);
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
                                                   LevelManager.§"!N§ = null;
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
                                                   §§push(§^!c§.§5!Y§);
                                                   break loop11;
                                                }
                                                addr158:
                                             }
                                          }
                                          continue loop10;
                                       }
                                       while(true)
                                       {
                                          §§pop().§#!C§.removeChild(this.§]!o§.sprite);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
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
                  this.§&!;§ = true;
                  if(_loc6_)
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§3l§.§1T§();
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
            §§push(this.§2!_§);
            loop0:
            while(true)
            {
               if(§§pop() <= §4!R§)
               {
                  §§push(this);
                  §§push(this.§2!_§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§2!_§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        loop2:
                        while(this.§&!;§)
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
                                       return §,!E§.STATE_STATUS_COMPLETED;
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                              addr92:
                              while(true)
                              {
                                 this.§5z§ = 1;
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
                                 §§push(this.§5z§);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(param1);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() / 1000);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§5z§ = §§pop();
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
                              if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
                              {
                                 addr244:
                                 if(mNextState.length <= 0)
                                 {
                                    addr221:
                                    §§push(Boolean(this.§]!o§));
                                    if(Boolean(this.§]!o§))
                                    {
                                       addr223:
                                       §§pop();
                                       addr224:
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(this.§]!o§);
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
                                             return §,!E§.STATE_STATUS_COMPLETED;
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
                                    return §,!E§.STATE_STATUS_RUNNING;
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
                  §&!m§.getItemByName("Button_Skip").setVisibility(true);
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
            §§push(this.§]!o§);
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
                                 §§push(this.§]!o§);
                                 loop10:
                                 for(; _loc3_; while(true)
                                 {
                                    §§push(this.§]!o§);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr105);
                                    §§push(§§pop().§,X§);
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
                                                         mNextState = §9!3§.§"!s§;
                                                         addr158:
                                                         if(!(_loc3_ || this))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§]!o§);
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
                                                   §§push(LevelManager.§%n§);
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
                                                                        mNextState = this.§`[§();
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr158);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  mNextState = §!y§.§"!s§;
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
                                                               §§push(§#L§.§!!J§);
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
                                 §!y§.§9!c§ = StateCutScene.§"!s§;
                              }
                              mNextState = §!y§.§"!s§;
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
      
      protected function §`[§() : String
      {
         return §;W§.§"!s§;
      }
   }
}
