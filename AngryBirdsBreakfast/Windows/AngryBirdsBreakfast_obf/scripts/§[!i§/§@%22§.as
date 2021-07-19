package §[!i§
{
   import §&v§.§%!I§;
   import §48§.AbstractPopup;
   import §<!F§.§,!e§;
   import §<!F§.ColorFadeLayerEvent;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §@"§ extends AbstractPopup
   {
       
      
      private const §+^§:Number = 0.25;
      
      private const §7!5§:Number = 0.7;
      
      private const §6E§:Number = 0.25;
      
      protected var §7!k§:§,!e§ = null;
      
      private var §"X§:Boolean;
      
      protected var §#f§:§0]§;
      
      private var §%!S§:Boolean = false;
      
      protected var §-!w§:Boolean;
      
      protected var §@!X§:Boolean;
      
      protected var §0!T§:Boolean = false;
      
      protected var §@!H§:§%!I§;
      
      protected var §#u§:MovieClip;
      
      public function §@"§(param1:int, param2:int, param3:XML = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2,param3);
         }
         while(this.§7!k§ == null)
         {
            if(_loc5_)
            {
               if(_loc4_)
               {
                  continue;
               }
               this.§7!k§ = new §,!e§(0,0,0,0);
            }
            break;
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.keyCode;
         if(_loc4_ || _loc3_)
         {
            if(Keyboard.S !== _loc2_)
            {
               if(Keyboard.ESCAPE === _loc2_)
               {
                  §§goto(addr99);
               }
               else
               {
                  §§push(2);
               }
               addr122:
               switch(§§pop())
               {
                  case 0:
                     this.updateMuteButtonState();
                     if(_loc4_ || _loc2_)
                     {
                        break;
                     }
                     addr52:
                     break;
                  case 1:
                     if(!(§6!!§.singleton as §4!=§).§&!N§())
                     {
                        if(_loc4_ || this)
                        {
                           this.closePressed();
                           if(_loc4_ || _loc3_)
                           {
                           }
                           break;
                        }
                     }
                     §§goto(addr52);
               }
               return;
            }
            if(!(_loc3_ && this))
            {
               addr86:
               §§push(0);
               if(!(_loc4_ || _loc3_))
               {
                  addr117:
               }
            }
            else
            {
               addr99:
               §§push(1);
               if(!(_loc3_ && param1))
               {
                  §§goto(addr117);
               }
            }
            §§goto(addr122);
            §§goto(addr99);
         }
         §§goto(addr86);
      }
      
      protected function updateMuteButtonState() : void
      {
      }
      
      protected function closePressed() : void
      {
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            while(true)
            {
               this.§#u§ = §@'§.mClip;
               loop1:
               for(; _loc2_; while(!(_loc1_ && _loc2_))
               {
                  this.§#u§.scaleY = 0;
                  §§goto(addr57);
               })
               {
                  if(!this.§@!X§)
                  {
                     loop5:
                     while(true)
                     {
                        §6!c§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown,false,1);
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        addr57:
                        while(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_ || this)
                           {
                           }
                           continue loop5;
                        }
                        continue loop1;
                     }
                     return;
                     addr41:
                  }
                  while(true)
                  {
                     this.§#u§.scaleX = 0;
                     continue loop1;
                     §§goto(addr64);
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§#u§.scaleX = 1;
                     loop3:
                     while(true)
                     {
                        this.§#u§.scaleY = 1;
                        addr255:
                        loop4:
                        while(true)
                        {
                           super.setViewSize(param1,param2);
                           while(true)
                           {
                              §§push(this.§0!T§);
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(Number(§§pop()));
                                          loop9:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc4_ && this)
                                                {
                                                   break loop1;
                                                }
                                                §§push(§4!=§.§`!5§);
                                                if(!(_loc4_ && param2))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(0);
                                                   if(!_loc4_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            addr192:
                                                            while(true)
                                                            {
                                                               §§push(§4!=§.§`!E§);
                                                               addr194:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     addr221:
                                                                     addr222:
                                                                     _loc3_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop15;
                                                                        }
                                                                        addr226:
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop2;
                                                            }
                                                            addr46:
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr22);
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§#u§.x = (param1 - _loc3_) / 2;
                                                         loop13:
                                                         while(!(_loc4_ && this))
                                                         {
                                                            this.§#u§.y = param2 / 2;
                                                            while(_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§%!S§);
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     addr22:
                                                                     return;
                                                                  }
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§#f§);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop21:
                                                                           while(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(this.§#f§);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().stop();
                                                                                 addr147:
                                                                                 addr117:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 §§push(this.§#f§);
                                                                                 if(!(_loc5_ || _loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 §§pop().play();
                                                                                 while(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       this.§%!S§ = false;
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc5_ || this))
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       if(_loc4_ && _loc3_)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       §§goto(addr46);
                                                                                       continue;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 §§goto(addr147);
                                                                              }
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§#f§ = §'^§.§2Z§.§!!f§(this.§#u§,{
                                                                              "scaleX":1,
                                                                              "scaleY":1
                                                                           },{
                                                                              "scaleX":0,
                                                                              "scaleY":0
                                                                           },this.§7!5§,§'^§.§-!T§);
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr222);
                                                         §§goto(addr226);
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr192);
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              if(_loc4_ && param2)
                              {
                                 continue;
                              }
                              §§goto(addr117);
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr255);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.show(param1);
            while(true)
            {
               §§push(this.§-!w§);
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr113);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§-!w§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  this.§<!9§();
                  loop1:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_ || param2)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              super.hide(param1,param2);
                              loop2:
                              while(true)
                              {
                                 addr28:
                                 while(true)
                                 {
                                    §6!c§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(this.§7!k§);
                                 if(_loc3_)
                                 {
                                    §§pop().addEventListener(ColorFadeLayerEvent.§9e§,this.§ do§);
                                    continue loop0;
                                 }
                                 addr192:
                                 while(true)
                                 {
                                    §§pop().§=v§(0,this.§+^§);
                                    continue loop8;
                                 }
                              }
                           }
                        }
                        else
                        {
                           loop11:
                           while(true)
                           {
                              §§push(this.§#f§);
                              if(!(_loc4_ && param2))
                              {
                                 §§pop().play();
                                 while(true)
                                 {
                                    if(_loc3_ || param2)
                                    {
                                       while(true)
                                       {
                                          §§goto(addr28);
                                       }
                                       addr59:
                                    }
                                 }
                                 addr102:
                              }
                              else
                              {
                                 addr157:
                                 while(true)
                                 {
                                    §§pop().stop();
                                 }
                                 addr157:
                              }
                              addr158:
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    while(true)
                                    {
                                       this.§#f§ = §'^§.§2Z§.§!!f§(this.§#u§,{
                                          "scaleX":0,
                                          "scaleY":0
                                       },null,this.§6E§,§'^§.§'!I§);
                                       continue loop11;
                                    }
                                    addr110:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr190:
                                 }
                              }
                           }
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr102);
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      private function §<!9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§@'§.mClip == this.§7!k§.parent);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr108:
                     while(true)
                     {
                        §§push(§@'§.mClip == null);
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        addr67:
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                     }
                  }
               }
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §@'§.mClip.removeChild(this.§7!k§);
                     }
                     loop3:
                     while(true)
                     {
                        addr24:
                        while(true)
                        {
                           this.§7!k§.removeEventListener(ColorFadeLayerEvent.§9e§,this.§ do§);
                           if(!(_loc1_ && this))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        if(!_loc1_)
                        {
                           break loop2;
                        }
                        §§goto(addr108);
                     }
                  }
                  §§goto(addr24);
               }
               return;
            }
         }
         §§goto(addr108);
      }
      
      protected function § do§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<!9§();
            do
            {
               super.hide();
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function updateTextFields() : void
      {
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.updateLocalization();
         }
         do
         {
            this.updateTextFields();
         }
         while(_loc1_ && _loc1_);
         
      }
   }
}
