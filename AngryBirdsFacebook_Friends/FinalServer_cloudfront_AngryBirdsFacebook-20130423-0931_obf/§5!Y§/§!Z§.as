package §5!Y§
{
   import §,l§.§#!,§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §9@§.§@q§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §!Z§ extends Popup
   {
      
      private static var §=d§:Boolean;
      
      private static var §2"A§:§3d§;
      
      private static var §?!&§:Object;
       
      
      public function §!Z§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§ "<§.§%I§.Views.PopupView_Valentine[0],param1);
         }
         do
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§6">§);
         }
         while(!_loc3_);
         
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!§=d§)
            {
               loop0:
               while(true)
               {
                  §=d§ = true;
                  loop1:
                  while(true)
                  {
                     §2"A§ = new §3d§();
                     loop2:
                     while(true)
                     {
                        §§push(§2"A§);
                        loop3:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,§'"1§);
                           loop4:
                           while(!_loc2_)
                           {
                              §§push(§2"A§);
                              while(true)
                              {
                                 §§pop().addEventListener(IOErrorEvent.IO_ERROR,§5"T§);
                                 addr149:
                                 while(true)
                                 {
                                    §§push(§2"A§);
                                    continue loop3;
                                 }
                                 addr69:
                                 if(!_loc2_)
                                 {
                                    §§pop().load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/claimvalentinebundle"));
                                    while(true)
                                    {
                                       §@q§.§ "5§();
                                       if(!(_loc1_ || §!Z§))
                                       {
                                          continue;
                                       }
                                       if(_loc1_ || §!Z§)
                                       {
                                          continue loop2;
                                       }
                                       addr118:
                                       loop10:
                                       while(!_loc2_)
                                       {
                                          if(_loc2_ && _loc1_)
                                          {
                                             continue loop4;
                                          }
                                          addr104:
                                          §§push(§2"A§);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr62:
                                             if(_loc2_ && _loc1_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr69);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().addEventListener(§9G§.§33§,§5"T§);
                                                continue loop10;
                                                §§goto(addr104);
                                             }
                                             addr91:
                                          }
                                       }
                                       while(_loc1_ || §!Z§)
                                       {
                                          if(_loc2_ && §!Z§)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr91);
                                          §§push(§2"A§);
                                       }
                                       §§goto(addr149);
                                    }
                                    addr24:
                                    return;
                                    addr52:
                                    addr88:
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr88);
      }
      
      protected static function §5"T§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §!Z§)
         {
            if(param1.type != §9G§.§33§)
            {
               §9"6§.§#!o§();
               if(_loc3_)
               {
                  addr72:
               }
               return;
            }
            if(_loc2_ || _loc3_)
            {
               §9"6§.§>_§(§]!I§.§`'§);
            }
         }
         §§goto(addr72);
      }
      
      private static function §'"1§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(!_loc4_)
            {
               addr29:
               var parsingFailed:Boolean = false;
            }
            try
            {
               §?!&§ = JSON.parse(§2"A§.data);
               if(_loc5_)
               {
                  addr68:
                  §§push(parsingFailed);
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              addr79:
                              §§pop();
                              if(_loc5_ || param1)
                              {
                                 addr142:
                                 if(§?!&§.success != true)
                                 {
                                    §9"6§.§#!o§();
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             §2"A§ = null;
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(_loc5_ || _loc3_)
                                             {
                                                return;
                                             }
                                             loop2:
                                             while(_loc4_ && _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §#!,§.§&"5§.§?v§(§?!&§.items);
                                                   continue loop2;
                                                }
                                             }
                                             addr137:
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr145);
                                    }
                                 }
                                 while(true)
                                 {
                                    §9"6§.§!!F§();
                                 }
                              }
                              §§goto(addr145);
                           }
                        }
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr79);
               }
               §§goto(addr137);
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               if(_loc5_)
               {
                  parsingFailed = true;
               }
            }
            §§goto(addr68);
         }
         §§goto(addr29);
      }
      
      private function §6">§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
            do
            {
               close();
            }
            while(!_loc2_);
            
         }
      }
   }
}
