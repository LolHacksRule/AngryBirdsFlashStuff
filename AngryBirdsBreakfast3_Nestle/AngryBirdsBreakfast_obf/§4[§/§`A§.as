package §4[§
{
   import §1![§.§#E§;
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
   
   public class §`A§ implements §30§
   {
       
      
      private var §3!+§:§4Z§;
      
      public function §`A§(param1:§4Z§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
         }
         do
         {
            this.§3!+§ = param1;
         }
         while(_loc3_);
         
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:String = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc2_:Object = §2!N§.§6l§((param1.currentTarget as URLLoader).data);
         if(_loc11_)
         {
            this.§3!+§.§3!p§.close();
            while(true)
            {
               §§push(Boolean(_loc2_));
               if(!_loc12_)
               {
                  if(§§pop())
                  {
                     if(_loc11_ || _loc3_)
                     {
                        §§pop();
                        if(_loc11_)
                        {
                           §§push(Boolean(_loc2_.security));
                           if(_loc11_)
                           {
                              addr194:
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §2P§.§[!$§ = new §<!o§();
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§2P§.§[!$§);
                                       loop3:
                                       while(true)
                                       {
                                          §§pop().name = _loc2_.nickName;
                                          addr180:
                                          while(_loc11_ || param1)
                                          {
                                             while(true)
                                             {
                                                §§push(§2P§.§[!$§);
                                                continue loop3;
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    if(_loc12_ && this)
                                    {
                                       continue;
                                    }
                                    if(_loc2_.levelProfileSecurity != undefined)
                                    {
                                       §§goto(addr112);
                                    }
                                    §§goto(addr88);
                                 }
                              }
                              else
                              {
                                 §§push(Boolean(_loc2_));
                                 if(_loc11_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc12_)
                                       {
                                          §§goto(addr507);
                                       }
                                    }
                                    §§goto(addr515);
                                 }
                              }
                              §§goto(addr507);
                           }
                           break;
                        }
                        §§goto(addr252);
                     }
                     break;
                  }
                  §§goto(addr194);
               }
               break;
            }
            if(§§pop())
            {
               §§goto(addr252);
            }
            §§goto(addr316);
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
         if(!(_loc4_ && param1))
         {
            _loc2_.§1X§ = §2p§.CONNECTION_ERROR_RETRY;
         }
         do
         {
            this.§3!+§.dispatchEvent(_loc2_);
         }
         while(_loc4_);
         
      }
   }
}
