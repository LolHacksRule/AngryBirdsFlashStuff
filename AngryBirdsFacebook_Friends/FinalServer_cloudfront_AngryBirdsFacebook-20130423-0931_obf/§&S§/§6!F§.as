package §&S§
{
   import §5!Y§.§9"6§;
   import §59§.§<"9§;
   import §8m§.§@"M§;
   import §9@§.§3,§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §6!F§ extends EventDispatcher
   {
       
      
      private var §>!=§:§&!l§;
      
      private var §>!a§:MovieClip;
      
      private var §5!%§:Boolean;
      
      public function §6!F§(param1:§&!l§, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:Class = null;
         if(!_loc7_)
         {
            super();
            if(_loc8_)
            {
               if(param5)
               {
                  addr28:
                  _loc6_ = §?q§.§ q§("VirtualCoinWallet_small");
                  if(_loc8_)
                  {
                     addr41:
                     this.§>!a§ = new _loc6_();
                     if(_loc8_ || this)
                     {
                        if(param4)
                        {
                           loop0:
                           while(true)
                           {
                              this.§>!a§.x = 131;
                              addr200:
                              while(true)
                              {
                                 this.§>!a§.y = 120;
                                 continue loop0;
                              }
                           }
                           addr196:
                        }
                        while(true)
                        {
                           param1.walletContainer.addChild(this.§>!a§);
                           while(true)
                           {
                              this.§5!%§ = param3;
                              loop5:
                              while(true)
                              {
                                 this.§>!=§ = param1;
                                 loop6:
                                 while(true)
                                 {
                                    this.§>!a§.coinsAddButton.visible = param2;
                                    while(!_loc7_)
                                    {
                                       this.§>!a§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§="G§);
                                       while(!_loc7_)
                                       {
                                          continue loop6;
                                       }
                                    }
                                    §§goto(addr200);
                                 }
                                 addr104:
                                 if(!(_loc8_ || param3))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    this.§!!J§(§%"S§.§!C§.§9"%§.§,T§.§0Q§);
                                    if(_loc7_)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc8_ || param2)
                                          {
                                             if(_loc8_)
                                             {
                                                §§goto(addr104);
                                             }
                                             else
                                             {
                                                §§goto(addr128);
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §%"S§.§!C§.§9"%§.§,T§.addEventListener(§-!Y§.§`A§,this.§3a§);
                                                continue loop10;
                                             }
                                             addr118:
                                          }
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr67);
                                    §§goto(addr200);
                                 }
                                 §§goto(addr74);
                              }
                              if(_loc7_ && param3)
                              {
                                 continue;
                              }
                              this.§>!a§.birdCoin.gotoAndStop("Normal");
                              §§goto(addr118);
                           }
                        }
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr196);
               }
               else
               {
                  _loc6_ = §?q§.§ q§("VirtualCoinWallet");
               }
               §§goto(addr41);
            }
         }
         §§goto(addr28);
      }
      
      private function §3a§(param1:§-!Y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§5!%§)
            {
               while(true)
               {
                  this.§5!q§(param1.§4[§);
                  addr56:
                  while(true)
                  {
                  }
                  addr41:
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
            while(true)
            {
               this.§!!J§(param1.§&§);
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr41);
            }
         }
         §§goto(addr48);
      }
      
      public function §!!J§(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>!a§.coinsTextfield.text = §3,§.§3!Y§(param1);
         }
      }
      
      private function §="G§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §9"6§.§;!J§();
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§>!a§)
            {
               while(true)
               {
                  this.§>!a§.coinsAddButton.removeEventListener(MouseEvent.CLICK,this.§="G§);
                  addr147:
                  while(true)
                  {
                  }
                  addr38:
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§>!=§);
                     if(!_loc2_)
                     {
                        if(§§pop().walletContainer.contains(this.§>!a§))
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(this.§>!=§);
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§pop().walletContainer.removeChild(this.§>!a§);
                                          addr19:
                                          return;
                                          addr83:
                                       }
                                       else
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc1_ || _loc1_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr98:
                                                      while(true)
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            §§push(this.§>!=§);
                                                            if(_loc2_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(Boolean(§§pop().walletContainer));
                                                            if(!_loc1_)
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop5;
                                                            }
                                                            addr126:
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop10;
                                                   }
                                                   addr97:
                                                }
                                                while(§§pop())
                                                {
                                                   if(_loc1_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr38);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr98);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr83);
                                                   }
                                                }
                                                §§goto(addr19);
                                             }
                                             §§goto(addr97);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr19);
                                    }
                                    addr72:
                                 }
                                 else
                                 {
                                    §§goto(addr147);
                                 }
                                 while(true)
                                 {
                                    AngryBirdsFP11.§>m§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                    §§goto(addr147);
                                 }
                                 addr127:
                              }
                              while(true)
                              {
                                 §%"S§.§!C§.§9"%§.§,T§.removeEventListener(§-!Y§.§`A§,this.§3a§);
                                 §§goto(addr126);
                              }
                           }
                        }
                        §§goto(addr19);
                     }
                     §§goto(addr72);
                  }
                  addr45:
               }
            }
            §§goto(addr127);
         }
         §§goto(addr45);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§>!a§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr81:
                  if(this.§>!a§.birdCoin.currentFrame >= this.§>!a§.birdCoin.totalFrames)
                  {
                  }
                  §§goto(addr24);
               }
               do
               {
                  this.§>!a§.birdCoin.gotoAndStop("Normal");
                  do
                  {
                     AngryBirdsFP11.§>m§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(_loc3_ && param1);
               
            }
            addr24:
            return;
         }
         §§goto(addr81);
      }
      
      public function §5!q§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §@"M§.§3"C§("Get_Coins",§<"9§.§%F§);
         }
         var _loc2_:§!a§ = new §!a§(param1);
         if(_loc4_ || param1)
         {
            this.§>!a§.addChild(_loc2_);
            while(true)
            {
               this.§>!a§.birdCoin.gotoAndPlay("GetCoins");
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     AngryBirdsFP11.§>m§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     if(_loc4_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
   }
}
