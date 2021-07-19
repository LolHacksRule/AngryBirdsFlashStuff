package §87§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §6=§.§+!,§;
   import §6=§.§@"c§;
   import §>!$§.§6"§;
   import §>"%§.§ "R§;
   import §>"%§.§"!5§;
   import §]"r§.§[O§;
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.style.§0#C§;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§7"h§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   
   public class §?#8§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §2"9§:TextField;
      
      private var § X§:§[O§;
      
      private var §!"v§:Boolean = false;
      
      private var § !u§:int = 0;
      
      private var §=#$§:int = 0;
      
      private var §#!@§:§ "R§;
      
      private var §<#E§:Boolean = true;
      
      private var §#a§:TextLineMetrics;
      
      private var §<!q§:Rectangle;
      
      public var § ;§:Boolean = true;
      
      public var §`"c§:Boolean = true;
      
      public var §0"8§:Boolean = true;
      
      public var §#!n§:Boolean = false;
      
      public var §%#C§:Boolean = true;
      
      private var §>"F§:Boolean = false;
      
      private const §4"`§:Boolean = false;
      
      private var §#L§:DConsole;
      
      public function §?#8§(param1:DConsole)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§#L§ = param1;
               loop1:
               while(true)
               {
                  this.§2"9§ = new TextField();
                  loop2:
                  while(true)
                  {
                     this.§2"9§.defaultTextFormat = §6!x§.§9#J§;
                     while(true)
                     {
                        this.§2"9§.embedFonts = §6!x§.§1"j§.charAt(0) != "_";
                        loop4:
                        while(_loc2_ || param1)
                        {
                           while(true)
                           {
                              this.§2"9§.text = "#";
                              while(true)
                              {
                                 this.§#a§ = this.§2"9§.getLineMetrics(0);
                                 loop7:
                                 for(; !_loc3_; if(!(_loc3_ && param1))
                                 {
                                    §§goto(addr19);
                                 })
                                 {
                                    addChild(this.§2"9§);
                                    while(true)
                                    {
                                       this.§ X§ = new §[O§(§[O§.§;# §);
                                       continue loop2;
                                       addr47:
                                       if(!(_loc3_ && this))
                                       {
                                          this.§2"9§.addEventListener(MouseEvent.CLICK,this.§@9§);
                                          continue loop7;
                                       }
                                    }
                                 }
                                 continue loop4;
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc2_)
                                    {
                                       addChild(this.§ X§);
                                       loop13:
                                       for(; _loc2_ || _loc2_; if(_loc3_ && this)
                                       {
                                          continue;
                                       },if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          §§goto(addr47);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§ X§);
                                             if(_loc2_ || this)
                                             {
                                                §§pop().§`!S§ = 10;
                                                break loop13;
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§pop().addEventListener(Event.CHANGE,this.§="x§);
                                             §§goto(addr188);
                                          }
                                          addr188:
                                          addr183:
                                       })
                                       {
                                          this.§2"9§.mouseWheelEnabled = false;
                                          loop14:
                                          while(true)
                                          {
                                             this.§2"9§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(param1.§]"z§);
                                                loop16:
                                                while(true)
                                                {
                                                   §§pop().addCallback(§""A§.§4#I§,this.§-!B§);
                                                   loop17:
                                                   while(!_loc3_)
                                                   {
                                                      §§push(param1.§]"z§);
                                                      while(true)
                                                      {
                                                         §§pop().addCallback(§""A§.§5!q§,this.§2#§);
                                                         §§push(param1.§]"z§);
                                                         addr108:
                                                         continue loop14;
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            §§pop().addCallback(§""A§.§9"u§,this.§4R§);
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(this.§4"`§)
                                                                        {
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr61);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                         continue;
                                                         addr19:
                                                         return;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr244);
      }
      
      private function §4R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§!"v§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§#!@§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§>t§);
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    addr139:
                                    while(true)
                                    {
                                       §§push(this.§>"F§);
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(_loc2_ && _loc1_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!(_loc1_ || this))
                                       {
                                          continue loop4;
                                       }
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              loop7:
                              while(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    this.§["R§();
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§#!@§);
                                       if(!(_loc2_ && this))
                                       {
                                          §§pop().§>j§();
                                          for(; !_loc2_; this.§>"F§ = false,if(_loc1_)
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                break loop9;
                                             }
                                             continue loop9;
                                          })
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(_loc1_ || _loc2_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      return;
                                                   }
                                                   addr143:
                                                   continue;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr139);
                                          }
                                          continue loop8;
                                       }
                                       continue loop2;
                                    }
                                    addr41:
                                    break loop7;
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
               }
               §§goto(addr143);
            }
         }
         §§goto(addr41);
      }
      
      private function §2#§(param1:§7",§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§"!5§ = §"!5§(param1.§@Z§);
         if(!_loc4_)
         {
            this.§^"%§ = _loc2_.§^"%§;
         }
         do
         {
            this.§>"F§ = true;
         }
         while(_loc4_);
         
      }
      
      private function §@9§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§2"9§.getLineIndexAtPoint(this.§2"9§.mouseX,this.§2"9§.mouseY);
         var _loc3_:§@"c§ = this.§9<§(_loc2_);
         if(!(_loc5_ && this))
         {
            if(!_loc3_.§ p§)
            {
            }
         }
      }
      
      private function §="x§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§ X§.§[-§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() * this.§1"x§);
            }
            §§pop().scrollIndex = §§pop();
         }
      }
      
      public function get numLines() : int
      {
         return Math.max(1,Math.floor((this.§2"9§.height - 4) / this.§#a§.height));
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§2"9§.text = param1;
         }
      }
      
      public function get text() : String
      {
         return this.§2"9§.text;
      }
      
      public function setText(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2"9§.text = param1;
         }
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = NaN;
         if(_loc5_)
         {
            this.§<!q§ = param1;
            loop0:
            while(true)
            {
               y = param1.y;
               loop1:
               while(true)
               {
                  x = param1.x;
                  while(true)
                  {
                     _loc2_ = this.§2"9§.height;
                     while(_loc5_)
                     {
                        this.§2"9§.width = param1.width - this.§ X§.§`!S§;
                        loop7:
                        while(!(_loc4_ && this))
                        {
                           this.§9! §();
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              if(true)
                              {
                                 var _loc3_:Rectangle = param1.clone();
                                 if(_loc5_ || param1)
                                 {
                                    this.§ X§.draw(_loc3_.height,this.§=#$§,this.§1"x§);
                                 }
                                 while(_loc2_ != this.§2"9§.height)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       this.§>"F§ = true;
                                    }
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                 }
                                 return;
                              }
                              addr62:
                              while(true)
                              {
                                 this.§ X§.x = param1.width - this.§ X§.§`!S§;
                                 continue loop7;
                              }
                              while(true)
                              {
                              }
                              continue loop1;
                              addr62:
                              addr38:
                           }
                           else
                           {
                              §§goto(addr62);
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§2"9§.height = param1.height;
                                 §§goto(addr62);
                              }
                              addr92:
                           }
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           §§goto(addr38);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §9! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§<!q§)
            {
               loop0:
               while(true)
               {
                  graphics.clear();
                  addr85:
                  loop1:
                  while(true)
                  {
                     graphics.beginFill(§?#O§.§;"q§,§0#C§.§@@§);
                     while(!_loc1_)
                     {
                        graphics.drawRect(0,0,this.§<!q§.width,this.§<!q§.height);
                        if(_loc2_ || _loc1_)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr85);
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function get rect() : Rectangle
      {
         return this.§<!q§;
      }
      
      public function get §2L§() : TextField
      {
         return this.§2"9§;
      }
      
      public function get locked() : Boolean
      {
         return this.§!"v§;
      }
      
      public function §`#N§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"#[§(param1 - 1);
         }
      }
      
      public function §"#[§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.scrollIndex);
         if(_loc4_)
         {
            §§push(int(§§pop() - param1));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            this.scroll(_loc2_);
         }
      }
      
      public function §0&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!"v§ = true;
         }
      }
      
      public function §7"+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!"v§ = false;
         }
      }
      
      public function §@"!§(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 != null)
            {
               this.§#!n§ = §6"§.§^p§(param1);
               loop3:
               while(true)
               {
                  addr71:
                  addr75:
                  while(!this.§#!n§)
                  {
                     §§push(this.§#L§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop().§""W§("Timestamp off",§+!,§.§>y§);
                        if(_loc2_ || this)
                        {
                           if(_loc3_ && param1)
                           {
                              break;
                           }
                           if(_loc2_ || this)
                           {
                              §§goto(addr19);
                           }
                           continue loop3;
                        }
                        addr19:
                        return;
                        addr90:
                     }
                     §§pop().§""W§("Timestamp on",§+!,§.§>y§);
                     §§goto(addr90);
                  }
                  if(!(_loc3_ && param1))
                  {
                     addr82:
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§#!n§);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                           }
                           §§pop().§#!n§ = §§pop();
                           addr120:
                           while(true)
                           {
                              §§goto(addr71);
                              §§goto(addr75);
                           }
                           §§goto(addr82);
                        }
                        addr113:
                     }
                     §§goto(addr86);
                     §§push(this.§#L§);
                  }
                  §§goto(addr120);
               }
               addr99:
            }
            §§goto(addr113);
         }
         §§goto(addr99);
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.scroll(param1.delta);
         }
      }
      
      public function §@#'§(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 != null)
            {
               this.§ ;§ = §6"§.§^p§(param1);
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(this.§ ;§)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           while(true)
                           {
                              §§push(this.§#L§);
                              addr99:
                              while(true)
                              {
                                 §§pop().§""W§("Line numbers: on",§+!,§.§>y§);
                              }
                           }
                           addr97:
                        }
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              this.§>"F§ = true;
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    if(_loc2_ && _loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc3_ || param1)
                                    {
                                       continue loop4;
                                    }
                                    addr126:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§ ;§);
                                       if(_loc3_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       §§pop().§ ;§ = §§pop();
                                       break loop4;
                                    }
                                    continue loop4;
                                 }
                                 addr71:
                              }
                              continue loop0;
                           }
                           addr133:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        addr103:
                     }
                     else
                     {
                        §§push(this.§#L§);
                        if(_loc3_)
                        {
                           §§pop().§""W§("Line numbers: off",§+!,§.§>y§);
                           §§goto(addr71);
                        }
                        else
                        {
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr99);
                  }
               }
            }
            §§goto(addr126);
         }
         §§goto(addr97);
      }
      
      public function scroll(param1:int = 0, param2:int = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§2"9§.scrollH += param2;
         }
         loop0:
         while(true)
         {
            §§push(param1);
            if(!(_loc4_ && param1))
            {
               §§push(0);
               if(!_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               while(true)
               {
                  §§push(this.numLines);
               }
               addr75:
            }
            while(§§pop() >= §§pop())
            {
               do
               {
                  this.scrollIndex -= param1;
               }
               while(_loc4_);
               
               if(!_loc3_)
               {
                  addr34:
                  break;
               }
               if(_loc3_ || this)
               {
                  break loop0;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function set scrollIndex(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§=#$§);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this.§=#$§ = Math.max(0,Math.min(param1,this.§1"x§));
            while(true)
            {
               this.§<#E§ = this.§=#$§ == this.§1"x§;
               while(!_loc4_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this.§>"F§ = true;
                  }
                  if(!_loc4_)
                  {
                     §§goto(addr30);
                  }
               }
            }
         }
         while(_loc2_ != this.§=#$§)
         {
            §§goto(addr49);
         }
         addr30:
      }
      
      public function get scrollIndex() : int
      {
         return this.§=#$§;
      }
      
      public function get §1"x§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§^"%§)
            {
               if(_loc2_ || this)
               {
                  §§goto(addr39);
               }
            }
            return Math.max(0,this.§^"%§.§0!G§.length - this.numLines);
         }
         addr39:
         return 0;
      }
      
      public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§4R§();
         }
      }
      
      public function set §^"%§(param1:§ "R§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§#!@§ = param1;
            while(true)
            {
               this.§%#C§ = this.§#!@§.§8a§.§["2§ == this.§#!@§;
               while(!(_loc2_ && _loc3_))
               {
                  this.update();
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get §^"%§() : § "R§
      {
         return this.§#!@§;
      }
      
      public function §9<§(param1:int) : §@"c§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Vector.<§@"c§> = this.§^"%§.§0!G§;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(int(§§pop() + this.§=#$§));
            }
            param1 = §§pop();
         }
         return this.§^"%§.§0!G§[param1];
      }
      
      public function §["R§() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §]#Y§(param1:String, param2:TextFormat) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = this.§2L§.length;
         if(_loc5_ || param1)
         {
            this.§2L§.appendText(param1);
         }
         do
         {
            this.§2L§.setTextFormat(param2,_loc3_,this.§2L§.length);
         }
         while(_loc4_);
         
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§2"9§.text = "";
         }
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7"h§ = §7"h§(param1.§@Z§);
         if(!(_loc4_ && _loc2_))
         {
            this.§9! §();
         }
         while(true)
         {
            this.§ X§.draw(this.§2"9§.height,this.§=#$§,this.§1"x§);
            while(!_loc4_)
            {
               this.§["R§();
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §6!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"#[§(int.MAX_VALUE);
         }
      }
   }
}
