package §_-PD§
{
   import §_-0S§.§_-z1§;
   import §_-6r§.§_-Tk§;
   import §_-6r§.§_-h3§;
   import §_-F1§.§_-MD§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-qp§;
   import §_-Ur§.§_-ru§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HighscoreSidebar implements §_-MD§
   {
      
      public static const §_-x1§:String = "loginHelper";
      
      public static const §_-IT§:String = "highscoresCarousel";
      
      public static const §_-Jf§:String = "highscoresLevel";
      
      public static const CLASSICO_1:String = "1-1";
      
      public static const CLASSICO_2:String = "1-2";
      
      public static const CLASSICO_3:String = "1-3";
      
      public static const §_-a2§:String = "1-4";
      
      public static const §_-pl§:String = "1-5";
      
      public static const §_-Vv§:String = "1-6";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-x1§ = "loginHelper";
            §_-IT§ = "highscoresCarousel";
            §_-Jf§ = "highscoresLevel";
            CLASSICO_1 = "1-1";
            CLASSICO_2 = "1-2";
            if(!_loc1_)
            {
               CLASSICO_3 = "1-3";
               if(!(_loc1_ && _loc1_))
               {
                  §_-a2§ = "1-4";
                  §_-pl§ = "1-5";
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr73);
               }
               §_-Vv§ = "1-6";
            }
         }
         addr73:
      }
      
      private var §_-XI§:Array;
      
      private var §_-xz§:String = "loginHelper";
      
      private var §_-sr§:§_-gP§;
      
      private var §_-vA§:§_-gP§;
      
      private var §_-UJ§:§_-gP§;
      
      private var §_-F4§:§_-gP§;
      
      private var §_-vs§:§_-qp§;
      
      private var §_-uI§:§_-qp§;
      
      private var mPageButton1:§_-qp§;
      
      private var mPageButton2:§_-qp§;
      
      private var mPageButton3:§_-qp§;
      
      private var mPageButton4:§_-qp§;
      
      private var mPageButton5:§_-qp§;
      
      private var §_-0G§:§_-qp§;
      
      private var §_-uw§:int = 1;
      
      private var §_-m§:String;
      
      private var §_-xk§:Array;
      
      private var §_-gH§:§_-k4§;
      
      private var §_-Hu§:Timer;
      
      private var §_-uL§:int;
      
      private var §_-gE§:Boolean = false;
      
      public function HighscoreSidebar()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!(_loc2_ && this))
            {
               this.§_-vA§ = new §_-gP§(§_-Vv§);
               if(_loc1_)
               {
                  addr43:
                  this.§_-UJ§ = new §_-gP§(§_-a2§);
                  if(_loc1_)
                  {
                     this.§_-F4§ = new §_-gP§(§_-pl§);
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr69);
               }
               this.§_-Hu§ = new Timer(3000);
            }
            addr69:
            return;
         }
         §§goto(addr43);
      }
      
      public function get currentPage() : int
      {
         return this.§_-uw§;
      }
      
      public function set container(param1:§_-k4§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-gH§ = param1;
         }
      }
      
      public function get container() : §_-k4§
      {
         return this.§_-gH§;
      }
      
      public function §_-bp§(param1:XML, param2:§_-k4§, param3:§_-ru§, param4:MovieClip = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§_-gH§ = new §_-k4§(param1,param2,param3,param4);
         this.§_-vs§ = this.§_-gH§.getItemByName("Button_ArrowLeft") as §_-qp§;
         this.§_-uI§ = this.§_-gH§.getItemByName("Button_ArrowRight") as §_-qp§;
         if(_loc6_)
         {
            this.mPageButton1 = this.§_-gH§.getItemByName("Button_Page1") as §_-qp§;
            this.mPageButton2 = this.§_-gH§.getItemByName("Button_Page2") as §_-qp§;
            if(_loc6_)
            {
               this.mPageButton3 = this.§_-gH§.getItemByName("Button_Page3") as §_-qp§;
               if(!(_loc7_ && this))
               {
                  this.mPageButton4 = this.§_-gH§.getItemByName("Button_Page4") as §_-qp§;
                  addr80:
                  this.mPageButton5 = this.§_-gH§.getItemByName("Button_Page5") as §_-qp§;
                  this.§_-0G§ = this.§_-gH§.getItemByName("Button_Resume") as §_-qp§;
               }
               this.§_-vs§.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
               this.§_-uI§.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
               this.mPageButton1.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
               if(!_loc7_)
               {
                  this.mPageButton2.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
                  §§goto(addr122);
               }
               §§goto(addr162);
            }
            addr122:
            if(!_loc7_)
            {
               this.mPageButton3.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
               if(_loc6_ || this)
               {
                  this.mPageButton4.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
                  addr162:
                  this.mPageButton5.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
                  this.§_-0G§.mClip.addEventListener(MouseEvent.CLICK,this.§_-Lj§);
               }
               §§goto(addr162);
            }
            this.changeState(this.§_-xz§);
            if(!(_loc7_ && param2))
            {
               this.§_-yX§(false);
            }
            var _loc5_:§_-k4§;
            (_loc5_ = this.§_-gH§.getItemByName("HighscoreSidebar") as §_-k4§).mClip.addEventListener(MouseEvent.MOUSE_OVER,this.§_-uN§);
            _loc5_.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.§_-x§);
            if(this.§_-Hu§)
            {
               if(_loc6_ || this)
               {
                  this.§_-Hu§.stop();
                  this.§_-Hu§.removeEventListener(TimerEvent.TIMER,this.§_-xr§);
               }
            }
            this.§_-Hu§.reset();
            this.§_-Hu§.start();
            if(_loc6_ || param1)
            {
               this.§_-Hu§.addEventListener(TimerEvent.TIMER,this.§_-xr§);
               this.§_-uL§ = 1;
            }
            return;
         }
         §§goto(addr80);
      }
      
      private function §_-uN§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-gE§ = true;
         }
      }
      
      private function §_-x§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-gE§ = false;
         }
      }
      
      private function §_-xr§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§_-xz§ == §_-IT§);
         if(_loc4_)
         {
            if(§§pop())
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§pop();
                  if(!_loc5_)
                  {
                     §§push(this.§_-gE§);
                     if(_loc5_ && _loc3_)
                     {
                     }
                     §§goto(addr48);
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr48);
         }
         addr48:
         if(!§§pop())
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§_-uL§);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_.§_-uL§ = _loc3_;
            }
            if(!(_loc5_ && _loc2_))
            {
               addr71:
               if(this.§_-uL§ > 3)
               {
                  this.§_-uL§ = 1;
                  addr75:
               }
               this.showHighscores("1-" + (this.§_-uL§ + 3));
               §§goto(addr93);
            }
            §§goto(addr75);
         }
         addr93:
      }
      
      public function deActivate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-k4§ = null;
         if(_loc3_)
         {
            this.§_-yX§(false);
            if(!(_loc2_ && this))
            {
               addr29:
               this.§_-vs§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
               this.§_-uI§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
               if(_loc3_ || _loc3_)
               {
                  this.mPageButton1.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr67:
                     this.mPageButton2.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
                     addr75:
                     this.mPageButton3.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
                     this.mPageButton4.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
                     if(_loc3_ || _loc3_)
                     {
                        this.mPageButton5.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
                        this.§_-0G§.mClip.removeEventListener(MouseEvent.CLICK,this.§_-Lj§);
                        if(this.§_-Hu§)
                        {
                           addr124:
                           this.§_-Hu§.stop();
                           addr127:
                           this.§_-Hu§.removeEventListener(TimerEvent.TIMER,this.§_-xr§);
                        }
                        §§push(this.§_-gH§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              addr146:
                              _loc1_ = this.§_-gH§.getItemByName("HighscoreSidebar") as §_-k4§;
                              if(_loc3_ || _loc3_)
                              {
                                 _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OVER,this.§_-uN§);
                                 if(_loc3_)
                                 {
                                    _loc1_.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.§_-x§);
                                    if(!_loc2_)
                                    {
                                       addr184:
                                       this.§_-gH§.clear();
                                       if(_loc2_)
                                       {
                                       }
                                       §§goto(addr192);
                                    }
                                    this.§_-gH§ = null;
                                    §§goto(addr192);
                                 }
                                 addr192:
                                 return;
                              }
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr124);
               }
               §§goto(addr75);
            }
            §§goto(addr67);
         }
         §§goto(addr29);
      }
      
      public function choosePage(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§_-uw§ = param1;
         this.mPageButton1.setComponentState(§_-h3§.§_-sp§);
         this.mPageButton2.setComponentState(§_-h3§.§_-sp§);
         if(!_loc3_)
         {
            this.mPageButton3.setComponentState(§_-h3§.§_-sp§);
            if(!(_loc3_ && _loc2_))
            {
               addr47:
               this.mPageButton4.setComponentState(§_-h3§.§_-sp§);
               if(_loc2_)
               {
                  §§goto(addr54);
               }
               §§goto(addr66);
            }
            addr54:
            this.mPageButton5.setComponentState(§_-h3§.§_-sp§);
            if(_loc2_ || this)
            {
               (this["mPageButton" + param1] as §_-qp§).setComponentState(§_-h3§.§_-1M§);
               addr66:
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §_-yX§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-gH§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr44:
                     this.§_-gH§.getItemByName("HighscoreHolderControls").visible = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      private function §_-Lj§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = param1.currentTarget;
         if(!_loc5_)
         {
            if(this.§_-vs§.mClip === _loc3_)
            {
               §§push(0);
            }
            else if(this.§_-uI§.mClip === _loc3_)
            {
               §§push(1);
               if(!_loc4_)
               {
                  addr188:
               }
            }
            else
            {
               if(this.mPageButton1.mClip === _loc3_)
               {
                  §§push(!_loc5_ ? 2 : 5);
               }
               else if(this.mPageButton2.mClip === _loc3_)
               {
                  §§push(3);
               }
               else
               {
                  if(this.mPageButton3.mClip === _loc3_)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§push(4);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr185:
                        §§push(6);
                        if(_loc4_)
                        {
                           §§goto(addr188);
                        }
                     }
                     §§goto(addr202);
                  }
                  else if(this.mPageButton4.mClip === _loc3_)
                  {
                     §§goto(addr178);
                  }
                  else
                  {
                     if(this.mPageButton5.mClip !== _loc3_)
                     {
                        if(this.§_-0G§.mClip === _loc3_)
                        {
                           §§push(7);
                           if(_loc4_)
                           {
                              addr197:
                           }
                           §§goto(addr202);
                        }
                        else
                        {
                           addr202:
                           loop0:
                           while(true)
                           {
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = int(Math.max(this.§_-uw§ - 1,1));
                                    addr204:
                                    this.choosePage(_loc2_);
                                    break;
                                 case 1:
                                    _loc2_ = int(Math.min(this.§_-uw§ + 1,5));
                                    if(_loc5_ && this)
                                    {
                                    }
                                    §§goto(addr204);
                                 case 2:
                                    _loc2_ = 1;
                                    if(!_loc4_)
                                    {
                                       addr118:
                                    }
                                    §§goto(addr204);
                                 default:
                                    §§goto(addr118);
                                 case 3:
                                    §§push(2);
                                    if(_loc5_)
                                    {
                                       addr89:
                                       _loc2_ = §§pop();
                                       if(_loc5_)
                                       {
                                       }
                                       break;
                                    }
                                    _loc2_ = §§pop();
                                    §§goto(addr204);
                                 case 4:
                                    §§push(3);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       _loc2_ = §§pop();
                                       if(!(_loc5_ && this))
                                       {
                                          §§goto(addr204);
                                       }
                                       break;
                                    }
                                    continue;
                                 case 5:
                                    _loc2_ = 4;
                                    if(!_loc4_)
                                    {
                                    }
                                    §§goto(addr204);
                                 case 6:
                                    §§push(5);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§goto(addr89);
                                    }
                                    continue;
                                 case 7:
                                    this.§_-V3§();
                                    if(_loc4_ || param1)
                                    {
                                       return;
                                    }
                                    break loop0;
                              }
                              if(this.§_-xk§)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    this.§_-7-§(this.§_-xk§,_loc2_);
                                    break;
                                 }
                                 break;
                              }
                              break;
                           }
                           return;
                           §§push(8);
                        }
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr185);
               }
               §§goto(addr178);
            }
            §§goto(addr202);
         }
         §§goto(addr178);
      }
      
      public function changeState(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(_loc4_)
         {
            §§push(§_-x1§);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(!(_loc3_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§push(0);
                        if(_loc3_ && _loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr191:
                        §§push(1);
                        if(!(_loc4_ || param1))
                        {
                           addr211:
                        }
                     }
                  }
                  else
                  {
                     §§push(§_-Jf§);
                     if(_loc4_ || _loc3_)
                     {
                        addr180:
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           addr183:
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_ || this)
                              {
                                 §§goto(addr191);
                              }
                           }
                           else
                           {
                              addr202:
                              if(§_-IT§ !== _loc2_)
                              {
                                 addr223:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(this.§_-gH§);
                                       if(!_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             §§push(this.§_-gH§);
                                             if(_loc4_)
                                             {
                                                addr25:
                                                §§push("Container_HighscoreLogin");
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§push(§§pop().getItemByName(§§pop()));
                                                   if(_loc4_)
                                                   {
                                                      §§push(true);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         addr45:
                                                         this.§_-yX§(false);
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr80:
                                                      §§push(false);
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         addr116:
                                                         §§pop().setVisibility(§§pop());
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr124:
                                                            this.§_-yX§(true);
                                                         }
                                                         this.showHighscores("1-4");
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§pop().setVisibility(§§pop());
                                                   addr89:
                                                   this.§_-yX§(true);
                                                   break;
                                                }
                                                addr115:
                                                §§push(§§pop().getItemByName(§§pop()));
                                                §§push(false);
                                                §§goto(addr116);
                                             }
                                             else
                                             {
                                                addr59:
                                                if(§§pop())
                                                {
                                                   §§push(this.§_-gH§);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push("Container_HighscoreLogin");
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§push(§§pop().getItemByName(§§pop()));
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr80);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr115);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr115);
                                                      }
                                                      §§goto(addr115);
                                                   }
                                                   else
                                                   {
                                                      addr106:
                                                      §§push("Container_HighscoreLogin");
                                                   }
                                                   §§goto(addr115);
                                                }
                                             }
                                             §§goto(addr89);
                                          }
                                          §§goto(addr45);
                                       }
                                       §§goto(addr25);
                                    case 1:
                                       §§push(this.§_-gH§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr59);
                                       }
                                       §§goto(addr106);
                                    case 2:
                                       §§push(this.§_-gH§);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr106);
                                             §§push(this.§_-gH§);
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr106);
                                 }
                                 this.§_-xz§ = param1;
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr223);
                           §§goto(addr223);
                        }
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr223);
               }
               §§goto(addr183);
            }
            §§goto(addr180);
         }
         §§goto(addr191);
      }
      
      public function showHighscores(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-gP§ = null;
         var _loc3_:MovieClip = null;
         if(_loc6_ || param1)
         {
            if(this.§_-m§ != param1)
            {
               if(!_loc5_)
               {
                  this.§_-m§ = param1;
                  if(!_loc5_)
                  {
                     this.choosePage(1);
                     if(_loc6_ || _loc2_)
                     {
                     }
                     addr67:
                     _loc3_ = this.§_-gH§.getItemByName("Highscore_Holder").mClip;
                     addr65:
                     while(_loc3_.numChildren > 0)
                     {
                        _loc3_.removeChildAt(0);
                        if(!(_loc6_ || _loc3_))
                        {
                           break;
                        }
                     }
                     §§push(this.§_-gH§);
                     if(_loc6_)
                     {
                        §§push(§§pop().getItemByName("Logo_Classico1"));
                        if(_loc6_)
                        {
                           §§push(false);
                           if(_loc6_)
                           {
                              §§pop().setVisibility(§§pop());
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(this.§_-gH§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(§§pop().getItemByName("Logo_Classico2"));
                                    if(_loc6_)
                                    {
                                       §§push(false);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§pop().setVisibility(§§pop());
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(this.§_-gH§);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop().getItemByName("Logo_Classico3"));
                                                if(_loc6_ || _loc2_)
                                                {
                                                   addr149:
                                                   §§push(false);
                                                   if(_loc6_)
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(this.§_-gH§);
                                                         if(!_loc5_)
                                                         {
                                                            addr164:
                                                            §§push(§§pop().getItemByName("Logo_Pepsi"));
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr173:
                                                               §§push(false);
                                                               if(!_loc5_)
                                                               {
                                                                  addr176:
                                                                  §§pop().setVisibility(§§pop());
                                                                  §§push(this.§_-gH§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr181:
                                                                     §§push(§§pop().getItemByName("Logo_Cheetos"));
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr185:
                                                                        §§push(false);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop().setVisibility(§§pop());
                                                                           addr202:
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              §§push(this.§_-gH§);
                                                                           }
                                                                           var _loc4_:* = param1;
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              §§push(CLASSICO_1);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       §§push(0);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(CLASSICO_2);
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr514:
                                                                                                   switch(§§pop())
                                                                                                   {
                                                                                                      case 0:
                                                                                                         §§push(this.§_-gH§);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(this.§_-gH§.getItemByName("Logo_Classico1"));
                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(true);
                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                        addr231:
                                                                                                                        this.§_-yX§(false);
                                                                                                                        addr234:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr301:
                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                        this.§_-yX§(false);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr254:
                                                                                                                     §§push(true);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                        §§goto(addr258);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr317:
                                                                                                                        §§pop().setVisibility(§§pop());
                                                                                                                        addr318:
                                                                                                                        _loc2_ = this.§_-vA§;
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           this.§_-yX§(true);
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§goto(addr518);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr350:
                                                                                                                              this.§_-gH§.getItemByName("Logo_Cheetos").setVisibility(true);
                                                                                                                              addr348:
                                                                                                                           }
                                                                                                                           §§goto(addr518);
                                                                                                                        }
                                                                                                                        addr354:
                                                                                                                        _loc2_ = this.§_-UJ§;
                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                        {
                                                                                                                           this.§_-yX§(true);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr518);
                                                                                                                        }
                                                                                                                        addr386:
                                                                                                                        this.§_-gH§.getItemByName("Logo_Mamut").setVisibility(true);
                                                                                                                        _loc2_ = this.§_-F4§;
                                                                                                                        if(_loc6_ || param1)
                                                                                                                        {
                                                                                                                           this.§_-yX§(true);
                                                                                                                           if(!(_loc6_ || param1))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        addr384:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr518);
                                                                                                               }
                                                                                                               §§goto(addr234);
                                                                                                            }
                                                                                                            §§goto(addr231);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr316:
                                                                                                            §§push(§§pop().getItemByName("Logo_Pepsi"));
                                                                                                            §§push(true);
                                                                                                         }
                                                                                                         §§goto(addr317);
                                                                                                      case 1:
                                                                                                         §§push(this.§_-gH§);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§push(this.§_-gH§);
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop().getItemByName("Logo_Classico2"));
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§goto(addr254);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr316);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr289:
                                                                                                                  §§push(§§pop().getItemByName("Logo_Classico3"));
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§push(true);
                                                                                                                     if(_loc6_ || this)
                                                                                                                     {
                                                                                                                        §§goto(addr301);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr317);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr316);
                                                                                                                  }
                                                                                                                  §§goto(addr317);
                                                                                                               }
                                                                                                               §§goto(addr316);
                                                                                                            }
                                                                                                            addr258:
                                                                                                            this.§_-yX§(false);
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               addr518:
                                                                                                               if(_loc2_ == null)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr523);
                                                                                                                  }
                                                                                                               }
                                                                                                               else if(_loc2_.§_-ZQ§)
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc2_.§_-G2§)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr539:
                                                                                                                           this.§_-7-§(_loc2_.§_-G2§,this.§_-uw§);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr561);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr561:
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr539);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc2_.addEventListener(§_-gP§.§_-at§,this.§_-Qa§);
                                                                                                               }
                                                                                                               §§goto(addr539);
                                                                                                            }
                                                                                                            addr523:
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr289);
                                                                                                      case 2:
                                                                                                         if(this.§_-gH§)
                                                                                                         {
                                                                                                            if(_loc6_ || _loc2_)
                                                                                                            {
                                                                                                               §§goto(addr289);
                                                                                                               §§push(this.§_-gH§);
                                                                                                            }
                                                                                                            §§goto(addr518);
                                                                                                         }
                                                                                                         §§goto(addr301);
                                                                                                      case 3:
                                                                                                         §§push(this.§_-gH§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr316);
                                                                                                               §§push(this.§_-gH§);
                                                                                                            }
                                                                                                            §§goto(addr318);
                                                                                                         }
                                                                                                         §§goto(addr316);
                                                                                                      case 4:
                                                                                                         §§push(this.§_-gH§);
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc6_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr348);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr354);
                                                                                                         }
                                                                                                         §§goto(addr350);
                                                                                                      case 5:
                                                                                                         §§push(this.§_-gH§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  §§goto(addr384);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr317);
                                                                                                         }
                                                                                                         §§goto(addr386);
                                                                                                      default:
                                                                                                         this.§_-yX§(false);
                                                                                                   }
                                                                                                   §§goto(addr518);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr460:
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(CLASSICO_3);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr458:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         addr459:
                                                                                                         §§goto(addr460);
                                                                                                         §§push(2);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(§_-Vv§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr464:
                                                                                                            §§push(_loc4_);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  §§push(3);
                                                                                                                  if(_loc5_ && param1)
                                                                                                                  {
                                                                                                                     addr509:
                                                                                                                  }
                                                                                                                  §§goto(addr514);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(§_-a2§);
                                                                                                                  if(!(_loc5_ && this))
                                                                                                                  {
                                                                                                                     addr485:
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr493:
                                                                                                                        if(§§pop() === §§pop())
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§goto(addr514);
                                                                                                                              §§push(4);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr500:
                                                                                                                           if(§_-pl§ !== _loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr514);
                                                                                                                              §§push(6);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr514);
                                                                                                                        §§goto(addr514);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr500);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr500);
                                                                                                         }
                                                                                                         §§goto(addr485);
                                                                                                      }
                                                                                                      §§goto(addr514);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr464);
                                                                                             }
                                                                                             §§goto(addr514);
                                                                                          }
                                                                                          §§goto(addr493);
                                                                                       }
                                                                                       §§goto(addr464);
                                                                                    }
                                                                                    §§goto(addr514);
                                                                                 }
                                                                                 §§goto(addr458);
                                                                              }
                                                                              §§goto(addr485);
                                                                           }
                                                                           §§goto(addr459);
                                                                        }
                                                                        addr201:
                                                                        §§pop().setVisibility(§§pop());
                                                                        §§goto(addr202);
                                                                     }
                                                                     addr200:
                                                                     §§goto(addr201);
                                                                     §§push(false);
                                                                  }
                                                                  §§push(§§pop().getItemByName("Logo_Mamut"));
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr176);
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr185);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr181);
                  }
                  addr60:
                  §§push(this.§_-gH§);
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr67);
               }
            }
            else
            {
               this.choosePage(this.§_-uw§);
               if(!(_loc5_ && param1))
               {
                  §§goto(addr60);
               }
            }
            §§goto(addr67);
         }
         §§goto(addr60);
      }
      
      private function §_-Qa§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-gP§ = param1.currentTarget as §_-gP§;
         if(_loc4_ || this)
         {
            _loc2_.removeEventListener(§_-gP§.§_-at§,this.§_-Qa§);
            if(!_loc3_)
            {
               addr49:
               this.§_-7-§(_loc2_.§_-G2§,1);
            }
            return;
         }
         §§goto(addr49);
      }
      
      private function §_-7-§(param1:Array, param2:int) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = 0;
         var _loc9_:Object = null;
         var _loc10_:MovieClip = null;
         if(_loc11_)
         {
            this.§_-xk§ = param1;
            if(_loc11_ || param2)
            {
               addr33:
               if(!this.§_-gH§)
               {
                  if(_loc11_ || _loc3_)
                  {
                     §§goto(addr43);
                  }
               }
               var _loc3_:int = 10;
               var _loc4_:Class = §_-z1§.§_-tn§("Component_HighscoreEntry");
               var _loc5_:MovieClip = this.§_-gH§.getItemByName("Highscore_Holder").mClip;
               do
               {
                  if(_loc5_.numChildren > 0)
                  {
                     continue;
                  }
                  if(_loc11_)
                  {
                     break;
                  }
                  var _loc6_:int = 0;
                  if(!_loc12_)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!_loc12_)
                        {
                           if(§§pop() < 50)
                           {
                              param1.push({
                                 "nickName":"",
                                 "score":""
                              });
                              if(_loc11_)
                              {
                                 _loc6_++;
                                 if(!_loc11_)
                                 {
                                    addr102:
                                    §§push(0);
                                 }
                                 else
                                 {
                                    addr102:
                                 }
                                 continue;
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr102);
                        }
                        break;
                     }
                     var _loc7_:* = §§pop();
                     if(_loc11_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc7_);
                           while(true)
                           {
                              §§push(10);
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(_loc7_);
                                    if(!(_loc11_ || param2))
                                    {
                                       break;
                                    }
                                    §§push(param2);
                                    if(_loc12_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() - 1);
                                    if(!(_loc12_ && param2))
                                    {
                                       §§push(§§pop() * _loc3_);
                                    }
                                    §§push(int(§§pop() + §§pop()));
                                    if(_loc12_ && _loc3_)
                                    {
                                       break;
                                    }
                                    _loc8_ = §§pop();
                                    if(!(_loc12_ && param1))
                                    {
                                       if(_loc9_ = param1[_loc8_])
                                       {
                                          if(!(_loc11_ || param1))
                                          {
                                             continue loop2;
                                          }
                                          (_loc10_ = new _loc4_()).TextField_Rank.text = _loc8_ + 1 + ".";
                                          if(_loc11_)
                                          {
                                             _loc10_.TextField_Name.text = _loc9_.nickName;
                                             if(!_loc12_)
                                             {
                                                _loc10_.TextField_Points.text = _loc9_.score;
                                                if(_loc11_)
                                                {
                                                   _loc10_.y = _loc10_.height * _loc7_;
                                                   if(!_loc11_)
                                                   {
                                                   }
                                                   addr224:
                                                   _loc7_++;
                                                   continue loop2;
                                                }
                                             }
                                             this.§_-XI§.push(_loc10_);
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                _loc5_.addChild(_loc10_);
                                             }
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr102);
               }
               while(_loc5_.removeChildAt(0), _loc11_ || _loc3_);
               
               this.§_-XI§ = [];
               §§goto(addr79);
            }
            addr43:
            return;
         }
         §§goto(addr33);
      }
      
      public function showHelpText(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-gH§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr44:
                     (this.§_-gH§.getItemByName("TextField_LoginHelper") as §_-V1§).setText(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function hideLogos() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-gH§);
         if(_loc1_)
         {
            if(§§pop())
            {
               §§push(this.§_-gH§);
               if(!_loc2_)
               {
                  §§push(§§pop().getItemByName("Logo_Classico1"));
                  if(_loc1_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        §§pop().setVisibility(§§pop());
                        if(_loc1_ || this)
                        {
                           addr39:
                           §§push(this.§_-gH§.getItemByName("Logo_Classico2"));
                           if(!_loc2_)
                           {
                              §§push(false);
                              if(!_loc2_)
                              {
                                 §§pop().setVisibility(§§pop());
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(this.§_-gH§.getItemByName("Logo_Classico3"));
                                    if(!_loc2_)
                                    {
                                       §§push(false);
                                       if(!_loc2_)
                                       {
                                          §§pop().setVisibility(§§pop());
                                          addr73:
                                          §§push(this.§_-gH§.getItemByName("Logo_Pepsi"));
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push(false);
                                             if(_loc1_ || this)
                                             {
                                                addr90:
                                                §§pop().setVisibility(§§pop());
                                                addr91:
                                                §§push(this.§_-gH§.getItemByName("Logo_Cheetos"));
                                                if(_loc1_)
                                                {
                                                   addr97:
                                                   §§push(false);
                                                   if(_loc2_)
                                                   {
                                                   }
                                                   §§goto(addr120);
                                                }
                                                addr119:
                                                addr120:
                                                §§pop().setVisibility(§§pop());
                                                return;
                                                §§push(false);
                                             }
                                             §§pop().setVisibility(§§pop());
                                             if(_loc1_ || _loc1_)
                                             {
                                             }
                                             §§goto(addr120);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr119);
                                 §§push(this.§_-gH§.getItemByName("Logo_Mamut"));
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr90);
               }
               §§goto(addr73);
            }
            §§goto(addr97);
         }
         §§goto(addr39);
      }
      
      public function §_-V3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-gH§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr48:
                     this.§_-gH§.getItemByName("Popup_NewHighscore").setVisibility(false);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function showNewHighscore() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-Tk§ = null;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§_-gH§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr43:
                     §§push(this.§_-gH§);
                     if(_loc3_)
                     {
                        §§goto(addr47);
                     }
                  }
                  §§goto(addr63);
               }
               §§goto(addr84);
            }
            addr47:
            §§pop().mClip.parent.setChildIndex(this.§_-gH§.mClip,this.§_-gH§.mClip.parent.numChildren - 1);
            if(!_loc2_)
            {
               addr63:
               _loc1_ = this.§_-gH§.getItemByName("Popup_NewHighscore");
               if(_loc3_ || this)
               {
                  _loc1_.setVisibility(true);
                  addr84:
                  this.reloadAllScores();
               }
               §§goto(addr84);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function reloadAllScores() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§_-m§ = null;
            if(!_loc2_)
            {
               this.§_-vA§.§_-qI§();
               if(_loc1_)
               {
                  §§goto(addr37);
               }
               §§goto(addr54);
            }
         }
         addr37:
         this.§_-UJ§.§_-qI§();
         if(!(_loc2_ && _loc1_))
         {
            addr54:
            this.§_-F4§.§_-qI§();
         }
      }
   }
}
