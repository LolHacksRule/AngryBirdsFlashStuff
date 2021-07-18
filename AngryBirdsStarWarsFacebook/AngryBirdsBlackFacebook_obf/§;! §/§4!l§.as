package §;! §
{
   import §!"W§.§="5§;
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.text.TextField;
   
   public class §4!l§
   {
      
      public static const §"#F§:String = "plus";
      
      public static const §]"c§:String = "minus";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"#F§ = "plus";
            do
            {
               §]"c§ = "minus";
            }
            while(_loc1_);
            
         }
      }
      
      protected var §=#=§:§ #^§;
      
      protected var §@!E§:§=o§;
      
      protected var §8!,§:int;
      
      public function §4!l§(param1:§ #^§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§=#=§ = param1;
               loop1:
               while(true)
               {
                  §§push(this.§=#=§);
                  if(!_loc4_)
                  {
                     §§pop().addEventListener(§6#'§.§+!>§,this.§[!q§);
                     while(true)
                     {
                        this.§@!E§ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
                        if(_loc4_ && param1)
                        {
                           break;
                        }
                        if(_loc3_ || _loc2_)
                        {
                           continue loop1;
                        }
                     }
                     return;
                     addr157:
                  }
                  break;
               }
               addr122:
               §§pop().mClip.coinIcon.mouseEnabled = this.§=#=§.mClip.coinIcon.mouseChildren = false;
               if(!_loc4_)
               {
                  this.§8!,§ = -1;
               }
               if(_loc4_ && this)
               {
                  continue;
               }
               §§push(this.§=#=§);
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr34);
               }
               §§goto(addr122);
            }
         }
         while(true)
         {
            this.§-!b§();
            if(_loc4_)
            {
               continue;
            }
            §§goto(addr157);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@!E§.removeEventListener(§="5§.§1c§,this.§-!b§);
         }
         do
         {
            this.§=#=§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private function §-!b§(param1:§="5§ = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = false;
         var _loc5_:* = null;
         var _loc6_:String = null;
         if(!(_loc8_ && _loc3_))
         {
            this.§=#=§.mClip.balance.htmlText = this.§?"6§(this.§@!E§.starCoins.toString());
         }
         §§push(this.§@!E§.starCoins);
         if(!(_loc8_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || param1)
         {
            §§push(this.§8!,§);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop10:
                              while(true)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          while(true)
                                          {
                                             §§push(int(Math.abs(this.§8!,§ - _loc2_)));
                                             addr336:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                             }
                                          }
                                          addr329:
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc8_)
                                          {
                                             addr223:
                                             if(!(_loc7_ || _loc2_))
                                             {
                                                break;
                                             }
                                             addr230:
                                             §§push(this.§8!,§);
                                             if(_loc7_ || _loc3_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() < §§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§push(false);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            continue loop11;
                                                         }
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc8_ && this)
                                                            {
                                                               break;
                                                               addr288:
                                                            }
                                                            _loc4_ = §§pop();
                                                            loop27:
                                                            while(!(_loc8_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr296:
                                                                  while(true)
                                                                  {
                                                                     §§push("+");
                                                                  }
                                                                  addr296:
                                                               }
                                                               else
                                                               {
                                                                  §§push("-");
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + _loc3_.toString());
                                                                  addr305:
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     addr306:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop27;
                                                                     }
                                                                     continue loop27;
                                                                  }
                                                               }
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop4;
                                                         addr279:
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                   else
                                                   {
                                                      §§push(true);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         addr278:
                                                         §§goto(addr279);
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr288);
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§8!,§);
                                                   break loop12;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   §§goto(addr230);
                                                }
                                                addr318:
                                             }
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr336);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr87);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr356);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr329);
      }
      
      private function §?"6§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push("<b>" + param1);
         if(!(_loc2_ && _loc3_))
         {
            return §§pop() + "</b>";
         }
      }
      
      private function §[!q§(param1:§6#'§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§[!j§ = null;
         var _loc3_:* = param1.§=!k§.toUpperCase();
         if(_loc4_ || this)
         {
            if("BUY_COINS" === _loc3_)
            {
               addr72:
               §§push(0);
               if(!_loc4_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  if(_loc4_)
                  {
                     _loc2_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§8Z§);
                     if(!_loc5_)
                     {
                        §4#;§.singleton.popupManager.openPopup(_loc2_,true,true);
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr72);
      }
   }
}
