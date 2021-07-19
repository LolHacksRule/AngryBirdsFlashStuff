package §5g§
{
   import § !+§.§0Z§;
   import §%`§.§`p§;
   import §2!-§.Texture;
   import §3]§.§5O§;
   import §4W§.§!]§;
   import §4W§.§9b§;
   import §4W§.§>c§;
   import §5p§.§?M§;
   import §9N§.§#"§;
   import §9N§.§9!%§;
   import §?U§.§&W§;
   import §`a§.§>?§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   import starling.events.Event;
   
   public class §!2§
   {
       
      
      private var §[;§:int;
      
      private var §0&§:int;
      
      private var §>V§:Number;
      
      private var §%O§:Boolean;
      
      private var §9!A§:Sprite;
      
      private var §[=§:Array;
      
      private var §5+§:Boolean = true;
      
      private var §5<§:§!]§;
      
      private var §[p§:Sprite;
      
      private var §4!R§:Sprite;
      
      public function §!2§(param1:§5O§, param2:Sprite, param3:§!]§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§>c§ = null;
         if(_loc14_)
         {
            this.§[=§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§5<§ = param3;
                  while(true)
                  {
                     this.§9!A§ = param2;
                     continue loop0;
                     addr44:
                     if(!(_loc14_ || param1))
                     {
                        continue;
                     }
                     if(_loc15_)
                     {
                        continue loop1;
                     }
                     while(false)
                     {
                        while(true)
                        {
                           this.§>V§ = param1.§4!Y§;
                           do
                           {
                              this.§%O§ = param1.§7j§;
                           }
                           while(!(_loc14_ || param1));
                           
                           if(_loc15_ && param1)
                           {
                              break;
                           }
                           §§goto(addr44);
                        }
                        continue loop0;
                     }
                     var _loc5_:* = Number(1);
                     if(!_loc15_)
                     {
                        §§push(param1.§7<§);
                        if(!(_loc15_ && param2))
                        {
                           if(§§pop() != 0)
                           {
                              if(!_loc15_)
                              {
                                 §§push(param1.§7<§);
                                 if(!_loc15_)
                                 {
                                    addr108:
                                    §§push(Number(§§pop()));
                                    if(!_loc15_)
                                    {
                                       _loc5_ = §§pop();
                                       addr112:
                                       §§push(Number(0));
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 var _loc8_:* = Number(0);
                                 var _loc9_:* = Number(1);
                                 var _loc10_:DisplayObject;
                                 if(!(_loc10_ = §9b§.§3z§(param1.mName,this.§5<§,false)))
                                 {
                                    if(!(_loc15_ && param1))
                                    {
                                       §§push((_loc13_ = param3.§]]§(param1.mName)).pivotY);
                                       if(_loc14_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc14_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc15_)
                                             {
                                                if(!this.§%O§)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      addr163:
                                                      _loc8_ = Number(_loc13_.pivotX);
                                                      addr160:
                                                   }
                                                }
                                                _loc6_ = _loc13_.texture;
                                                if(_loc14_)
                                                {
                                                   §§push(this);
                                                   §§push(_loc13_.width);
                                                   if(_loc14_ || param1)
                                                   {
                                                      §§push(§§pop() * _loc5_);
                                                      if(!_loc15_)
                                                      {
                                                         addr184:
                                                         §§push(§§pop() - 2);
                                                      }
                                                      §§pop().§[;§ = §§pop();
                                                      if(!(_loc15_ && this))
                                                      {
                                                         §§push(_loc13_.scale);
                                                         if(!(_loc15_ && param1))
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc9_ = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            addr259:
                                                            if(this.§[;§ <= 0)
                                                            {
                                                               if(!(_loc15_ && param2))
                                                               {
                                                                  §§goto(addr270);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               this.§[;§ = Math.round(this.§[;§);
                                                            }
                                                            loop29:
                                                            while(true)
                                                            {
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(!param1.§4!S§)
                                                                  {
                                                                     this.§0&§ = 1;
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr296:
                                                                           if(_loc14_ || param2)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop29;
                                                                        }
                                                                        while(false)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        addr345:
                                                                        var _loc11_:Sprite = new Sprite();
                                                                        var _loc12_:int = 0;
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(_loc12_ >= this.§0&§)
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr549:
                                                                                 _loc11_.flatten();
                                                                                 if(_loc14_ || param1)
                                                                                 {
                                                                                    §§push(this.§9!A§);
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().addChild(_loc11_);
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§[p§);
                                                                                          loop17:
                                                                                          while(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§[p§);
                                                                                                while(§§pop().numChildren <= 0)
                                                                                                {
                                                                                                   §§push(this.§[p§);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   §§pop().dispose();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      break loop17;
                                                                                                   }
                                                                                                }
                                                                                                addr664:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   §§push(this.§9!A§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      §§pop().addChild(this.§[p§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop17;
                                                                                                         §§goto(addr670);
                                                                                                      }
                                                                                                      addr670:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§4!R§);
                                                                                             if(!(_loc15_ && param1))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      §§push(this.§4!R§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop().numChildren <= 0)
                                                                                                         {
                                                                                                            §§push(this.§4!R§);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               §§pop().dispose();
                                                                                                               while(!_loc15_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr563);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr621);
                                                                                                      }
                                                                                                      addr618:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         break loop15;
                                                                                                      }
                                                                                                      §§goto(addr664);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr563);
                                                                                             }
                                                                                             §§goto(addr618);
                                                                                          }
                                                                                          addr563:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§9!A§);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                if(_loc14_ || param1)
                                                                                                {
                                                                                                   §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
                                                                                                   if(_loc15_ && param3)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr683);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc14_ || this)
                                                                                                         {
                                                                                                            if(!(_loc15_ && param3))
                                                                                                            {
                                                                                                               §§push(this.§9!A§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().addChildAt(this.§4!R§,0);
                                                                                                                  break loop19;
                                                                                                               }
                                                                                                               addr637:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr659);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr654);
                                                                                                      }
                                                                                                      addr621:
                                                                                                   }
                                                                                                   §§goto(addr683);
                                                                                                }
                                                                                                §§goto(addr668);
                                                                                             }
                                                                                             §§goto(addr637);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr659);
                                                                              }
                                                                              §§goto(addr602);
                                                                           }
                                                                           else
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          _loc10_ = §9b§.§3z§(param1.mName,this.§5<§,false);
                                                                                          addr378:
                                                                                          §§push(_loc10_);
                                                                                          §§push(_loc12_ - 1);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() * this.§[;§);
                                                                                             if(!(_loc15_ && param3))
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr399:
                                                                                                      §§push(_loc5_);
                                                                                                      if(!(_loc15_ && param3))
                                                                                                      {
                                                                                                         addr419:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc15_ && param3))
                                                                                                         {
                                                                                                            addr417:
                                                                                                            §§push(§§pop() + param1.§`%§);
                                                                                                         }
                                                                                                         §§pop().x = §§pop() + §§pop();
                                                                                                         if(!(_loc15_ && param3))
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            §§push(_loc7_);
                                                                                                            if(!(_loc15_ && param2))
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(_loc14_ || param2)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr528:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc14_ || this)
                                                                                                                     {
                                                                                                                        addr525:
                                                                                                                        §§push(param1.§]!>§);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!(_loc15_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc9_);
                                                                                                                        }
                                                                                                                        §§pop().scaleX = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc14_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc9_);
                                                                                                                           }
                                                                                                                           §§pop().scaleY = §§pop();
                                                                                                                           if(_loc15_ && param1)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(!(_loc14_ || param2))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(param1);
                                                                                                                              §§push(_loc12_ - 1);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§[;§);
                                                                                                                              }
                                                                                                                              §§pop().§];§(§§pop(),§§pop());
                                                                                                                              if(!(_loc15_ && param2))
                                                                                                                              {
                                                                                                                                 _loc11_.addChild(_loc10_);
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    _loc10_ = null;
                                                                                                                                    if(!(_loc15_ && param2))
                                                                                                                                    {
                                                                                                                                       _loc12_++;
                                                                                                                                    }
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr602);
                                                                                                                        }
                                                                                                                        §§goto(addr683);
                                                                                                                        addr531:
                                                                                                                     }
                                                                                                                     §§goto(addr602);
                                                                                                                  }
                                                                                                                  §§goto(addr528);
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§goto(addr525);
                                                                                                            }
                                                                                                            §§goto(addr528);
                                                                                                         }
                                                                                                         §§goto(addr683);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr417);
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr419);
                                                                                       }
                                                                                       §§goto(addr659);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc10_ = new §>?§(_loc6_,false,false);
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr531);
                                                                              }
                                                                              §§goto(addr378);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr345);
                                                                     addr327:
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               §§push(this);
                                                               §§push(2);
                                                               §§push(§9!%§.§?!=§);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(1.5);
                                                                  if(_loc14_)
                                                                  {
                                                                     addr325:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc15_ && param3))
                                                                     {
                                                                        §§push(this.§[;§ * param4);
                                                                     }
                                                                     §§pop().§0&§ = §§pop() + §§pop();
                                                                     §§goto(addr327);
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               §§goto(addr325);
                                                            }
                                                            addr207:
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr184);
                                                }
                                                addr270:
                                                throw new Error("Invalid texture for background layer: " + param1.mName);
                                             }
                                             §§goto(addr160);
                                          }
                                       }
                                       §§goto(addr163);
                                    }
                                    else
                                    {
                                       addr237:
                                       §§push(Number(_loc10_.§],§.bottom));
                                       if(!_loc15_)
                                       {
                                          _loc7_ = §§pop();
                                          if(!_loc15_)
                                          {
                                             §§push((_loc10_.§],§.left + _loc10_.§],§.right) / 2);
                                             if(_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr259);
                                       }
                                       _loc8_ = §§pop();
                                    }
                                 }
                                 else
                                 {
                                    §§push(this);
                                    §§push(_loc10_.width);
                                    if(_loc14_ || this)
                                    {
                                       §§push(§§pop() * _loc5_);
                                       if(!(_loc15_ && param3))
                                       {
                                          addr227:
                                          §§push(§§pop() - 2);
                                       }
                                       §§pop().§[;§ = §§pop();
                                       if(!(_loc15_ && param2))
                                       {
                                          §§goto(addr237);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr259);
                              }
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr112);
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function get §4H§() : Boolean
      {
         return this.§%O§;
      }
      
      private function §];§(param1:§5O§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§#"§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§[=§)
         {
            §§push(Boolean(_loc4_ = §`p§.§"!A§(_loc3_.id,this.§5<§)));
            if(_loc9_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc9_ || this)
                  {
                     addr63:
                     §§pop();
                     if(!_loc10_)
                     {
                        addr70:
                        if(_loc4_.§^m§ > 0)
                        {
                           if(_loc9_)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§`%§;
                              if(_loc9_)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(_loc9_)
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       addr297:
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                       }
                                       addr297:
                                       addr107:
                                    }
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    _loc4_.start();
                                    while(true)
                                    {
                                       §0Z§.§-m§.add(_loc4_);
                                       while(!_loc10_)
                                       {
                                          this.§[=§.push(_loc4_);
                                          loop10:
                                          for(; _loc9_ || this; if(_loc10_ && this)
                                          {
                                             continue;
                                          },§§goto(addr246),§§push(this.§4!R§))
                                          {
                                             if(_loc3_.isBehindGraphic)
                                             {
                                                continue;
                                             }
                                             §§push(this.§[p§);
                                             loop11:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(!(_loc9_ || param1))
                                                         {
                                                            continue loop10;
                                                         }
                                                         this.§[p§ = new Sprite();
                                                         loop12:
                                                         while(true)
                                                         {
                                                            addr184:
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(this.§[p§);
                                                               if(!_loc9_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§pop().addChild(_loc4_);
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!(_loc9_ || param2))
                                                                           {
                                                                              continue loop22;
                                                                           }
                                                                           if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr172:
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_++;
                                                                                       }
                                                                                       addr154:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr191);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§4!R§ = new Sprite();
                                                                                       addr251:
                                                                                       while(true)
                                                                                       {
                                                                                          do
                                                                                          {
                                                                                             §§push(this.§4!R§);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§pop().addChild(_loc4_);
                                                                                                break loop11;
                                                                                             }
                                                                                             addr246:
                                                                                          }
                                                                                          while(§§pop());
                                                                                          
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       _loc4_.dispose();
                                                                                       do
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                       }
                                                                                       while(false);
                                                                                       
                                                                                       continue loop0;
                                                                                       addr150:
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr131:
                                                                              }
                                                                              §§goto(addr154);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc4_.§,9§(1 / 20);
                                                                           }
                                                                           §§goto(addr172);
                                                                        }
                                                                        continue loop22;
                                                                     }
                                                                  }
                                                               }
                                                               addr191:
                                                            }
                                                            if(_loc9_ || param2)
                                                            {
                                                               §§goto(addr200);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         addr222:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr184);
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                if(!_loc10_)
                                                {
                                                   while(true)
                                                   {
                                                      break loop7;
                                                   }
                                                   addr232:
                                                }
                                                else
                                                {
                                                   §§goto(addr297);
                                                }
                                             }
                                             §§goto(addr180);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr297);
                           }
                           §§goto(addr107);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              §§goto(addr131);
                           }
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr232);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr63);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&W§ = null;
         if(_loc5_ || _loc3_)
         {
            §§push(this.§9!A§);
            if(_loc5_ || _loc3_)
            {
               §§pop().§[F§(0,-1,true);
               if(_loc5_)
               {
                  addr44:
                  this.§9!A§.removeEventListener(Event.ADDED_TO_STAGE,this.§?!?§);
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§[=§)
               {
                  if(_loc5_ || this)
                  {
                     §0Z§.§-m§.§';§(_loc1_);
                     if(!(_loc5_ || _loc1_))
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(_loc5_)
               {
                  this.§[=§ = [];
               }
               do
               {
                  this.§4!R§ = null;
                  do
                  {
                     this.§[p§ = null;
                  }
                  while(!_loc5_);
                  
               }
               while(!(_loc5_ || _loc2_));
               
               return;
            }
         }
         §§goto(addr44);
      }
      
      private function §?!?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§"!H§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§>V§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() * param1);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§9!A§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               addr104:
               while(true)
               {
                  §§push(-§§pop());
                  addr105:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr103:
         }
         while(true)
         {
            §§push(this.§9!A§);
            if(!_loc5_)
            {
               §§push(param2);
               if(!(_loc5_ && param1))
               {
                  if(!(_loc5_ && this))
                  {
                     addr85:
                     §§push(-§§pop());
                     if(!_loc5_)
                     {
                        §§pop().y = §§pop();
                        while(_loc4_)
                        {
                           this.§;T§();
                           if(!(_loc5_ && param2))
                           {
                              return;
                           }
                        }
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr104);
                  }
                  §§goto(addr105);
               }
               §§goto(addr85);
            }
            else
            {
               §§goto(addr103);
            }
         }
      }
      
      private function §"!H§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&W§ = null;
         if(_loc4_)
         {
            §§push(this.§5+§);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(!(_loc5_ && this))
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        §§goto(addr57);
                     }
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc5_)
               {
                  §§goto(addr57);
               }
            }
            for each(_loc1_ in this.§[=§)
            {
               if(!_loc5_)
               {
                  §0Z§.§-m§.add(_loc1_);
                  if(_loc4_ || _loc1_)
                  {
                     _loc1_.visible = true;
                  }
               }
            }
            return;
         }
         addr57:
         if(_loc4_)
         {
            §§push(!this.§9!A§.stage);
         }
      }
      
      private function §4j§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&W§ = null;
         var _loc3_:* = this.§[=§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               §0Z§.§-m§.§';§(_loc1_);
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §@!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§5+§; while(true)
            {
               §§push(this.§5+§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§"!H§();
                           break;
                        }
                        break loop0;
                     }
                     break;
                  }
                  this.§4j§();
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            },§§goto(addr20))
            {
               while(true)
               {
                  this.§5+§ = param1;
                  continue loop0;
               }
            }
         }
      }
      
      private function §;T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§0&§ == 1);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr132:
                     loop3:
                     while(true)
                     {
                        §§push(this.§[=§.length > 0);
                        if(_loc1_ || this)
                        {
                           while(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 return;
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              §§push(§?M§.§&!N§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(this.§9!A§.x - this.§[;§);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(§§pop() * §?M§.§]5§);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              if(§§pop() <= 0)
                              {
                                 if(_loc1_)
                                 {
                                    this.§<[§();
                                 }
                                 if(_loc1_ || this)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§9!A§.x -= this.§[;§;
                              }
                           }
                           return;
                           addr100:
                        }
                     }
                  }
                  addr131:
               }
               §§goto(addr100);
            }
            §§goto(addr131);
         }
         §§goto(addr132);
      }
      
      private function §<[§() : void
      {
      }
   }
}
