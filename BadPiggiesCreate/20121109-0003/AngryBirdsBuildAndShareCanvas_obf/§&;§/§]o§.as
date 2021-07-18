package §&;§
{
   import § <§.§ ?§;
   import §%!0§.§,4§;
   import §%!0§.§;0§;
   import §%!j§.§%K§;
   import §&z§.§'!i§;
   import §+!-§.§7"#§;
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §0!%§.Texture;
   import §;"7§.§+!I§;
   import §;"7§.§3"#§;
   import §;"7§.§="<§;
   import starling.events.Event;
   import §switch§.§,!!§;
   
   public class §]o§
   {
       
      
      protected var §4v§:int;
      
      private var §!k§:int;
      
      protected var §6!s§:Number;
      
      private var §]I§:Boolean;
      
      protected var § D§:Sprite;
      
      private var §5y§:Array;
      
      private var §?<§:Boolean = true;
      
      private var §7k§:§="<§;
      
      private var §?!8§:Sprite;
      
      private var §0!R§:Sprite;
      
      public function §]o§(param1:§,!!§, param2:Sprite, param3:§="<§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§+!I§ = null;
         if(!_loc15_)
         {
            this.§5y§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§7k§ = param3;
                  while(_loc14_)
                  {
                     this.§ D§ = param2;
                     while(_loc14_ || param3)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            loop5:
            do
            {
               this.§6!s§ = param1.§?!B§;
               while(!_loc15_)
               {
                  this.§]I§ = param1.§0e§;
                  if(_loc14_ || param3)
                  {
                     continue loop5;
                  }
               }
               §§goto(addr51);
            }
            while(false);
            
            var _loc5_:* = Number(1);
            if(!(_loc15_ && param3))
            {
               §§push(param1.§=9§);
               if(!_loc15_)
               {
                  if(§§pop() != 0)
                  {
                     if(!(_loc15_ && param1))
                     {
                        addr104:
                        §§push(param1.§=9§);
                        if(_loc14_ || param1)
                        {
                           addr113:
                           §§push(Number(§§pop()));
                           if(!_loc15_)
                           {
                              addr116:
                              _loc5_ = §§pop();
                              §§push(Number(0));
                           }
                           var _loc7_:* = §§pop();
                           var _loc8_:* = Number(0);
                           var _loc9_:* = Number(1);
                           var _loc10_:DisplayObject;
                           if(!(_loc10_ = §3"#§.§ !&§(param1.mName,this.§7k§,param1.§`!g§)))
                           {
                              if(!(_loc15_ && param3))
                              {
                                 §§push((_loc13_ = param3.§5!!§(param1.mName)).pivotY);
                                 if(_loc14_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc15_)
                                    {
                                       _loc7_ = §§pop();
                                       if(_loc14_)
                                       {
                                          if(!this.§]I§)
                                          {
                                             if(!_loc15_)
                                             {
                                                addr169:
                                                _loc8_ = Number(_loc13_.pivotX);
                                             }
                                          }
                                       }
                                       _loc6_ = _loc13_.texture;
                                       if(!(_loc15_ && param3))
                                       {
                                          §§push(this);
                                          §§push(_loc13_.width);
                                          if(!(_loc15_ && this))
                                          {
                                             §§push(§§pop() * _loc5_);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop() - 2);
                                             }
                                          }
                                          §§pop().§4v§ = §§pop();
                                          if(!(_loc15_ && param1))
                                          {
                                             §§push(_loc13_.scale);
                                             if(!_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc9_ = §§pop();
                                             if(_loc14_ || param3)
                                             {
                                                addr270:
                                                if(this.§4v§ <= 0)
                                                {
                                                   if(!(_loc15_ && this))
                                                   {
                                                      §§goto(addr281);
                                                   }
                                                }
                                                this.§4v§ = Math.round(this.§4v§);
                                                do
                                                {
                                                   while(!param1.§[!=§)
                                                   {
                                                      this.§!k§ = 1;
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         if(false)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr338:
                                                      }
                                                      var _loc11_:Sprite = new Sprite();
                                                      var _loc12_:int = 0;
                                                      while(true)
                                                      {
                                                         if(_loc12_ >= this.§!k§)
                                                         {
                                                            if(!_loc15_)
                                                            {
                                                               _loc11_.flatten();
                                                               if(!_loc15_)
                                                               {
                                                                  addr699:
                                                                  this.§ D§.addChild(_loc11_);
                                                               }
                                                               addr701:
                                                               if(this.§?!8§)
                                                               {
                                                                  addr672:
                                                                  if(this.§?!8§.numChildren > 0)
                                                                  {
                                                                     addr677:
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr681:
                                                                        §§push(this.§ D§);
                                                                        if(_loc14_)
                                                                        {
                                                                           §§pop().addChild(this.§?!8§);
                                                                           addr696:
                                                                           if(this.§0!R§)
                                                                           {
                                                                              addr625:
                                                                              if(this.§0!R§.numChildren > 0)
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    addr634:
                                                                                    this.§ D§.addChildAt(this.§0!R§,0);
                                                                                 }
                                                                                 addr638:
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    if(_loc14_ || this)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr576:
                                                                                          §§push(this.§ D§);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             if(_loc14_ || this)
                                                                                             {
                                                                                                §§pop().addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§goto(addr638);
                                                                                                   }
                                                                                                   return;
                                                                                                   addr597:
                                                                                                }
                                                                                                addr613:
                                                                                                if(_loc14_ || param3)
                                                                                                {
                                                                                                   addr620:
                                                                                                   §§goto(addr576);
                                                                                                }
                                                                                                §§goto(addr625);
                                                                                             }
                                                                                             §§goto(addr681);
                                                                                          }
                                                                                          §§goto(addr634);
                                                                                       }
                                                                                       §§goto(addr672);
                                                                                    }
                                                                                    §§goto(addr696);
                                                                                 }
                                                                                 addr665:
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§goto(addr696);
                                                                                 }
                                                                                 §§goto(addr677);
                                                                              }
                                                                              §§push(this.§0!R§);
                                                                              if(_loc14_ || param3)
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§pop().dispose();
                                                                                    §§goto(addr613);
                                                                                 }
                                                                                 §§goto(addr696);
                                                                              }
                                                                              §§goto(addr625);
                                                                           }
                                                                           §§goto(addr576);
                                                                        }
                                                                        §§goto(addr699);
                                                                     }
                                                                     §§goto(addr701);
                                                                  }
                                                                  §§push(this.§?!8§);
                                                                  if(!(_loc15_ && param3))
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§pop().dispose();
                                                                        §§goto(addr665);
                                                                     }
                                                                     §§goto(addr701);
                                                                  }
                                                                  §§goto(addr672);
                                                               }
                                                               §§goto(addr696);
                                                            }
                                                            §§goto(addr620);
                                                         }
                                                         else
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc14_ || param2)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        addr382:
                                                                        _loc10_ = §3"#§.§ !&§(param1.mName,this.§7k§,param1.§`!g§);
                                                                        addr401:
                                                                        §§push(_loc10_);
                                                                        §§push(_loc12_ - 1);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(§§pop() * this.§4v§);
                                                                           if(!(_loc15_ && param3))
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(!(_loc15_ && param2))
                                                                                    {
                                                                                       addr441:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§push(param1.§?d§);
                                                                                       }
                                                                                       §§pop().x = §§pop() + §§pop();
                                                                                       if(_loc14_ || param3)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          §§push(_loc7_);
                                                                                          if(!(_loc15_ && this))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc14_ || this)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(_loc14_ || param3)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      addr552:
                                                                                                      §§push(§§pop() + param1.§1A§);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   loop8:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc9_);
                                                                                                      }
                                                                                                      §§pop().scaleX = §§pop();
                                                                                                      if(!(_loc15_ && param1))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc14_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc9_);
                                                                                                            }
                                                                                                            §§pop().scaleY = §§pop();
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(param1);
                                                                                                               §§push(_loc12_ - 1);
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * this.§4v§);
                                                                                                               }
                                                                                                               §§pop().§+!U§(§§pop(),§§pop());
                                                                                                               if(_loc15_ && param2)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            §§goto(addr597);
                                                                                                         }
                                                                                                         §§goto(addr681);
                                                                                                         addr521:
                                                                                                      }
                                                                                                      §§goto(addr696);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr552);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr552);
                                                                                       }
                                                                                       §§goto(addr521);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr441);
                                                                           }
                                                                        }
                                                                        §§goto(addr441);
                                                                     }
                                                                     §§goto(addr696);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc10_ = new §7"#§(_loc6_,false,param1.§`!g§);
                                                                     §§goto(addr401);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                      }
                                                   }
                                                }
                                                while(!_loc14_);
                                                
                                             }
                                          }
                                          §§push(this);
                                          §§push(2);
                                          §§push(§,4§.§!,§);
                                          if(_loc14_ || param2)
                                          {
                                             §§push(1.5);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc14_)
                                                {
                                                   addr335:
                                                   §§push(§§pop() / (this.§4v§ * param4));
                                                }
                                                §§pop().§!k§ = §§pop() + §§pop();
                                                §§goto(addr338);
                                             }
                                          }
                                          §§goto(addr335);
                                       }
                                       addr281:
                                       throw new Error("Invalid texture for background layer: " + param1.mName);
                                    }
                                 }
                                 §§goto(addr169);
                              }
                           }
                           else
                           {
                              §§push(this);
                              §§push(_loc10_.width);
                              if(!(_loc15_ && param3))
                              {
                                 §§push(§§pop() * _loc5_);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() - 2);
                                 }
                              }
                              §§pop().§4v§ = §§pop();
                              if(_loc14_)
                              {
                                 §§push(Number(_loc10_.§?>§.bottom));
                                 if(!(_loc15_ && this))
                                 {
                                    _loc7_ = §§pop();
                                    if(!_loc15_)
                                    {
                                       addr252:
                                       §§push((_loc10_.§?>§.left + _loc10_.§?>§.right) / 2);
                                       if(!(_loc15_ && param1))
                                       {
                                          addr268:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc8_ = §§pop();
                                    }
                                    §§goto(addr270);
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr270);
                        }
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr116);
               }
               §§goto(addr113);
            }
            §§goto(addr104);
         }
      }
      
      public function get §""5§() : Boolean
      {
         return this.§]I§;
      }
      
      private function §+!U§(param1:§,!!§, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§;0§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§5y§)
         {
            §§push(Boolean(_loc4_ = §'!i§.§#G§(_loc3_.id,this.§7k§)));
            if(_loc10_)
            {
               if(§§pop())
               {
                  if(_loc10_ || _loc3_)
                  {
                     §§pop();
                     if(_loc10_ || _loc3_)
                     {
                        addr71:
                        if(_loc4_.§-z§ > 0)
                        {
                           if(!_loc9_)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§?d§;
                              if(_loc10_)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(!(_loc9_ && this))
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(!(_loc9_ && this))
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       _loc4_.alpha = _loc3_.alpha;
                                       addr283:
                                       loop20:
                                       while(true)
                                       {
                                          _loc4_.start();
                                          addr277:
                                          loop10:
                                          while(true)
                                          {
                                             §%K§.§^!d§.add(_loc4_);
                                             loop11:
                                             while(true)
                                             {
                                                this.§5y§.push(_loc4_);
                                                addr267:
                                                loop12:
                                                for(; !_loc3_.isBehindGraphic; if(!(_loc10_ || this))
                                                {
                                                   continue;
                                                })
                                                {
                                                   §§push(this.§?!8§);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      while(!(_loc9_ && _loc3_))
                                                      {
                                                         continue loop12;
                                                      }
                                                      while(!(_loc10_ || param2))
                                                      {
                                                         continue loop20;
                                                      }
                                                      loop1:
                                                      while(true)
                                                      {
                                                         this.§0!R§ = new Sprite();
                                                         loop2:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§0!R§);
                                                               if(_loc10_)
                                                               {
                                                                  §§pop().addChild(_loc4_);
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_ && this)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr172:
                                                                                          addr172:
                                                                                          while(true)
                                                                                          {
                                                                                             addr152:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_++;
                                                                                             }
                                                                                          }
                                                                                          addr172:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_ && this)
                                                                                          {
                                                                                             break loop8;
                                                                                          }
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr136:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(true)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       addr136:
                                                                                    }
                                                                                    §§goto(addr152);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc4_.§6K§(1 / 20);
                                                                                    §§goto(addr172);
                                                                                 }
                                                                              }
                                                                              addr189:
                                                                              addr225:
                                                                              while(!_loc9_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§goto(addr207);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr200:
                                                                     }
                                                                  }
                                                               }
                                                               addr249:
                                                               while(!§§pop())
                                                               {
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr207:
                                                      addr250:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§goto(addr249);
                                                   §§push(this.§0!R§);
                                                   §§goto(addr267);
                                                }
                                             }
                                          }
                                       }
                                       addr283:
                                       addr298:
                                    }
                                    while(true)
                                    {
                                       this.§?!8§ = new Sprite();
                                       §§goto(addr225);
                                    }
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr277);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc10_)
                           {
                              if(_loc10_)
                              {
                                 _loc4_.dispose();
                                 §§goto(addr136);
                              }
                              else
                              {
                                 §§goto(addr298);
                              }
                           }
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr257);
                  }
               }
            }
            §§goto(addr71);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ ?§ = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§ D§);
            if(_loc4_ || this)
            {
               §§pop().removeChildren(0,-1,true);
               if(!_loc5_)
               {
                  addr43:
                  this.§ D§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§5y§;
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc5_ && this))
                  {
                     §%K§.§^!d§.§!!Z§(_loc1_);
                     if(_loc5_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(!_loc5_)
               {
                  this.§5y§ = [];
               }
               do
               {
                  this.§0!R§ = null;
                  do
                  {
                     this.§?!8§ = null;
                  }
                  while(!(_loc4_ || _loc2_));
                  
               }
               while(_loc5_);
               
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§`b§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§6!s§);
         if(_loc4_ || this)
         {
            §§push(§§pop() * param1);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(this.§ D§);
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
         }
         §§goto(addr58);
      }
      
      private function §`b§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§ ?§ = null;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§?<§);
            if(_loc5_ || this)
            {
               §§push(!§§pop());
               if(_loc5_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                     }
                  }
                  §§goto(addr70);
               }
               §§pop();
               if(!(_loc4_ && _loc1_))
               {
                  addr70:
                  if(§§pop())
                  {
                     if(_loc5_ || _loc2_)
                     {
                        §§goto(addr78);
                     }
                     else
                     {
                        §§goto(addr79);
                     }
                  }
                  addr79:
                  for each(_loc1_ in this.§5y§)
                  {
                     if(!(_loc4_ && _loc1_))
                     {
                        §%K§.§^!d§.add(_loc1_);
                        if(!_loc4_)
                        {
                           _loc1_.visible = true;
                        }
                     }
                  }
                  return;
                  §§push(!this.§ D§.stage);
               }
               addr78:
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr79);
      }
      
      private function § ! §() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ ?§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§5y§)
         {
            if(!(_loc5_ && this))
            {
               §%K§.§^!d§.§!!Z§(_loc1_);
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §?R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() != this.§?<§)
               {
                  while(true)
                  {
                     this.§?<§ = param1;
                     addr68:
                     §§goto(addr63);
                  }
               }
            }
            addr63:
            while(true)
            {
               if(!(_loc2_ || this))
               {
                  continue loop1;
               }
               if(!_loc3_)
               {
                  continue loop0;
               }
            }
            return;
         }
      }
      
      protected function §70§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§!k§ == 1);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr128:
                     do
                     {
                        §§push(this.§5y§.length > 0);
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                     while(!_loc1_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc1_ && _loc1_)
                  {
                     break;
                  }
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr109);
                  }
                  §§goto(addr128);
               }
               addr29:
               §§push(§"!P§.§2'§);
               if(!_loc1_)
               {
                  §§push(this.§ D§.x - this.§4v§);
                  if(_loc2_)
                  {
                     §§push(§§pop() * §"!P§.§#X§);
                  }
                  §§push(§§pop() + §§pop());
               }
               if(§§pop() <= 0)
               {
                  if(!_loc1_)
                  {
                     this.§[!T§();
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     addr82:
                     §§goto(addr29);
                  }
                  return;
               }
               this.§ D§.x -= this.§4v§;
               §§goto(addr82);
            }
         }
         addr109:
      }
      
      private function §[!T§() : void
      {
      }
   }
}
