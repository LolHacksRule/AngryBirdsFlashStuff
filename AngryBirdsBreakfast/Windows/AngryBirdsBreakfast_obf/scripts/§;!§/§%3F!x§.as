package §;!§
{
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §<!F§.ColorFadeLayerEvent;
   import §@L§.§3!&§;
   import §@L§.§?!'§;
   import §^!3§.§9R§;
   import com.angrybirds.§&!"§;
   import flash.desktop.NativeApplication;
   
   public class §?!x§ extends §&4§
   {
       
      
      private var §<Y§:§?!'§;
      
      protected var §'x§:§,!e§ = null;
      
      private var §;!u§:Boolean;
      
      public function §?!x§(param1:§5!Y§, param2:§6h§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'x§ = new §,!e§(0,0,0,1);
            loop0:
            while(true)
            {
               §?P§ = new §2W§(this);
               loop1:
               while(true)
               {
                  §?P§.init(this.§`!K§());
                  while(!_loc2_)
                  {
                     this.§<Y§ = §&!"§.§1!D§;
                     loop4:
                     while(!(_loc2_ && _loc1_))
                     {
                        continue loop1;
                        §?P§.movieClip.cacheAsBitmap = true;
                        if(_loc1_ || _loc2_)
                        {
                           addr35:
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 §#!7§ = new §9R§(this.§<Y§,§&" §);
                                 continue loop4;
                                 §§goto(addr35);
                              }
                              addr76:
                           }
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr76);
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §#"0§.§+#§.Views.View_Credits[0];
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function activateLevelEngine() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§<Y§);
            while(true)
            {
               §§pop().§"!Q§(true);
               addr68:
               §§push(this.§<Y§);
               if(!_loc1_)
               {
                  continue;
               }
               §§pop().camera.§ 4§();
               while(!(_loc2_ && this))
               {
                  this.§`!N§();
                  do
                  {
                     §4!=§.§"!<§();
                  }
                  while(_loc2_);
                  
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               loop3:
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr68);
                  }
                  addr82:
                  while(true)
                  {
                     §&!"§.setController(§#!7§);
                     continue loop3;
                  }
               }
               addr52:
               while(true)
               {
                  §&!"§.resume();
                  §§goto(addr82);
               }
               addr87:
            }
         }
         §§goto(addr87);
      }
      
      private function §`!N§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§3!&§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§<Y§.slingshot.§06§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.§6s§ = false;
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            if("CREDITS_CLOSE_BUTTON" === _loc4_)
            {
               addr74:
               §§push(0);
               if(_loc6_ && this)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.§;!u§ = false;
                  loop0:
                  while(true)
                  {
                     addr32:
                     while(true)
                     {
                        this.§6@§();
                        continue loop0;
                     }
                  }
            }
            return;
         }
         §§goto(addr74);
      }
      
      protected function §6@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§'x§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§;!u§);
                           if(!(_loc1_ && _loc1_))
                           {
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                              if(_loc1_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§'x§);
                                    loop7:
                                    while(true)
                                    {
                                       §§pop().mouseEnabled = true;
                                       while(true)
                                       {
                                          this.§;!u§ = true;
                                          loop9:
                                          for(; !(_loc1_ && _loc1_); while(!(_loc1_ && this))
                                          {
                                             §§goto(addr73);
                                          })
                                          {
                                             §§push(this.§'x§);
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(0);
                                                loop11:
                                                while(true)
                                                {
                                                   §§pop().§7z§(§§pop());
                                                   loop12:
                                                   while(!_loc1_)
                                                   {
                                                      if(_loc2_ || this)
                                                      {
                                                         §§push(this.§'x§);
                                                         while(!_loc1_)
                                                         {
                                                            §§push(1);
                                                            if(!_loc1_)
                                                            {
                                                               §§pop().§=v§(§§pop(),0.25);
                                                               continue loop9;
                                                            }
                                                            §§push(this.§'x§);
                                                            continue loop11;
                                                            if(!_loc1_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  §§pop().addEventListener(ColorFadeLayerEvent.§9e§,this.§#!G§);
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!(_loc1_ && _loc2_))
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             return;
                                          }
                                       }
                                    }
                                 }
                                 addr120:
                              }
                              §§goto(addr20);
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr118);
               }
            }
         }
         §§goto(addr120);
      }
      
      protected function §#!G§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§'x§);
            loop0:
            while(true)
            {
               §§pop().mouseEnabled = false;
               while(true)
               {
                  §§push(this.§'x§);
                  if(_loc3_ || param1)
                  {
                     §§pop().removeEventListener(ColorFadeLayerEvent.§9e§,this.§#!G§);
                     while(true)
                     {
                        if((§6!!§.singleton as §4!=§).§"!L§())
                        {
                           if(!_loc2_)
                           {
                              §<f§(§`B§.§-!q§);
                              break;
                           }
                           break;
                        }
                        §<f§(§^!N§.§-!q§);
                        if(_loc2_ && _loc2_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           §§goto(addr25);
                        }
                     }
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr76);
            }
         }
         addr76:
         addr25:
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§'x§.mouseEnabled = true;
               loop1:
               while(true)
               {
                  this.§;!u§ = false;
                  addr86:
                  while(true)
                  {
                     §?P§.container.mClip.addChild(this.§'x§);
                     addr57:
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function §<s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§'x§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr140:
                        do
                        {
                           §§push(this.§;!u§);
                           if(!_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           if(!(_loc1_ || _loc2_))
                           {
                              continue loop2;
                           }
                        }
                        while(!_loc2_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc1_)
                     {
                        this.§;!u§ = true;
                     }
                     while(true)
                     {
                        §§push(this.§'x§);
                        continue loop0;
                        loop8:
                        while(_loc1_ || _loc2_)
                        {
                           if(_loc1_)
                           {
                              §§push(this.§'x§);
                              loop9:
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc2_)
                                 {
                                    §§pop().§=v§(§§pop(),0.25);
                                    do
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          continue loop9;
                                       }
                                       continue loop8;
                                       §§pop().addEventListener(ColorFadeLayerEvent.§9e§,this.§!r§);
                                    }
                                    while(!(_loc1_ || _loc2_));
                                    
                                    addr52:
                                    break loop4;
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§pop().§7z§(§§pop());
                                 continue loop8;
                              }
                              addr90:
                           }
                           else
                           {
                              §§goto(addr140);
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §!r§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§'x§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               while(true)
               {
                  §§push(this.§'x§);
                  if(_loc3_ && param1)
                  {
                     break;
                  }
                  §§pop().removeEventListener(ColorFadeLayerEvent.§9e§,this.§!r§);
                  if(_loc2_)
                  {
                     return;
                     addr60:
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§'x§.parent == §?P§.container.mClip)
            {
               if(!_loc1_)
               {
                  addr69:
                  §?P§.container.mClip.removeChild(this.§'x§);
               }
               while(true)
               {
                  §§goto(addr39);
               }
            }
            addr39:
            while(true)
            {
               super.deActivate();
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr69);
      }
      
      override protected function setVersion() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = NativeApplication.nativeApplication.applicationDescriptor;
         var _loc2_:Namespace = _loc1_.namespace();
         if(!(_loc3_ && _loc2_))
         {
            §?P§.setText(_loc1_._loc2_::versionNumber,"TextField_Version_Number");
         }
      }
   }
}
