package §5G§
{
   import §"§.§%!$§;
   import §'!D§.§08§;
   import §-!Q§.§,!7§;
   import §1!E§.§>f§;
   import §3!,§.§#x§;
   import §3!,§.ColorFadeLayerEvent;
   import §>M§.§-!P§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §[h§.§3!c§;
   import §[h§.§[_§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class StateCutSceneDynamic extends §%!$§
   {
      
      public static const §3!?§:String = "StateCutSceneDynamic";
      
      private static const §^@§:Number = 2000;
      
      private static const §50§:String = "1-3";
      
      private static var §?-§:Boolean = true;
      
      private static const §-!+§:String = "flash/external_assets/dynamic/";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3!?§ = "StateCutSceneDynamic";
         }
         loop0:
         do
         {
            §^@§ = 2000;
            while(true)
            {
               §50§ = "1-3";
               while(!_loc2_)
               {
                  §?-§ = true;
                  if(_loc1_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private var §3! §:Boolean;
      
      private var §7!E§:Dictionary;
      
      private var §5!+§:String;
      
      private var §1!Y§:§[_§ = null;
      
      private var §[2§:MovieClip = null;
      
      private var §&@§:Boolean = false;
      
      protected var §#q§:§#x§ = null;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
         }
      }
      
      public static function §--§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§,!7§.§-!§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        addr56:
                        while(§§pop())
                        {
                           if(_loc1_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              §,!7§.playSound("birds_intro","Channel_Theme",1);
                           }
                           break;
                        }
                        return;
                        addr54:
                     }
                  }
               }
               addr96:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr66);
      }
      
      public static function §"!B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§,!7§.§-!§("Channel_Theme"));
            if(_loc2_ || StateCutSceneDynamic)
            {
               if(!§§pop())
               {
               }
               §§goto(addr61);
            }
            §§pop().§13§();
         }
         addr61:
         if(_loc2_ || StateCutSceneDynamic)
         {
            §§push(§,!7§.§-!§("Channel_Theme"));
         }
      }
      
      public static function set §^C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §?-§ = param1;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            while(true)
            {
               this.§#q§ = new §#x§(0,0,0,1);
               addr58:
               if(_loc1_ || this)
               {
                  §@!Z§.§;!,§.§%d§(false);
                  addr65:
                  if(_loc2_)
                  {
                     while(_loc1_ || _loc1_)
                     {
                        §§goto(addr58);
                        §§goto(addr65);
                     }
                     loop3:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           this.§7!E§ = new Dictionary();
                           continue;
                        }
                        addr86:
                        while(true)
                        {
                           §%!0§.init(§>!;§.§ get§.Views.View_CutScene[0]);
                           continue loop3;
                        }
                     }
                     addr41:
                     while(true)
                     {
                        §%!0§ = new §5!§(this);
                        §§goto(addr86);
                     }
                     addr106:
                  }
                  return;
               }
            }
         }
         §§goto(addr106);
      }
      
      override public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§^-§ = null;
         var _loc3_:MovieClip = null;
         if(!_loc4_)
         {
            super.activate();
            if(!(_loc4_ && this))
            {
               this.§;p§();
               loop5:
               while(true)
               {
                  §§push(§?-§);
                  while(true)
                  {
                     §§push(!§§pop());
                     loop7:
                     while(true)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop12:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§pop();
                                       addr100:
                                       addr89:
                                       addr162:
                                       while(true)
                                       {
                                          §§push(§@;§.§=C§ == §50§);
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             continue loop13;
                                          }
                                          addr57:
                                          if(_loc4_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       addr89:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop12;
                                          }
                                          addr187:
                                          addr106:
                                          addr231:
                                          addr187:
                                          addr192:
                                          addr231:
                                          while(true)
                                          {
                                             §§pop();
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          §%!0§.getItemByName("Button_Skip").setVisibility(true);
                                          _loc2_ = §%!0§.getItemByName("Button_Skip") as §^-§;
                                          _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
                                          if(!_loc4_)
                                          {
                                             _loc3_.visible = false;
                                          }
                                          this.§&@§ = false;
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr241:
                                             §5!9§.§2z§();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                this.§3! § = false;
                                             }
                                          }
                                          §§push(this.§2@§());
                                          if(_loc5_)
                                          {
                                             §§push(§§pop());
                                          }
                                          var _loc1_:* = §§pop();
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(!_loc1_)
                                             {
                                                mNextState = §'!9§.§3!?§;
                                                do
                                                {
                                                   this.end();
                                                }
                                                while(_loc4_);
                                                
                                                if(!(_loc4_ && this))
                                                {
                                                   if(_loc4_ && this)
                                                   {
                                                      addr348:
                                                      this.§ !`§(_loc1_);
                                                      addr312:
                                                      addr351:
                                                   }
                                                   return;
                                                }
                                                loop1:
                                                while(true)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!this.§7!E§[this.§5!+§])
                                                            {
                                                               §§goto(addr348);
                                                            }
                                                            else
                                                            {
                                                               this.§[2§ = this.§7!E§[this.§5!+§];
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr312);
                                                               addr322:
                                                            }
                                                         }
                                                         addr332:
                                                      }
                                                      §§goto(addr348);
                                                   }
                                                   §§goto(addr322);
                                                }
                                                §§goto(addr351);
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr329);
                                       }
                                       addr162:
                                       if(!§§pop())
                                       {
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             addr180:
                                             §%!0§.getItemByName("Button_Menu").setVisibility(false);
                                             if(_loc5_)
                                             {
                                                §§goto(addr187);
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                       else
                                       {
                                          _loc2_ = §%!0§.getItemByName("Button_Skip") as §^-§;
                                          _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
                                          if(!_loc4_)
                                          {
                                             _loc3_.visible = false;
                                          }
                                       }
                                       §§goto(addr231);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §%!0§.getItemByName("Button_Menu").setVisibility(true);
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr89);
                                                   }
                                                   addr84:
                                                }
                                                else
                                                {
                                                   _loc2_ = §%!0§.getItemByName("Button_Skip") as §^-§;
                                                   _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      _loc3_.visible = true;
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                }
                                                §§goto(addr231);
                                             }
                                             else
                                             {
                                                §§goto(addr100);
                                             }
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr180);
                                    }
                                    else
                                    {
                                       §§push(§>f§.§^!a§(§@;§.§6!K§));
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              continue;
                           }
                           §§goto(addr106);
                        }
                     }
                  }
               }
               addr120:
            }
            §§goto(addr187);
         }
         §§goto(addr120);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§^-§ = null;
         var _loc4_:MovieClip = null;
         if(!(_loc6_ && _loc2_))
         {
            §%!0§.getItemByName("Button_Skip").setVisibility(true);
            if(this.§3! §)
            {
               if(_loc5_)
               {
                  this.end();
               }
            }
            else
            {
               §§push(super.run(param1));
               if(!_loc6_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     if(§§pop() == §%!$§.STATE_STATUS_RUNNING)
                     {
                        §§push(§?-§);
                        if(_loc5_)
                        {
                           §§push(!§§pop());
                           loop0:
                           while(true)
                           {
                              §§push(§§pop());
                              loop1:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§pop();
                                       if(_loc6_ && _loc3_)
                                       {
                                          break;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§>f§.§^!a§(§@;§.§6!K§));
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc6_)
                                             {
                                                while(true)
                                                {
                                                }
                                                addr134:
                                             }
                                             §§goto(addr221);
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc5_ || _loc2_))
                                             {
                                                break loop3;
                                             }
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §%!0§.getItemByName("Button_Menu").setVisibility(true);
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            loop5:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  return _loc2_;
                                                               }
                                                               addr182:
                                                               §§push(§@;§.§=C§ == §50§);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     §§goto(addr221);
                                                                  }
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr144:
                                                               while(!_loc6_)
                                                               {
                                                                  §§pop();
                                                                  continue loop5;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   else
                                                   {
                                                      addr221:
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            break loop2;
                                                         }
                                                         addr236:
                                                         §%!0§.getItemByName("Button_Skip").setVisibility(true);
                                                         addr241:
                                                         _loc3_ = §%!0§.getItemByName("Button_Skip") as §^-§;
                                                         (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
                                                      }
                                                      else
                                                      {
                                                         _loc3_ = §%!0§.getItemByName("Button_Skip") as §^-§;
                                                         (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
                                                      }
                                                      this.§7v§(§%!0§.getItemByName("MovieClip_CutScene") as §-!P§,param1);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr286);
                                                      }
                                                      addr302:
                                                      return §%!$§.STATE_STATUS_COMPLETED;
                                                      §§push(§>f§.§^!a§(§@;§.§6!K§));
                                                   }
                                                   §§goto(addr221);
                                                }
                                                if(false)
                                                {
                                                   continue loop3;
                                                }
                                                _loc3_ = §%!0§.getItemByName("Button_Skip") as §^-§;
                                                (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = true;
                                                if(_loc5_ || this)
                                                {
                                                   §§goto(addr221);
                                                }
                                                addr286:
                                                if(mNextState.length > 0)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr302);
                                                   }
                                                }
                                                return §%!$§.STATE_STATUS_RUNNING;
                                                addr99:
                                             }
                                             §§goto(addr144);
                                          }
                                       }
                                       continue loop1;
                                    }
                                    addr229:
                                    §%!0§.getItemByName("Button_Menu").setVisibility(false);
                                    if(!_loc5_)
                                    {
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr134);
                              }
                           }
                        }
                        §§goto(addr221);
                     }
                  }
                  §§goto(addr182);
               }
               §§goto(addr229);
            }
         }
         return §%!$§.STATE_STATUS_COMPLETED;
      }
      
      private function §7v§(param1:§-!P§, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(_loc4_)
         {
            §§push(this.§&@§);
            if(!_loc5_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr124:
                        while(true)
                        {
                           §§push(param1.§`!N§);
                           if(!_loc5_)
                           {
                              §§push(true);
                              if(!(_loc4_ || this))
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() == §§pop());
                           }
                           if(!(_loc4_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(_loc4_)
                        {
                           §§push(param1);
                           §§push(param2);
                           if(!(_loc5_ && this))
                           {
                              §§push(§§pop() / 3);
                           }
                           §§push(§§pop().§5J§(§§pop()));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              loop6:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(§§pop() != "End")
                                          {
                                             break;
                                          }
                                          if(!(_loc5_ && this))
                                          {
                                             if(_loc5_ && param2)
                                             {
                                                continue loop4;
                                             }
                                             param1.§`!N§ = false;
                                          }
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        §§goto(addr124);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      private function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §--§();
            loop0:
            while(true)
            {
               this.§&@§ = true;
               while(true)
               {
                  §%!0§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§[2§);
                  continue loop0;
                  addr97:
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  §%!0§.getItemByName("MovieClip_BackGround").setVisibility(false);
                  loop5:
                  for(; _loc1_; while(!(_loc2_ && this))
                  {
                     (§%!0§.getItemByName("MovieClip_CutScene") as §-!P§).§`!N§ = true;
                     if(_loc1_ || this)
                     {
                        return;
                     }
                  })
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        §%!0§.getItemByName("MovieClip_CutScene").setVisibility(true);
                        continue loop5;
                     }
                  }
                  while(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr97);
                  }
                  while(true)
                  {
                     §%!0§.getItemByName("MovieClip_Loading").setVisibility(false);
                     §§goto(addr90);
                  }
                  addr90:
               }
            }
         }
         §§goto(addr83);
      }
      
      private function end() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"!B§();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
            while(true)
            {
               §§push(this.§#q§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr346:
                           do
                           {
                              §§push(Boolean(§%!0§.container.mClip.contains(this.§#q§)));
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue loop3;
                              }
                           }
                           while(_loc1_);
                           
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §%!0§.container.mClip.removeChild(this.§#q§);
                              addr328:
                              while(true)
                              {
                              }
                           }
                           addr322:
                        }
                        loop8:
                        while(true)
                        {
                           §§push(this.§#q§);
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           addr297:
                           addr302:
                           §§pop().removeEventListener(ColorFadeLayerEvent.§79§,this.§63§);
                           loop9:
                           while(true)
                           {
                              addr268:
                              while(true)
                              {
                                 §%!0§.getItemByName("MovieClip_CutScene").setVisibility(false);
                                 loop11:
                                 while(true)
                                 {
                                    §%!0§.getItemByName("MovieClip_Loading").setVisibility(false);
                                    addr260:
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       §%!0§.getItemByName("MovieClip_BackGround").setVisibility(false);
                                       loop13:
                                       while(true)
                                       {
                                          §%!0§.getItemByName("Button_Skip").setVisibility(false);
                                          loop14:
                                          while(true)
                                          {
                                             §%!0§.getItemByName("Button_Menu").setVisibility(false);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(this.§1!Y§);
                                                loop16:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(!_loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop15;
                                                      addr211:
                                                   }
                                                   while(true)
                                                   {
                                                      §@!Z§.§;!,§.§%d§(true);
                                                      addr100:
                                                      while(!(_loc2_ && _loc2_))
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr119:
                                                   }
                                                   continue loop13;
                                                   loop30:
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ || this))
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§push(§3!c§.§%!g§);
                                                      while(true)
                                                      {
                                                         §§pop().removeEventListener(§§pop(),this.§>@§);
                                                         addr204:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§push(this.§1!Y§);
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  §§push(§3!c§.§;d§);
                                                                  addr176:
                                                                  while(true)
                                                                  {
                                                                     §§pop().removeEventListener(§§pop(),this.§ each§);
                                                                     addr179:
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           if(_loc1_ || _loc2_)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           §§goto(addr346);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr322);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop30;
                                                               }
                                                            }
                                                            while(_loc1_)
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop30;
                                                               }
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop16;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop8;
                                 }
                                 continue loop9;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr229);
               §§push(this.§1!Y§);
            }
         }
         §§goto(addr232);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc4_:* = §§pop();
            if(!(_loc5_ && param3))
            {
               if("SKIP" === _loc4_)
               {
                  if(_loc6_)
                  {
                     §§push(0);
                     if(_loc5_ && param2)
                     {
                        addr230:
                     }
                  }
                  else
                  {
                     addr212:
                     §§push(1);
                     if(_loc6_ || param1)
                     {
                        §§goto(addr230);
                     }
                  }
                  addr235:
                  loop6:
                  switch(§§pop())
                  {
                     case 0:
                        this.§3! § = true;
                        §§push(§>f§.§^!a§(§@;§.§6!K§));
                        if(_loc6_ || param2)
                        {
                           §§push(Boolean(§§pop()));
                           loop1:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    addr176:
                                    while(true)
                                    {
                                       §§push(§@;§.§=C§);
                                       if(_loc6_ || param1)
                                       {
                                          addr129:
                                          §§push(§50§);
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc6_ || param2)
                                             {
                                                continue loop1;
                                             }
                                             addr146:
                                             if(!(_loc6_ || param3))
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr129);
                                          }
                                          continue loop1;
                                          addr130:
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr175:
                              }
                              while(!§§pop())
                              {
                                 §§push(§@;§.§=C§);
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§50§);
                                 if(_loc6_ || this)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       addr97:
                                       if(!(_loc5_ && param2))
                                       {
                                          mNextState = §39§.§3!?§;
                                          addr108:
                                       }
                                       else
                                       {
                                          addr159:
                                       }
                                       break loop0;
                                    }
                                    addr73:
                                    §"!B§();
                                    if(_loc6_ || param1)
                                    {
                                       mNextState = §9!$§.§3!?§;
                                       break loop6;
                                    }
                                    §§goto(addr108);
                                 }
                                 else
                                 {
                                    §§goto(addr130);
                                 }
                              }
                              addr155:
                              mNextState = §'!9§.§3!?§;
                              §§goto(addr159);
                           }
                        }
                        §§goto(addr175);
                        addr182:
                     case 1:
                        §"!B§();
                        if(!_loc5_)
                        {
                           if(_loc6_ || param2)
                           {
                              if(!(_loc5_ && param3))
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       mNextState = §39§.§3!?§;
                                       if(!_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(true)
                                             {
                                                break loop0;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr97);
                                          }
                                          §§goto(addr97);
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr182);
                                    §§goto(addr97);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr73);
                           }
                           break;
                        }
                  }
                  if(!_loc6_)
                  {
                     §§goto(addr155);
                  }
                  §§goto(addr97);
               }
               else
               {
                  if("MENU" === _loc4_)
                  {
                     §§goto(addr212);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr235);
               }
            }
            §§goto(addr212);
         }
      }
      
      private function § !`§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1!Y§ = new §[_§();
            loop0:
            while(true)
            {
               §§push(this.§1!Y§);
               loop1:
               while(true)
               {
                  §§push(§3!c§.§%!g§);
                  loop2:
                  while(true)
                  {
                     §§pop().addEventListener(§§pop(),this.§>@§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§1!Y§);
                        loop4:
                        while(true)
                        {
                           §§push(§3!c§.§;d§);
                           loop5:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§ each§);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§1!Y§);
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(§3!c§.§`!O§);
                                       while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§97§);
                                             while(true)
                                             {
                                                if(!(_loc2_ && this))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§1!Y§);
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§goto(addr34);
                                                      continue loop7;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop6;
                                             }
                                             addr20:
                                             return;
                                             addr86:
                                          }
                                          §§push(§-!+§);
                                          addr34:
                                          break;
                                          if(!(_loc3_ || param1))
                                          {
                                             continue;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          if(!§§pop().load(§§pop() + param1))
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   this.end();
                                                }
                                                else
                                                {
                                                   §§goto(addr86);
                                                }
                                                §§goto(addr20);
                                             }
                                          }
                                          §§goto(addr20);
                                       }
                                       continue loop5;
                                    }
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §>@§(param1:§3!c§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!E§[this.§5!+§] = this.§1!Y§.content;
         }
         do
         {
            this.§[2§ = this.§7!E§[this.§5!+§];
            do
            {
               this.play();
            }
            while(_loc3_ && param1);
            
         }
         while(!(_loc2_ || this));
         
      }
      
      private function § each§(param1:§3!c§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.end();
         }
      }
      
      private function §97§(param1:§3!c§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §%!0§.getItemByName("MovieClip_Loading").setVisibility(true);
            do
            {
               §%!0§.getItemByName("MovieClip_BackGround").setVisibility(true);
            }
            while(!_loc3_);
            
         }
      }
      
      private function §2@§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§5!+§ = §@;§.§=C§;
            loop0:
            while(true)
            {
               §§push(this.§5!+§);
               if(!(_loc3_ || _loc2_))
               {
                  break;
               }
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§5!+§ = §@;§.§6!K§;
                     addr92:
                     while(true)
                     {
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  if(!§?-§)
                  {
                     this.§5!+§ += "-OUTRO";
                     if(_loc2_ && _loc2_)
                     {
                        continue loop0;
                     }
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           if(true)
                           {
                              §§push(§@;§.§+Q§().§]<§(this.§5!+§));
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop());
                                 break loop0;
                              }
                           }
                           else
                           {
                              addr98:
                           }
                           continue;
                           break loop0;
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr92);
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr92);
               }
               this.§5!+§ += "-INTRO";
            }
            return §§pop();
         }
         §§goto(addr92);
      }
      
      protected function §;p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#q§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§#q§);
                  loop2:
                  while(true)
                  {
                     §§push(1);
                     loop3:
                     while(true)
                     {
                        §§pop().§"!c§(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(this.§#q§);
                           loop5:
                           while(true)
                           {
                              if(§§pop().parent != §%!0§.container.mClip)
                              {
                                 §%!0§.container.mClip.addChild(this.§#q§);
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§#q§);
                                       loop8:
                                       while(!_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(0);
                                          if(_loc1_)
                                          {
                                             continue loop3;
                                          }
                                          §§pop().§'H§(§§pop(),0.2);
                                          while(!(_loc1_ && _loc1_))
                                          {
                                             if(_loc2_ || this)
                                             {
                                                §§push(this.§#q§);
                                                if(!_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      §§pop().addEventListener(ColorFadeLayerEvent.§79§,this.§63§);
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         break loop7;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break loop0;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop8;
                                             }
                                             continue loop4;
                                          }
                                          loop10:
                                          while(!(_loc2_ || _loc1_))
                                          {
                                             while(true)
                                             {
                                                §%!0§.container.mClip.addChild(this.§#q§);
                                                continue loop10;
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §%!0§.container.mClip.removeChild(this.§#q§);
                                 §§goto(addr136);
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr111);
      }
      
      private function §63§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(Boolean(this.§#q§));
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr90:
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§%!0§.container.mClip.contains(this.§#q§)));
                        if(_loc3_ || param1)
                        {
                           while(§§pop())
                           {
                              if(_loc3_)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop2;
                                 }
                                 §%!0§.container.mClip.removeChild(this.§#q§);
                              }
                              break;
                           }
                           return;
                           addr54:
                        }
                     }
                  }
                  addr89:
               }
               §§goto(addr54);
            }
            §§goto(addr89);
         }
         §§goto(addr90);
      }
   }
}
