package §]" §
{
   import §"_§.§!"8§;
   import §1" §.§!!2§;
   import §1" §.§#!j§;
   import §50§.StateMap;
   import §7t§.§7a§;
   import §7t§.§<^§;
   import §;" §.§5L§;
   import §;" §.§7!9§;
   import §;" §.Quest;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §^!k§.§return§;
   import §`!,§.§[!&§;
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
   
   public class §?"-§ extends §6W§ implements IEventDispatcher
   {
      
      private static const §9!,§:String = "initial";
      
      private static const §=!F§:String = "questInfo";
      
      private static const §8!L§:String = "questList";
      
      private static const §&!x§:int = -400;
      
      private static const §^F§:int = -10;
      
      private static const §0!g§:int = 3;
      
      public static var §>!`§:String = "";
      
      public static var §7"0§:String = "Sandbox";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9!,§ = "initial";
            loop0:
            while(true)
            {
               §=!F§ = "questInfo";
               addr102:
               while(true)
               {
                  §8!L§ = "questList";
                  addr85:
                  while(!_loc1_)
                  {
                     §&!x§ = -400;
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            §^F§ = -10;
            while(true)
            {
               if(_loc2_)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  §0!g§ = 3;
                  for(; !_loc1_; while(!(_loc1_ && _loc2_))
                  {
                     §7"0§ = "Sandbox";
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                     }
                  })
                  {
                     if(!_loc1_)
                     {
                        §>!`§ = "";
                        continue;
                     }
                     §§goto(addr102);
                  }
                  continue;
               }
               continue loop3;
            }
            §§goto(addr85);
         }
      }
      
      private var §`!v§:§return§;
      
      private var §^!4§:FileReference;
      
      private var §[o§:Quest;
      
      private var §2!<§:MovieClip;
      
      private var §>!F§:String;
      
      private var §`!y§:Dictionary;
      
      private var §catch§:int = 0;
      
      private var §6!L§:Vector.<§7!9§>;
      
      private var §1""§:MovieClip;
      
      private var §#!#§:Boolean = false;
      
      private var §4"%§:MovieClip;
      
      private var §-H§:EventDispatcher;
      
      private var §3!§:Boolean = true;
      
      private var §]4§:Dictionary;
      
      private var §2!0§:Number = 0;
      
      public function §?"-§(param1:§return§, param2:XML, param3:§6W§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§]4§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            super(param2,param3,null);
            loop1:
            while(true)
            {
               this.§`!v§ = param1;
               loop2:
               while(true)
               {
                  param3.§#i§(this);
                  while(true)
                  {
                     this.§2!<§ = mClip.Container_QuestMenu;
                     while(_loc6_ || param3)
                     {
                        this.§2!<§.gotoAndStop(0);
                        loop5:
                        while(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§2!<§.buttonMode = true;
                                    while(_loc6_)
                                    {
                                       this.§-H§ = new EventDispatcher(this);
                                       if(_loc6_ || param3)
                                       {
                                          continue loop6;
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop2;
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
      }
      
      public function init(param1:Quest) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§!!]§ = null;
         if(!_loc5_)
         {
            this.§[o§ = param1;
            while(true)
            {
               this.§#!#§ = false;
            }
            addr111:
         }
         loop1:
         while(true)
         {
            §§push(this.§[o§);
            while(true)
            {
               §§push(§[!&§.§^A§);
               addr92:
               addr102:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§?!T§);
                  continue loop1;
               }
               §§push(this.§[o§);
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
               §§push(§[!&§.§^[§);
               if(!(_loc5_ && _loc2_))
               {
                  §§pop().addEventListener(§§pop(),this.§1!K§);
                  loop5:
                  while(!_loc5_)
                  {
                     loop6:
                     while(true)
                     {
                        this.§`!y§ = new Dictionary();
                        while(!_loc5_)
                        {
                           this.§`!v§.movieClip.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§[H§);
                           if(_loc6_)
                           {
                              continue loop6;
                           }
                        }
                        continue loop5;
                     }
                     continue loop1;
                  }
                  §§goto(addr111);
               }
               else
               {
                  §§goto(addr92);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§2!<§.visible)
            {
               loop0:
               while(true)
               {
                  §§push(this.§catch§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc3_)
                           {
                              this.§catch§ -= param1;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(this.§catch§);
                              if(!(_loc2_ || _loc3_))
                              {
                                 break;
                              }
                              §§push(0);
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              if(§§pop() <= §§pop())
                              {
                                 while(true)
                                 {
                                    this.§;!Z§(§9!,§);
                                    addr161:
                                    while(true)
                                    {
                                    }
                                    loop12:
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       if(_loc3_ && this)
                                       {
                                          return;
                                       }
                                       addr190:
                                       loop13:
                                       while(true)
                                       {
                                          this.§2!<§.x = this.§2!0§;
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             break;
                                          }
                                          addr64:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop13;
                                             }
                                             continue loop12;
                                          }
                                       }
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          loop11:
                                          while(_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop3;
                                             }
                                             addr143:
                                             §§push(§!!2§.§[E§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop().§+6§());
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr136:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop11;
                                                                     }
                                                                     addr138:
                                                                  }
                                                               }
                                                            }
                                                            addr135:
                                                         }
                                                         while(true)
                                                         {
                                                            addr108:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     getItemByName("ButtonGravity").setVisibility(true);
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               getItemByName("ButtonGravity").setVisibility(false);
                                                               §§goto(addr64);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   §§goto(addr138);
                                                }
                                                §§goto(addr108);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr143);
                                                }
                                                addr134:
                                             }
                                             §§goto(addr135);
                                          }
                                          §§goto(addr161);
                                       }
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          return;
                                          addr55:
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           §§goto(addr134);
                           §§goto(addr161);
                        }
                     }
                  }
               }
            }
            §§goto(addr190);
         }
         §§goto(addr55);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§2!<§.visible = false;
         }
      }
      
      public function show() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§2!<§.visible = true;
         }
      }
      
      private function §7D§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §#!j§.§[E§.§<!_§.mNextState = StateMap.§%!Q§;
         }
      }
      
      private function onEnterFrame(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§2!<§.currentLabel.indexOf("endstate") != -1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§2!<§.stop();
                  addr38:
               }
            }
            var _loc2_:MovieClip = this.§7!8§("Button_ShowMap",this.§2!<§) as MovieClip;
            if(_loc4_ || this)
            {
               if(_loc2_)
               {
                  if(_loc4_)
                  {
                     _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7D§);
                  }
                  do
                  {
                     _loc2_.buttonMode = true;
                  }
                  while(!_loc4_);
                  
                  addr78:
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr38);
      }
      
      public function §-"&§() : Boolean
      {
         return this.§#!#§;
      }
      
      private function §5!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.dispatchEvent(new Event(Event.SELECT));
         }
         do
         {
            §5L§.§[E§.each(this.§`!y§[param1.target]);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      private function §;!Z§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§=!F§);
               addr134:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               loop2:
               while(true)
               {
                  this.§]!m§();
                  loop3:
                  while(true)
                  {
                     this.§2!<§.gotoAndPlay("mini_menu_dropdown");
                     loop4:
                     while(true)
                     {
                        if(this.§[o§)
                        {
                           if(_loc3_)
                           {
                              this.§1!K§(new §!"8§(§!"8§.§6"+§));
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              addr29:
                              while(true)
                              {
                                 this.§>!F§ = param1;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       this.§+!h§(null);
                                       addr89:
                                       this.§2!<§.y = §&!x§;
                                    }
                                 }
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§goto(addr89);
                                       }
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           addr72:
                        }
                        while(!_loc2_)
                        {
                           continue loop2;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr72);
         }
      }
      
      private function §6F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§>!F§ == §=!F§)
            {
               this.§;!Z§(§9!,§);
               if(!_loc2_)
               {
                  if(_loc2_ && param1)
                  {
                     loop0:
                     while(true)
                     {
                        this.§catch§ = 0;
                        addr59:
                        while(!(_loc3_ || param1))
                        {
                           continue loop0;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr59);
            }
         }
         §§goto(addr81);
      }
      
      private function §@"8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§catch§ = 0;
         }
      }
      
      private function §+!h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2!<§.y = §&!x§;
            while(true)
            {
               this.§2!<§.addEventListener(Event.ENTER_FRAME,this.§"!F§,false,0,true);
               while(!_loc2_)
               {
                  while(_loc3_ || param1)
                  {
                     this.§1!K§(new §!"8§(§!"8§.§1!u§));
                     if(_loc3_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§>!F§ = §9!,§;
            §§goto(addr48);
         }
      }
      
      private function §7!8§(param1:String, param2:DisplayObjectContainer) : DisplayObject
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:int = 0;
         while(_loc3_ < param2.numChildren)
         {
            §§push(Boolean(_loc4_ = param2.getChildAt(_loc3_)));
            if(_loc6_ || param1)
            {
               if(§§pop())
               {
                  if(_loc6_ || param1)
                  {
                     §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc4_.name == param1);
                        if(_loc6_)
                        {
                           addr68:
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 return _loc4_;
                              }
                              continue;
                           }
                        }
                        addr83:
                        if(§§pop())
                        {
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           if(_loc5_ = this.§7!8§(param1,_loc4_ as DisplayObjectContainer))
                           {
                              if(_loc6_)
                              {
                                 return _loc5_;
                              }
                           }
                        }
                        _loc3_++;
                        continue;
                     }
                     §§goto(addr83);
                     §§push(_loc4_ is DisplayObjectContainer);
                  }
                  §§goto(addr83);
               }
               §§goto(addr68);
            }
            §§goto(addr83);
         }
         return null;
      }
      
      private function §[H§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1.keyCode == Keyboard.O);
            if(_loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr141:
                     while(true)
                     {
                        §§pop();
                        addr142:
                        while(true)
                        {
                           §§push(Boolean(param1.ctrlKey));
                        }
                     }
                     addr141:
                  }
                  while(true)
                  {
                     addr118:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.load();
                              addr121:
                              while(true)
                              {
                              }
                           }
                           addr119:
                        }
                        while(true)
                        {
                           §§push(param1.keyCode == Keyboard.Q);
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr141);
         }
         §§goto(addr121);
      }
      
      private function load() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§^!4§ = new FileReference();
            while(true)
            {
               this.§^!4§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     this.§^!4§.addEventListener(Event.SELECT,this.§?v§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §?v§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §>!`§ = this.§^!4§.name;
            while(true)
            {
               this.§^!4§.removeEventListener(Event.SELECT,this.§?v§);
            }
            addr103:
         }
         while(true)
         {
            this.§^!4§.addEventListener(Event.COMPLETE,this.§9A§);
            while(!(_loc3_ && this))
            {
               this.§^!4§.addEventListener(IOErrorEvent.IO_ERROR,this.§'T§);
               for(; !(_loc3_ && _loc2_); this.§^!4§.load(),if(_loc2_ || this)
               {
                  return;
               })
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr103);
               }
            }
         }
      }
      
      protected function §'T§(param1:IOErrorEvent) : void
      {
      }
      
      private function §9A§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§^!4§.removeEventListener(Event.COMPLETE,this.§9A§);
         }
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         if(_loc4_)
         {
            this.dispatchEvent(new Event(Event.SELECT));
            do
            {
               §#!j§.§[E§.§&!F§.§&",§();
               do
               {
                  §5L§.§[E§.§["%§(_loc2_);
               }
               while(!_loc4_);
               
            }
            while(_loc3_);
            
         }
      }
      
      private function startSandbox() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.dispatchEvent(new Event(Event.SELECT));
            while(true)
            {
               §#!j§.§[E§.§&!F§.§&",§();
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §5L§.§[E§.§["%§(null);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      private function §1!K§(param1:Event = null) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:TextField = null;
         var _loc8_:* = false;
         var _loc9_:* = null;
         var _loc10_:MovieClip = null;
         var _loc11_:* = 0;
         var _loc12_:§7a§ = null;
         if(_loc13_)
         {
            §§push(Boolean(param1));
            if(!(_loc14_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc14_)
                  {
                     §§pop();
                     addr71:
                     if(_loc13_ || _loc3_)
                     {
                        §§push(param1.type == §!"8§.§6"+§);
                     }
                     _loc2_ = this.§4"%§.TaskList.text as TextField;
                     var _loc3_:int = 0;
                     if(_loc13_ || this)
                     {
                        if(_loc2_)
                        {
                           if(!(_loc14_ && _loc2_))
                           {
                              addr97:
                              _loc2_.text = "";
                              if(!(_loc14_ && _loc2_))
                              {
                                 _loc2_.mouseEnabled = false;
                              }
                           }
                        }
                        var _loc4_:Vector.<String> = this.§[o§.§9!J§();
                        var _loc5_:int = 1;
                        loop0:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop1:
                           while(true)
                           {
                              §§push(3);
                              while(true)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    §§push(false);
                                    loop3:
                                    while(true)
                                    {
                                       _loc8_ = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          addr154:
                                          addr205:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(_loc13_)
                                             {
                                                if(§§pop() - 1 >= _loc4_.length)
                                                {
                                                   break;
                                                }
                                                if(!_loc14_)
                                                {
                                                   if(_loc13_ || _loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          if(_loc2_)
                                          {
                                             if(_loc14_ && _loc3_)
                                             {
                                                continue loop0;
                                             }
                                             if(_loc10_ = this.§7!8§("TaskCheck" + _loc5_.toString(),this.§4"%§) as MovieClip)
                                             {
                                                if(_loc13_ || _loc3_)
                                                {
                                                   if(_loc5_ >= _loc4_.length + 1)
                                                   {
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         _loc10_.visible = false;
                                                         if(!_loc13_)
                                                         {
                                                            addr274:
                                                            §§push(_loc9_);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop().replace("[done]",""));
                                                            }
                                                            _loc9_ = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               _loc2_.appendText(_loc9_ + "\n");
                                                               if(_loc13_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr274);
                                                                  }
                                                                  addr295:
                                                                  _loc5_++;
                                                                  if(!_loc14_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr301:
                                                                  var _loc6_:MovieClip;
                                                                  §§push((_loc6_ = this.mClip.Container_QuestMenu.Container_MainQuest.SurpriseStar0 as MovieClip).currentFrame == 2);
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           §§pop();
                                                                           §§push(Boolean(this.§]4§[_loc6_]));
                                                                           if(_loc13_ || _loc3_)
                                                                           {
                                                                           }
                                                                           addr339:
                                                                           var _loc7_:* = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                              addr437:
                                                                              if(_loc3_ <= 1)
                                                                              {
                                                                                 addr438:
                                                                                 if(this.§]4§[_loc6_])
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       this.§]4§[_loc6_].removeEventListener(Event.COMPLETE,this.§=,§);
                                                                                       this.§]4§[_loc6_] = null;
                                                                                       addr454:
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          addr419:
                                                                                          _loc6_.gotoAndStop(1);
                                                                                          addr423:
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr397:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc13_ || this)
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(_loc13_ || param1)
                                                                                                {
                                                                                                   addr415:
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      addr417:
                                                                                                      §§pop();
                                                                                                      addr418:
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            addr350:
                                                                                                            §§push(!§§pop());
                                                                                                            if(_loc13_ || this)
                                                                                                            {
                                                                                                               §§goto(addr357);
                                                                                                            }
                                                                                                            §§goto(addr415);
                                                                                                         }
                                                                                                         §§goto(addr417);
                                                                                                      }
                                                                                                      §§goto(addr350);
                                                                                                   }
                                                                                                   addr357:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc13_ || this)
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               addr370:
                                                                                                               §§push(0);
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  if(_loc13_ || _loc3_)
                                                                                                                  {
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr388:
                                                                                                                        if(_loc13_ || param1)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr397);
                                                                                                                           }
                                                                                                                           addr498:
                                                                                                                           if(_loc11_ < §#!j§.§[E§.§0"!§.§0z§.objects.getObjectCount())
                                                                                                                           {
                                                                                                                              if((_loc12_ = §7a§.§^!g§(§#!j§.§[E§.§0"!§.§0z§.objects.getObject(_loc11_))).§>!r§())
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    this.§%!J§(_loc6_,new §<^§(_loc12_),true);
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       addr487:
                                                                                                                                       _loc11_++;
                                                                                                                                    }
                                                                                                                                    §§goto(addr498);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr487);
                                                                                                                           }
                                                                                                                           §§goto(addr506);
                                                                                                                        }
                                                                                                                        §§goto(addr454);
                                                                                                                     }
                                                                                                                     §§goto(addr506);
                                                                                                                  }
                                                                                                                  §§goto(addr397);
                                                                                                               }
                                                                                                               §§goto(addr498);
                                                                                                            }
                                                                                                            §§goto(addr423);
                                                                                                         }
                                                                                                         §§goto(addr418);
                                                                                                      }
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   §§goto(addr506);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr437);
                                                                                          }
                                                                                          §§goto(addr454);
                                                                                       }
                                                                                       §§goto(addr438);
                                                                                    }
                                                                                    addr506:
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr419);
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr370);
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  §§goto(addr339);
                                                               }
                                                               §§goto(addr274);
                                                               addr285:
                                                            }
                                                            addr294:
                                                            §§goto(addr294);
                                                         }
                                                      }
                                                      §§goto(addr295);
                                                   }
                                                   else
                                                   {
                                                      _loc10_.visible = _loc9_.indexOf("[done]") > -1;
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr285);
                                             }
                                          }
                                          §§goto(addr295);
                                       }
                                    }
                                 }
                                 §§goto(addr301);
                              }
                           }
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
            if(§§pop())
            {
               if(_loc13_)
               {
                  this.§4"%§ = this.§2!<§.getChildByName("Container_DropMenu") as MovieClip;
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §?!T§(param1:Event = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:§7!9§ = null;
         var _loc2_:* = true;
         var _loc3_:Vector.<§7!9§> = this.§[o§.§=O§();
         if(!_loc7_)
         {
            if(_loc3_ == null)
            {
               if(!_loc7_)
               {
                  _loc4_ = 0;
                  addr41:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc8_ || this)
                     {
                        if(§§pop() <= 2)
                        {
                           (_loc5_ = this.§7!8§("SurpriseStar" + _loc4_.toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).visible = false;
                           if(!_loc7_)
                           {
                              _loc4_++;
                           }
                           continue;
                        }
                        if(_loc8_ || param1)
                        {
                        }
                     }
                     else
                     {
                        loop1:
                        for(; §§pop() < _loc3_.length; while(true)
                        {
                           continue loop1;
                        })
                        {
                           §§push((_loc6_ = _loc3_[_loc4_]).§!9§);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           _loc2_ = §§pop();
                           §§push((_loc5_ = this.§7!8§("SurpriseStar" + (_loc4_ + 1).toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).currentFrame == 1);
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              if(!(_loc7_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       §§pop();
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(_loc2_);
                                          if(!_loc7_)
                                          {
                                             addr261:
                                             §§push(Boolean(§§pop()));
                                             if(_loc8_ || _loc3_)
                                             {
                                                addr279:
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr282:
                                                      while(true)
                                                      {
                                                         §§push(!this.§]4§[_loc5_]);
                                                      }
                                                   }
                                                   addr281:
                                                }
                                                while(true)
                                                {
                                                   addr250:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§%!J§(_loc5_,new §<^§(_loc6_));
                                                         loop9:
                                                         while(true)
                                                         {
                                                            addr167:
                                                            loop10:
                                                            while(true)
                                                            {
                                                               _loc4_++;
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§]4§[_loc5_] = null;
                                                                        addr193:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              addr235:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_ && this)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(!this.§]4§[_loc5_])
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§]4§[_loc5_].removeEventListener(Event.COMPLETE,this.§=,§);
                                                                           }
                                                                        }
                                                                        §§goto(addr282);
                                                                     }
                                                                     addr187:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr187);
                                                                  }
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr282);
                                    }
                                    §§goto(addr250);
                                 }
                              }
                              §§goto(addr279);
                           }
                           §§goto(addr261);
                        }
                        addr284:
                     }
                     §§goto(addr287);
                  }
               }
               §§goto(addr41);
            }
            else
            {
               §§push(0);
               if(_loc8_ || param1)
               {
                  _loc4_ = §§pop();
                  if(!_loc7_)
                  {
                     §§goto(addr283);
                  }
                  addr287:
                  return;
               }
            }
            §§goto(addr284);
         }
         §§goto(addr41);
      }
      
      private function §%!J§(param1:MovieClip, param2:§<^§, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§<^§ = new §<^§(param1);
         var _loc5_:§+!d§ = new §+!d§(param2.position,_loc4_.position,param3);
         if(_loc6_)
         {
            this.§`!v§.movieClip.addChild(_loc5_);
            while(this.§]4§[param1] == null)
            {
               if(!(_loc7_ && param3))
               {
                  _loc5_.addEventListener(Event.COMPLETE,this.§=,§);
               }
               do
               {
                  this.§]4§[param1] = _loc5_;
               }
               while(!(_loc6_ || param3));
               
               if(!(_loc7_ && this))
               {
                  addr67:
                  break;
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      private function §=,§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         for(_loc2_ in this.§]4§)
         {
            if(!_loc6_)
            {
               if(this.§]4§[_loc2_] != param1.target)
               {
                  continue;
               }
               if(!(_loc6_ && _loc2_))
               {
                  addr58:
                  _loc2_.gotoAndStop(2);
                  if(_loc5_)
                  {
                     this.§]4§[_loc2_] = null;
                     addr63:
                  }
                  break;
               }
               §§goto(addr63);
            }
            §§goto(addr58);
         }
      }
      
      private function §]!m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§2!<§.hasEventListener(Event.ENTER_FRAME))
            {
               if(_loc2_ || _loc2_)
               {
                  addr57:
                  this.§2!<§.removeEventListener(Event.ENTER_FRAME,this.§"!F§);
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      private function §"!F§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§2!<§.currentFrame != 1)
            {
               this.§2!<§.prevFrame();
               if(!(_loc2_ && _loc3_))
               {
                  addr47:
               }
               else
               {
                  addr67:
               }
               return;
            }
            if(_loc3_)
            {
               this.§]!m§();
            }
            §§goto(addr67);
         }
         §§goto(addr47);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§-H§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§-H§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§-H§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§-H§.removeEventListener(param1,param2,param3);
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§-H§.willTrigger(param1);
      }
   }
}
