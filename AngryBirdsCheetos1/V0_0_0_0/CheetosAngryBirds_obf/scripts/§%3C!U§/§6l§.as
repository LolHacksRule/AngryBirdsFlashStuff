package §<!U§
{
   import § !+§.§0Z§;
   import § ;§.§3!$§;
   import §!J§.§[&§;
   import §"!+§.§;m§;
   import §&! §.§%!Q§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§8!I§;
   import §2e§.§4!E§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §8!8§.§+!M§;
   import §8!8§.§4!C§;
   import §8!8§.§?6§;
   import §<!+§.§[!!§;
   import §@R§.§']§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class §6l§ extends §]u§
   {
      
      public static const §`O§:String = "LevelSelectionState";
      
      private static const §8!6§:Number = 0.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`O§ = "LevelSelectionState";
         }
         do
         {
            §8!6§ = 0.5;
         }
         while(_loc2_ && §6l§);
         
      }
      
      private var §4x§:Boolean = false;
      
      private var §6!M§:MovieClip;
      
      private var §55§:Array;
      
      private var §95§:Array;
      
      private var §3§:int = 0;
      
      private var §^X§:Boolean = false;
      
      private var §<<§:§3!$§ = null;
      
      private var §2!Y§:String;
      
      private var §<h§:Dictionary;
      
      private var §2!5§:Array;
      
      private var §5'§:Boolean = false;
      
      private var §;!Z§:Array;
      
      private var §1y§:Boolean = false;
      
      private var §;E§:Boolean = false;
      
      private var §2I§:Number = 0;
      
      private var §2q§:Number = 0;
      
      private var §7!K§:Number = 0;
      
      private var §9!6§:Number = 0;
      
      private var §?<§:Number;
      
      private var §30§:Number;
      
      private var §#&§:Number;
      
      private var §[!1§:Number;
      
      public function §6l§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §"c§ = new §,!N§(this);
               loop1:
               while(true)
               {
                  §"c§.init(§@]§.§3!6§.Views.View_LevelSelection[0]);
                  loop2:
                  while(true)
                  {
                     this.§6!M§ = new MovieClip();
                     while(true)
                     {
                        §"c§.addChild(this.§6!M§);
                        addr131:
                        while(!(_loc2_ && _loc2_))
                        {
                           this.§95§ = [];
                           continue loop1;
                        }
                     }
                     addr87:
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     this.§#&§ = §"c§.getItemByName("Button_LeftMenuOpen").y - 50;
                     while(true)
                     {
                        if(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        loop8:
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              §§goto(addr87);
                           }
                           else
                           {
                              addr104:
                              while(true)
                              {
                                 this.§30§ = (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).height;
                                 continue loop8;
                              }
                              addr104:
                           }
                        }
                        continue loop2;
                        addr60:
                        this.§[!1§ = §"c§.getItemByName("Button_RightMenuOpen").y - 50;
                        if(!(_loc2_ && _loc1_))
                        {
                           return;
                        }
                     }
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        if(!_loc1_)
                        {
                           break;
                        }
                        this.§?<§ = (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).height;
                        §§goto(addr104);
                     }
                     §§goto(addr131);
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§0Z§.§4J§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§0Z§.§4J§);
                        addr108:
                        while(true)
                        {
                           §§pop().stop();
                           addr109:
                           while(true)
                           {
                           }
                        }
                        addr87:
                        if(_loc3_ && _loc1_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        this.§5'§ = true;
                        loop3:
                        while(true)
                        {
                           §%!Q§.§4$§(§;m§.§!!V§);
                           addr63:
                           while(true)
                           {
                              addr45:
                              while(true)
                              {
                                 §[&§.§&!'§.§>!D§(false);
                                 continue loop3;
                              }
                              §§goto(addr109);
                           }
                        }
                     }
                  }
                  §§goto(addr64);
               }
               §§goto(addr108);
            }
         }
         §§goto(addr63);
      }
      
      override public function activateComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activateComplete();
         }
      }
      
      private function §,I§(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §"c§.setText("","TextField_Code");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() != §[4§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_ || param1)
                  {
                     §§goto(addr129);
                  }
                  else
                  {
                     while(true)
                     {
                        addr97:
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        addr104:
                        while(true)
                        {
                           this.§#&§ = §"c§.getItemByName("Button_LeftMenuOpen").y - 50;
                           addr88:
                           while(true)
                           {
                              this.§[!1§ = §"c§.getItemByName("Button_RightMenuOpen").y - 50;
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    continue;
                                 }
                                 §§goto(addr97);
                              }
                           }
                           §§goto(addr104);
                        }
                        addr79:
                     }
                     addr130:
                  }
               }
               while(true)
               {
                  if(mNextState.length <= 0)
                  {
                     §§goto(addr79);
                  }
                  break;
                  §§goto(addr130);
               }
               §§goto(addr94);
            }
            addr129:
            return _loc2_;
         }
         §§goto(addr88);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1y§ = false;
            loop0:
            while(true)
            {
               this.§;E§ = false;
               loop1:
               while(true)
               {
                  this.§7!K§ = 0;
                  addr115:
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  this.§2q§ = 0;
                  while(true)
                  {
                     this.§2I§ = 0;
                     continue loop0;
                     addr44:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     this.§1!3§();
                     addr51:
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           while(_loc2_ || _loc2_)
                           {
                              super.deActivate();
                              while(!(_loc1_ && _loc2_))
                              {
                                 §§goto(addr44);
                                 §§goto(addr51);
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).setVisibility(false);
                              §§goto(addr60);
                           }
                           addr60:
                           addr86:
                        }
                        if(!_loc1_)
                        {
                           return;
                        }
                        loop3:
                        while(true)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              §§goto(addr115);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§9!6§ = 0;
                                 continue loop3;
                              }
                              addr137:
                           }
                        }
                        continue loop1;
                     }
                     §§goto(addr37);
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(!(_loc6_ && param3))
                     {
                        §§push(§§pop());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[5] = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              while(true)
                              {
                                 §§pop().§§slot[6] = false;
                                 loop8:
                                 while(!(_loc6_ && this))
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(null);
                                       loop10:
                                       while(!_loc6_)
                                       {
                                          §§pop().§§slot[7] = §§pop();
                                          while(_loc7_ || param1)
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(null);
                                                loop13:
                                                while(!(_loc6_ && param1))
                                                {
                                                   §§push(§§pop());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[8] = §§pop();
                                                      addr682:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         while(_loc7_)
                                                         {
                                                            §§push(null);
                                                            if(_loc7_ || param2)
                                                            {
                                                               §§push(§§pop());
                                                               continue loop5;
                                                            }
                                                            continue loop13;
                                                            while(_loc7_ || this)
                                                            {
                                                               §§push(param2);
                                                               if(_loc7_ || param3)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                continue loop10;
                                                while(true)
                                                {
                                                   if(!(_loc7_ || param2))
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§§slot[3] = param3;
                                                   §§goto(addr591);
                                                   §§goto(addr609);
                                                }
                                                continue loop9;
                                             }
                                             if(_loc6_ && param3)
                                             {
                                                continue;
                                             }
                                             §§goto(addr521);
                                          }
                                          continue loop8;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
            while(_loc7_ || param1)
            {
               §§pop().§§slot[1] = param1;
               §§goto(addr647);
            }
         }
      }
      
      private function §!=§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!§;!=§.§"v§(param1))
            {
               if(_loc3_ || param1)
               {
                  addr55:
                  §[!!§.§,s§(param1.toLowerCase());
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §2u§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Array = null;
         var _loc1_:* = Number(0);
         if(_loc5_ || _loc1_)
         {
            this.§2!5§ = [];
            if(_loc5_)
            {
               this.§3§ = §[!!§.§,3§(§[!!§.§"U§).currentPage;
            }
         }
         var _loc2_:Number = 0;
         while(_loc2_ < §[!!§.§,3§(§[!!§.§"U§).pageIndexes.length)
         {
            _loc3_ = §[!!§.§,3§(§[!!§.§"U§).§54§(§[!!§.§,3§(§[!!§.§"U§).pageIndexes[_loc2_]);
            if(!(_loc4_ && _loc2_))
            {
               this.§2!5§.push(§[!!§.§,3§(§[!!§.§"U§).§,a§(_loc2_));
               loop1:
               while(true)
               {
                  addr104:
                  while(true)
                  {
                     §§push(this.§`+§(_loc3_,_loc1_));
                     if(!_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     addr112:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        continue loop1;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr104);
            }
         }
      }
      
      private function §`+§(param1:Array, param2:Number) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:§+!M§ = null;
         var _loc6_:* = false;
         var _loc7_:* = NaN;
         if(!_loc9_)
         {
            this.§;!Z§ = [];
         }
         var _loc3_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(§§pop() >= param1.length)
               {
                  if(_loc8_)
                  {
                     addr174:
                     §§push(param2);
                     if(_loc8_ || this)
                     {
                        break;
                     }
                     param2 = §§pop();
                  }
                  §§goto(addr202);
               }
               _loc4_ = param1[_loc3_];
               if(!(_loc9_ && _loc3_))
               {
                  _loc5_ = §"c§.getItemByName("LevelButton" + (_loc3_ + 1)) as §+!M§;
                  if(_loc8_)
                  {
                     this.§;!Z§[_loc3_] = _loc5_;
                     while(true)
                     {
                        §§push(§;!=§.§"v§(_loc4_));
                        if(_loc8_ || param2)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc9_ && param1))
                           {
                              §§push(_loc6_ = §§pop());
                           }
                        }
                        if(§§pop())
                        {
                           _loc5_.setComponentState(§<d§.§%^§);
                           break;
                        }
                        if(!_loc9_)
                        {
                           if(_loc9_)
                           {
                              continue;
                           }
                           _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        }
                        loop2:
                        while(true)
                        {
                           addr111:
                           loop3:
                           while(true)
                           {
                              §§push(Number(§,l§.§3!,§.§&!A§(_loc4_)));
                              loop4:
                              while(true)
                              {
                                 _loc7_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       loop6:
                                       do
                                       {
                                          _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
                                          while(_loc8_)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!_loc9_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             if(!(_loc9_ && param1))
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc8_ || this)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop2;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                       while(false);
                                       
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr111);
                  }
               }
               §§goto(addr174);
            }
            break;
         }
         §§push(§§pop() + §,l§.§"L§);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
            if(_loc8_)
            {
               §§goto(addr174);
            }
            addr202:
            return param2;
         }
         §§goto(addr174);
      }
      
      private function §1!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            if(this.§6!M§.numChildren <= 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§95§ = [];
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§6!M§.removeChildAt(0);
            }
         }
      }
      
      private function §^>§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mNextState = §6l§.§`O§;
         }
      }
      
      private function §-!M§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).mClip.scrollRect = new Rectangle(0,0,(§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).width,this.§?<§ + 20 - (this.§?<§ - this.§7!K§));
            loop0:
            while(true)
            {
               (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).mClip.scrollRect = new Rectangle(0,0,(§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).width,this.§30§ + 20 - (this.§30§ - this.§9!6§));
               loop1:
               while(true)
               {
                  §§push(this.§1y§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§2I§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§2I§);
                                    if(!_loc2_)
                                    {
                                       §§push(0.3);
                                       if(!(_loc2_ && param1))
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§2I§ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       loop24:
                                       while(true)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop6;
                                          }
                                          if(_loc3_ || param1)
                                          {
                                             §§push(this);
                                             §§push(this.§2q§);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(0.5);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§pop().§2q§ = §§pop();
                                             loop25:
                                             while(true)
                                             {
                                                (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).y = (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).y + 0.5 * param1;
                                                loop26:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         loop42:
                                                         while(true)
                                                         {
                                                            §§push(this.§2q§);
                                                            loop43:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  §§push(0);
                                                                  loop44:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           loop36:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§9!6§);
                                                                              loop37:
                                                                              while(_loc3_)
                                                                              {
                                                                                 §§push(0);
                                                                                 loop38:
                                                                                 for(; !_loc2_; §§push(0),if(!(_loc3_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 },if(!_loc3_)
                                                                                 {
                                                                                    continue loop44;
                                                                                 },if(_loc3_)
                                                                                 {
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       if(!(_loc3_ || _loc2_))
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          §§goto(addr274);
                                                                                       }
                                                                                       §§goto(addr192);
                                                                                    }
                                                                                    §§goto(addr579);
                                                                                 },while(_loc3_ || this)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    continue loop42;
                                                                                 },§§goto(addr688))
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§push(this);
                                                                                                §§push(this.§9!6§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(0.5);
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() * param1);
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                }
                                                                                                §§pop().§9!6§ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   addr233:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§9!6§);
                                                                                                      if(!(_loc3_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop37;
                                                                                                      }
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop43;
                                                                                                      }
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                      loop63:
                                                                                                      while(!_loc2_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr468:
                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                            {
                                                                                                               addr475:
                                                                                                               §§push(this.§30§);
                                                                                                               if(_loc3_ || param1)
                                                                                                               {
                                                                                                                  if(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§9!6§ = this.§30§;
                                                                                                                        addr489:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr485:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr192:
                                                                                                                     loop29:
                                                                                                                     do
                                                                                                                     {
                                                                                                                        (§"c§.getItemByName("Button_LeftMenuOpen") as §+!M§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                                        loop30:
                                                                                                                        while(!_loc2_)
                                                                                                                        {
                                                                                                                           if(!(_loc2_ && this))
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc3_ || param1)
                                                                                                                                 {
                                                                                                                                    (§"c§.getItemByName("Button_RightMenuOpen") as §+!M§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                                                    loop31:
                                                                                                                                    while(_loc3_ || param1)
                                                                                                                                    {
                                                                                                                                       (§"c§.getItemByName("Button_LeftMenuOpen") as §+!M§).mClip.MovieClip_LeftMenuImage.rotation = this.§2I§;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          if(!(_loc3_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             addr274:
                                                                                                                                             (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).setVisibility(false);
                                                                                                                                             this.§9!6§ = 0;
                                                                                                                                             break loop30;
                                                                                                                                             addr281:
                                                                                                                                          }
                                                                                                                                          if(_loc2_ && param1)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(!(_loc2_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             (§"c§.getItemByName("Button_RightMenuOpen") as §+!M§).mClip.MovieClip_RightMenuImage.rotation = this.§2q§;
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          loop50:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc2_ && param1))
                                                                                                                                             {
                                                                                                                                                (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).y = (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).y - 0.5 * param1;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   loop52:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§2q§);
                                                                                                                                                      addr535:
                                                                                                                                                      while(!(_loc2_ && this))
                                                                                                                                                      {
                                                                                                                                                         break loop38;
                                                                                                                                                      }
                                                                                                                                                      loop47:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(180);
                                                                                                                                                         addr579:
                                                                                                                                                         loop48:
                                                                                                                                                         for(; _loc3_; continue loop47)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop52;
                                                                                                                                                            }
                                                                                                                                                            while(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§2q§);
                                                                                                                                                               if(_loc3_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * param1);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§pop().§2q§ = §§pop();
                                                                                                                                                               continue loop50;
                                                                                                                                                            }
                                                                                                                                                            loop84:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               loop85:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§2I§);
                                                                                                                                                                  addr758:
                                                                                                                                                                  addr771:
                                                                                                                                                                  while(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(90);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§2I§ = 90;
                                                                                                                                                                              addr765:
                                                                                                                                                                              while(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           }
                                                                                                                                                                           addr762:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§7!K§);
                                                                                                                                                                           addr739:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§?<§);
                                                                                                                                                                              addr741:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                       §§push(this.§7!K§);
                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0.5);
                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * param1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§7!K§ = §§pop();
                                                                                                                                                                                       break loop29;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr742:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr725:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§7!K§);
                                                                                                                                                                                    addr728:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§?<§);
                                                                                                                                                                                       addr730:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§7!K§ = this.§?<§;
                                                                                                                                                                                                break loop26;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr731:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr700:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr609:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§;E§);
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§2q§);
                                                                                                                                                                                                   break loop37;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   (§"c§.getItemByName("Container_MenuRightButtons") as §4!C§).setVisibility(true);
                                                                                                                                                                                                   addr622:
                                                                                                                                                                                                   loop46:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc2_ && _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop24;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(this.§2q§);
                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                      addr546:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop46;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         this.§2q§ = 180;
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr490:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§9!6§);
                                                                                                                                                                                                               break loop63;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  loop81:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(90);
                                                                                                                                                                     addr772:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop85;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(this.§2I§);
                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0.3);
                                                                                                                                                                              if(!(_loc2_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * param1);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§2I§ = §§pop();
                                                                                                                                                                           continue loop84;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop81;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr643:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).setVisibility(false);
                                                                                                                                                                  addr651:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§7!K§ = 0;
                                                                                                                                                                     addr634:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr609);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr731);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr644:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr609);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr535);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr574:
                                                                                                                                             }
                                                                                                                                             §§goto(addr634);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr485);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr461:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop63;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr531:
                                                                                                                                 }
                                                                                                                                 §§goto(addr762);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§9!6§);
                                                                                                                                 if(!(_loc2_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(0.5);
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * param1);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().§9!6§ = §§pop();
                                                                                                                                 §§goto(addr531);
                                                                                                                              }
                                                                                                                              addr514:
                                                                                                                           }
                                                                                                                           §§goto(addr281);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(_loc3_ || param1);
                                                                                                                     
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr725);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr514);
                                                                                                                        }
                                                                                                                        §§goto(addr461);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr741);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr475);
                                                                                                               }
                                                                                                               §§goto(addr730);
                                                                                                               addr509:
                                                                                                            }
                                                                                                            §§goto(addr642);
                                                                                                         }
                                                                                                         §§goto(addr535);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc2_ && param1))
                                                                                                         {
                                                                                                            if(!(_loc2_ && this))
                                                                                                            {
                                                                                                               §§goto(addr509);
                                                                                                               §§push(this.§30§);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr655:
                                                                                                         addr687:
                                                                                                         while(!_loc2_)
                                                                                                         {
                                                                                                            break loop36;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            addr688:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  §§goto(addr689);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr655);
                                                                                                                  }
                                                                                                                  addr652:
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr739);
                                                                                                   }
                                                                                                }
                                                                                                addr321:
                                                                                             }
                                                                                             §§goto(addr582);
                                                                                          }
                                                                                          §§goto(addr556);
                                                                                       }
                                                                                       §§goto(addr321);
                                                                                    }
                                                                                    §§goto(addr233);
                                                                                 }
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       §§goto(addr546);
                                                                                    }
                                                                                    §§goto(addr490);
                                                                                 }
                                                                                 §§goto(addr772);
                                                                              }
                                                                              while(_loc3_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr406);
                                                                                 §§push(0);
                                                                              }
                                                                              §§goto(addr728);
                                                                              continue loop44;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§goto(addr661);
                                                                                 }
                                                                                 §§goto(addr639);
                                                                              }
                                                                              §§goto(addr761);
                                                                              continue loop44;
                                                                           }
                                                                           addr658:
                                                                           addr282:
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr658);
                                                                  }
                                                               }
                                                               §§goto(addr758);
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr489);
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr765);
                                                         }
                                                         return;
                                                      }
                                                      continue loop25;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr700);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                (§"c§.getItemByName("Container_MenuLeftButtons") as §4!C§).setVisibility(true);
                                                break loop24;
                                             }
                                             addr800:
                                          }
                                          while(true)
                                          {
                                             if(_loc2_ && this)
                                             {
                                                continue loop24;
                                             }
                                             if(_loc3_)
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr773);
                                                   }
                                                   §§goto(addr683);
                                                }
                                                §§goto(addr651);
                                             }
                                             §§goto(addr615);
                                             §§goto(addr342);
                                          }
                                          §§goto(addr622);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr771);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr687);
                              }
                           }
                        }
                     }
                     §§goto(addr800);
                  }
               }
            }
         }
         §§goto(addr651);
      }
      
      public function refreshSession() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var callObject:Object = null;
         try
         {
            callObject = {
               "type":§4!E§.§""§,
               "sessionID":§4!E§.§0E§(),
               "userID":§;!=§.§`!;§.name
            };
            if(_loc3_)
            {
               new §4!E§(callObject,§,l§.§""§,this,§4!E§.§;4§);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}
