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
         if(_loc3_)
         {
            super(§2!z§.§ _§.Views.PopupView_Valentine[0],param1);
            do
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@!@§);
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public static function sendRequest() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!§]6§)
            {
               while(true)
               {
                  §]6§ = true;
                  while(true)
                  {
                     §9^§ = new §45§();
                     while(true)
                     {
                        §§push(§9^§);
                        loop3:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,§94§);
                           addr149:
                           while(true)
                           {
                              §§push(§9^§);
                              continue loop3;
                           }
                        }
                        if(!(_loc2_ || §8!v§))
                        {
                           continue;
                        }
                        §§goto(addr142);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr142);
      }
      
      protected static function §2!@§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1.type != §4-§.§4!m§)
            {
               §4!i§.§^!P§();
               if(_loc2_)
               {
                  addr73:
               }
               return;
            }
            if(_loc3_ || _loc2_)
            {
               §4!i§.§>t§(§;0§.§-!W§);
            }
         }
         §§goto(addr73);
      }
      
      private static function §94§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || param1)
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
               if(_loc4_ || §8!v§)
               {
                  addr87:
                  §§push(parsingFailed);
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || §8!v§)
                           {
                           }
                           addr145:
                           if(§§pop())
                           {
                              if(!(_loc5_ && param1))
                              {
                                 addr153:
                                 §4!i§.§[!g§();
                              }
                              do
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §9^§ = null;
                                    if(!(_loc5_ && §8!v§))
                                    {
                                       break;
                                    }
                                    addr140:
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              while(!_loc4_);
                              
                              return;
                              addr134:
                           }
                           §4!i§.§^!P§();
                           §§goto(addr140);
                        }
                        §§goto(addr145);
                     }
                     §§pop();
                     if(!_loc5_)
                     {
                        §§goto(addr145);
                        §§push(§+7§.success == true);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr145);
               }
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               if(!(_loc5_ && _loc3_))
               {
                  parsingFailed = true;
               }
               §§goto(addr87);
            }
            §§goto(addr134);
         }
         §§goto(addr38);
      }
      
      private function §@!@§(param1:MouseEvent) : void
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
         }
         do
         {
            close();
         }
         while(_loc2_ && _loc1_);
         
      }
   }
}
