package §8#I§
{
   import §!"W§.§#"[§;
   import §!"W§.§="g§;
   import §!"W§.§[!y§;
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §,"N§.§<!9§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §7K§.§&"=§;
   import §7K§.§,T§;
   import §7K§.§-I§;
   import §;@§.§2#C§;
   import §<o§.§^i§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §>"$§.§?g§;
   import §>@§.§5"H§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.events.Event;
   
   public class § q§ extends §2#C§
   {
      
      public static const §0#"§:int = 1;
      
      private static const §^t§:String = "subscription";
      
      private static const §["q§:String = "nonsubscription";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §0#"§ = 1;
         }
         do
         {
            §^t§ = "subscription";
            do
            {
               §["q§ = "nonsubscription";
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private var §`1§:§^"m§;
      
      private var §'! §:§0"$§;
      
      private var §+!O§:§ #^§;
      
      private var §1!X§:§ #^§;
      
      private var §## §:§^"m§;
      
      private var §>0§:§ #^§;
      
      private var §&!v§:§^"m§;
      
      private var §+"+§:§>#+§;
      
      private var mButtonEnergy0:§>#+§;
      
      private var mButtonEnergy1:§>#+§;
      
      private var §!e§:Vector.<§5`§>;
      
      private var §]L§:Vector.<§5`§>;
      
      private var §%4§:§?g§;
      
      private var §4#J§:§@#B§;
      
      private var §%"e§:§>#+§;
      
      public function § q§(param1:§ #^§, param2:§5"H§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§5`§ = null;
         if(_loc7_ || _loc1_)
         {
            this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
         }
         var _loc1_:§%"[§ = this.§4#J§.§&"9§;
         if(!(_loc6_ && this))
         {
            §7"p§ = false;
            loop0:
            while(true)
            {
               this.§%"e§ = null;
               while(true)
               {
                  this.§`1§ = §^"m§(§=#=§.getItemByName("Button_Tab"));
                  loop3:
                  for(; !(_loc6_ && this); while(_loc7_ || this)
                  {
                     this.§1!X§ = § #^§(§=#=§.getItemByName("Container_Bundle"));
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                     §§goto(addr108);
                  })
                  {
                     while(true)
                     {
                        this.§+!O§ = § #^§(§=#=§.getItemByName("Container_SubscriptionInfo"));
                        continue loop3;
                     }
                     while(true)
                     {
                        this.§'! § = §0"$§(§=#=§.getItemByName("MovieClip_Loading"));
                        continue loop3;
                     }
                  }
               }
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr68);
               }
               §§push(§@#B§(§4#;§.singleton.dataModel).§!!C§.§"#'§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc6_)
               {
                  this.§1!X§.mClip.tournamentIcons_Container.gotoAndStop(_loc2_);
                  loop6:
                  while(true)
                  {
                     addr152:
                     while(true)
                     {
                        this.§+!O§.mClip.tournamentIcons_Container.gotoAndStop(_loc2_);
                        continue loop6;
                     }
                  }
                  addr166:
               }
               while(true)
               {
                  this.§## § = §^"m§(this.§+!O§.getItemByName("Button_Cancel"));
                  if(!_loc7_)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr166);
                  }
                  §§goto(addr152);
               }
               var _loc3_:§^"m§ = §^"m§(§=#=§.getItemByName("Button_BuyFriends"));
               if(!(_loc6_ && _loc2_))
               {
                  this.§+"+§ = new §>#+§(_loc3_,§^"N§,_loc1_,0,§?v§.§5"=§,null,§>#+§.§2#W§,-1);
               }
               _loc3_ = §^"m§(§=#=§.getItemByName("Button_Buy0"));
               if(!_loc6_)
               {
                  this.mButtonEnergy0 = new §>#+§(_loc3_,§^"N§,_loc1_,0,§?v§.§5"=§,null,§>#+§.§ !0§,-1);
               }
               _loc3_ = §^"m§(§=#=§.getItemByName("Button_Buy1"));
               if(!_loc6_)
               {
                  this.mButtonEnergy1 = new §>#+§(_loc3_,§^"N§,_loc1_,1,§?v§.§5"=§,null,§>#+§.§ !0§,-1);
               }
               while(true)
               {
                  while(true)
                  {
                     this.§!e§ = new Vector.<§5`§>(0);
                     do
                     {
                        this.§]L§ = new Vector.<§5`§>(0);
                     }
                     while(!(_loc7_ || _loc1_));
                     
                     if(_loc6_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     var _loc5_:int = 0;
                     while(_loc5_ < §<!9§.§3!&§)
                     {
                        _loc3_ = §^"m§(§=#=§.getItemByName("Button_Subscription" + _loc5_));
                        _loc4_ = new §5`§(_loc3_,§^"N§,_loc1_,§<!9§.§ v§,null);
                        if(!_loc7_)
                        {
                           continue;
                        }
                        this.§!e§.push(_loc4_);
                        if(!_loc6_)
                        {
                           if(_loc5_ == 0)
                           {
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              addr319:
                              _loc3_ = §^"m§(§=#=§.getItemByName("Button_Renew" + _loc5_));
                              _loc4_ = new §5`§(_loc3_,§^"N§,_loc1_,§<!9§.§^#T§,null);
                              if(!(_loc6_ && _loc1_))
                              {
                                 this.§]L§.push(_loc4_);
                              }
                           }
                           _loc5_++;
                           continue;
                        }
                        §§goto(addr319);
                     }
                     if(_loc7_ || this)
                     {
                        this.§>0§ = § #^§(§=#=§.getItemByName("Container_OutOfEnergy"));
                        if(!(_loc6_ && _loc1_))
                        {
                           this.§&!v§ = §^"m§(§=#=§.getItemByName("Button_Check"));
                           do
                           {
                              this.refresh();
                           }
                           while(_loc6_);
                           
                           addr403:
                        }
                        return;
                     }
                     §§goto(addr403);
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§4#J§);
            loop0:
            while(true)
            {
               §§pop().§^"J§.removeEventListener(§#"[§.§1c§,this.§8!n§);
               loop1:
               while(true)
               {
                  §§push(this.§4#J§);
                  while(!_loc2_)
                  {
                     §§pop().§4"Z§.removeEventListener(§[!y§.§1c§,this.§=K§);
                     while(true)
                     {
                        §§push(this.§4#J§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§1!f§);
                           addr162:
                           while(true)
                           {
                              §§push(§="g§.§>#9§);
                              addr164:
                              while(true)
                              {
                                 §§pop().removeEventListener(§§pop(),this.§8!n§);
                                 continue loop4;
                              }
                           }
                        }
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§push(§§pop().§1!f§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§="g§.§=#2§);
                        if(_loc1_ || _loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.§?K§);
                           while(true)
                           {
                              this.§4#J§ = null;
                              while(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    §=#=§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
                                    loop10:
                                    for(; !_loc2_; loop12:
                                    for(; _loc1_ || this; while(true)
                                    {
                                       this.§]L§.length = 0;
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(_loc2_ && this)
                                       {
                                          continue loop12;
                                       }
                                       §§goto(addr47);
                                    },§§goto(addr61))
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§!e§.length = 0;
                                          continue;
                                       }
                                       §§goto(addr179);
                                    })
                                    {
                                       this.§`1§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
                                       while(true)
                                       {
                                          this.§`1§ = null;
                                          continue loop10;
                                          addr47:
                                          if(_loc1_ || this)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                return;
                                                addr61:
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr167);
                              }
                           }
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr162);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function disable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§4#J§);
            loop0:
            while(true)
            {
               §§pop().§^"J§.removeEventListener(§#"[§.§1c§,this.§8!n§);
               loop1:
               while(true)
               {
                  §§push(this.§4#J§);
                  while(true)
                  {
                     §§pop().§4"Z§.removeEventListener(§[!y§.§1c§,this.§=K§);
                     while(!(_loc1_ && _loc2_))
                     {
                        continue loop0;
                        loop7:
                        while(true)
                        {
                           §§push(this.§4#J§);
                           if(_loc1_)
                           {
                              break;
                           }
                           §§push(§§pop().§1!f§);
                           if(!_loc1_)
                           {
                              §§push(§="g§.§=#2§);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§pop().removeEventListener(§§pop(),this.§?K§);
                                 while(_loc2_ || _loc2_)
                                 {
                                    §=#=§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
                                    while(!(_loc1_ && _loc1_))
                                    {
                                       §§push(this.§`1§);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().addEventListener(§6#'§.§+!>§,this.§[!q§);
                                          addr62:
                                          while(_loc2_)
                                          {
                                             continue loop10;
                                          }
                                          continue loop1;
                                       }
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr53);
                                    }
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    break loop7;
                                 }
                                 addr151:
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(§="g§.§>#9§);
                              }
                              addr136:
                           }
                           while(true)
                           {
                              §§pop().removeEventListener(§§pop(),this.§8!n§);
                              continue loop7;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      override public function enable(param1:String = "") : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §=#=§.addEventListener(§6#'§.§+!>§,this.§[!q§);
            loop0:
            while(true)
            {
               §§push(this.§`1§);
               while(true)
               {
                  §§pop().removeEventListener(§6#'§.§+!>§,this.§[!q§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§`1§);
                     if(!(_loc3_ || param1))
                     {
                        break;
                     }
                     §§pop().setEnabled(false);
                     loop3:
                     while(true)
                     {
                        §§push(this.§4#J§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().§1!f§);
                           loop5:
                           while(true)
                           {
                              §§push(§="g§.§>#9§);
                              loop6:
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§8!n§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§4#J§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop().§1!f§);
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(§="g§.§=#2§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.§?K§);
                                          loop9:
                                          while(_loc3_)
                                          {
                                             §§push(this.§4#J§);
                                             loop10:
                                             while(!_loc2_)
                                             {
                                                §§pop().§^"J§.addEventListener(§#"[§.§1c§,this.§8!n§);
                                                while(true)
                                                {
                                                   §§push(this.§4#J§);
                                                   if(_loc3_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop4;
                                             }
                                             continue loop8;
                                             addr83:
                                             if(!(_loc2_ && this))
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   if(!this.§%4§)
                                                   {
                                                      §§push(this.§'! §);
                                                      if(_loc3_)
                                                      {
                                                         §§push(true);
                                                         if(_loc3_ || this)
                                                         {
                                                            §§pop().setVisibility(§§pop());
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        super.enable();
                                                                        if(_loc3_)
                                                                        {
                                                                           addr29:
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              break loop14;
                                                                           }
                                                                           addr81:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr83);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr133);
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     addr24:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ && param1)
                                                                        {
                                                                           addr119:
                                                                           while(_loc3_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           continue loop2;
                                                                           addr119:
                                                                        }
                                                                        §§push(this.§'! §);
                                                                        while(true)
                                                                        {
                                                                           §§push(false);
                                                                           addr74:
                                                                           while(true)
                                                                           {
                                                                              §§pop().setVisibility(§§pop());
                                                                              addr75:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    break loop15;
                                                                                 }
                                                                                 §§goto(addr24);
                                                                              }
                                                                           }
                                                                        }
                                                                        this.refresh();
                                                                        §§goto(addr81);
                                                                     }
                                                                     addr64:
                                                                  }
                                                                  §§goto(addr119);
                                                               }
                                                               §§goto(addr75);
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr74);
                                                      }
                                                      §§goto(addr73);
                                                   }
                                                   §§goto(addr64);
                                                }
                                                return;
                                                addr90:
                                             }
                                          }
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function initData(param1:§?g§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§%4§ = param1;
         }
         loop0:
         while(true)
         {
            §7"p§ = true;
            while(true)
            {
               if(§]"u§)
               {
                  do
                  {
                     this.refresh();
                     if(!(_loc2_ || this))
                     {
                        continue loop0;
                     }
                  }
                  while(_loc3_ && _loc3_);
                  
                  return;
                  addr28:
               }
               while(!_loc3_)
               {
                  this.§'! §.setVisibility(false);
                  continue loop0;
                  §§goto(addr48);
               }
            }
         }
      }
      
      override public function purchaseAccepted(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§%"e§ = null;
               }
            }
         }
      }
      
      private function §?K§(param1:§="g§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§%"e§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%"e§);
                     addr79:
                     addr56:
                     while(true)
                     {
                        §§pop().§3"&§();
                        do
                        {
                           this.§%"e§ = null;
                        }
                        while(_loc3_ && _loc3_);
                        
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr24);
                  }
               }
               addr24:
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr56);
      }
      
      private function §8!n§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.refresh();
         }
      }
      
      private function §=K§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.refresh();
         }
      }
      
      override protected function refresh() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:§&"=§ = null;
         var _loc2_:* = NaN;
         var _loc3_:§-I§ = null;
         var _loc4_:§-I§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:§5`§ = null;
         var _loc8_:§5`§ = null;
         var _loc9_:Boolean = false;
         if(!(_loc10_ && _loc3_))
         {
            §§push(this.§%4§);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  addr54:
                  _loc1_ = this.§%4§.energies[§?v§.§5"=§];
                  if(_loc11_)
                  {
                     §§push(this.§9"$§(_loc1_));
                     if(!_loc10_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                     loop0:
                     while(true)
                     {
                        §§push(this.§+"+§);
                        while(true)
                        {
                           §§pop().prices = new §,T§(§?v§.§5"=§,1,25);
                           while(true)
                           {
                              §§push(this.§+"+§);
                              if(_loc10_ && _loc1_)
                              {
                                 break;
                              }
                              §§pop().refresh();
                              while(true)
                              {
                                 §§push(this.mButtonEnergy0);
                                 loop4:
                                 while(true)
                                 {
                                    §§pop().singlePrice = _loc2_;
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc10_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(this.mButtonEnergy0);
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc1_.prices[0])
                                          {
                                             §§push(null);
                                             while(true)
                                             {
                                                §§pop().prices = §§pop();
                                                addr174:
                                                while(_loc11_ || _loc3_)
                                                {
                                                   §§push(this.mButtonEnergy0);
                                                   if(_loc11_ || _loc1_)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop5;
                                                addr165:
                                             }
                                          }
                                          while(!_loc10_)
                                          {
                                             §§goto(addr165);
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
                  §§goto(addr201);
               }
               §§goto(addr642);
            }
         }
         §§goto(addr54);
      }
      
      protected function §?"6§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push("<b>" + param1);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() + "</b>";
         }
      }
      
      private function §9"$§(param1:§&"=§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§,T§ = null;
         var _loc2_:* = Number(-1);
         if(_loc6_ || _loc3_)
         {
            if(!param1)
            {
               if(_loc6_)
               {
                  return _loc2_;
               }
            }
         }
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(§§pop() >= param1.prices.length)
               {
                  if(!_loc5_)
                  {
                     if(_loc3_)
                     {
                        if(_loc6_)
                        {
                           §§push(_loc3_.price);
                           break;
                        }
                     }
                  }
               }
               else
               {
                  if(_loc3_)
                  {
                     if(_loc6_)
                     {
                        if(param1.prices[_loc4_].quantity < _loc3_.quantity)
                        {
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           _loc3_ = param1.prices[_loc4_];
                        }
                     }
                     addr130:
                     return _loc2_;
                     addr129:
                  }
                  else
                  {
                     _loc3_ = param1.prices[_loc4_];
                  }
                  _loc4_++;
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               §§goto(addr129);
            }
            break;
         }
         §§push(§§pop() / _loc3_.quantity);
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
            if(!(_loc5_ && this))
            {
               addr128:
               _loc2_ = §§pop();
               §§goto(addr129);
            }
            §§goto(addr130);
         }
         §§goto(addr128);
      }
      
      private function §6!,§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1 != §^t§)
            {
               §§push(this.§+!O§);
               if(_loc2_)
               {
                  §§push(false);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§pop().visible = §§pop();
                     loop0:
                     while(true)
                     {
                        §§push(this.§1!X§);
                        if(!(_loc3_ && this))
                        {
                           §§push(true);
                           if(_loc2_)
                           {
                              §§pop().visible = §§pop();
                              loop1:
                              while(true)
                              {
                                 §§push(this.§+"+§);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(true);
                                    if(_loc2_)
                                    {
                                       §§pop().visible = §§pop();
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.mButtonEnergy0);
                                          if(_loc2_ || this)
                                          {
                                             §§push(true);
                                             if(!_loc3_)
                                             {
                                                §§pop().visible = §§pop();
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                                addr71:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().visible = §§pop();
                                                   addr165:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr167:
                                                         if(!_loc3_)
                                                         {
                                                            addr158:
                                                            this.mButtonEnergy1.visible = false;
                                                            addr24:
                                                            return;
                                                            addr159:
                                                            addr169:
                                                            addr157:
                                                         }
                                                         else
                                                         {
                                                            addr193:
                                                            addr201:
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(this.§1!X§);
                                                            break loop0;
                                                            addr200:
                                                            while(true)
                                                            {
                                                               §§pop().visible = §§pop();
                                                               continue loop6;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§+"+§);
                                                            break loop1;
                                                         }
                                                      }
                                                      addr175:
                                                      while(true)
                                                      {
                                                         §§push(this.mButtonEnergy0);
                                                         break loop2;
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                }
                                                addr164:
                                             }
                                             §§goto(addr159);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr164);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().visible = §§pop();
                                       §§goto(addr175);
                                    }
                                    addr174:
                                 }
                                 break;
                                 addr49:
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr24);
                              }
                              while(true)
                              {
                                 §§goto(addr174);
                                 §§goto(addr193);
                              }
                              §§goto(addr169);
                           }
                           while(true)
                           {
                              §§pop().visible = §§pop();
                              addr181:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr193);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§+!O§);
                                       addr199:
                                       while(true)
                                       {
                                          §§goto(addr200);
                                       }
                                    }
                                    addr197:
                                 }
                                 §§goto(addr201);
                              }
                           }
                           addr180:
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr180);
                     }
                  }
                  §§goto(addr200);
               }
               §§goto(addr199);
            }
            §§goto(addr197);
         }
         §§goto(addr193);
      }
      
      private function §[!q§(param1:§6#'§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§,T§ = null;
         var _loc3_:§[!j§ = null;
         if(_loc6_ || this)
         {
            §§push(param1.§=!k§);
            if(!_loc5_)
            {
               if(§§pop() == "")
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  addr41:
                  §§push(param1.§=!k§);
                  if(!(_loc5_ && _loc3_))
                  {
                     addr50:
                     if(§§pop().toUpperCase().indexOf("BUY_") == 0)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           addr64:
                           if(param1.§=!k§.toUpperCase().indexOf("SUBSCRIPTION") != -1)
                           {
                              addr69:
                              _loc3_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§8Z§);
                              if(_loc6_ || _loc3_)
                              {
                                 §4#;§.singleton.popupManager.openPopup(_loc3_,true,true);
                              }
                           }
                           §§push(param1.§=!k§);
                           if(!_loc5_)
                           {
                              var _loc4_:* = §§pop().toUpperCase();
                              if(_loc6_ || _loc2_)
                              {
                                 if("BUY_ENERGY_FRIEND" === _loc4_)
                                 {
                                    if(_loc6_)
                                    {
                                       addr209:
                                       §§push(0);
                                       if(_loc5_ && _loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr240:
                                       §§push(2);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr248:
                                       }
                                    }
                                    addr253:
                                    if(_loc6_)
                                    {
                                       loop1:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             this.§%"e§ = this.§+"+§;
                                             if(!_loc6_)
                                             {
                                                addr289:
                                                dispatchEvent(new §^i§(§^i§.§-#>§));
                                                if(_loc6_ || _loc2_)
                                                {
                                                   addr302:
                                                   break;
                                                }
                                                addr315:
                                                break;
                                             }
                                             _loc2_ = this.§+"+§.prices;
                                             if(_loc6_ || _loc2_)
                                             {
                                                §?!r§.§"#_§("misc_menubuttonproceed_1");
                                                dispatchEvent(new §^i§(§^i§.§@"v§,_loc2_));
                                                addr147:
                                             }
                                             addr125:
                                             return;
                                             addr143:
                                             break;
                                          case 1:
                                             do
                                             {
                                                this.§%"e§ = this.mButtonEnergy0;
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc5_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr125);
                                                   }
                                                   else
                                                   {
                                                      _loc2_ = this.mButtonEnergy0.prices;
                                                      if(_loc6_ || this)
                                                      {
                                                         addr259:
                                                         if(_loc2_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §?!r§.§"#_§("misc_menubuttonproceed_1");
                                                               if(!_loc6_)
                                                               {
                                                               }
                                                               addr321:
                                                               _loc4_ = param1.§=!k§.toUpperCase();
                                                               addr283:
                                                               if(!_loc5_)
                                                               {
                                                                  if("TAB_ENERGIES" === _loc4_)
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        addr335:
                                                                        §§push(0);
                                                                        if(!_loc6_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr342:
                                                                        §§push(1);
                                                                        if(_loc5_ && this)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr366:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           if(§]"u§)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr289);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr302);
                                                                        case 1:
                                                                           §?!r§.§"#_§("misc_menubuttonproceed_1");
                                                                           if(_loc6_)
                                                                           {
                                                                              this.§>0§.visible = false;
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break loop1;
                                                                           }
                                                                     }
                                                                     §§goto(addr315);
                                                                     addr365:
                                                                  }
                                                                  else
                                                                  {
                                                                     if("CLOSE_ENERGY_NOTICE" === _loc4_)
                                                                     {
                                                                        §§goto(addr342);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(2);
                                                                     }
                                                                     §§goto(addr365);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr335);
                                                               addr283:
                                                            }
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                      dispatchEvent(new §^i§(§^i§.§?!A§,_loc2_));
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         return;
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr147);
                                                }
                                             }
                                             while(_loc6_ || this);
                                             
                                             §§goto(addr143);
                                          case 2:
                                             this.§%"e§ = this.mButtonEnergy1;
                                             if(_loc6_ || this)
                                             {
                                                _loc2_ = this.mButtonEnergy1.prices;
                                                §§goto(addr259);
                                             }
                                             §§goto(addr283);
                                          default:
                                             §§goto(addr259);
                                       }
                                       return;
                                    }
                                    §§goto(addr366);
                                 }
                                 else
                                 {
                                    if("BUY_ENERGY_0" === _loc4_)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(1);
                                          if(!(_loc6_ || _loc2_))
                                          {
                                             §§goto(addr248);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr240);
                                       }
                                    }
                                    else if("BUY_ENERGY_1" === _loc4_)
                                    {
                                       §§goto(addr240);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                    §§goto(addr253);
                                 }
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr321);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr321);
                  }
                  §§goto(addr64);
               }
               §§goto(addr41);
            }
            §§goto(addr50);
         }
         §§goto(addr41);
      }
   }
}
