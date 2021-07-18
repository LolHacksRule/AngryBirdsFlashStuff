package §]"T§
{
   import §!!c§.§]# §;
   import §"!t§.§5"U§;
   import §#f§.§3@§;
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   
   public class §'"N§ extends Sprite implements §5"U§, §]# §
   {
       
      
      private var §%#%§:TextField;
      
      private var §#L§:§!!%§;
      
      public function §'"N§(param1:§!!%§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            super();
            if(_loc4_)
            {
               this.§#L§ = param1;
               if(!(_loc3_ && _loc3_))
               {
                  tabEnabled = tabChildren = false;
                  if(!_loc3_)
                  {
                     this.§%#%§ = new TextField();
                     while(true)
                     {
                        this.§%#%§.border = true;
                        loop1:
                        for(; !_loc3_; while(_loc4_ || _loc2_)
                        {
                           this.§%#%§.background = true;
                           §§goto(addr225);
                           §§goto(addr212);
                        })
                        {
                           this.§%#%§.embedFonts = §6!x§.§9!_§.charAt(0) != "_";
                           loop9:
                           while(true)
                           {
                              this.§%#%§.defaultTextFormat = §6!x§.§8"D§;
                              loop10:
                              while(true)
                              {
                                 this.§%#%§.multiline = false;
                                 loop11:
                                 while(true)
                                 {
                                    this.§%#%§.type = TextFieldType.INPUT;
                                    continue loop1;
                                    addr170:
                                    if(!(_loc4_ || this))
                                    {
                                       continue;
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       this.§%#%§.text = "Input";
                                       loop3:
                                       while(true)
                                       {
                                          this.§%#%§.addEventListener(Event.CHANGE,this.§0#%§);
                                          loop4:
                                          while(true)
                                          {
                                             addChild(this.§%#%§);
                                             loop5:
                                             for(; _loc4_ || param1; if(_loc4_ || _loc3_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop9;
                                                }
                                                loop17:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr225:
                                                   while(!_loc3_)
                                                   {
                                                      this.§%#%§.borderColor = §?#O§.§5"k§;
                                                      while(!(_loc3_ && this))
                                                      {
                                                         this.§%#%§.backgroundColor = §?#O§.§<#Z§;
                                                         while(true)
                                                         {
                                                            this.§%#%§.textColor = §?#O§.§!#9§;
                                                            break loop5;
                                                         }
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            this.§%#%§.tabEnabled = false;
                                                            continue loop17;
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop11;
                                             })
                                             {
                                                §§push(this.§#L§);
                                                while(true)
                                                {
                                                   §§push(§§pop().§]"z§);
                                                   addr110:
                                                   addr124:
                                                   while(true)
                                                   {
                                                      §§pop().addCallback(§""A§.§ !V§,this.§>I§);
                                                      addr115:
                                                      while(!_loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§push(this.§#L§);
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().§]"z§);
                                                   if(_loc4_ || this)
                                                   {
                                                      §§pop().addCallback(§""A§.§4#I§,this.§-!B§);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         continue loop5;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr110);
                                                   }
                                                   §§goto(addr115);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr205);
                                             }
                                             §§goto(addr212);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr177);
         }
         §§goto(addr266);
      }
      
      private function §>I§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.text = String(param1.data);
         }
         do
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private function §0#%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(param1.clone());
         }
      }
      
      public function get text() : String
      {
         return this.§%#%§.text;
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%#%§.text = param1;
            do
            {
               this.focus();
            }
            while(_loc2_);
            
         }
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            y = param1.y;
            while(true)
            {
               x = param1.x;
               while(_loc2_)
               {
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§%#%§.width = param1.width - 1;
                     if(!_loc3_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§%#%§.height = §>"!§.§6R§;
            §§goto(addr49);
         }
      }
      
      public function get rect() : Rectangle
      {
         return getRect(parent);
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function §?#E§(param1:int = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() == -1)
               {
                  if(_loc3_)
                  {
                     addr64:
                     param1 = this.§`!N§.length;
                  }
                  while(true)
                  {
                  }
                  addr65:
               }
               while(true)
               {
                  this.§`!N§.setSelection(param1,param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr65);
               }
               return;
               addr42:
            }
            §§goto(addr64);
         }
         §§goto(addr42);
      }
      
      public function get selectionBeginIndex() : int
      {
         return this.§%#%§.selectionBeginIndex;
      }
      
      public function get selectionEndIndex() : int
      {
         return this.§%#%§.selectionEndIndex;
      }
      
      public function §>!<§(param1:int) : String
      {
         return §3@§.§>!<§(this.§%#%§,param1);
      }
      
      public function get §%!Y§() : int
      {
         return §3@§.§3b§(this.§%#%§);
      }
      
      public function get §`"@§() : String
      {
         return this.§>!<§(0);
      }
      
      public function get §0C§() : String
      {
         return §3@§.§+"O§(this.§`!N§);
      }
      
      public function §0X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §3@§.§,s§(this.§%#%§);
         }
      }
      
      public function §["7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§?#E§(-1);
         }
      }
      
      public function §&#1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?#E§(0);
         }
      }
      
      public function focus() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(stage.focus != this.§%#%§)
            {
               loop0:
               while(true)
               {
                  stage.focus = this.§%#%§;
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     if(!_loc2_)
                     {
                        this.§["7§();
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr43);
               }
            }
            return;
         }
         addr43:
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§%#%§.borderColor = §?#O§.§5"k§;
            do
            {
               this.§%#%§.backgroundColor = §?#O§.§<#Z§;
               do
               {
                  this.§%#%§.textColor = §?#O§.§!#9§;
               }
               while(!(_loc2_ || param1));
               
            }
            while(_loc3_);
            
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.text = "";
         }
      }
      
      public function §'&§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§@#M§();
         }
         §§push(this.text);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop().substr(0,this.caretIndex));
         }
         var _loc2_:* = §§pop();
         §§push(this.text);
         if(_loc4_)
         {
            §§push(§§pop().substr(this.caretIndex));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            this.text = _loc2_ + param1 + _loc3_;
            do
            {
               this.§?#E§(_loc2_.length + param1.length);
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      public function §@#M§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.text);
         if(_loc4_ || _loc1_)
         {
            §§push(§§pop().substr(0,this.§%#%§.selectionBeginIndex));
         }
         var _loc1_:* = §§pop();
         §§push(this.text);
         if(!_loc3_)
         {
            §§push(§§pop().substr(this.§%#%§.selectionEndIndex));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.§%#%§.text = _loc1_ + _loc2_;
         }
      }
      
      public function get §`!s§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§%#%§.selectedText == "");
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function get length() : int
      {
         return this.§%#%§.length;
      }
      
      public function get caretIndex() : int
      {
         return this.§%#%§.caretIndex;
      }
      
      public function get §`!N§() : TextField
      {
         return this.§%#%§;
      }
   }
}
