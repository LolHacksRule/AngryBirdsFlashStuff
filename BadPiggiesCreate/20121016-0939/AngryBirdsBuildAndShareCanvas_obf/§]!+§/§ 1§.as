package §]!+§
{
   import §'i§.§'!;§;
   import §'i§.§,!1§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §,B§.StateMap;
   import §62§.§0!t§;
   import §7r§.§,!<§;
   import §8" §.§,!q§;
   import §8" §.§7z§;
   import §8" §.Quest;
   import §@"5§.§1k§;
   import §^[§.§'!K§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class § 1§ extends §`!T§ implements IEventDispatcher
   {
      
      private static const §7!M§:String = "initial";
      
      private static const §%!=§:String = "questInfo";
      
      private static const §#U§:String = "questList";
      
      private static const §'!t§:int = -400;
      
      private static const §7W§:int = -10;
      
      private static const §8!D§:int = 3;
      
      public static var §?_§:String = "";
      
      public static var §=!-§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7!M§ = "initial";
            while(true)
            {
               §%!=§ = "questInfo";
            }
            addr116:
         }
         loop1:
         while(true)
         {
            §#U§ = "questList";
            loop2:
            for(; _loc2_; if(_loc2_ || _loc1_)
            {
               continue loop1;
            })
            {
               §'!t§ = -400;
               loop3:
               do
               {
                  §7W§ = -10;
                  loop4:
                  while(true)
                  {
                     §8!D§ = 3;
                     loop5:
                     do
                     {
                        §?_§ = "";
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           continue loop4;
                           addr75:
                           §=!-§ = "";
                           if(!(_loc1_ && _loc1_))
                           {
                              continue loop5;
                           }
                        }
                        continue loop2;
                     }
                     while(!_loc2_);
                     
                     continue loop3;
                  }
               }
               while(!(_loc2_ || _loc2_));
               
               return;
            }
            §§goto(addr116);
            if(_loc1_ && § 1§)
            {
               continue;
            }
            §§goto(addr75);
         }
      }
      
      private var §?E§:§'!K§;
      
      private var §2!y§:FileReference;
      
      private var §'r§:Quest;
      
      private var §1^§:MovieClip;
      
      private var §^"$§:String;
      
      private var §@!W§:Dictionary;
      
      private var §@f§:int = 0;
      
      private var §7! §:Vector.<§7z§>;
      
      private var §!,§:MovieClip;
      
      private var §#"§:Boolean = false;
      
      private var §6D§:MovieClip;
      
      private var §?!w§:EventDispatcher;
      
      private var §"",§:Boolean = true;
      
      private var §8!E§:Dictionary;
      
      private var §2!O§:Number = 0;
      
      public function § 1§(param1:§'!K§, param2:XML, param3:§`!T§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§8!E§ = new Dictionary();
            loop0:
            while(true)
            {
               super(param2,param3,null);
               addr105:
               while(true)
               {
                  this.§?E§ = param1;
                  while(true)
                  {
                     param3.§;!R§(this);
                     while(!_loc6_)
                     {
                        this.§1^§ = mClip.Container_QuestMenu;
                        while(_loc5_)
                        {
                        }
                     }
                  }
                  addr46:
                  if(_loc5_ || param1)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§1^§.gotoAndStop(0);
            §§goto(addr66);
         }
      }
      
      public function init(param1:Quest) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§`!<§ = null;
         if(!(_loc5_ && this))
         {
            this.§'r§ = param1;
            loop0:
            while(true)
            {
               this.§#"§ = false;
               loop1:
               while(true)
               {
                  §§push(this.§'r§);
                  while(true)
                  {
                     §§push(§1k§.§1!+§);
                     addr102:
                     addr112:
                     while(true)
                     {
                        §§pop().addEventListener(§§pop(),this.§ W§);
                        continue loop1;
                     }
                     §§push(this.§'r§);
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     §§push(§1k§.§3!u§);
                     if(!_loc5_)
                     {
                        §§pop().addEventListener(§§pop(),this.§2!p§);
                        loop5:
                        while(true)
                        {
                           addr49:
                           while(true)
                           {
                              this.§@!W§ = new Dictionary();
                              continue loop5;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr102);
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr49);
         }
         var _loc2_:Vector.<Object> = §,!q§.§2=§.§ !f§();
         var _loc4_:TextField;
         (_loc4_ = this.mClip.Container_QuestMenu.Container_MainQuest.QuestTitle.text as TextField).text = §=!-§.toLowerCase();
         if(_loc6_)
         {
            _loc4_.mouseEnabled = false;
         }
         loop9:
         while(true)
         {
            this.§2!p§(new §0!t§(§0!t§.§0z§));
            while(true)
            {
               this.§ W§();
               while(!(_loc5_ && this))
               {
                  if(_loc6_)
                  {
                     this.§4!'§(§7!M§);
                     if(_loc6_ || _loc2_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop9;
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§1^§.visible)
            {
               while(true)
               {
                  §§push(this.§@f§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           while(true)
                           {
                              this.§@f§ -= param1;
                              addr195:
                              while(true)
                              {
                                 §§push(this.§@f§);
                                 if(_loc3_ && this)
                                 {
                                    continue loop1;
                                 }
                                 §§push(0);
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    addr161:
                                    while(true)
                                    {
                                       this.§4!'§(§7!M§);
                                       §§goto(addr164);
                                    }
                                    addr161:
                                 }
                              }
                           }
                           addr179:
                        }
                        while(true)
                        {
                           §§push(§,!1§.§2=§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop().§"";§());
                              loop6:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc2_)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(§,!1§.§2=§);
                                                   if(!_loc2_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(§§pop().§ b§());
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(!§§pop());
                                                   }
                                                   if(_loc3_ && param1)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         getItemByName("ButtonGravity").setVisibility(false);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  continue;
                                                               }
                                                               addr114:
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  getItemByName("ButtonGravity").setVisibility(true);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop11;
                                                            }
                                                         }
                                                         if(_loc2_ || this)
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr114);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr195);
                                          }
                                          addr164:
                                          §§goto(addr200);
                                       }
                                    }
                                    §§goto(addr112);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr200:
            do
            {
               if(!(_loc2_ || this))
               {
                  continue loop0;
               }
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr195);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§1^§.visible = false;
         }
      }
      
      public function show() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§1^§.visible = true;
         }
      }
      
      private function §[! §(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §'!;§.§2=§.§+"2§.mNextState = StateMap.§'=§;
         }
      }
      
      private function onEnterFrame(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§1^§.currentLabel.indexOf("endstate") != -1)
            {
               if(_loc3_)
               {
                  addr27:
                  this.§1^§.stop();
               }
            }
            var _loc2_:MovieClip = this.§"!Z§("Button_ShowMap",this.§1^§) as MovieClip;
            if(!_loc4_)
            {
               if(_loc2_)
               {
                  if(_loc3_ || this)
                  {
                     _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§[! §);
                  }
                  do
                  {
                     _loc2_.buttonMode = true;
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  addr67:
               }
               return;
            }
            §§goto(addr67);
         }
         §§goto(addr27);
      }
      
      public function §#O§() : Boolean
      {
         return this.§#"§;
      }
      
      private function §"Y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.dispatchEvent(new Event(Event.SELECT));
         }
         do
         {
            §,!q§.§2=§.§-E§(this.§@!W§[param1.target]);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      private function §4!'§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§%!=§);
               addr138:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               loop2:
               while(true)
               {
                  this.§,9§();
                  addr141:
                  while(true)
                  {
                     this.§1^§.gotoAndPlay("mini_menu_dropdown");
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      private function §'!_§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§^"$§ == §%!=§)
            {
               this.§4!'§(§7!M§);
               if(_loc3_)
               {
                  loop0:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr70:
                     while(true)
                     {
                        this.§4!'§(§%!=§);
                        continue loop0;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      private function §&k§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@f§ = 0;
         }
      }
      
      private function §`F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1^§.y = §'!t§;
            while(true)
            {
               this.§1^§.addEventListener(Event.ENTER_FRAME,this.§9!]§,false,0,true);
               while(!_loc2_)
               {
                  this.§^"$§ = §7!M§;
                  do
                  {
                     this.§2!p§(new §0!t§(§0!t§.§0@§));
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  if(!(_loc2_ && _loc3_))
                  {
                     return;
                     addr55:
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §"!Z§(param1:String, param2:DisplayObjectContainer) : DisplayObject
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param2.numChildren)
            {
               return null;
            }
            §§push(Boolean(_loc4_ = param2.getChildAt(_loc3_)));
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && param1))
                  {
                     §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc4_.name == param1);
                        if(_loc7_)
                        {
                           addr64:
                           if(§§pop())
                           {
                              if(!(_loc6_ && param2))
                              {
                                 return _loc4_;
                              }
                              continue;
                           }
                           §§push(_loc4_ is DisplayObjectContainer);
                        }
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              continue;
                           }
                           addr87:
                           if(_loc5_ = this.§"!Z§(param1,_loc4_ as DisplayObjectContainer))
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 break;
                              }
                           }
                        }
                        _loc3_++;
                        continue;
                     }
                     §§goto(addr87);
                  }
               }
            }
            §§goto(addr64);
         }
         return _loc5_;
      }
      
      private function §8!l§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1.keyCode == Keyboard.O);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr156:
                        while(true)
                        {
                           §§push(Boolean(param1.ctrlKey));
                        }
                     }
                     addr155:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(!(_loc3_ && param1))
                           {
                              this.load();
                              loop11:
                              while(true)
                              {
                                 addr82:
                                 while(true)
                                 {
                                    §§push(param1.keyCode == Keyboard.Q);
                                    if(_loc2_ || this)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(§§pop());
                                          if(_loc2_ || param1)
                                          {
                                             if(!§§pop())
                                             {
                                                loop8:
                                                while(§§pop())
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue loop6;
                                                      }
                                                      this.§`!q§();
                                                   }
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(Boolean(param1.ctrlKey));
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr155);
                                                            continue loop8;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop11;
                                                      addr113:
                                                      §§pop();
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                             continue loop0;
                                             return;
                                          }
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr82);
                     }
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      private function load() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§2!y§ = new FileReference();
            do
            {
               this.§2!y§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
               do
               {
                  this.§2!y§.addEventListener(Event.SELECT,this.§7!'§);
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      private function §7!'§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §?_§ = this.§2!y§.name;
            while(true)
            {
               this.§2!y§.removeEventListener(Event.SELECT,this.§7!'§);
               loop1:
               while(true)
               {
                  this.§2!y§.addEventListener(Event.COMPLETE,this.§7!g§);
                  addr74:
                  while(true)
                  {
                     this.§2!y§.addEventListener(IOErrorEvent.IO_ERROR,this.§try§);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      protected function §try§(param1:IOErrorEvent) : void
      {
      }
      
      private function §7!g§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§2!y§.removeEventListener(Event.COMPLETE,this.§7!g§);
         }
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         if(!_loc3_)
         {
            this.dispatchEvent(new Event(Event.SELECT));
            do
            {
               §'!;§.§2=§.§4p§.§4!G§();
               do
               {
                  §,!q§.§2=§.§?j§(_loc2_);
               }
               while(!_loc4_);
               
            }
            while(_loc3_);
            
         }
      }
      
      private function §`!q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.dispatchEvent(new Event(Event.SELECT));
         }
         do
         {
            §'!;§.§2=§.§4p§.§4!G§();
            do
            {
               §,!q§.§2=§.§?j§(null);
            }
            while(!(_loc1_ || this));
            
         }
         while(!_loc1_);
         
      }
      
      private function §2!p§(param1:Event = null) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:TextField = null;
         var _loc7_:* = null;
         var _loc8_:* = false;
         var _loc9_:MovieClip = null;
         if(!(_loc11_ && _loc3_))
         {
            §§push(Boolean(param1));
            if(_loc10_)
            {
               if(§§pop())
               {
                  if(!_loc11_)
                  {
                     addr42:
                     §§pop();
                     if(_loc10_ || _loc3_)
                     {
                        addr55:
                        if(param1.type == §0!t§.§!q§)
                        {
                           if(!_loc11_)
                           {
                              addr58:
                              this.§6D§ = this.§1^§.getChildByName("Container_DropMenu") as MovieClip;
                              addr66:
                              _loc2_ = this.§6D§.TaskList.text as TextField;
                           }
                           §§goto(addr66);
                        }
                        var _loc3_:* = 0;
                        if(!_loc11_)
                        {
                           if(_loc2_)
                           {
                              if(_loc10_ || _loc3_)
                              {
                                 _loc2_.text = "";
                                 if(!_loc10_)
                                 {
                                 }
                                 addr95:
                                 var _loc4_:Vector.<String> = this.§'r§.§5",§();
                                 var _loc5_:int = 1;
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    while(§§pop() <= _loc4_.length)
                                    {
                                       §§push(_loc4_[_loc5_ - 1]);
                                       if(_loc10_ || this)
                                       {
                                          §§push(_loc7_ = §§pop());
                                       }
                                       _loc8_ = §§pop().indexOf("[done]") > -1;
                                       if(_loc10_ || this)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             if(_loc8_)
                                             {
                                                if(!(_loc10_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(int(1 + (!!_loc10_ ? §§pop() : §§pop())));
                                                if(!(_loc10_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                addr173:
                                                _loc3_ = §§pop();
                                                if(!(_loc11_ && this))
                                                {
                                                   addr181:
                                                   if(!_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc11_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                if(!(_loc9_ = this.§"!Z§("TaskCheck" + _loc5_.toString(),this.§6D§) as MovieClip))
                                                {
                                                   continue loop0;
                                                }
                                                if(!_loc11_)
                                                {
                                                   if(_loc5_ >= _loc4_.length + 1)
                                                   {
                                                      if(_loc10_ || param1)
                                                      {
                                                         _loc9_.visible = false;
                                                         if(_loc11_)
                                                         {
                                                            loop2:
                                                            for(; false; while(true)
                                                            {
                                                               _loc2_.appendText(_loc7_ + "\n");
                                                               if(_loc11_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                            })
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop().replace("[done]",""));
                                                                  }
                                                                  _loc7_ = §§pop();
                                                                  continue loop2;
                                                               }
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc9_.visible = _loc7_.indexOf("[done]") > -1;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr242);
                                                   }
                                                }
                                                §§goto(addr256);
                                             }
                                             else
                                             {
                                                §§push(0);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr173);
                                       }
                                       §§goto(addr181);
                                    }
                                    addr278:
                                    var _loc6_:MovieClip;
                                    (_loc6_ = this.mClip.Container_QuestMenu.Container_MainQuest.SurpriseStar0 as MovieClip).gotoAndStop(_loc3_ > 1 ? 2 : 1);
                                    return;
                                 }
                              }
                              _loc2_.mouseEnabled = false;
                           }
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr58);
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr42);
         }
         §§goto(addr58);
      }
      
      private function § W§(param1:Event = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:§7z§ = null;
         var _loc2_:* = true;
         var _loc3_:Vector.<§7z§> = this.§'r§.§3!g§();
         if(!_loc8_)
         {
            if(_loc3_ == null)
            {
               if(!_loc8_)
               {
                  addr38:
                  _loc4_ = 0;
               }
               loop1:
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc8_)
                  {
                     addr83:
                     _loc4_ = §§pop();
                     if(!(_loc8_ && _loc3_))
                     {
                        addr91:
                        while(true)
                        {
                           §§push(_loc4_);
                           addr299:
                           loop2:
                           while(true)
                           {
                              if(§§pop() >= _loc3_.length)
                              {
                                 break loop1;
                              }
                              §§push((_loc6_ = _loc3_[_loc4_]).§%!0§);
                              if(!_loc8_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              _loc2_ = §§pop();
                              §§push((_loc5_ = this.§"!Z§("SurpriseStar" + (_loc4_ + 1).toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).currentFrame == 1);
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§pop();
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(_loc2_);
                                             if(_loc7_ || param1)
                                             {
                                                addr294:
                                                §§push(Boolean(§§pop()));
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr295:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr297:
                                                            while(true)
                                                            {
                                                               §§push(!this.§8!E§[_loc5_]);
                                                               addr258:
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         addr296:
                                                      }
                                                      while(true)
                                                      {
                                                         addr261:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              _loc5_.gotoAndStop(1);
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(this.§8!E§[_loc5_])
                                                                                 {
                                                                                    if(_loc7_ || _loc2_)
                                                                                    {
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          this.§8!E§[_loc5_].removeEventListener(Event.COMPLETE,this.§,L§);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§8!E§[_loc5_] = this.§+u§(new §,!<§(_loc5_),new §,!<§(_loc6_));
                                                                                             addr274:
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                addr161:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc4_++;
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(_loc8_ && _loc2_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc7_ || this))
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§goto(addr297);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr233:
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                         addr224:
                                                                                                      }
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§8!E§[_loc5_] = null;
                                                                                                         §§goto(addr233);
                                                                                                      }
                                                                                                   }
                                                                                                   while(_loc8_ && param1)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                          addr262:
                                                                                       }
                                                                                       §§goto(addr274);
                                                                                    }
                                                                                    §§goto(addr224);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr161);
                                                                     }
                                                                     addr247:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr296);
                                                                  }
                                                                  §§goto(addr297);
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr294:
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr274);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr295);
                              }
                              §§goto(addr247);
                           }
                        }
                     }
                     break;
                  }
                  if(§§pop() <= 2)
                  {
                     (_loc5_ = this.§"!Z§("SurpriseStar" + _loc4_.toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).visible = false;
                     if(!(_loc8_ && this))
                     {
                        _loc4_++;
                     }
                     continue;
                  }
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§goto(addr91);
               }
               return;
            }
            §§push(0);
            if(!(_loc8_ && this))
            {
               §§goto(addr83);
            }
            §§goto(addr299);
         }
         §§goto(addr38);
      }
      
      private function §+u§(param1:§,!<§, param2:§,!<§) : §97§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§97§ = new §97§(param2.position,param1.position);
         if(_loc4_)
         {
            this.§?E§.movieClip.addChild(_loc3_);
         }
         do
         {
            _loc3_.addEventListener(Event.COMPLETE,this.§,L§);
         }
         while(!(_loc4_ || param2));
         
         return _loc3_;
      }
      
      private function §,L§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         for(_loc2_ in this.§8!E§)
         {
            if(!(_loc5_ && _loc3_))
            {
               if(this.§8!E§[_loc2_] != param1.target)
               {
                  continue;
               }
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
            }
            _loc2_.gotoAndStop(2);
         }
      }
      
      private function §,9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§1^§.hasEventListener(Event.ENTER_FRAME))
            {
               if(_loc2_ || _loc2_)
               {
                  addr57:
                  this.§1^§.removeEventListener(Event.ENTER_FRAME,this.§9!]§);
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      private function §9!]§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§1^§.currentFrame != 1)
            {
               this.§1^§.prevFrame();
               if(!(_loc2_ && _loc2_))
               {
                  if(!(_loc3_ || _loc2_))
                  {
                     addr75:
                     this.§,9§();
                     addr77:
                  }
                  else
                  {
                     addr69:
                  }
                  return;
               }
               §§goto(addr77);
            }
            §§goto(addr75);
         }
         §§goto(addr69);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§?!w§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§?!w§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?!w§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§?!w§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?!w§.willTrigger(param1);
      }
   }
}
