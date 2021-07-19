package §]![§
{
   import §#"&§.§4!W§;
   import §-!;§.§>!B§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §7!A§.§#"'§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import §^Z§.§8S§;
   import com.angrybirds.§&!"§;
   import flash.display.MovieClip;
   
   public class §="+§ extends §#"'§
   {
      
      public static const §9C§:Number = -250;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9C§ = -250;
         }
      }
      
      protected var §`!Y§:§0]§ = null;
      
      protected var §[!3§:§"!a§;
      
      protected var §[i§:MovieClip;
      
      protected var §0!'§:§;§;
      
      protected var §"!>§:§;§;
      
      protected var §&0§:§;§;
      
      public function §="+§(param1:§"!a§, param2:§5!Y§, param3:§4!W§, param4:§6h§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!O§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§[!3§ = §"!a§(§!O§.getItemByName("Container_PauseMenu"));
               while(true)
               {
                  this.§[!3§.x = §9C§;
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     while(true)
                     {
                        this.§[i§ = §!O§.getItemByName("MovieClip_Bg").mClip;
                        while(true)
                        {
                           this.§0!'§ = §;§(this.§[!3§.getItemByName("Button_Resume"));
                           while(_loc2_ || _loc2_)
                           {
                              continue loop0;
                              while(_loc2_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    this.§&0§ = §;§(this.§[!3§.getItemByName("Button_Replay"));
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       return;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      override protected function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§&" §.currentLevelNumericName != null)
            {
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.disable(false);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8<§(param1);
            do
            {
               super.disable(param1);
            }
            while(_loc3_);
            
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.enable(param1);
            while(true)
            {
               this.refresh();
               loop1:
               while(_loc2_ || _loc3_)
               {
                  while(true)
                  {
                     this.§7L§(param1);
                     while(_loc2_)
                     {
                        §&!"§.§1!D§.background.§#]§();
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §finally§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§`!Y§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr69:
                     this.§`!Y§.stop();
                  }
                  do
                  {
                     this.§`!Y§ = null;
                  }
                  while(!_loc1_);
                  
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      protected function §7L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §!O§.setVisibility(true);
            loop0:
            while(true)
            {
               this.§finally§();
               loop1:
               while(true)
               {
                  §&!"§.pause();
                  loop2:
                  while(true)
                  {
                     this.§3!M§(false);
                     loop3:
                     while(true)
                     {
                        if(!param1)
                        {
                           this.§[!3§.x = 0;
                           loop4:
                           while(true)
                           {
                              if(_loc3_ || param1)
                              {
                                 this.§[i§.alpha = 1;
                                 do
                                 {
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop4;
                                 }
                                 while(this.§!!M§(), _loc2_ && _loc3_);
                                 
                                 addr39:
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    while(_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(this.§`!Y§);
                                       while(true)
                                       {
                                          §§pop().onComplete = this.§!!M§;
                                          addr94:
                                          §§push(this.§`!Y§);
                                          if(_loc3_)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       this.§`!Y§ = §'^§.§2Z§.§7!%§(§'^§.§2Z§.§!!f§(this.§[!3§,{"x":0},null,0.25),§'^§.§2Z§.§!!f§(this.§[i§,{"alpha":1},null,0.25));
                                    }
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       while(_loc3_)
                                       {
                                          §§goto(addr100);
                                       }
                                       continue loop3;
                                       addr98:
                                    }
                                    §§goto(addr94);
                                    §§goto(addr89);
                                 }
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return;
                        }
                        §§goto(addr98);
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      protected function §!!M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§finally§();
            do
            {
               §!O§.addEventListener(§>!B§.§7"&§,this.onUIInteraction);
               do
               {
                  this.§3!M§(true);
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      protected function §3!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§0!'§.setEnabled(param1);
         }
         do
         {
            this.§&0§.setEnabled(param1);
            do
            {
               this.§"!>§.setEnabled(param1);
            }
            while(_loc3_ && this);
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      protected function §5O§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!'§.setComponentVisualState(param1);
            while(true)
            {
               this.§&0§.setComponentVisualState(param1);
               §§goto(addr64);
            }
         }
         addr64:
         while(true)
         {
            this.§"!>§.setComponentVisualState(param1);
            if(_loc3_ || param1)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §8<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §!O§.removeEventListener(§>!B§.§7"&§,this.onUIInteraction);
            loop0:
            while(true)
            {
               this.§finally§();
               loop1:
               while(true)
               {
                  if(!param1)
                  {
                     this.§[!3§.x = §9C§;
                     loop2:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§[i§.alpha = 0;
                           while(!(_loc3_ && _loc2_))
                           {
                              if(_loc2_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 addr129:
                                 while(true)
                                 {
                                    §§push(this.§`!Y§);
                                    addr88:
                                    while(true)
                                    {
                                       §§pop().onComplete = this.§8u§;
                                       break loop2;
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr84);
                              }
                              this.§8u§();
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr19);
                           }
                           continue loop2;
                        }
                        return;
                     }
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        §§goto(addr88);
                     }
                     continue;
                  }
                  while(true)
                  {
                     this.§`!Y§ = §'^§.§2Z§.§7!%§(§'^§.§2Z§.§!!f§(this.§[!3§,{"x":§9C§},null,0.25),§'^§.§2Z§.§!!f§(this.§[i§,{"alpha":0},null,0.25));
                     §§goto(addr129);
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function §8u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!O§.setVisibility(false);
            while(true)
            {
               this.§finally§();
               while(true)
               {
                  dispatchEvent(new §8S§(§8S§.§[$§));
                  §§goto(addr66);
               }
            }
         }
         addr66:
         while(true)
         {
            §&!"§.resume();
            if(!_loc1_)
            {
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      protected function onUIInteraction(param1:§>!B§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(§2!,§)
            {
               if(!_loc3_)
               {
                  §§goto(addr90);
               }
            }
            var _loc2_:* = param1.§3!C§;
            if(_loc4_ || _loc3_)
            {
               if("RESTART_LEVEL" === _loc2_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc4_ || _loc2_)
                     {
                     }
                  }
                  else
                  {
                     addr134:
                     §§push(1);
                     if(!_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  if("RESUME_LEVEL" === _loc2_)
                  {
                     if(_loc4_ || param1)
                     {
                        §§goto(addr134);
                     }
                  }
                  else if("MENU" !== _loc2_)
                  {
                     addr159:
                     switch(§§pop())
                     {
                        case 0:
                           dispatchEvent(new §8S§(§8S§.§1!K§,§0!S§()));
                           if(_loc4_ || param1)
                           {
                              addr45:
                              break;
                           }
                           break;
                        case 1:
                           dispatchEvent(new §8S§(§8S§.RESUME_LEVEL));
                           if(!_loc3_)
                           {
                              break;
                           }
                           break;
                        case 2:
                           dispatchEvent(new §8S§(§8S§.§1!K§,§2§()));
                           if(_loc4_ || _loc3_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr45);
                           }
                     }
                     return;
                     §§push(3);
                  }
                  §§goto(addr159);
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr159);
            }
            §§goto(addr134);
         }
         addr90:
      }
   }
}
