package §9!5§
{
   import §-w§.§,Q§;
   import §-w§.§6!O§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §<&§.§^b§;
   import §`!i§.§,S§;
   import §`!i§.§6n§;
   import flash.events.Event;
   import §true§.§ _§;
   
   public class StateCutScene extends §?Y§
   {
      
      public static const §?h§:String = "StateCutScene";
      
      private static const §?!A§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?h§ = "StateCutScene";
         }
         do
         {
            §?!A§ = 500;
         }
         while(_loc1_);
         
      }
      
      private var §56§:§,S§;
      
      private var §+x§:Boolean;
      
      private var §9$§:Number = 0;
      
      private var §6!w§:Number = 0;
      
      private var §]!>§:§6!O§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
         }
         do
         {
            §5!P§ = new §'!^§(this);
            do
            {
               §5!P§.init(§[!'§.§+@§.Views.View_CutScene[0]);
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function § !j§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1)
            {
               §§push(this.§]!>§);
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§"!Q§();
                     if(!_loc2_)
                     {
                        addr49:
                        break;
                     }
                     while(true)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(this.§]!>§);
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push("cutscene_");
                                    if(!(_loc2_ && param1))
                                    {
                                       §§push(§§pop() + param1);
                                    }
                                    §§pop().§<!I§(§§pop());
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       addr176:
                                       while(true)
                                       {
                                          §5!P§.getItemByName("MovieClip_Loading").setVisibility(true);
                                          addr181:
                                          while(true)
                                          {
                                             §§push(this.§]!>§);
                                             addr165:
                                             while(true)
                                             {
                                                §§pop().removeEventListener(Event.COMPLETE,this.§?!f§);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§]!>§);
                                       loop3:
                                       while(true)
                                       {
                                          §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                          addr154:
                                          while(true)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                §§push(this.§]!>§);
                                                continue loop3;
                                             }
                                             §§goto(addr181);
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr135);
                        §§pop().addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                     }
                     break;
                  }
                  §§goto(addr176);
               }
               return true;
            }
            else
            {
               §§push(false);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr49);
      }
      
      private function §?!f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§]!>§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]!>§);
                     addr97:
                     addr51:
                     loop1:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§?!f§);
                        while(true)
                        {
                           §§push(this.§]!>§);
                           if(!(_loc3_ || param1))
                           {
                              break;
                           }
                           §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                           while(_loc3_ || _loc2_)
                           {
                              this.§"!Q§();
                              if(!(_loc2_ && this))
                              {
                                 if(!_loc2_)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr51);
      }
      
      private function §"!Q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §5!P§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§5j§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§,Q§ = §,Q§.§<d§;
         if(!(_loc3_ && this))
         {
            §§push(this.§]!>§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr50:
                     _loc2_ = this.§]!>§.textureManager;
                     addr53:
                     this.§56§ = §6n§.§%T§(_loc1_,_loc2_);
                     if(_loc4_ || _loc1_)
                     {
                        §§push(this.§56§);
                        loop1:
                        while(§§pop())
                        {
                           loop0:
                           while(true)
                           {
                              AngryBirdsFP11.sUserProgress.§8!7§(_loc1_);
                              addr163:
                              loop2:
                              while(true)
                              {
                                 §§push(§ _§.§!6§);
                                 while(true)
                                 {
                                    §§push(true);
                                    loop4:
                                    while(true)
                                    {
                                       §§pop().§2!d§(§§pop());
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§ _§.§!6§);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(false);
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§pop().§"C§(§§pop());
                                             loop7:
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(this.§56§);
                                                   if(_loc4_ || this)
                                                   {
                                                      §§pop().update(0);
                                                      while(!(_loc3_ && _loc2_))
                                                      {
                                                         continue loop6;
                                                         §§pop().§2i§.addChild(this.§56§.sprite);
                                                         if(_loc4_ || this)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  break loop1;
                                                               }
                                                               break loop7;
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             continue loop0;
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr159);
               }
               §§goto(addr53);
            }
            §§goto(addr50);
         }
         §§goto(addr163);
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§]!>§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§]!>§);
                     loop2:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§?!f§);
                        addr87:
                        loop5:
                        while(true)
                        {
                           §§push(this.§]!>§);
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           addr62:
                           §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
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
         loop0:
         while(true)
         {
            if(!this.§]!>§)
            {
               loop1:
               while(true)
               {
                  this.§]!>§ = § _§.§!6§.§8!,§;
                  addr147:
                  while(!_loc3_)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
            while(true)
            {
               §§push(§^b§.§9E§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     §§goto(addr123);
                  }
                  §§goto(addr112);
               }
               §§goto(addr125);
            }
         }
      }
      
      protected function §5j§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(LevelManager.§,C§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LevelManager.§0v§().§['§(_loc1_ + "-OUTRO"));
         if(!_loc4_)
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
                  loop1:
                  while(true)
                  {
                     §§push(LevelManager.§4Y§);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                     }
                     loop2:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr100:
                        loop5:
                        while(true)
                        {
                           §§push(LevelManager.§0v§().§['§(_loc1_ + "-INTRO"));
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           addr86:
                           addr86:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr86);
               }
               return §§pop();
            }
         }
         §§goto(addr100);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§56§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§push(this.§]!>§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§]!>§);
                              addr116:
                              loop12:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§?!f§);
                                 addr121:
                                 while(true)
                                 {
                                    §§push(this.§]!>§);
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop12;
                                 }
                                 addr90:
                                 §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop6;
                                 }
                                 addr97:
                              }
                           }
                           addr104:
                        }
                        loop8:
                        while(true)
                        {
                           §§push(§ _§.§!6§);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§pop().§"C§(true);
                              loop9:
                              while(_loc2_)
                              {
                                 LevelManager.§,C§ = null;
                                 for(; !(_loc1_ && _loc2_); super.deActivate(),if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                       addr31:
                                    }
                                    continue loop9;
                                 })
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          while(!_loc1_)
                                          {
                                             this.§56§ = null;
                                             continue loop6;
                                          }
                                          continue loop0;
                                          addr133:
                                       }
                                       if(!(_loc1_ && this))
                                       {
                                          continue;
                                       }
                                       addr139:
                                       while(true)
                                       {
                                          §§push(§ _§.§!6§);
                                          break loop8;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr104);
                                    }
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr90);
                           }
                           break;
                           §§goto(addr97);
                        }
                        while(true)
                        {
                           §§pop().§2i§.removeChild(this.§56§.sprite);
                           continue loop0;
                        }
                     }
                     §§goto(addr116);
                  }
               }
               §§goto(addr139);
            }
         }
         §§goto(addr31);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            §§push("SKIP");
            if(!(_loc6_ && this))
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param3)
                     {
                        addr86:
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr93:
                        §§push(1);
                        if(_loc5_ || param3)
                        {
                        }
                     }
                     §§goto(addr106);
                  }
                  else
                  {
                     §§goto(addr92);
                  }
               }
               §§goto(addr92);
            }
            addr92:
            if("FULLSCREEN_BUTTON" === _loc4_)
            {
               §§goto(addr93);
            }
            else
            {
               §§push(2);
            }
            addr106:
            switch(§§pop())
            {
               case 0:
                  this.§+x§ = true;
                  if(_loc5_ || param2)
                  {
                     break;
                  }
                  break;
               case 1:
                  AngryBirdsFP11.§3!a§.§8!d§();
                  if(!_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr86);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§6!w§);
            loop0:
            while(true)
            {
               if(§§pop() > §?!A§)
               {
                  if(!_loc3_)
                  {
                     while(true)
                     {
                        §5!P§.getItemByName("Button_Skip").setVisibility(true);
                     }
                     addr131:
                  }
               }
               else
               {
                  §§push(this);
                  §§push(this.§6!w§);
                  if(_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§6!w§ = §§pop();
                  if(!_loc3_)
                  {
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                     loop1:
                     while(this.§+x§)
                     {
                        if(_loc4_)
                        {
                           this.end();
                        }
                        if(_loc4_)
                        {
                           if(_loc4_ || param1)
                           {
                              return §?Y§.STATE_STATUS_COMPLETED;
                           }
                           addr136:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§9$§);
                              if(!_loc3_)
                              {
                                 §§push(param1);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() / 1000);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§9$§ = §§pop();
                              continue loop0;
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              this.§9$§ = 1;
                           }
                           addr88:
                        }
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     §§push(super.run(param1));
                     if(_loc4_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc3_ && this))
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && _loc3_))
                        {
                           if(§§pop() != §?Y§.STATE_STATUS_RUNNING)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr248);
                              }
                              addr249:
                           }
                           if(mNextState.length > 0)
                           {
                              §§goto(addr223);
                           }
                           addr200:
                           §§push(Boolean(this.§56§));
                           if(Boolean(this.§56§))
                           {
                              addr206:
                              §§pop();
                              addr207:
                              §§push(this.§56§);
                              if(_loc4_)
                              {
                                 §§push(§§pop().update(param1));
                                 if(!(_loc3_ && param1))
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       if(!_loc3_)
                                       {
                                          addr183:
                                          if(!§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.end();
                                                      addr197:
                                                      if(_loc3_)
                                                      {
                                                         addr223:
                                                         if(!(_loc4_ || this))
                                                         {
                                                            §§goto(addr249);
                                                         }
                                                         return §?Y§.STATE_STATUS_COMPLETED;
                                                      }
                                                      return §?Y§.STATE_STATUS_RUNNING;
                                                      addr199:
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr207);
                                             }
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr183);
                        }
                        addr248:
                        return _loc2_;
                     }
                     §§goto(addr199);
                  }
                  while(true)
                  {
                     §§goto(addr60);
                  }
               }
               §§goto(addr136);
            }
         }
         §§goto(addr131);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         if(!_loc3_)
         {
            §§push(this.§56§);
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
                                 §§push(this.§56§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop9;
                                       }
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop());
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue loop2;
                                       }
                                       if(!§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(LevelManager.§4Y§);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                loop16:
                                                while(!(_loc3_ && _loc1_))
                                                {
                                                   _loc1_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!_loc3_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            mNextState = § B§.§?h§;
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            addr56:
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  mNextState = § B§.§?h§;
                                                                  addr213:
                                                                  addr236:
                                                               }
                                                               §§goto(addr22);
                                                            }
                                                            addr139:
                                                            if(!(_loc2_ || this))
                                                            {
                                                               break loop11;
                                                            }
                                                            mNextState = §!1§.§?h§;
                                                            addr150:
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr213);
                                                                  §§goto(addr150);
                                                               }
                                                               continue loop0;
                                                               addr190:
                                                            }
                                                            addr22:
                                                            return;
                                                            §§goto(addr213);
                                                         }
                                                         break;
                                                      }
                                                      continue loop16;
                                                   }
                                                   mNextState = this.§[!Z§();
                                                   §§goto(addr56);
                                                }
                                                while(_loc2_)
                                                {
                                                   §§push(§,S§.§,-§);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr127:
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop11;
                                                      }
                                                      addr243:
                                                      addr182:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§pop();
                                                            §§goto(addr190);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               break loop12;
                                                            }
                                                            addr242:
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§56§);
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop8;
                                                      }
                                                      addr227:
                                                   }
                                                   §§goto(addr79);
                                                }
                                                addr79:
                                                while(true)
                                                {
                                                   §§goto(addr227);
                                                }
                                                addr106:
                                                addr225:
                                             }
                                             §§goto(addr139);
                                          }
                                       }
                                       §§goto(addr182);
                                    }
                                 }
                              }
                              if(!_loc3_)
                              {
                                 § B§.§`]§ = StateCutScene.§?h§;
                                 §§goto(addr236);
                              }
                              else
                              {
                                 §§goto(addr243);
                              }
                           }
                        }
                     }
                     §§goto(addr242);
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      protected function §[!Z§() : String
      {
         return §#!c§.§?h§;
      }
   }
}
