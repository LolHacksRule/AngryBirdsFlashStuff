package §;"v§
{
   import §"!t§.§%x§;
   import §"!t§.§5!e§;
   import §"!t§.§5"U§;
   import §+!J§.§""A§;
   import §,!k§.Assistant;
   import §,0§.§#A§;
   import §-"?§.§+!8§;
   import §-"?§.§4"u§;
   import §1"b§.§7",§;
   import §3j§.§!!l§;
   import §3j§.§0"h§;
   import §3j§.§7e§;
   import §6§.§%I§;
   import §7g§.§,!B§;
   import §87§.§?§;
   import §]"T§.§'"N§;
   import §]"r§.§ k§;
   import §]"r§.§["g§;
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.BlurFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §]!+§ extends Sprite implements §5"U§, §%x§
   {
      
      public static const §=!Q§:Number = 0.4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!Q§ = 0.4;
         }
      }
      
      private var §#L§:DConsole;
      
      private var _rect:Rectangle;
      
      private var §;!M§:§7e§;
      
      private var §6"Z§:§!!l§;
      
      private var §-# §:§0"h§;
      
      private var §8"X§:Array;
      
      private var §,!y§:§5!e§;
      
      private var §"#H§:Sprite;
      
      private var §,!I§:Number;
      
      private var §>1§:Boolean;
      
      private var §class§:§#A§;
      
      private var §1"q§:Boolean;
      
      private var §+i§:Shape;
      
      private var §`#Z§:Rectangle;
      
      private var §>!a§:int = -1;
      
      private var §,![§:BitmapData;
      
      private var §+[§:Sprite;
      
      private var §]f§:Boolean = false;
      
      private var §3"^§:§ k§;
      
      private var §;#X§:Rectangle;
      
      private var §^J§:Boolean;
      
      private var §66§:BitmapData;
      
      private var §1v§:Bitmap;
      
      private var § T§:Shape;
      
      private var §2"2§:BitmapData;
      
      private var §##`§:Boolean = false;
      
      public function §]!+§(param1:DConsole = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§8"X§ = [];
            if(!_loc3_)
            {
               this.§+i§ = new Shape();
               if(!_loc3_)
               {
                  this.§`#Z§ = new Rectangle();
                  if(_loc4_ || _loc3_)
                  {
                     this.§+[§ = new Sprite();
                     loop0:
                     while(true)
                     {
                        this.§1v§ = new Bitmap();
                        if(!(_loc3_ && _loc3_))
                        {
                           this.§ T§ = new Shape();
                           if(_loc4_)
                           {
                              this.§2"2§ = new BitmapData(1,3,true,0);
                              loop1:
                              while(true)
                              {
                                 super();
                                 if(_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    this.§3"^§ = new § k§(param1);
                                    if(_loc4_ || _loc2_)
                                    {
                                       continue;
                                    }
                                    addr458:
                                    addr181:
                                    addr458:
                                    this.§;!M§ = new §7e§(param1);
                                    while(true)
                                    {
                                       this.§6"Z§ = new §!!l§(param1);
                                       addr452:
                                       while(true)
                                       {
                                          this.§-# § = new §0"h§(param1);
                                          if(_loc4_)
                                          {
                                             break loop1;
                                          }
                                          addr645:
                                          loop16:
                                          while(true)
                                          {
                                             §§push(this.§#L§);
                                             addr615:
                                             while(true)
                                             {
                                                §§push(§§pop().§]"z§);
                                                addr616:
                                                while(true)
                                                {
                                                   §§pop().addCallback(§""A§.§'#W§,this.§%#[§);
                                                   break loop0;
                                                }
                                             }
                                             addr638:
                                             loop41:
                                             while(true)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   continue loop16;
                                                }
                                                addr657:
                                                loop38:
                                                while(true)
                                                {
                                                   §§push(this.§#L§);
                                                   addr625:
                                                   addr670:
                                                   while(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop().§]"z§);
                                                      while(true)
                                                      {
                                                         §§pop().addCallback(§""A§.§+K§,this.§%#[§);
                                                         continue loop41;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§]"z§);
                                                      while(true)
                                                      {
                                                         §§pop().addCallback(§""A§.§1"4§,this.§9#_§);
                                                         addr676:
                                                         loop35:
                                                         while(true)
                                                         {
                                                            §§push(this.§#L§);
                                                            addr649:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§]"z§);
                                                               addr650:
                                                               while(_loc4_)
                                                               {
                                                                  §§pop().addCallback(§""A§.§&!I§,this.§9#_§);
                                                                  continue loop38;
                                                               }
                                                               continue loop35;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr625);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 this.addChild(this.§+[§);
                                 if(_loc4_)
                                 {
                                    this.addChild(this.§-# §);
                                    if(_loc4_ || param1)
                                    {
                                       this.§"#H§ = new Sprite();
                                       if(!_loc3_)
                                       {
                                          §§goto(addr415);
                                       }
                                    }
                                    §§goto(addr645);
                                 }
                                 §§goto(addr676);
                                 §§goto(addr452);
                              }
                           }
                           §§goto(addr181);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr594);
                     }
                  }
                  §§goto(addr233);
               }
               §§goto(addr244);
            }
            §§goto(addr233);
         }
         §§goto(addr458);
      }
      
      public function get input() : §'"N§
      {
         return this.§;!M§.input;
      }
      
      public function get output() : §?#8§
      {
         return this.§;!M§.output;
      }
      
      public function get §;!v§() : §,!B§
      {
         return this.§;!M§.§9!O§;
      }
      
      public function get assistant() : Assistant
      {
         return this.§;!M§.assistant;
      }
      
      public function get inspector() : §#A§
      {
         return this.§6"Z§.inspector;
      }
      
      public function get §+!h§() : §%I§
      {
         return this.§-# §.dynamic;
      }
      
      public function get §8#R§() : § k§
      {
         return this.§3"^§;
      }
      
      private function §1!z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            addEventListener(Event.ENTER_FRAME,this.§]",§);
            do
            {
               this.§2"2§.setPixel32(0,0,4286611584);
               do
               {
                  this.§2"2§.setPixel32(0,1,4293848814);
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §#-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§##`§);
            if(_loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().§##`§ = §§pop();
            loop0:
            while(true)
            {
               if(!this.§##`§)
               {
                  loop1:
                  while(true)
                  {
                     if(contains(this.§1v§))
                     {
                        addr72:
                        while(true)
                        {
                           removeChild(this.§1v§);
                           addr76:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                        addr72:
                     }
                     while(contains(this.§ T§))
                     {
                        if(!_loc1_)
                        {
                           removeChild(this.§ T§);
                        }
                        if(!_loc1_)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              continue loop1;
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr76);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      private function §`"C§(param1:§7",§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = param1.message;
         if(_loc4_)
         {
            if(§""A§.§;"B§ === _loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(0);
                  if(_loc5_ && _loc2_)
                  {
                  }
               }
               else
               {
                  addr211:
                  §§push(1);
                  if(_loc4_ || this)
                  {
                  }
               }
            }
            else
            {
               if(§""A§.§""C§ === _loc3_)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr211);
                  }
               }
               else if(§""A§.§`#D§ !== _loc3_)
               {
                  addr247:
                  loop5:
                  switch(§§pop())
                  {
                     case 0:
                        Mouse.cursor = MouseCursor.HAND;
                        break;
                        addr101:
                     case 1:
                        Mouse.cursor = MouseCursor.AUTO;
                        addr87:
                        if(_loc4_ || param1)
                        {
                           addr47:
                           break;
                        }
                        §§goto(addr101);
                        break;
                     case 2:
                        this.§`#Z§.height = Math.round(Math.max(§>"!§.§6R§ * 5,Math.min(stage.stageHeight - §>"!§.§6R§,stage.mouseY - this.y)) / §>"!§.§6R§) * §>"!§.§6R§;
                        while(true)
                        {
                           this.§`#Z§.width = stage.mouseX - this.x;
                           if(!_loc4_)
                           {
                              break loop5;
                           }
                           if(_loc5_ && _loc3_)
                           {
                              continue;
                           }
                           if(!(_loc5_ && _loc2_))
                           {
                              if(true)
                              {
                                 _loc2_ = this.rect;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    _loc2_.height = this.§`#Z§.height;
                                    while(true)
                                    {
                                       _loc2_.width = this.§`#Z§.width;
                                       addr156:
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       this.rect = _loc2_;
                                       if(_loc4_ || this)
                                       {
                                          if(false)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                _loc2_.width = Math.ceil(Math.max(150,Math.min(_loc2_.width,stage.stageWidth - this.x)));
                                                addr154:
                                                addr170:
                                                while(!_loc5_)
                                                {
                                                   §§goto(addr156);
                                                }
                                                while(true)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          break loop5;
                                       }
                                       §§goto(addr154);
                                    }
                                 }
                                 §§goto(addr170);
                              }
                           }
                           else
                           {
                              §§goto(addr87);
                           }
                           §§goto(addr47);
                        }
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr247);
               if(_loc5_ && _loc3_)
               {
               }
            }
            §§goto(addr247);
         }
         §§goto(addr211);
      }
      
      override public function get x() : Number
      {
         return super.x;
      }
      
      override public function set x(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            super.x = this.§#L§.persistence.§?"i§ = param1;
         }
      }
      
      override public function get y() : Number
      {
         return super.y;
      }
      
      override public function set y(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.y = this.§#L§.persistence.§^Q§ = param1;
         }
      }
      
      override public function get height() : Number
      {
         return this.§#L§.persistence.§-1§;
      }
      
      override public function set height(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§#L§.persistence.§-1§ = param1;
            do
            {
               this.rect = this.§#L§.persistence.rect;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function get width() : Number
      {
         return this.§#L§.persistence.§6#>§;
      }
      
      override public function set width(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§#L§.persistence.§6#>§ = param1;
            do
            {
               this.rect = this.§#L§.persistence.rect;
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      private function §%#[§(param1:§7",§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.message;
         if(_loc4_)
         {
            if(§""A§.§+K§ === _loc2_)
            {
               if(_loc4_)
               {
                  addr444:
                  §§push(0);
                  if(_loc3_ && _loc2_)
                  {
                     addr467:
                  }
               }
               else
               {
                  addr472:
                  §§push(2);
                  if(_loc3_ && _loc2_)
                  {
                  }
               }
               §§goto(addr495);
            }
            else
            {
               if(§""A§.§'#W§ !== _loc2_)
               {
                  if(§""A§.§+#@§ === _loc2_)
                  {
                     §§goto(addr472);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr495:
                  loop35:
                  switch(§§pop())
                  {
                     case 0:
                        Mouse.cursor = MouseCursor.HAND;
                        break;
                        addr429:
                     case 1:
                        Mouse.cursor = MouseCursor.AUTO;
                        addr412:
                        this.§#L§.§]"z§.§#!"§(§""A§.§<Y§,null,this);
                        this.§-!h§();
                        break;
                        addr414:
                        addr422:
                        addr409:
                        addr411:
                        addr408:
                        addr404:
                     case 2:
                        this.x += param1.data.x;
                        loop0:
                        while(true)
                        {
                           this.y += param1.data.y;
                           loop1:
                           while(true)
                           {
                              this.x = int(Math.max(0,Math.min(this.x,stage.stageWidth - this._rect.width)));
                              loop2:
                              while(true)
                              {
                                 this.y = int(Math.max(0,Math.min(this.y,stage.stageHeight - this._rect.height)));
                                 loop3:
                                 while(_loc4_)
                                 {
                                    §§push(this.§8#R§);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(true);
                                       addr337:
                                       while(true)
                                       {
                                          §§pop().visible = §§pop();
                                          addr338:
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.y);
                                             loop7:
                                             while(§§pop() > 2)
                                             {
                                                §§push(this.y);
                                                if(_loc3_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §§push(stage.stageHeight - this._rect.height);
                                                if(_loc4_ || param1)
                                                {
                                                   §§push(§§pop() - 2);
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(this.§#L§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(§§pop().§]"z§);
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push(§""A§.§<Y§);
                                                               if(_loc4_ || this)
                                                               {
                                                                  §§push(null);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§pop().§#!"§(§§pop(),§§pop(),this);
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc3_ && param1)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        addr266:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§#L§);
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 addr275:
                                                                                 §§push(§§pop().§]"z§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§""A§.§7" §);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§["g§.§var §);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§pop().§#!"§(§§pop(),§§pop(),this);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§push(this.§#L§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   §§push(§§pop().persistence);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop().dockState);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(DConsole.§+"j§);
                                                                                                            addr219:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().value = §§pop();
                                                                                                               loop11:
                                                                                                               while(!(_loc3_ && this))
                                                                                                               {
                                                                                                                  §§push(this.§3"^§);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§pop().y = -this.§8#R§.height;
                                                                                                                     while(_loc4_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                     addr205:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().y = this._rect.height;
                                                                                                                        addr302:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr298:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.assistant.§,!J§.visible = !this.§8#R§.visible;
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && param1))
                                                                                                                        {
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              break loop35;
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        addr116:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ || this))
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              if(!(_loc3_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    loop14:
                                                                                                                                    while(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§#L§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().persistence);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().dockState);
                                                                                                                                                addr310:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(DConsole.§<!g§);
                                                                                                                                                   addr312:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().value = §§pop();
                                                                                                                                                      addr313:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr298);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr309:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§]"z§);
                                                                                                                                                addr324:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§""A§.§7" §);
                                                                                                                                                   addr326:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§["g§.TOP);
                                                                                                                                                      addr328:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§#!"§(§§pop(),§§pop(),this);
                                                                                                                                                         continue loop14;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr323:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr414);
                                                                                                                                 }
                                                                                                                                 if(_loc4_ || this)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 §§goto(addr422);
                                                                                                                              }
                                                                                                                              §§goto(addr313);
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           §§goto(addr205);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break loop35;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                         }
                                                                                                         addr217:
                                                                                                      }
                                                                                                      §§goto(addr309);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break loop35;
                                                                                          }
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr275);
                                                                                 }
                                                                                 §§goto(addr409);
                                                                                 addr276:
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr412);
                                                               }
                                                               §§goto(addr411);
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                }
                                                §§goto(addr266);
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr323);
                                                   §§push(this.§#L§);
                                                }
                                                else
                                                {
                                                   §§goto(addr429);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr404);
                              }
                           }
                        }
                  }
                  return;
               }
               if(!_loc3_)
               {
                  §§push(1);
                  if(_loc4_ || this)
                  {
                     §§goto(addr467);
                  }
               }
               else
               {
                  §§goto(addr472);
               }
               §§goto(addr495);
            }
            §§goto(addr472);
         }
         §§goto(addr444);
      }
      
      private function §9#_§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§,!y§.§`_§ = this.§#L§.persistence.verticalSplitRatio.value;
            do
            {
               this.§,!T§();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      private function §2f§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§^J§ = true;
         }
         do
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§2f§);
            do
            {
               this.§2i§();
            }
            while(!(_loc4_ || this));
            
         }
         while(!_loc4_);
         
         loop2:
         while(true)
         {
            §§push(this.§^7§);
            if(_loc4_ || this)
            {
               var _loc2_:* = §§pop();
               if(_loc4_ || param1)
               {
                  §§push(DConsole.§+"j§);
                  if(!_loc3_)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || this)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc3_)
                           {
                              addr131:
                              §§push(0);
                              if(_loc4_)
                              {
                                 addr160:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.y = stage.stageHeight + 10;
                                       break;
                                       addr60:
                                    case 1:
                                       §§push(this);
                                       §§push(this.height);
                                       if(_loc4_)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().y = §§pop();
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          §§goto(addr60);
                                       }
                                 }
                                 this.onParentUpdate(this._rect);
                                 addr159:
                                 while(true)
                                 {
                                    this.§^J§ = false;
                                    if(!_loc3_)
                                    {
                                       break loop2;
                                    }
                                 }
                                 addr159:
                              }
                              else
                              {
                                 addr154:
                                 §§goto(addr159);
                              }
                           }
                           else
                           {
                              addr146:
                              §§push(1);
                              if(_loc4_ || this)
                              {
                                 §§goto(addr154);
                              }
                           }
                        }
                        else
                        {
                           §§push(DConsole.§<!g§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(_loc2_);
                           }
                        }
                        §§goto(addr159);
                     }
                     if(§§pop() === §§pop())
                     {
                        §§goto(addr146);
                     }
                     else
                     {
                        §§push(2);
                     }
                  }
                  §§goto(addr159);
               }
               §§goto(addr131);
            }
            §§goto(addr160);
         }
      }
      
      private function §2i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§,!y§.§`_§ = this.§#L§.persistence.verticalSplitRatio.value;
         }
         while(true)
         {
            this.inspector.enabled = this.§,!y§.§`_§ > 0;
            while(_loc1_)
            {
               this.rect = this.§#L§.persistence.rect;
               while(!(_loc2_ && _loc1_))
               {
                  this.x = this.§#L§.persistence.§?"i§;
                  while(!_loc2_)
                  {
                     this.y = this.§#L§.persistence.§^Q§;
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public function get §`_§() : Number
      {
         return this.§,!y§.§`_§;
      }
      
      public function set §`_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!y§.§`_§ = param1;
         }
      }
      
      private function §%f§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = this.rect;
         if(!_loc4_)
         {
            if(_loc2_.height >= 50)
            {
               _loc2_.height = 0;
               loop0:
               while(true)
               {
                  if(_loc4_)
                  {
                     while(true)
                     {
                        continue loop0;
                     }
                     continue;
                     addr85:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               _loc2_.height = stage.stageHeight * 0.8;
               §§goto(addr85);
            }
         }
         §§goto(addr64);
      }
      
      private function §[7§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            Mouse.cursor = MouseCursor.HAND;
         }
         while(true)
         {
            this.§8#R§.§<p§ = true;
            loop1:
            while(_loc3_ || this)
            {
               this.§+i§.visible = true;
               loop2:
               while(true)
               {
                  stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<!V§);
                  while(_loc3_)
                  {
                     stage.addEventListener(MouseEvent.MOUSE_UP,this.§do §);
                     while(_loc3_ || this)
                     {
                        continue loop2;
                        this.§<!V§(param1);
                        if(!_loc2_)
                        {
                           return;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private function §do §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            Mouse.cursor = MouseCursor.AUTO;
            while(true)
            {
               this.§8#R§.§<p§ = false;
            }
            addr91:
         }
         while(true)
         {
            stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<!V§);
            while(_loc2_ || this)
            {
               stage.removeEventListener(MouseEvent.MOUSE_UP,this.§do §);
               for(; _loc2_; this.§,!T§(),if(!(_loc3_ && _loc3_))
               {
                  return;
               })
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr91);
               }
            }
         }
      }
      
      private function §<!V§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            Mouse.cursor = MouseCursor.HAND;
         }
         var _loc2_:Rectangle = this.rect;
         §§push(this.§^7§);
         if(_loc5_)
         {
            var _loc3_:* = §§pop();
            if(_loc5_ || param1)
            {
               §§push(DConsole.§+"j§);
               if(!(_loc4_ && this))
               {
                  if(§§pop() === _loc3_)
                  {
                     addr221:
                     §§push(0);
                     if(!(_loc4_ && param1))
                     {
                        addr239:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr245);
               }
               §§goto(addr239);
            }
            §§goto(addr221);
         }
         addr245:
         loop2:
         switch(§§pop())
         {
            case 0:
               this.§`#Z§.height = Math.round(Math.max(§>"!§.§6R§ * 1,Math.min(stage.stageHeight - §>"!§.§6R§,stage.stageHeight - stage.mouseY - 8)) / §>"!§.§6R§) * §>"!§.§6R§;
               if(!_loc4_)
               {
                  if(_loc2_.height != this.§`#Z§.height)
                  {
                     if(_loc5_ || param1)
                     {
                        _loc2_.height = this.height = this.§`#Z§.height;
                        if(_loc5_)
                        {
                           this.rect = _loc2_;
                           loop1:
                           while(true)
                           {
                              addr139:
                              while(true)
                              {
                                 this.y = stage.stageHeight - _loc2_.height;
                                 if(_loc4_)
                                 {
                                    addr197:
                                    break loop2;
                                 }
                                 if(_loc5_)
                                 {
                                 }
                                 continue loop1;
                              }
                              break loop2;
                           }
                        }
                     }
                  }
                  break;
               }
               §§goto(addr197);
            default:
               this.§`#Z§.height = Math.round(Math.max(§>"!§.§6R§ * 1,Math.min(stage.stageHeight - §>"!§.§6R§,stage.mouseY - 8)) / §>"!§.§6R§) * §>"!§.§6R§;
               if(_loc5_ || this)
               {
                  if(false)
                  {
                     §§goto(addr139);
                  }
                  else if(_loc2_.height != this.§`#Z§.height)
                  {
                     if(!(_loc4_ && param1))
                     {
                        _loc2_.height = this.height = this.§`#Z§.height;
                        if(!(_loc4_ && this))
                        {
                           this.rect = _loc2_;
                           if(_loc4_ && _loc2_)
                           {
                           }
                           break;
                        }
                        break;
                     }
                     break;
                  }
                  §§goto(addr197);
               }
         }
      }
      
      private function §]!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§]f§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr117:
                        while(true)
                        {
                           §§push(this.§^J§);
                           if(!(_loc1_ && _loc1_))
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           if(_loc1_ && this)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        this.§,!y§.§]!e§(this.§>!a§);
                        addr110:
                        while(true)
                        {
                           this.§]f§ = true;
                           do
                           {
                              this.inspector.enabled = this.§>!a§ > 0;
                           }
                           while(!(_loc2_ || _loc2_));
                           
                           if(_loc1_)
                           {
                              continue;
                           }
                           if(!(_loc2_ || _loc1_))
                           {
                              continue loop5;
                           }
                           if(_loc2_)
                           {
                              break loop4;
                           }
                           §§goto(addr117);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §^!^§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§]f§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        addr35:
                        §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           §§push(this.§^J§);
                           if(_loc2_)
                           {
                           }
                           §§goto(addr58);
                        }
                        §§goto(addr111);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr58:
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     this.§]f§ = this.inspector.enabled = false;
                     if(!(_loc2_ && this))
                     {
                        this.§>!a§ = this.§,!y§.§`! §();
                        addr111:
                        do
                        {
                           this.§,!y§.§]!e§(0);
                        }
                        while(_loc2_ && _loc3_);
                        
                        addr111:
                     }
                     §§goto(addr111);
                  }
               }
               return;
            }
            §§goto(addr35);
         }
         §§goto(addr111);
      }
      
      public function §%!^§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-# §.dynamic.§>"x§(param1);
         }
      }
      
      private function §,!T§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Rectangle = this._rect.clone();
         if(!_loc3_)
         {
            this.§;#X§ = _loc1_.clone();
            loop0:
            while(true)
            {
               §§push(this.§-# §);
               loop1:
               while(true)
               {
                  §§pop().onParentUpdate(_loc1_);
                  addr283:
                  while(!_loc3_)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr245);
      }
      
      private function §@"s§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§1"q§)
            {
               while(true)
               {
                  this.§"#H§.alpha = 0;
                  loop1:
                  while(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        this.§"#H§.blendMode = BlendMode.NORMAL;
                        do
                        {
                           if(_loc3_ || _loc2_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        while(Mouse.cursor = MouseCursor.AUTO, _loc2_ && _loc2_);
                        
                        return;
                        addr51:
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      private function §9d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!this.§1"q§)
            {
               loop0:
               do
               {
                  this.§"#H§.alpha = 1;
                  while(!_loc2_)
                  {
                     this.§"#H§.blendMode = BlendMode.INVERT;
                     while(!_loc2_)
                     {
                        Mouse.cursor = MouseCursor.HAND;
                        if(_loc3_ || param1)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!_loc3_);
               
               return;
               addr53:
            }
            return;
         }
         §§goto(addr53);
      }
      
      private function §8"'§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§,!y§);
            if(!(_loc3_ && this))
            {
               if(§§pop().§`! §() <= 30)
               {
                  this.§]f§ = true;
                  if(_loc4_ || _loc2_)
                  {
                     if(_loc4_ || this)
                     {
                        if(false)
                        {
                           loop0:
                           while(true)
                           {
                              this.§^!^§();
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       this.§,!T§();
                                       if(_loc4_ || _loc2_)
                                       {
                                          break;
                                       }
                                       break loop0;
                                    }
                                    addr130:
                                 }
                                 else
                                 {
                                    loop1:
                                    while(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.§>!a§ = this.§,!y§.§`! §();
                                          continue loop1;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§,!y§);
                                       if(_loc3_)
                                       {
                                          addr114:
                                          §§push(this.§>!a§ = 300);
                                          break;
                                       }
                                       §§push(0);
                                       if(_loc3_ && param1)
                                       {
                                          break;
                                       }
                                       §§pop().§]!e§(§§pop());
                                       if(_loc4_ || this)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    §§pop().§]!e§(§§pop());
                                    if(!_loc3_)
                                    {
                                       this.§]!t§();
                                       break;
                                    }
                                    addr93:
                                    addr95:
                                 }
                                 return;
                              }
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr130);
                           }
                           addr152:
                        }
                        else
                        {
                           §§goto(addr114);
                           §§push(this.§,!y§);
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        addr108:
                        this.§]f§ = false;
                        §§goto(addr111);
                     }
                  }
                  §§goto(addr152);
               }
               §§goto(addr108);
            }
            §§goto(addr114);
         }
         §§goto(addr95);
      }
      
      private function §+s§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§1"q§ = true;
            loop0:
            while(true)
            {
               this.§"#H§.alpha = 1;
               while(true)
               {
                  stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§get §);
                  addr55:
                  while(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            stage.addEventListener(MouseEvent.MOUSE_UP,this.§"!o§);
            if(_loc2_)
            {
               break;
            }
            §§goto(addr55);
         }
      }
      
      private function §"!o§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§1"q§ = false;
         }
         loop0:
         while(true)
         {
            this.§"#H§.alpha = 0;
            while(true)
            {
               stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§get §);
               while(!_loc2_)
               {
                  if(!_loc2_)
                  {
                     stage.removeEventListener(MouseEvent.MOUSE_UP,this.§"!o§);
                     while(_loc3_ || this)
                     {
                        Mouse.cursor = MouseCursor.AUTO;
                        if(!(_loc2_ && _loc2_))
                        {
                           return;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §get §(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            Mouse.cursor = MouseCursor.HAND;
         }
         var _loc2_:* = int(Math.max(0,Math.min(this._rect.width / 2,mouseX)));
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() < 30)
               {
                  while(true)
                  {
                     §§push(0);
                     addr132:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr133:
                        while(true)
                        {
                        }
                     }
                  }
                  addr131:
               }
               while(true)
               {
                  this.inspector.enabled = _loc2_ > 0;
                  loop2:
                  while(_loc4_ || this)
                  {
                     while(true)
                     {
                        this.§,!y§.§]!e§(_loc2_);
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              this.§#L§.persistence.verticalSplitRatio.value = this.§,!y§.§`_§;
                              while(!_loc3_)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    this.§,!T§();
                                    if(_loc4_)
                                    {
                                       return;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                           §§goto(addr131);
                        }
                     }
                  }
                  §§goto(addr133);
               }
            }
            §§goto(addr132);
         }
         §§goto(addr110);
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.children.push(param1);
         }
         return super.addChild(param1);
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            param1.height = Math.floor(param1.height);
            while(true)
            {
               param1.width = Math.round(param1.width);
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  while(true)
                  {
                     this.rect = param1;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function show() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            visible = true;
         }
         §§push(this.§^7§);
         if(!_loc2_)
         {
            var _loc1_:* = §§pop();
            if(_loc3_ || this)
            {
               §§push(DConsole.§!!@§);
               if(_loc3_ || this)
               {
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || _loc1_)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr151:
                           §§push(2);
                           if(!_loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(DConsole.§+"j§);
                        if(_loc3_)
                        {
                           addr125:
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(1);
                                    if(!(_loc3_ || this))
                                    {
                                       addr149:
                                       if(§§pop() === _loc1_)
                                       {
                                          §§goto(addr151);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                 }
                                 §§goto(addr151);
                              }
                              else
                              {
                                 §§push(DConsole.§<!g§);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr149);
                                 }
                              }
                           }
                           §§goto(addr149);
                        }
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr149);
               }
               §§goto(addr125);
            }
            §§goto(addr151);
         }
         addr170:
         switch(§§pop())
         {
            case 0:
               this.§9!L§();
               addr39:
               break;
               addr68:
            case 1:
               §4"u§.§#!y§(this,"y",stage.stageHeight - this.height,§=!Q§,this.§9!L§,§+!8§);
               addr55:
               if(_loc3_ || this)
               {
                  break;
               }
               §§goto(addr68);
               break;
            case 2:
            default:
               §4"u§.§#!y§(this,"y",0,§=!Q§,this.§9!L§,§+!8§);
               if(!_loc2_)
               {
                  if(_loc3_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr55);
                  }
                  §§goto(addr39);
               }
         }
      }
      
      private function §9!L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#L§.§]"z§.§#!"§(§""A§.§3#G§,true);
         }
      }
      
      public function hide() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!stage)
            {
               this.§ !>§();
               return;
            }
         }
         §§push(this.§^7§);
         if(!(_loc3_ && _loc2_))
         {
            var _loc1_:* = §§pop();
            if(!_loc3_)
            {
               §§push(DConsole.§!!@§);
               if(_loc2_ || _loc2_)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(0);
                           if(!(_loc3_ && _loc1_))
                           {
                              addr155:
                           }
                           else
                           {
                              addr169:
                           }
                        }
                        else
                        {
                           addr166:
                           §§push(1);
                           if(_loc2_)
                           {
                              §§goto(addr169);
                           }
                        }
                        addr200:
                        switch(§§pop())
                        {
                           case 0:
                              this.§ !>§();
                              addr57:
                              break;
                              addr80:
                           case 1:
                              §4"u§.§#!y§(this,"y",stage.stageHeight + 10,§=!Q§,this.§ !>§,§+!8§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              break;
                           case 2:
                           default:
                              §§push(§4"u§);
                              §§push(this);
                              §§push("y");
                              §§push(this.height);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§#!y§(§§pop(),§§pop(),§§pop(),§=!Q§,this.§ !>§,§+!8§);
                              if(_loc2_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr80);
                                 }
                                 §§goto(addr57);
                              }
                        }
                        return;
                        addr199:
                     }
                     else
                     {
                        §§push(DConsole.§+"j§);
                        if(!_loc3_)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr166);
                                 }
                                 else
                                 {
                                    addr181:
                                    §§push(2);
                                    if(!_loc3_)
                                    {
                                       addr194:
                                    }
                                 }
                                 §§goto(addr199);
                              }
                              else
                              {
                                 §§push(DConsole.§<!g§);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    addr180:
                                    if(§§pop() === _loc1_)
                                    {
                                       §§goto(addr181);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                    §§goto(addr199);
                                 }
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr180);
                        }
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr180);
               }
               §§goto(addr155);
            }
            §§goto(addr166);
         }
         §§goto(addr200);
      }
      
      public function §'#-§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Rectangle = null;
         §§push(this.§^7§);
         if(_loc4_ || _loc1_)
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               §§push(DConsole.§!!@§);
               if(_loc4_)
               {
                  if(§§pop() === _loc2_)
                  {
                     addr127:
                     §§push(0);
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr127);
         }
         addr146:
         switch(§§pop())
         {
            case 0:
               this.§^7§ = DConsole.§<!g§;
               if(!_loc3_)
               {
                  this.§'#-§();
                  if(_loc3_ && _loc1_)
                  {
                  }
                  break;
               }
               break;
            default:
               _loc1_ = this._rect;
               if(_loc4_)
               {
                  _loc1_.height = int(stage.stageHeight - §>"!§.§6R§);
                  while(true)
                  {
                     _loc1_.width = int(stage.stageWidth);
                  }
                  addr101:
               }
               loop1:
               while(true)
               {
                  this.rect = _loc1_;
                  while(true)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        loop3:
                        while(true)
                        {
                           this.§-!h§();
                           while(_loc4_)
                           {
                              this.output.§["R§();
                              if(_loc4_)
                              {
                                 continue loop3;
                              }
                           }
                           §§goto(addr101);
                        }
                        continue;
                     }
                     continue loop1;
                  }
               }
         }
      }
      
      public function §0"<§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Rectangle = this._rect;
         §§push(this.§^7§);
         if(_loc4_ || this)
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               §§push(DConsole.§!!@§);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() === _loc2_)
                  {
                     addr108:
                     §§push(0);
                     if(_loc4_)
                     {
                        addr111:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr117);
               }
               §§goto(addr111);
            }
            §§goto(addr108);
         }
         addr117:
         loop2:
         switch(§§pop())
         {
            case 0:
               _loc1_.height = 5 * §>"!§.§6R§;
               if(_loc4_)
               {
                  this.rect = _loc1_;
                  break;
                  addr57:
               }
               break;
            default:
               _loc1_.height = §>"!§.§6R§;
               loop0:
               while(true)
               {
                  while(true)
                  {
                     this.§-!h§();
                     if(_loc4_ || this)
                     {
                        this.rect = _loc1_;
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           if(_loc4_)
                           {
                              if(true)
                              {
                                 break loop2;
                              }
                              continue;
                           }
                           §§goto(addr57);
                        }
                        break loop2;
                     }
                     break;
                  }
                  §§goto(addr138);
               }
         }
         this.output.§["R§();
         addr138:
      }
      
      public function §="l§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Rectangle = this.§#L§.persistence.rect;
         if(!_loc3_)
         {
            this.x = _loc1_.x;
            loop0:
            while(true)
            {
               this.y = _loc1_.y;
               addr83:
               while(true)
               {
                  this.width = _loc1_.width;
                  addr65:
                  while(_loc2_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            this.height = _loc1_.height;
            while(_loc2_)
            {
               this.§-!h§();
               if(!(_loc2_ || this))
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break loop3;
               }
               §§goto(addr65);
            }
            §§goto(addr83);
         }
      }
      
      private function § !>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            visible = false;
            do
            {
               this.§#L§.§]"z§.§#!"§(§""A§.§3#G§,false);
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function get children() : Array
      {
         return this.§8"X§;
      }
      
      public function set rect(param1:Rectangle) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this._rect = param1;
            if(_loc3_ || this)
            {
               this._rect.x = this._rect.y = 0;
               if(_loc3_)
               {
                  this._rect.height = Math.floor(Math.max(this.§9#$§,this._rect.height) / §>"!§.§6R§) * §>"!§.§6R§;
                  loop0:
                  while(true)
                  {
                     this._rect.width = int(Math.max(this.§>"Z§,this._rect.width));
                     while(true)
                     {
                        this.§+[§.graphics.clear();
                        addr53:
                        if(!(_loc4_ && _loc3_))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               this.§+[§.graphics.lineStyle(0,§?#O§.§0!^§);
               while(_loc3_)
               {
                  this.§+[§.graphics.drawRect(0,0,this._rect.width,this._rect.height);
                  while(_loc3_ || _loc2_)
                  {
                     this.§+[§.graphics.endFill();
                     loop5:
                     while(true)
                     {
                        §§push(this.§#L§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop().persistence);
                           addr90:
                           addr118:
                           while(true)
                           {
                              §§pop().§6#>§ = this._rect.width;
                              continue loop5;
                           }
                           while(true)
                           {
                              §§push(this.§#L§);
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop6;
                              }
                              §§push(§§pop().persistence);
                              if(!_loc4_)
                              {
                                 addr81:
                                 §§pop().§-1§ = this._rect.height;
                                 do
                                 {
                                    this.§,!T§();
                                 }
                                 while(_loc4_);
                                 
                                 if(!_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr53);
                              }
                              else
                              {
                                 §§goto(addr90);
                              }
                           }
                           §§goto(addr67);
                        }
                     }
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     §§goto(addr118);
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      public function get rect() : Rectangle
      {
         return this.§#L§.persistence.rect;
      }
      
      public function get §9#$§() : Number
      {
         return 32;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
      
      public function get §]!2§() : §7e§
      {
         return this.§;!M§;
      }
      
      public function get §^7§() : int
      {
         return this.§#L§.persistence.dockState.value;
      }
      
      public function set §^7§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#L§.persistence.dockState.value = param1;
            do
            {
               this.§-!h§();
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      private function §-!h§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§8#R§.visible = true;
         }
         §§push(this.§^7§);
         if(!_loc2_)
         {
            var _loc1_:* = §§pop();
            if(!_loc2_)
            {
               §§push(DConsole.§<!g§);
               if(!_loc2_)
               {
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc2_)
                        {
                           addr196:
                           §§push(0);
                           if(_loc2_ && _loc3_)
                           {
                              addr233:
                           }
                        }
                        else
                        {
                           addr240:
                           §§push(2);
                           if(_loc3_)
                           {
                              addr243:
                           }
                        }
                     }
                     else
                     {
                        §§push(DConsole.§+"j§);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(1);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§goto(addr233);
                                    }
                                    addr249:
                                    loop5:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          this._rect.width = stage.stageWidth;
                                          this.rect = this._rect;
                                          this.x = 0;
                                          loop0:
                                          while(true)
                                          {
                                             this.y = 0;
                                             addr143:
                                             while(true)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break loop0;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          addr161:
                                          break;
                                          addr161:
                                          addr170:
                                       case 1:
                                          this._rect.width = stage.stageWidth;
                                          loop1:
                                          for(; _loc3_; while(true)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.rect = this._rect;
                                                this.y = stage.stageHeight - this._rect.height;
                                                this.x = 0;
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr64:
                                                   break loop5;
                                                }
                                                break loop5;
                                                addr99:
                                                addr93:
                                             }
                                             continue loop1;
                                          },break loop5)
                                          {
                                             if(_loc3_)
                                             {
                                                this.§3"^§.y = -this.§8#R§.height;
                                                continue;
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr143);
                                       case 2:
                                          this.rect = this._rect;
                                          while(true)
                                          {
                                             this.§8#R§.visible = false;
                                             if(_loc2_ && _loc1_)
                                             {
                                                break;
                                             }
                                             if(!(_loc3_ || _loc1_))
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop5;
                                                         }
                                                         §§goto(addr64);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr170);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr108);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr99);
                                             }
                                             §§goto(addr93);
                                          }
                                          §§goto(addr270);
                                    }
                                    this.assistant.§,!J§.visible = !this.§8#R§.visible;
                                    addr248:
                                    addr270:
                                    return;
                                    addr248:
                                 }
                                 else
                                 {
                                    §§goto(addr240);
                                 }
                                 §§goto(addr248);
                              }
                              else
                              {
                                 §§push(DConsole.§!!@§);
                                 if(!_loc2_)
                                 {
                                    addr239:
                                    if(§§pop() === _loc1_)
                                    {
                                       §§goto(addr240);
                                    }
                                    else
                                    {
                                       §§goto(addr248);
                                       §§push(3);
                                    }
                                    §§goto(addr248);
                                 }
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr239);
                        }
                     }
                     §§goto(addr248);
                  }
               }
               §§goto(addr239);
            }
            §§goto(addr196);
         }
         §§goto(addr249);
      }
      
      private function §]",§(param1:Event = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(this.§##`§)
            {
               loop0:
               while(true)
               {
                  this.§ T§.graphics.clear();
                  while(true)
                  {
                     this.§ T§.graphics.beginBitmapFill(this.§2"2§,null,true,false);
                     while(!_loc4_)
                     {
                        this.§ T§.graphics.drawRect(0,0,this.output.width,this.output.height);
                        loop3:
                        while(true)
                        {
                           this.§ T§.graphics.endFill();
                           loop4:
                           while(true)
                           {
                              this.§ T§.blendMode = BlendMode.MULTIPLY;
                              loop5:
                              while(true)
                              {
                                 if(this.§66§)
                                 {
                                    while(_loc5_)
                                    {
                                       while(true)
                                       {
                                          this.§66§.dispose();
                                          addr258:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    continue loop4;
                                    addr253:
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(contains(this.§1v§))
                                    {
                                       while(true)
                                       {
                                          removeChild(this.§1v§);
                                          addr239:
                                          while(!(_loc4_ && this))
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          continue loop7;
                                       }
                                       addr235:
                                    }
                                    while(true)
                                    {
                                       if(contains(this.§ T§))
                                       {
                                          while(true)
                                          {
                                             removeChild(this.§ T§);
                                             addr228:
                                             while(true)
                                             {
                                             }
                                             loop20:
                                             while(!(_loc4_ && _loc2_))
                                             {
                                                this.§66§.unlock();
                                                loop21:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         this.§1v§.bitmapData = this.§66§;
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               addr61:
                                                               if(_loc4_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr235);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§66§.lock();
                                                                     addr189:
                                                                     while(true)
                                                                     {
                                                                        this.§66§.draw(this.output);
                                                                        break loop22;
                                                                     }
                                                                  }
                                                                  addr203:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(!(_loc4_ && param1))
                                                               {
                                                                  this.§66§.colorTransform(this.§66§.rect,new ColorTransform(1,2,1));
                                                                  continue loop20;
                                                               }
                                                               addr132:
                                                            }
                                                            §§goto(addr239);
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr156:
                                                   while(!_loc4_)
                                                   {
                                                      this.§66§.applyFilter(this.§66§,this.§66§.rect,new Point(),new BlurFilter(16,16,1));
                                                      continue loop21;
                                                   }
                                                   §§goto(addr189);
                                                   §§goto(addr132);
                                                }
                                                while(!(_loc4_ && _loc2_))
                                                {
                                                   this.§66§ = new BitmapData(this.output.width,this.output.height,true,0);
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr228);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§1v§.blendMode = BlendMode.ADD;
                                          §§goto(addr210);
                                          §§goto(addr228);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr308);
         }
         §§goto(addr255);
      }
   }
}
