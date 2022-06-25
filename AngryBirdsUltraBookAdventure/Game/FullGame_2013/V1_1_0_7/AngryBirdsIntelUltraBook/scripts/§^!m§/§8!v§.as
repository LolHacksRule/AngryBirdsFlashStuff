package §^!m§
{
   import §!!j§.Popup;
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §<-§.§!!K§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §8!v§ extends Popup
   {
      
      private static var §]6§:Boolean;
      
      private static var §9^§:§45§;
      
      private static var §+7§:Object;
       
      
      public function §8!v§(param1:§&!G§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(§2!z§.§ _§.Views.PopupView_Valentine[0],param1);
         }
         do
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@!@§);
         }
         while(!_loc3_);
         
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!§]6§)
            {
               if(!(_loc2_ && §8!v§))
               {
                  §]6§ = true;
               }
               while(true)
               {
                  §9^§ = new §45§();
                  loop1:
                  while(true)
                  {
                     §§push(§9^§);
                     loop2:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,§94§);
                        loop3:
                        while(!_loc2_)
                        {
                           §§push(§9^§);
                           loop4:
                           while(true)
                           {
                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,§2!@§);
                              addr137:
                              loop5:
                              while(true)
                              {
                                 §§push(§9^§);
                                 while(_loc1_)
                                 {
                                    §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§2!@§);
                                    continue loop5;
                                    loop8:
                                    while(_loc1_ || §8!v§)
                                    {
                                       §§pop().addEventListener(§4-§.§4!m§,§2!@§);
                                       while(true)
                                       {
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§push(§9^§);
                                             if(!_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§pop().load(§7!6§.§7V§(AngryBirdsFP11.§[!S§ + "/claimvalentinebundle"));
                                                   while(_loc1_ || _loc2_)
                                                   {
                                                      §!!K§.§@!S§();
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr38);
                                                   }
                                                   continue loop5;
                                                   addr59:
                                                }
                                                continue loop4;
                                             }
                                             continue loop8;
                                             continue loop8;
                                          }
                                          continue loop3;
                                          addr38:
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§goto(addr24);
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr79);
                  §§push(§9^§);
               }
            }
            addr24:
            return;
         }
         §§goto(addr137);
      }
      
      protected static function §2!@§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.type != §4-§.§4!m§)
            {
               §4!i§.§^!P§();
               if(!(_loc3_ && §8!v§))
               {
                  if(!_loc2_)
                  {
                     addr53:
                     §4!i§.§>t§(§;0§.§-!W§);
                     addr57:
                  }
                  else
                  {
                     addr47:
                  }
                  return;
               }
               §§goto(addr57);
            }
            §§goto(addr53);
         }
         §§goto(addr47);
      }
      
      private static function §94§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc2_)
         {
            §§pop().§§slot[1] = param1;
            if(!(_loc5_ && §8!v§))
            {
               addr38:
               var parsingFailed:Boolean = false;
            }
            try
            {
               §+7§ = JSON.parse(§9^§.data);
               if(!(_loc5_ && _loc2_))
               {
                  addr82:
                  §§push(parsingFailed);
                  if(!(_loc5_ && param1))
                  {
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                           }
                           addr145:
                           if(§§pop())
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr153:
                                 §4!i§.§[!g§();
                              }
                           }
                           else
                           {
                              §4!i§.§^!P§();
                              loop2:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    addr155:
                                    while(true)
                                    {
                                       §9^§ = null;
                                       if(!_loc5_)
                                       {
                                          return;
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr155:
                                    addr126:
                                 }
                                 else
                                 {
                                    §§goto(addr155);
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr145);
                     }
                     §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr145);
                        §§push(§+7§.success == true);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr145);
               }
               §§goto(addr153);
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               if(_loc4_)
               {
                  parsingFailed = true;
               }
               §§goto(addr82);
            }
            §§goto(addr155);
         }
         §§goto(addr38);
      }
      
      private function §@!@§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
            do
            {
               close();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
   }
}
