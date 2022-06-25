package §9!Q§
{
   import §&!h§.§]V§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §4!C§.§^!g§;
   import §9#§.Popup;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §1T§ extends Popup
   {
      
      private static var §6!k§:Boolean;
      
      private static var §0!a§:§"!m§;
      
      private static var §,<§:Object;
       
      
      public function §1T§(param1:§ C§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(dynamic.§[6§.Views.PopupView_Valentine[0],param1);
         }
         do
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+B§);
         }
         while(_loc4_);
         
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§6!k§)
            {
               loop0:
               while(true)
               {
                  §6!k§ = true;
                  loop1:
                  while(true)
                  {
                     §0!a§ = new §"!m§();
                     loop2:
                     while(true)
                     {
                        §§push(§0!a§);
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,§^!J§);
                           loop4:
                           while(!_loc1_)
                           {
                              §§push(§0!a§);
                              while(true)
                              {
                                 §§pop().addEventListener(IOErrorEvent.IO_ERROR,§"!v§);
                                 addr106:
                                 while(_loc2_ || _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                           addr88:
                           loop7:
                           for(; !(_loc1_ && §1T§); if(_loc1_ && _loc2_)
                           {
                              continue;
                           },§§goto(addr59))
                           {
                              §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,§"!v§);
                              loop8:
                              do
                              {
                                 §§push(§0!a§);
                                 loop9:
                                 while(_loc2_)
                                 {
                                    §§pop().addEventListener(§^!g§.§]P§,§"!v§);
                                    while(true)
                                    {
                                       §§push(§0!a§);
                                       if(_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop9;
                                       addr59:
                                       §§pop().load(§]!X§.§#l§(AngryBirdsFP11.§6S§ + "/claimvalentinebundle"));
                                       do
                                       {
                                          §]V§.§[P§();
                                       }
                                       while(_loc1_);
                                       
                                       if(_loc2_)
                                       {
                                          continue loop8;
                                       }
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr102);
                              }
                              while(!(_loc2_ || _loc1_));
                              
                              if(_loc2_ || §1T§)
                              {
                                 if(!_loc1_)
                                 {
                                    §§goto(addr20);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr106);
                           }
                        }
                     }
                  }
               }
               addr148:
            }
            addr20:
            return;
         }
         §§goto(addr148);
      }
      
      protected static function §"!v§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.type != §^!g§.§]P§)
            {
               §7o§.§ "§();
               if(_loc2_ || _loc3_)
               {
                  addr45:
               }
               else
               {
                  addr57:
               }
               return;
            }
            if(_loc2_)
            {
               §7o§.§-Y§(§2!S§.§2u§);
            }
            §§goto(addr57);
         }
         §§goto(addr45);
      }
      
      private static function §^!J§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc4_ || param1)
            {
               addr33:
               var parsingFailed:Boolean = false;
            }
            try
            {
               §,<§ = JSON.parse(§0!a§.data);
               if(!(_loc5_ && param1))
               {
                  addr82:
                  §§push(parsingFailed);
                  if(!(_loc5_ && §1T§))
                  {
                     §§push(!§§pop());
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              addr103:
                              §§pop();
                              if(_loc4_ || _loc2_)
                              {
                                 addr157:
                                 if(§,<§.success != true)
                                 {
                                    §7o§.§ "§();
                                    while(true)
                                    {
                                       addr116:
                                       loop1:
                                       while(true)
                                       {
                                          §0!a§ = null;
                                          if(_loc5_ && param1)
                                          {
                                             break;
                                          }
                                          if(!(_loc5_ && param1))
                                          {
                                             if(!_loc5_)
                                             {
                                                return;
                                             }
                                             addr158:
                                             while(true)
                                             {
                                                §7o§.§,!h§();
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                    addr152:
                                 }
                                 §§goto(addr158);
                                 addr111:
                              }
                              §§goto(addr152);
                           }
                        }
                        §§goto(addr157);
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr111);
            }
            catch(e:Error)
            {
               if(_loc4_ || _loc2_)
               {
                  parsingFailed = true;
               }
               §§goto(addr82);
            }
            §§goto(addr116);
         }
         §§goto(addr33);
      }
      
      private function §+B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            do
            {
               close();
            }
            while(_loc1_);
            
         }
      }
   }
}
