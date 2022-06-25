package §;m§
{
   import §#h§.§ !H§;
   import §%!6§.§'b§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§"m§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §6H§.§>3§;
   import §=E§.§;S§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §1!§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelStartState";
      
      private static var §?!6§:BitmapData = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!A§ = "LevelStartState";
            if(!(_loc1_ && _loc1_))
            {
               §?!6§ = null;
            }
         }
      }
      
      private var §4=§:Boolean = false;
      
      private var §@H§:Boolean = false;
      
      private var §1w§:§;S§ = null;
      
      private var §[R§:Boolean = false;
      
      private var §=v§:Boolean = false;
      
      private var §0l§:Number = 0;
      
      private var §4z§:Number = 0;
      
      private var §97§:Number = 0;
      
      private var §2<§:Number = 0;
      
      private var §]R§:Number;
      
      private var §if §:Number;
      
      private var §[S§:Number;
      
      private var §,H§:Number;
      
      private var §1m§:§'b§;
      
      public function §1!§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      public static function get §'a§() : BitmapData
      {
         return §?!6§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            if(!(_loc1_ && _loc2_))
            {
               §-f§ = new §0#§(this);
            }
            §-f§.init(§06§.§-`§.Views.View_LevelStart[0]);
            this.§1w§ = new §;S§(§"h§.§1C§);
            this.§]R§ = (§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).height;
            if(_loc2_ || this)
            {
               this.§if § = (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).height;
               if(!(_loc1_ && this))
               {
                  addr102:
                  this.§[S§ = §-f§.getItemByName("Button_LeftMenuOpen").y - 50;
                  if(_loc2_)
                  {
                     addr112:
                     this.§,H§ = §-f§.getItemByName("Button_RightMenuOpen").y - 50;
                  }
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr112);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(_loc2_ || this)
            {
               addr28:
               §"h§.§1C§.§]!!§(true);
               if(_loc2_ || this)
               {
                  §"h§.§;j§(this.§1w§);
                  this.§1w§.init();
                  if(!(_loc1_ && this))
                  {
                     addr73:
                     AngryBirdsFP11.§'!!§();
                     §-f§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§@6§());
                  }
                  §-f§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§"h§.§"+§());
                  if(!_loc1_)
                  {
                     §-f§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§@o§ ? false : true);
                     addr91:
                  }
                  return;
               }
               §§goto(addr73);
            }
            §§goto(addr91);
         }
         §§goto(addr28);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_)
         {
            if(§§pop() != §>3§.STATE_STATUS_RUNNING)
            {
               if(!_loc3_)
               {
                  §§goto(addr38);
               }
               else
               {
                  addr101:
                  if(mNextState.length > 0)
                  {
                     return §>3§.STATE_STATUS_COMPLETED;
                  }
               }
            }
            else
            {
               this.§[S§ = §-f§.getItemByName("Button_LeftMenuOpen").y - 50;
               if(!_loc3_)
               {
                  this.§,H§ = §-f§.getItemByName("Button_RightMenuOpen").y - 50;
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§^!6§(param1);
                     if(!this.§@H§)
                     {
                        §"h§.controller.update(param1);
                        if(_loc4_ || _loc2_)
                        {
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr101);
                  }
               }
            }
            addr108:
            return §>3§.STATE_STATUS_RUNNING;
         }
         addr38:
         return _loc2_;
      }
      
      private function §^!6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         (§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).mClip.scrollRect = new Rectangle(0,0,(§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).width,this.§]R§ + 20 - (this.§]R§ - this.§97§));
         if(_loc3_)
         {
            (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).mClip.scrollRect = new Rectangle(0,0,(§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).width,this.§if § + 20 - (this.§if § - this.§2<§));
            if(!_loc2_)
            {
               §§push(this.§[R§);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop())
                  {
                     (§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).setVisibility(true);
                     §§push(this.§0l§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(90);
                        if(_loc3_ || param1)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§0l§);
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(0.3);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§0l§ = §§pop();
                              }
                              else
                              {
                                 addr241:
                                 §§push(this.§0l§);
                                 §§push(0);
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       this.§0l§ = 0;
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr260:
                                          §§push(this.§97§);
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(0);
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§97§);
                                                      if(_loc3_)
                                                      {
                                                         §§push(0.5);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().§97§ = §§pop();
                                                      if(!(_loc2_ && this))
                                                      {
                                                         addr304:
                                                         §§push(this.§97§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(§§pop() < 0)
                                                            {
                                                               (§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§).setVisibility(false);
                                                               if(_loc3_)
                                                               {
                                                                  this.§97§ = 0;
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr339:
                                                                     if(this.§=v§)
                                                                     {
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).setVisibility(true);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              §§push(this.§4z§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr367:
                                                                                 §§push(180);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr375:
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§4z§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(0.5);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() * param1);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§pop().§4z§ = §§pop();
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr390:
                                                                                          (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).y = (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).y - 0.5 * param1;
                                                                                          addr406:
                                                                                          §§push(this.§4z§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr410:
                                                                                             if(§§pop() > 180)
                                                                                             {
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   this.§4z§ = 180;
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr531:
                                                                                                   this.§4z§ = 0;
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr536:
                                                                                                      §§push(this.§2<§);
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         addr545:
                                                                                                         if(§§pop() > 0)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr549:
                                                                                                               §§push(this);
                                                                                                               §§push(this.§2<§);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * param1);
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                               }
                                                                                                               §§pop().§2<§ = §§pop();
                                                                                                               addr561:
                                                                                                               if(this.§2<§ < 0)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     addr567:
                                                                                                                     (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).setVisibility(false);
                                                                                                                     §§goto(addr574);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr584);
                                                                                                            }
                                                                                                            §§goto(addr659);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   §§goto(addr574);
                                                                                                }
                                                                                                addr574:
                                                                                                this.§2<§ = 0;
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   addr584:
                                                                                                   (§-f§.getItemByName("Button_LeftMenuOpen") as §6<§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                   (§-f§.getItemByName("Button_RightMenuOpen") as §6<§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                }
                                                                                                (§-f§.getItemByName("Button_LeftMenuOpen") as §6<§).mClip.MovieClip_LeftMenuImage.rotation = this.§0l§;
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   (§-f§.getItemByName("Button_RightMenuOpen") as §6<§).mClip.MovieClip_RightMenuImage.rotation = this.§4z§;
                                                                                                   addr629:
                                                                                                   §§push(§-f§.getItemByName("Container_MenuLeftButtons") as §1!=§);
                                                                                                   §§push(this.§[S§);
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() - this.§97§);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      addr659:
                                                                                                      §§push(§-f§.getItemByName("Container_MenuRightButtons") as §1!=§);
                                                                                                      §§push(this.§,H§);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() - this.§2<§);
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§push(this.§2<§);
                                                                                             §§push(this.§if §);
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(_loc3_ || param1)
                                                                                                   {
                                                                                                      addr441:
                                                                                                      §§push(this);
                                                                                                      §§push(this.§2<§);
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() * param1);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§2<§ = §§pop();
                                                                                                      addr458:
                                                                                                      §§push(this.§2<§);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr464:
                                                                                                         if(§§pop() > this.§if §)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr467:
                                                                                                               this.§2<§ = this.§if §;
                                                                                                               addr471:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr549);
                                                                                                            }
                                                                                                            §§goto(addr584);
                                                                                                         }
                                                                                                         §§goto(addr471);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr545);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr659);
                                                                                                }
                                                                                                §§goto(addr458);
                                                                                             }
                                                                                             §§goto(addr464);
                                                                                          }
                                                                                          §§goto(addr545);
                                                                                       }
                                                                                       §§goto(addr441);
                                                                                    }
                                                                                    §§goto(addr406);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr507:
                                                                              (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).y = (§-f§.getItemByName("Container_MenuRightButtons") as §1!=§).y + 0.5 * param1;
                                                                              §§push(this.§4z§);
                                                                              §§push(0);
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr531);
                                                                                    }
                                                                                    §§goto(addr567);
                                                                                 }
                                                                                 §§goto(addr536);
                                                                              }
                                                                           }
                                                                           §§goto(addr545);
                                                                        }
                                                                        §§goto(addr629);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§4z§);
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr489:
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§4z§);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§push(0.5);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(§§pop() * param1);
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 §§pop().§4z§ = §§pop();
                                                                              }
                                                                              §§goto(addr507);
                                                                           }
                                                                           §§goto(addr545);
                                                                        }
                                                                     }
                                                                     §§goto(addr545);
                                                                  }
                                                                  §§goto(addr536);
                                                               }
                                                               §§goto(addr467);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr507);
                                                      }
                                                      §§goto(addr467);
                                                   }
                                                   §§goto(addr567);
                                                }
                                                §§goto(addr304);
                                             }
                                             §§goto(addr545);
                                          }
                                          §§goto(addr367);
                                       }
                                       §§goto(addr304);
                                    }
                                    §§goto(addr260);
                                 }
                                 §§goto(addr375);
                              }
                              §§goto(addr375);
                           }
                           §§push(this.§0l§);
                           if(_loc3_)
                           {
                              §§push(90);
                              if(_loc3_ || _loc2_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    this.§0l§ = 90;
                                 }
                                 §§push(this.§97§);
                                 if(!_loc2_)
                                 {
                                    §§push(this.§]R§);
                                    if(_loc3_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(this);
                                             §§push(this.§97§);
                                             if(!_loc2_)
                                             {
                                                §§push(0.5);
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().§97§ = §§pop();
                                             addr178:
                                             §§push(this.§97§);
                                             if(!(_loc2_ && param1))
                                             {
                                                §§push(this.§]R§);
                                                if(_loc3_ || param1)
                                                {
                                                   addr196:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         this.§97§ = this.§]R§;
                                                         addr203:
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr467);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr464);
                                             }
                                             §§goto(addr367);
                                          }
                                          §§goto(addr406);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr464);
                              }
                              §§goto(addr489);
                           }
                           §§goto(addr410);
                        }
                        §§goto(addr375);
                     }
                     §§goto(addr241);
                  }
                  else if(this.§0l§ > 0)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(this);
                        §§push(this.§0l§);
                        if(!(_loc2_ && this))
                        {
                           §§push(0.3);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().§0l§ = §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr241);
                        }
                        §§goto(addr260);
                     }
                     §§goto(addr467);
                  }
                  §§goto(addr241);
               }
               §§goto(addr339);
            }
            §§goto(addr390);
         }
         §§goto(addr584);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§-f§.getItemByName("Button_Play") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_ || _loc1_)
            {
               §§goto(addr44);
            }
            §§goto(addr54);
         }
         addr44:
         this.§4=§ = false;
         if(_loc2_ || _loc2_)
         {
            addr54:
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc7_)
         {
            §§push("OPEN_LEFT_MENU");
            if(_loc7_ || this)
            {
               if(§§pop() === _loc6_)
               {
                  §§push(0);
               }
               else
               {
                  §§push("OPEN_RIGHT_MENU");
                  if(!(_loc8_ && param2))
                  {
                     if(§§pop() === _loc6_)
                     {
                        if(!(_loc8_ && param3))
                        {
                           §§goto(addr476);
                        }
                        else
                        {
                           addr371:
                           addr476:
                           switch(1)
                           {
                              case 0:
                                 if(this.§[R§)
                                 {
                                    this.§[R§ = false;
                                 }
                                 else
                                 {
                                    this.§[R§ = true;
                                    if(!(_loc7_ || param1))
                                    {
                                       addr65:
                                       break;
                                    }
                                 }
                                 break;
                              case 1:
                                 §§push(this.§=v§);
                                 if(_loc7_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       this.§=v§ = false;
                                    }
                                    else
                                    {
                                       this.§=v§ = true;
                                       if(!(_loc7_ || param1))
                                       {
                                          addr256:
                                          (§-f§.getItemByName("MovieClip_YouTubeArea") as §"m§).setVisibility(true);
                                          break;
                                       }
                                    }
                                    §§goto(addr65);
                                 }
                                 else
                                 {
                                    addr175:
                                    §§push(!§§pop());
                                    if(!(_loc8_ && param3))
                                    {
                                       addr183:
                                       _loc5_ = §§pop();
                                       AngryBirdsFP11.§0R§(_loc5_);
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(_loc5_);
                                       }
                                       else
                                       {
                                          addr236:
                                          this.§1m§ = new §'b§("http://www.youtube.com/v/-eyig_V-_5o");
                                          if(_loc7_ || param3)
                                          {
                                             (§-f§.getItemByName("MovieClip_YouTubeArea") as §"m§).changeMovieClip(this.§1m§);
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr256);
                                    }
                                    addr195:
                                    if(§§pop())
                                    {
                                       if(_loc7_ || this)
                                       {
                                          AngryBirdsFP11.§'!!§();
                                       }
                                       §§goto(addr256);
                                    }
                                    §-f§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
                                    if(!(_loc8_ && this))
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr256);
                              case 2:
                                 § !H§.§ !%§("Menu_Confirm");
                                 if(_loc7_)
                                 {
                                    mNextState = §8R§.§-!A§;
                                    if(!(_loc8_ && param2))
                                    {
                                       break;
                                    }
                                    addr158:
                                    this.§[R§ = false;
                                    break;
                                 }
                                 addr114:
                                 §-f§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                 if(!(_loc8_ && param2))
                                 {
                                    break;
                                 }
                                 §§goto(addr256);
                                 break;
                              case 3:
                                 §-f§.setItemVisibility("Container_MenuButtons",!§-f§.getItemByName("Container_MenuButtons").visible);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 addr152:
                                 mNextState = §>!G§.§-!A§;
                                 if(_loc7_)
                                 {
                                    §§goto(addr158);
                                 }
                                 else
                                 {
                                    §§goto(addr256);
                                 }
                                 break;
                              case 4:
                                 break;
                              case 5:
                                 break;
                              case 6:
                                 §§push(§"h§.§"+§());
                                 if(_loc7_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc7_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc8_)
                                       {
                                          addr135:
                                          break;
                                       }
                                       §"h§.§=K§(_loc4_);
                                       §§goto(addr114);
                                    }
                                    else
                                    {
                                       §§goto(addr195);
                                    }
                                    §§goto(addr256);
                                 }
                                 else
                                 {
                                    §§goto(addr183);
                                 }
                              case 7:
                                 § !H§.§ !%§("Menu_Confirm");
                                 AngryBirdsFP11.§0P§.§<h§();
                                 §§goto(addr135);
                              case 8:
                                 § !H§.§ !%§("Menu_Confirm");
                                 break;
                              case 9:
                                 § !H§.§ !%§("Menu_Confirm");
                                 if(_loc7_ || param3)
                                 {
                                    §§goto(addr152);
                                 }
                                 else
                                 {
                                    §§goto(addr183);
                                 }
                              case 10:
                                 § !H§.§ !%§("Menu_Confirm");
                                 if(!(_loc8_ && param2))
                                 {
                                    §§goto(addr175);
                                    §§push(AngryBirdsFP11.§@6§());
                                 }
                                 §§goto(addr236);
                              case 11:
                                 break;
                              case 12:
                                 if(this.§1m§ == null)
                                 {
                                    §§goto(addr236);
                                 }
                                 §§goto(addr256);
                           }
                           return;
                           §§push(6);
                        }
                        §§goto(addr476);
                     }
                     else
                     {
                        §§push("PLAY_LEVEL");
                        if(!_loc8_)
                        {
                           addr304:
                           §§push(_loc6_);
                           if(_loc7_ || this)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§goto(addr476);
                                    §§push(2);
                                 }
                                 else
                                 {
                                    addr334:
                                    §§push(3);
                                    if(!_loc7_)
                                    {
                                       addr471:
                                    }
                                    §§goto(addr476);
                                 }
                                 §§goto(addr476);
                              }
                              else
                              {
                                 §§push("OPEN_MENU");
                                 if(_loc7_ || this)
                                 {
                                    addr330:
                                    §§push(_loc6_);
                                    if(!_loc8_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr334);
                                       }
                                       else
                                       {
                                          §§push("OPEN_AVATAR_CREATOR");
                                          if(_loc7_)
                                          {
                                             addr341:
                                             if(§§pop() === _loc6_)
                                             {
                                                §§goto(addr476);
                                                §§push(4);
                                             }
                                             else
                                             {
                                                §§push("TOGGLE_SOUNDS");
                                                if(_loc7_)
                                                {
                                                   addr348:
                                                   §§push(_loc6_);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr476);
                                                         §§push(5);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_PARTICLES");
                                                         if(_loc7_ || param3)
                                                         {
                                                            addr368:
                                                            if(§§pop() === _loc6_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr371);
                                                               }
                                                               else
                                                               {
                                                                  addr463:
                                                                  §§push(11);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr466:
                                                                  }
                                                                  §§goto(addr476);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr374:
                                                               if("FULLSCREEN_BUTTON" === _loc6_)
                                                               {
                                                                  addr376:
                                                                  §§push(7);
                                                                  if(!(_loc7_ || param3))
                                                                  {
                                                                     addr407:
                                                                  }
                                                                  §§goto(addr476);
                                                               }
                                                               else
                                                               {
                                                                  §§push("OPEN_CREDITS");
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     addr393:
                                                                     §§push(_loc6_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(8);
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 §§goto(addr407);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr433:
                                                                                 §§goto(addr476);
                                                                              }
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("CREDITS_BUTTON");
                                                                           §§push(_loc6_);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr412:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 §§push(9);
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    §§goto(addr476);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr466);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr424:
                                                                                 if("SOUNDS_BUTTON" === _loc6_)
                                                                                 {
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       §§goto(addr433);
                                                                                       §§push(10);
                                                                                    }
                                                                                    §§goto(addr476);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("POPUP_CREDITS_CLOSE");
                                                                                    if(!(_loc8_ && param3))
                                                                                    {
                                                                                       addr452:
                                                                                       §§push(_loc6_);
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§goto(addr463);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr470:
                                                                                                §§goto(addr471);
                                                                                                §§push(12);
                                                                                             }
                                                                                             §§goto(addr476);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr468:
                                                                                             §§push("ME_POPUP_VIDEO");
                                                                                             §§push(_loc6_);
                                                                                          }
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr476);
                                                                                          §§push(13);
                                                                                       }
                                                                                       §§goto(addr476);
                                                                                    }
                                                                                    §§goto(addr468);
                                                                                 }
                                                                              }
                                                                              §§goto(addr476);
                                                                           }
                                                                           §§goto(addr424);
                                                                        }
                                                                     }
                                                                     §§goto(addr424);
                                                                  }
                                                                  §§goto(addr452);
                                                               }
                                                            }
                                                            §§goto(addr476);
                                                         }
                                                         §§goto(addr393);
                                                      }
                                                      §§goto(addr476);
                                                   }
                                                   §§goto(addr368);
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr476);
                                          }
                                          §§goto(addr348);
                                       }
                                    }
                                    §§goto(addr412);
                                 }
                                 §§goto(addr341);
                              }
                           }
                           §§goto(addr341);
                        }
                        §§goto(addr330);
                     }
                  }
                  §§goto(addr424);
               }
               §§goto(addr476);
            }
            §§goto(addr304);
         }
         §§goto(addr376);
      }
   }
}
