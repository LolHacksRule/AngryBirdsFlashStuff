package §20§
{
   import §'!N§.§[!%§;
   import §'!O§.StatePlay;
   import §3Q§.§+!]§;
   import §3Y§.§4!_§;
   import §5!1§.§"!X§;
   import §8P§.§1A§;
   import §9I§.§+J§;
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
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §]!Z§ extends Popup implements §>!=§
   {
      
      private static var §&%§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §]!Z§))
         {
            §&%§ = §6!&§;
         }
      }
      
      private var §!!f§:StatePopupManager;
      
      private var §#R§:StatePlay;
      
      private var §@!;§:Boolean = false;
      
      private var §9V§:String = "";
      
      public function §]!Z§(param1:§]!Q§, param2:StatePopupManager, param3:StatePlay)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(set.§=!^§(§&%§),param1);
            loop0:
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
                     while(_loc5_ || param2)
                     {
                        this.§!!f§.addEventListener(§+!]§.§0!S§,this.onUiInteraction);
                        loop4:
                        while(_loc5_)
                        {
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 while(true)
                                 {
                                    new §'!4§((param1.getItemByName("TextField_HeikkiCodeEnter") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 return;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private function onUiInteraction(param1:§+!]§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.uiInteractionHandler(param1.§78§,param1.§<Y§,param1.§4H§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!(_loc7_ && this))
            {
               if("VISIT" === _loc5_)
               {
                  if(_loc6_ || param3)
                  {
                     §§push(0);
                     if(!(_loc7_ && this))
                     {
                        addr151:
                        switch(§§pop())
                        {
                           case 0:
                              navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
                              break loop0;
                              addr84:
                           case 1:
                              this.preClose();
                              break;
                           case 2:
                              §§push(§>K§.getText("TextField_HeikkiCodeEnter"));
                              if(!_loc7_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_ || this)
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       this.§[!d§(_loc4_);
                                       if(_loc6_ || param3)
                                       {
                                          if(_loc6_)
                                          {
                                             if(false)
                                             {
                                                addr35:
                                                break loop0;
                                             }
                                             break loop0;
                                          }
                                          break;
                                       }
                                       break loop0;
                                    }
                                    §§goto(addr84);
                                 }
                                 break loop0;
                              }
                              continue;
                        }
                        §§goto(addr35);
                     }
                  }
                  else
                  {
                     addr126:
                     §§push(1);
                     if(!_loc6_)
                     {
                        addr146:
                     }
                  }
                  §§goto(addr151);
               }
               else
               {
                  if("LATER" === _loc5_)
                  {
                     if(!(_loc7_ && param3))
                     {
                        §§goto(addr126);
                     }
                     else
                     {
                        addr133:
                        §§push(2);
                        if(_loc6_)
                        {
                           §§goto(addr146);
                        }
                     }
                  }
                  else if("SUBMIT" === _loc5_)
                  {
                     §§goto(addr133);
                  }
                  else
                  {
                     §§push(3);
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr133);
         }
      }
      
      private function §[!d§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§#!`§ = null;
         if(!(_loc5_ && param1))
         {
            §§push(this.§@!;§);
            loop0:
            while(true)
            {
               §§push(false);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc5_)
                  {
                     §§push(§§pop());
                     loop9:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop1:
                           while(true)
                           {
                              §§pop();
                              loop2:
                              while(true)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() == "Incorrect code");
                                       if(!_loc5_)
                                       {
                                          if(_loc5_ && this)
                                          {
                                             break;
                                          }
                                          §§push(!§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc6_ || this)
                                             {
                                                if(§§pop())
                                                {
                                                }
                                                loop6:
                                                while(§§pop())
                                                {
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      _loc2_ = "code";
                                                      if(true)
                                                      {
                                                         _loc3_ = {
                                                            "playerId":§4!_§.§,t§.§5!D§,
                                                            "code":param1
                                                         };
                                                         _loc4_ = new §#!`§(_loc3_,§,L§.§2;§ + _loc2_,this,§#!`§.§`!1§);
                                                      }
                                                      continue loop3;
                                                      if(_loc6_)
                                                      {
                                                         this.§@!;§ = true;
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   loop7:
                                                   for(; !_loc5_; while(true)
                                                   {
                                                      §§pop();
                                                      continue loop7;
                                                   })
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(§§pop() == "Code already used");
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(!§§pop());
                                                            }
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                                return;
                                                addr59:
                                             }
                                             continue loop9;
                                          }
                                       }
                                       §§goto(addr105);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr124:
                        }
                        §§goto(addr59);
                     }
                     addr123:
                  }
                  §§goto(addr124);
               }
               §§goto(addr123);
            }
         }
         §§goto(addr108);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §>K§.setText("","TextField_HeikkiCodeEnter");
            while(true)
            {
               (§>K§.getItemByName("TextField_HeikkiCodeEnter") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
               §§goto(addr80);
            }
         }
         addr80:
         while(true)
         {
            super.close();
            do
            {
               this.deActivate();
            }
            while(!_loc2_);
            
            if(_loc2_ || this)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               while(true)
               {
                  mClip.scaleX = 0;
                  addr113:
                  while(true)
                  {
                     mClip.scaleY = 0;
                     addr107:
                     while(true)
                     {
                        if(§@J§ != null)
                        {
                           while(true)
                           {
                              §@J§.stop();
                              addr92:
                              while(true)
                              {
                              }
                           }
                           addr90:
                        }
                        while(true)
                        {
                           §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
                              "scaleX":1,
                              "scaleY":1
                           },{
                              "scaleX":0,
                              "scaleY":0
                           },0.25,§"!X§.§<!e§);
                           addr83:
                           loop6:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    §@J§.play();
                                    addr59:
                                    addr61:
                                    while(_loc3_)
                                    {
                                       break loop6;
                                    }
                                 }
                                 addr85:
                              }
                              else
                              {
                                 §§goto(addr90);
                              }
                           }
                           §§goto(addr92);
                        }
                     }
                  }
               }
               addr110:
            }
            loop7:
            while(true)
            {
               super.open(param1);
               while(!_loc3_)
               {
                  if(_loc2_)
                  {
                     §>K§.setText("","TextField_HeikkiCodeEnter");
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              break loop7;
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr83);
               }
               §§goto(addr59);
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr85);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.preClose(param1);
            loop0:
            while(param1)
            {
               if(_loc2_)
               {
                  if(§@J§ != null)
                  {
                     if(_loc2_)
                     {
                        addr81:
                        §@J§.stop();
                     }
                     while(true)
                     {
                     }
                     addr83:
                  }
                  loop2:
                  while(true)
                  {
                     §@J§ = §"!X§.§ s§.§%!;§(this.mClip,{
                        "scaleX":0,
                        "scaleY":0
                     },null,0.25,§"!X§.§@4§);
                     while(!_loc3_)
                     {
                        §@J§.play();
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  addr30:
                  break;
               }
               §§goto(addr81);
            }
            return;
         }
         §§goto(addr30);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§!!f§.removeEventListener(§+!]§.§0!S§,this.onUiInteraction);
            loop0:
            for(; §,L§.§8!F§.§"!1§; if(_loc1_ && _loc2_)
            {
               continue;
            },this.§#R§.§[!-§ = true)
            {
               if(_loc2_)
               {
                  continue;
               }
               addr73:
               while(true)
               {
                  break loop0;
               }
            }
            while(true)
            {
               super.deActivate();
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         if(_loc5_ || this)
         {
            this.§@!;§ = false;
            loop0:
            while(true)
            {
               §§push(Boolean(_loc2_));
               if(_loc5_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr170:
                           while(true)
                           {
                              §§push(_loc2_.powerUp == true);
                              addr136:
                              while(_loc4_)
                              {
                                 continue loop8;
                              }
                           }
                        }
                        addr169:
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(Boolean(_loc2_));
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    loop4:
                                    for(; !_loc4_; continue loop7)
                                    {
                                       if(_loc4_ && param1)
                                       {
                                          addr140:
                                          §,L§.§8!F§.§"!1§ = true;
                                          break;
                                       }
                                       §§push(_loc2_.error == "CODE_USED");
                                       if(!_loc5_)
                                       {
                                          continue loop7;
                                       }
                                       addr77:
                                       if(!_loc4_)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                _loc3_ = "Incorrect code";
                                                this.§`!5§(_loc3_);
                                                addr57:
                                                if(_loc4_ && _loc2_)
                                                {
                                                   §§goto(addr57);
                                                }
                                                break;
                                             }
                                             if(!(_loc5_ || param1))
                                             {
                                                continue loop4;
                                             }
                                             if(!_loc4_)
                                             {
                                                _loc3_ = "Code already used";
                                                this.§`!5§(_loc3_);
                                                addr102:
                                                if(_loc4_ && _loc3_)
                                                {
                                                   §§goto(addr102);
                                                }
                                                break;
                                             }
                                             addr128:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   break loop3;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr77);
                                          }
                                          return;
                                          addr89:
                                       }
                                       §§goto(addr136);
                                    }
                                    if(!(_loc4_ && param1))
                                    {
                                       break loop2;
                                    }
                                    §§goto(addr170);
                                 }
                                 addr114:
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr140);
                     }
                     addr151:
                     while(true)
                     {
                        this.preClose();
                        §§goto(addr128);
                     }
                  }
               }
               §§goto(addr169);
            }
         }
         §§goto(addr151);
      }
      
      private function §`!5§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[!%§ = null;
         if(_loc4_ || _loc2_)
         {
            if(param1 != "")
            {
               if(_loc4_)
               {
                  if(§>K§)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        this.§9V§ = §>K§.getText("TextField_HeikkiCodeEnter");
                        if(_loc3_ && this)
                        {
                        }
                        addr67:
                        _loc2_ = §>K§.getItemByName("TextField_HeikkiCodeEnter") as §[!%§;
                        if(!(_loc3_ && param1))
                        {
                           §§push(Boolean(_loc2_));
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr89);
                                 }
                              }
                              §§goto(addr95);
                           }
                           addr89:
                           §§pop();
                           if(_loc4_)
                           {
                              addr95:
                              if(_loc2_.§^!1§)
                              {
                                 if(_loc4_ || this)
                                 {
                                 }
                              }
                              §§goto(addr120);
                           }
                           _loc2_.§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
                        }
                        §§goto(addr120);
                     }
                  }
                  §§goto(addr120);
               }
               §>K§.setText(param1,"TextField_HeikkiCodeEnter");
               §§goto(addr67);
            }
            addr120:
            return;
         }
         §§goto(addr67);
      }
      
      private function §-R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§>K§.getItemByName("TextField_HeikkiCodeEnter") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
            do
            {
               §>K§.setText(this.§9V§,"TextField_HeikkiCodeEnter");
            }
            while(!_loc2_);
            
         }
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!5§("Incorrect code");
         }
         do
         {
            this.§@!;§ = false;
         }
         while(_loc3_);
         
      }
   }
}
