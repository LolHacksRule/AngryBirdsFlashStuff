package §!"e§
{
   import §+D§.§^"m§;
   import §1#R§.§+#[§;
   import §7!$§.§&$§;
   import §7#W§.§6!W§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §[!m§.AbstractPopup;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   
   public class TournamentUnlockedPopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "TournamentUnlockedPopup";
      
      public static const §""l§:int = 0;
      
      public static const § !e§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!h§ = "TournamentUnlockedPopup";
         }
         do
         {
            §""l§ = 0;
            do
            {
               § !e§ = 1;
            }
            while(_loc1_ && _loc1_);
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected var §1#5§:§^"m§;
      
      private var §&!D§:int = 0;
      
      public function TournamentUnlockedPopup(param1:int, param2:int, param3:int)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_TournamentUnlocked[0],§%!h§);
         }
         do
         {
            this.§&!D§ = param3;
         }
         while(_loc4_ && param2);
         
      }
      
      override protected function init() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.§1#5§ = §^"m§(§^c§.getItemByName("Button_Close"));
         }
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         if(_loc5_ || _loc1_)
         {
            _loc2_.mask = _loc1_;
            if(_loc5_ || _loc2_)
            {
               addr59:
               _loc2_.Tournament_Animation.visible = false;
            }
            var _loc3_:MovieClip = _loc2_.getChildByName("MovieClip_Title") as MovieClip;
            §§push(this.§&!D§);
            if(!(_loc6_ && this))
            {
               var _loc4_:* = §§pop();
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§""l§);
                  if(!(_loc6_ && this))
                  {
                     §§push(_loc4_);
                     if(_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(0);
                              if(_loc6_ && _loc1_)
                              {
                                 addr145:
                                 if(§§pop() === _loc4_)
                                 {
                                    addr147:
                                    §§push(1);
                                    if(_loc5_ || _loc1_)
                                    {
                                       addr165:
                                    }
                                 }
                                 else
                                 {
                                    §§push(2);
                                 }
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr147);
                        }
                        else
                        {
                           §§push(§ !e§);
                           if(_loc5_)
                           {
                              §§goto(addr145);
                           }
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr145);
               }
               §§goto(addr147);
            }
            addr171:
            switch(§§pop())
            {
               case 0:
                  _loc3_.gotoAndStop("tournament_unlocked");
                  if(!_loc6_)
                  {
                     break;
                  }
                  addr94:
                  break;
               case 1:
                  _loc3_.gotoAndStop("join_tournament");
                  if(!_loc6_)
                  {
                     §§goto(addr94);
                  }
            }
            return;
         }
         §§goto(addr59);
      }
      
      override protected function onTransitionInComplete() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.onTransitionInComplete();
         }
         var _loc1_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         var _loc2_:MovieClip = _loc1_.getChildByName("Tournament_Animation") as MovieClip;
         if(_loc3_ || _loc1_)
         {
            _loc2_.gotoAndPlay("start_hover_tournament_button");
            do
            {
               §?!r§.§"#_§("tournament_hoverstate");
            }
            while(!(_loc3_ || _loc1_));
            
         }
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§6y§.§5z§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr133:
                     while(true)
                     {
                        §§push(this.§1#5§);
                        addr135:
                        while(true)
                        {
                           §§push(true);
                           addr136:
                           while(true)
                           {
                              §§pop().visible = §§pop();
                              addr137:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr133:
                  }
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push(§6y§.§;X§);
                        loop4:
                        while(_loc2_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(this.§1#5§);
                                    loop5:
                                    for(; !_loc3_; §§push(this.§1#5§),if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    },§§goto(addr72))
                                    {
                                       §§push(false);
                                       while(true)
                                       {
                                          §§pop().visible = §§pop();
                                          addr111:
                                          loop7:
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§6y§.§>]§);
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               addr88:
                                                            }
                                                            return;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr136);
                                                addr28:
                                             }
                                             else
                                             {
                                                §§goto(addr133);
                                             }
                                          }
                                          addr72:
                                          §§push(false);
                                          if(_loc3_ && this)
                                          {
                                             continue;
                                          }
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§pop().visible = §§pop();
                                             §§goto(addr88);
                                          }
                                          else
                                          {
                                             §§goto(addr136);
                                          }
                                       }
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr28);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2.toUpperCase();
         if(_loc5_ || this)
         {
            if("PLAY" === _loc4_)
            {
               addr86:
               §§push(0);
               if(_loc6_ && param2)
               {
               }
            }
            else
            {
               §§push(1);
            }
            loop1:
            switch(§§pop())
            {
               case 0:
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  while(true)
                  {
                     §4#;§.singleton.§ g§(§6!W§.§^!7§);
                     if(_loc6_ && param3)
                     {
                        break loop1;
                     }
                     if(_loc5_)
                     {
                        dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
                        return;
                     }
                  }
                  break;
               default:
                  super.onUIInteraction(param1,param2,param3);
            }
            return;
         }
         §§goto(addr86);
      }
   }
}
