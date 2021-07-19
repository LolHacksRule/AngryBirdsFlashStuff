package §7!B§
{
   import § !Y§.§="6§;
   import §!?§.§'k§;
   import §3D§.HighscoreSidebar;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §9y§.§8"3§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §@R§ implements §-!^§
   {
       
      
      private var §6">§:§@"@§;
      
      public function §@R§(param1:§@"@§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
            do
            {
               this.§6">§ = param1;
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:LoginHandlerEvent = null;
         var _loc6_:String = null;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(_loc8_ || _loc3_)
         {
            this.§6">§.§4>§.close();
            if(!_loc7_)
            {
               if(_loc2_.security)
               {
                  while(true)
                  {
                     §@!^§.§2j§ = new §?A§();
                     while(true)
                     {
                        §§push(§@!^§.§2j§);
                        while(true)
                        {
                           §§pop().name = _loc2_.nickName;
                           while(true)
                           {
                              §§push(§@!^§.§2j§);
                              loop4:
                              while(true)
                              {
                                 §§pop().id = _loc2_.id;
                                 while(true)
                                 {
                                    §§push(§@!^§.§2j§);
                                    while(true)
                                    {
                                       §§pop().§,!0§ = _loc2_.security;
                                       if(_loc8_)
                                       {
                                          §§push(§@!^§.§2j§);
                                          while(true)
                                          {
                                             §§pop().episodeScore1 = _loc2_.sc1;
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§@!^§.§2j§);
                                                while(true)
                                                {
                                                   §§pop().episodeScore2 = _loc2_.sc2;
                                                   while(true)
                                                   {
                                                      §§push(§@!^§.§2j§);
                                                      while(true)
                                                      {
                                                         §§pop().episodeScore3 = _loc2_.sc3;
                                                         if(!(_loc8_ || this))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§@!^§.§2j§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§pop().episodeStars1 = _loc2_.st1;
                                                            addr310:
                                                            while(!(_loc7_ && _loc2_))
                                                            {
                                                               §§push(§@!^§.§2j§);
                                                               continue loop12;
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      (§ !g§.§;!'§ as §`Y§).§]]§.§?m§ = true;
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         §§goto(addr426);
                                                      }
                                                   }
                                                }
                                             }
                                             if(!(_loc8_ || param1))
                                             {
                                                continue;
                                             }
                                             §§pop().starsNeededToUnlockEpisode3 = _loc2_.min3;
                                             §§goto(addr212);
                                          }
                                       }
                                       §§goto(addr432);
                                       if(_loc7_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(_loc7_)
                                       {
                                          continue loop4;
                                       }
                                       §§pop().starsNeededToUnlockEpisode2 = _loc2_.min2;
                                       if(!_loc7_)
                                       {
                                          §§goto(addr200);
                                          §§push(§@!^§.§2j§);
                                       }
                                       §§goto(addr426);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               else if(_loc2_.error)
               {
                  if(_loc8_ || _loc2_)
                  {
                     §§goto(addr500);
                  }
                  §§goto(addr503);
               }
               §§goto(addr540);
            }
            §§goto(addr426);
         }
         §§goto(addr82);
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         if(!_loc3_)
         {
            _loc2_.§#5§ = §8"3§.CONNECTION_ERROR_RETRY;
            do
            {
               this.§6">§.dispatchEvent(_loc2_);
            }
            while(!(_loc4_ || _loc2_));
            
         }
      }
   }
}
