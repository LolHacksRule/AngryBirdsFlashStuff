package §4[§
{
   import §1![§.§#E§;
   import §1!c§.§^j§;
   import §4!i§.§0!<§;
   import §4!i§.§@"#§;
   import §;V§.§%c§;
   import §<S§.HighscoreSidebar;
   import §[!5§.§2p§;
   import com.angrybirds.utils.§2!N§;
   import com.angrybirds.utils.§30§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §<"6§ implements §30§
   {
       
      
      private var §3!+§:§4Z§;
      
      public function §<"6§(param1:§4Z§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            do
            {
               this.§3!+§ = param1;
            }
            while(!_loc2_);
            
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:* = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc2_:Object = §2!N§.§6l§((param1.currentTarget as URLLoader).data);
         if(!_loc9_)
         {
            this.§3!+§.§3!p§.close();
            loop0:
            while(true)
            {
               if(!_loc2_.security)
               {
                  if(_loc2_.error)
                  {
                     if(!_loc9_)
                     {
                        addr392:
                        _loc7_ = _loc2_.error;
                     }
                     §§goto(addr393);
                  }
                  break;
               }
               while(true)
               {
                  §2P§.§[!$§ = new §<!o§();
                  addr191:
                  while(true)
                  {
                     §§push(§2P§.§[!$§);
                     loop6:
                     while(true)
                     {
                        §§pop().name = _loc2_.nickName;
                        if(!_loc8_)
                        {
                           break;
                        }
                        §§push(§2P§.§[!$§);
                        while(true)
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              §§pop().id = _loc2_.id;
                              if(_loc9_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop6;
                        }
                        addr393:
                        (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§1X§ = _loc7_;
                        if(_loc8_)
                        {
                           _loc6_.field = _loc2_.field;
                        }
                        while(true)
                        {
                           while(true)
                           {
                              this.§3!+§.dispatchEvent(_loc6_);
                              do
                              {
                                 §0!<§.§1x§(§0!<§.§6"2§);
                              }
                              while(!(_loc8_ || _loc3_));
                              
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(true)
                              {
                                 break loop0;
                              }
                           }
                        }
                     }
                     addr254:
                     _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§`!B§);
                     if(_loc8_ || _loc3_)
                     {
                        this.§3!+§.dispatchEvent(_loc6_);
                     }
                     (_loc4_ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§).reset();
                     if(_loc8_ || _loc3_)
                     {
                        _loc4_.§5!Z§();
                        _loc4_.§@w§(HighscoreSidebar.§+i§);
                        addr369:
                        (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§@!0§();
                        addr382:
                        addr379:
                        addr373:
                        §§push(§ !4§.§%"7§);
                        if(_loc8_)
                        {
                           (§§pop() as AngryBirdsCustom).§7"6§(§^j§.§8"%§);
                           addr351:
                           if(!(_loc9_ && param1))
                           {
                              if(!(_loc9_ && _loc2_))
                              {
                                 addr317:
                                 §§push(§@"#§.§,2§.§2"2§());
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(§§pop().toLowerCase() + "_");
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() + §@"#§.§,2§.§0!x§().toUpperCase());
                                    }
                                    §§push(§§pop());
                                 }
                                 _loc5_ = §§pop();
                                 §%c§.§6"§("onFlashLanguageChange",_loc5_);
                                 if(_loc8_ || param1)
                                 {
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(_loc8_ || _loc3_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr317);
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr382);
                                    }
                                    §§goto(addr351);
                                 }
                                 addr340:
                                 §§goto(addr340);
                                 addr365:
                              }
                              §§goto(addr379);
                           }
                           §§goto(addr373);
                        }
                        §§goto(addr369);
                     }
                     §§goto(addr365);
                  }
               }
               §§goto(addr393);
               if(!(_loc8_ || _loc3_))
               {
                  continue;
               }
               §2P§.levelProfile = _loc2_.levelProfile;
               if(!(_loc9_ && _loc3_))
               {
                  if(_loc2_.levelProfileSecurity != undefined)
                  {
                     loop8:
                     while(true)
                     {
                        §2P§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                        if(!_loc9_)
                        {
                           while(true)
                           {
                              §§push(§#E§.§0"$§(§2P§.levelProfile));
                              addr91:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc8_ || param1))
                                 {
                                    break;
                                 }
                                 _loc3_ = §§pop();
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    break loop8;
                                 }
                                 continue loop8;
                              }
                              §§goto(addr392);
                           }
                           addr225:
                           §2P§.§-l§();
                           if(!_loc9_)
                           {
                              (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§5!z§ = true;
                              if(_loc8_ || _loc3_)
                              {
                                 addr243:
                                 §0!<§.§1x§(§0!<§.§;!N§);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§goto(addr254);
                                 }
                              }
                              §§goto(addr393);
                           }
                           §§goto(addr243);
                           addr86:
                        }
                        break;
                     }
                     §§goto(addr392);
                  }
                  §§goto(addr225);
               }
               §§goto(addr243);
            }
            return;
         }
         §§goto(addr187);
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.§1X§ = §2p§.CONNECTION_ERROR_RETRY;
            do
            {
               this.§3!+§.dispatchEvent(_loc2_);
            }
            while(!_loc3_);
            
         }
      }
   }
}
