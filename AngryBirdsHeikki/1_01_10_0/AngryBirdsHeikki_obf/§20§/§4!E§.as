package §20§
{
   import §'!N§.§[!%§;
   import §'!O§.§#!_§;
   import §3Q§.§+!]§;
   import §5!1§.§"!X§;
   import §8P§.§1A§;
   import §9I§.§1F§;
   import §9I§.§>!=§;
   import §<!!§.§#!`§;
   import §<u§.§]!Q§;
   import §=! §.§'!4§;
   import §@R§.set;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §4!E§ extends Popup implements §>!=§
   {
      
      private static var §&%§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §4!E§)
         {
            §&%§ = §"3§;
         }
      }
      
      private var §!!f§:StatePopupManager;
      
      private var §#R§:§#!_§;
      
      public function §4!E§(param1:§]!Q§, param2:StatePopupManager, param3:§#!_§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(set.§=!^§(§&%§),param1);
            while(true)
            {
               §>K§ = param1;
               loop1:
               while(true)
               {
                  this.§!!f§ = param2;
                  while(true)
                  {
                     this.§#R§ = param3;
                     while(!(_loc4_ && param3))
                     {
                        continue loop1;
                        if(_loc5_ || param1)
                        {
                           return;
                           addr56:
                        }
                     }
                  }
               }
               loop5:
               while(!(_loc4_ && param2))
               {
                  while(true)
                  {
                     new §'!4§((param1.getItemByName("TextField_UserNameFieldForgotPassword") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
                     if(!_loc5_)
                     {
                        continue loop5;
                     }
                     if(!_loc4_)
                     {
                        §§goto(addr49);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr56);
               }
            }
         }
         §§goto(addr86);
      }
      
      private function onUiInteraction(param1:§+!]§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("SEND_PASSWORD" !== _loc4_)
            {
               if("CANCEL" === _loc4_)
               {
                  §§goto(addr73);
               }
               else
               {
                  §§push(2);
               }
               addr96:
               switch(§§pop())
               {
                  case 0:
                     this.§]!W§();
                     if(!(_loc5_ && param3))
                     {
                        break;
                     }
                     break;
                  case 1:
                     this.preClose();
                     if(!_loc5_)
                     {
                        break;
                     }
               }
               return;
            }
            if(_loc6_ || this)
            {
               addr61:
               §§push(0);
               if(_loc5_ && param2)
               {
                  addr91:
               }
            }
            else
            {
               addr73:
               §§push(1);
               if(_loc6_ || param1)
               {
                  §§goto(addr91);
               }
            }
            §§goto(addr96);
            §§goto(addr73);
         }
         §§goto(addr61);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            (§>K§.getItemByName("TextField_UserNameFieldForgotPassword") as §[!%§).§^!1§.removeEventListener(MouseEvent.CLICK,this.§5!2§);
            while(true)
            {
               super.close();
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            this.deActivate();
            if(!_loc2_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (this.§#R§ as §#!_§).§1!D§.hide();
            loop0:
            while(true)
            {
               if(param1)
               {
                  while(true)
                  {
                     mClip.scaleX = 0;
                     addr142:
                     loop10:
                     while(true)
                     {
                        mClip.scaleY = 0;
                        addr125:
                        loop5:
                        while(§@J§ != null)
                        {
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop10;
                              }
                              §@J§.stop();
                              while(true)
                              {
                                 break loop5;
                              }
                           }
                        }
                        loop8:
                        while(true)
                        {
                           §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
                              "scaleX":1,
                              "scaleY":1
                           },{
                              "scaleX":0,
                              "scaleY":0
                           },0.25,§"!X§.§<!e§);
                           addr111:
                           loop4:
                           while(true)
                           {
                              §@J§.play();
                              addr85:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop4;
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr120);
                              }
                              continue loop8;
                           }
                           addr89:
                        }
                     }
                     addr57:
                     if(_loc3_ || param1)
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  super.open(param1);
                  addr43:
                  while(!(_loc2_ && this))
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr57);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr85);
                  §§goto(addr89);
               }
               addr38:
               return;
            }
         }
         §§goto(addr142);
      }
      
      private function §5!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1.target.parent == §>K§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
            {
               do
               {
                  §>K§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
                  do
                  {
                     (this.§#R§ as §#!_§).§1!D§.hide();
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(!_loc2_);
               
               addr73:
            }
            return;
         }
         §§goto(addr73);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (this.§#R§ as §#!_§).§1!D§.hide();
            loop0:
            while(true)
            {
               super.preClose(param1);
               loop1:
               while(param1)
               {
                  loop2:
                  for(; _loc2_ || _loc2_; while(true)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        continue;
                     }
                     continue loop2;
                  })
                  {
                     while(true)
                     {
                        if(§@J§ != null)
                        {
                           if(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §@J§.stop();
                           }
                           while(true)
                           {
                              addr33:
                              if(!(_loc3_ && _loc2_))
                              {
                                 break loop1;
                              }
                           }
                           addr95:
                        }
                        while(true)
                        {
                           §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
                              "scaleX":0,
                              "scaleY":0
                           },null,0.25,§"!X§.§@4§);
                           continue loop2;
                           §§goto(addr95);
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr86);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§!!f§.removeEventListener(§+!]§.§0!S§,this.onUiInteraction);
            do
            {
               super.deActivate();
            }
            while(_loc1_);
            
         }
      }
      
      private function §]!W§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:String = §>K§.getText("TextField_UserNameFieldForgotPassword");
         var _loc2_:String = "mail";
         if(_loc9_)
         {
            if(_loc1_.length == 0)
            {
               if(!(_loc10_ && _loc1_))
               {
                  addr36:
                  this.§^<§(§1F§.INVALID_EMAIL);
                  if(_loc9_ || this)
                  {
                     return;
                  }
               }
            }
            var _loc3_:RegExp = /^[a-z0-9_.-]+@[a-z0-9-]+[.][a-z0-9-.]+$/;
            if(_loc9_)
            {
               if(!_loc3_.test(_loc1_))
               {
                  if(!(_loc10_ && this))
                  {
                     addr76:
                     this.§^<§(§1F§.INVALID_EMAIL);
                     if(_loc10_ && _loc1_)
                     {
                        §§goto(addr88);
                     }
                  }
                  return;
               }
               addr88:
               var _loc4_:URLLoader = new URLLoader();
               var _loc5_:URLRequest;
               (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
               if(_loc9_)
               {
                  _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
               }
               var _loc6_:Object;
               (_loc6_ = {}).id = _loc1_;
               var _loc7_:Object = {
                  "type":_loc2_,
                  "player":_loc6_
               };
               var _loc8_:§#!`§ = new §#!`§(_loc7_,§,L§.§2;§ + _loc2_,this,§#!`§.§`!1§);
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr36);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.preClose();
         }
         do
         {
            this.§^<§(§1F§.FORGOT_PASSWORD_EMAIL_SENT);
         }
         while(!_loc2_);
         
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
      }
      
      private function §^<§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §>K§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         }
         do
         {
            (this.§#R§ as §#!_§).§1!D§.show(param1);
         }
         while(!(_loc3_ || _loc3_));
         
      }
   }
}
