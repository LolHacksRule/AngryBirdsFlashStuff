package §_-7§
{
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-a5§;
   import §_-Hb§.§_-ur§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-eS§.§_-OY§;
   import §_-gU§.Popup;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §_-t6§ extends Popup
   {
      
      private static var §_-oM§:Boolean;
      
      private static var §_-01p§:§_-ur§;
      
      private static var §_-0Cx§:Object;
       
      
      public function §_-t6§(param1:§_-5q§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(§_-vB§.§_-ky§.Views.PopupView_Valentine[0],param1);
         }
         do
         {
            mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§_-KN§);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§_-oM§)
            {
               loop0:
               while(true)
               {
                  §_-oM§ = true;
                  addr155:
                  while(true)
                  {
                     §_-01p§ = new §_-ur§();
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      protected static function §_-cs§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §_-t6§))
         {
            if(param1.type != §_-a5§.§_-Gy§)
            {
               §_-EJ§.§_-8H§();
               if(_loc2_ || param1)
               {
                  if(_loc3_ && param1)
                  {
                     addr73:
                     §_-EJ§.§_-QC§(§_-42§.§_-06o§);
                     addr77:
                  }
                  else
                  {
                     addr67:
                  }
                  return;
               }
               §§goto(addr77);
            }
            §§goto(addr73);
         }
         §§goto(addr67);
      }
      
      private static function §_-0V§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_ || param1)
         {
            §§pop().§§slot[1] = param1;
            if(_loc5_)
            {
               addr34:
               var parsingFailed:Boolean = false;
            }
            try
            {
               §_-0Cx§ = JSON.parse(§_-01p§.data);
               if(_loc5_)
               {
                  addr78:
                  §§push(parsingFailed);
                  if(!(_loc4_ && param1))
                  {
                     §§push(!§§pop());
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              addr94:
                              §§pop();
                              if(!_loc4_)
                              {
                                 addr141:
                                 if(§_-0Cx§.success == true)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       addr149:
                                       §_-EJ§.§_-74§();
                                    }
                                    while(true)
                                    {
                                       §§goto(addr102);
                                    }
                                    addr151:
                                 }
                                 else
                                 {
                                    §_-EJ§.§_-8H§();
                                 }
                                 while(true)
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§goto(addr136);
                                    }
                                    else
                                    {
                                       §§goto(addr151);
                                    }
                                    §§goto(addr123);
                                 }
                              }
                              §§goto(addr149);
                           }
                        }
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr94);
               }
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               if(_loc5_ || param1)
               {
                  parsingFailed = true;
               }
               §§goto(addr78);
            }
            addr123:
            while(true)
            {
               §_-01p§ = null;
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               continue loop0;
               addr136:
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §_-KN§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
         do
         {
            close();
         }
         while(_loc2_ && _loc2_);
         
      }
   }
}
