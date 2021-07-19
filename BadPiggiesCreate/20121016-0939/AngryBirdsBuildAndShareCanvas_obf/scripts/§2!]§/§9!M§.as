package §2!]§
{
   import §&"5§.§4!h§;
   import §&"5§.§6!L§;
   import §&"5§.§7!P§;
   import §5!V§.§!w§;
   import §5!V§.§9!C§;
   import §6p§.§?%§;
   import §7R§.Texture;
   import §8g§.§8s§;
   import §9=§.§'" §;
   import §9x§.§#B§;
   import §=!#§.§`"=§;
   import §default§.§=!Z§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   import starling.events.Event;
   
   public class §9!M§
   {
       
      
      protected var §"C§:int;
      
      private var §;!8§:int;
      
      protected var §4!o§:Number;
      
      private var §5!Q§:Boolean;
      
      protected var §!&§:Sprite;
      
      private var §6J§:Array;
      
      private var §=!$§:Boolean = true;
      
      private var §2"!§:§7!P§;
      
      private var §0e§:Sprite;
      
      private var §import§:Sprite;
      
      public function §9!M§(param1:§'" §, param2:Sprite, param3:§7!P§, param4:Number)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:Texture = null;
         var _loc13_:§6!L§ = null;
         if(_loc15_ || param1)
         {
            this.§6J§ = [];
            while(true)
            {
               super();
               addr72:
               loop1:
               while(true)
               {
                  this.§2"!§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§!&§ = param2;
                     loop3:
                     while(!_loc14_)
                     {
                        while(true)
                        {
                           this.§4!o§ = param1.§5!?§;
                           addr47:
                           while(_loc15_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
            addr76:
         }
         while(true)
         {
            this.§5!Q§ = param1.§1i§;
            if(!_loc14_)
            {
               if(_loc15_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr42);
               }
               else
               {
                  §§goto(addr76);
               }
            }
            §§goto(addr47);
         }
         var _loc5_:* = Number(1);
         if(!_loc14_)
         {
            §§push(param1.§?a§);
            if(_loc15_)
            {
               if(§§pop() != 0)
               {
                  if(!(_loc14_ && this))
                  {
                     §§push(param1.§?a§);
                     if(!(_loc14_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc15_)
                        {
                        }
                        addr110:
                        var _loc7_:* = §§pop();
                        var _loc8_:* = Number(0);
                        var _loc9_:* = Number(1);
                        var _loc10_:DisplayObject;
                        if(!(_loc10_ = §4!h§.§4!t§(param1.mName,this.§2"!§,param1.§3z§)))
                        {
                           if(!_loc14_)
                           {
                              §§push((_loc13_ = param3.§12§(param1.mName)).pivotY);
                              if(_loc15_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc14_ && param1))
                                 {
                                    _loc7_ = §§pop();
                                    if(!(_loc14_ && param3))
                                    {
                                       if(!this.§5!Q§)
                                       {
                                          if(!(_loc14_ && param1))
                                          {
                                             addr170:
                                             _loc8_ = Number(_loc13_.pivotX);
                                          }
                                       }
                                    }
                                    _loc6_ = _loc13_.texture;
                                    if(_loc15_ || param1)
                                    {
                                       §§push(this);
                                       §§push(_loc13_.width);
                                       if(!(_loc14_ && param1))
                                       {
                                          §§push(§§pop() * _loc5_);
                                          if(_loc15_)
                                          {
                                             addr196:
                                             §§push(§§pop() - 2);
                                          }
                                          §§pop().§"C§ = §§pop();
                                          if(_loc15_)
                                          {
                                             §§push(_loc13_.scale);
                                             if(_loc15_ || param1)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc9_ = §§pop();
                                             if(!_loc14_)
                                             {
                                                addr276:
                                                if(this.§"C§ <= 0)
                                                {
                                                   if(_loc15_ || param3)
                                                   {
                                                      throw new Error("Invalid texture for background layer: " + param1.mName);
                                                   }
                                                   loop7:
                                                   while(false)
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(param1.§]l§)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               §§push(this);
                                                               §§push(2);
                                                               §§push(§!w§.§[!c§);
                                                               if(!(_loc14_ && param2))
                                                               {
                                                                  §§push(1.5);
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     addr352:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(this.§"C§ * param4);
                                                                     }
                                                                     §§pop().§;!8§ = §§pop() + §§pop();
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                            break;
                                                         }
                                                         this.§;!8§ = 1;
                                                         if(_loc14_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc15_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         addr371:
                                                         while(true)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   var _loc11_:Sprite = new Sprite();
                                                   var _loc12_:int = 0;
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc12_ >= this.§;!8§)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            _loc11_.flatten();
                                                            if(_loc15_ || param1)
                                                            {
                                                               addr735:
                                                               this.§!&§.addChild(_loc11_);
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§push(this.§0e§);
                                                                  loop20:
                                                                  while(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§0e§);
                                                                        do
                                                                        {
                                                                           if(§§pop().numChildren > 0)
                                                                           {
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§!&§);
                                                                                 addr712:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       break loop19;
                                                                                    }
                                                                                    §§goto(addr735);
                                                                                 }
                                                                              }
                                                                              §§pop().addChild(this.§0e§);
                                                                              addr732:
                                                                              break loop20;
                                                                              addr710:
                                                                              addr732:
                                                                           }
                                                                           §§push(this.§0e§);
                                                                        }
                                                                        while(!(_loc15_ || param2));
                                                                        
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        addr692:
                                                                        §§pop().dispose();
                                                                        while(true)
                                                                        {
                                                                           if(_loc15_ || param2)
                                                                           {
                                                                              break loop9;
                                                                           }
                                                                           §§goto(addr710);
                                                                           §§goto(addr692);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr644:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§import§);
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop17:
                                                                           while(!_loc14_)
                                                                           {
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(this.§import§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop().numChildren > 0)
                                                                                    {
                                                                                       if(_loc15_ || param2)
                                                                                       {
                                                                                          §§push(this.§!&§);
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().addChildAt(this.§import§,0);
                                                                                             addr677:
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                addr582:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§!&§);
                                                                                                   if(!(_loc14_ && param2))
                                                                                                   {
                                                                                                      if(!(_loc14_ && this))
                                                                                                      {
                                                                                                         §§pop().addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                                                                                         if(!(_loc15_ || param2))
                                                                                                         {
                                                                                                            while(!_loc15_)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            addr643:
                                                                                                            continue;
                                                                                                            addr641:
                                                                                                         }
                                                                                                         if(_loc14_ && this)
                                                                                                         {
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         if(!(_loc14_ && param2))
                                                                                                         {
                                                                                                            if(_loc15_ || param2)
                                                                                                            {
                                                                                                               return;
                                                                                                               addr632:
                                                                                                            }
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         §§goto(addr705);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop28;
                                                                                                }
                                                                                                §§goto(addr712);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr677);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§import§);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§pop().dispose();
                                                                                    }
                                                                                    §§goto(addr641);
                                                                                 }
                                                                                 addr661:
                                                                              }
                                                                              §§goto(addr732);
                                                                           }
                                                                           §§goto(addr693);
                                                                        }
                                                                        §§goto(addr582);
                                                                     }
                                                                     §§goto(addr661);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr643);
                                                         }
                                                         §§goto(addr732);
                                                      }
                                                      else
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(!(_loc14_ && param3))
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     _loc10_ = §4!h§.§4!t§(param1.mName,this.§2"!§,param1.§3z§);
                                                                     addr417:
                                                                     §§push(_loc10_);
                                                                     §§push(_loc12_ - 1);
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(§§pop() * this.§"C§);
                                                                        if(_loc15_ || param3)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr438:
                                                                                 §§push(_loc5_);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    addr452:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc14_ && this))
                                                                                    {
                                                                                       §§push(param1.§2A§);
                                                                                    }
                                                                                    §§pop().x = §§pop() + §§pop();
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc15_ || param1)
                                                                                                {
                                                                                                   addr553:
                                                                                                   §§push(§§pop() + param1.§="3§);
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   §§push(_loc5_);
                                                                                                   if(!(_loc14_ && param3))
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc9_);
                                                                                                   }
                                                                                                   §§pop().scaleX = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      §§push(_loc5_);
                                                                                                      if(!(_loc14_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc9_);
                                                                                                      }
                                                                                                      §§pop().scaleY = §§pop();
                                                                                                      if(_loc15_ || param3)
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         loop11:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(param1);
                                                                                                            §§push(_loc12_ - 1);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§push(§§pop() * this.§"C§);
                                                                                                            }
                                                                                                            §§pop().§>!_§(§§pop(),§§pop());
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc11_.addChild(_loc10_);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr468:
                                                                                                               if(!(_loc14_ && this))
                                                                                                               {
                                                                                                                  while(false)
                                                                                                                  {
                                                                                                                     continue loop11;
                                                                                                                     §§goto(addr468);
                                                                                                                  }
                                                                                                                  _loc10_ = null;
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     _loc12_++;
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                                  addr475:
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            §§goto(addr632);
                                                                                                         }
                                                                                                         §§goto(addr732);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr677);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr553);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr553);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr452);
                                                                           }
                                                                           §§goto(addr438);
                                                                        }
                                                                     }
                                                                     §§goto(addr452);
                                                                  }
                                                                  §§goto(addr475);
                                                               }
                                                               else
                                                               {
                                                                  _loc10_ = new §=!Z§(_loc6_,false,param1.§3z§);
                                                                  §§goto(addr417);
                                                               }
                                                            }
                                                            §§goto(addr490);
                                                         }
                                                         §§goto(addr417);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr644);
                                                      §§goto(addr692);
                                                   }
                                                }
                                                else
                                                {
                                                   this.§"C§ = Math.round(this.§"C§);
                                                   addr355:
                                                }
                                                §§goto(addr371);
                                             }
                                          }
                                          §§goto(addr354);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr355);
                                 }
                              }
                              §§goto(addr170);
                           }
                           else
                           {
                              addr239:
                              §§push(Number(_loc10_.§?!i§.bottom));
                              if(!(_loc14_ && param3))
                              {
                                 _loc7_ = §§pop();
                                 if(!(_loc14_ && param3))
                                 {
                                    addr258:
                                    §§push((_loc10_.§?!i§.left + _loc10_.§?!i§.right) / 2);
                                    if(_loc15_ || param3)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr276);
                              }
                              _loc8_ = §§pop();
                           }
                           §§goto(addr276);
                        }
                        else
                        {
                           §§push(this);
                           §§push(_loc10_.width);
                           if(_loc15_ || this)
                           {
                              §§push(§§pop() * _loc5_);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() - 2);
                              }
                           }
                           §§pop().§"C§ = §§pop();
                           if(_loc15_ || param1)
                           {
                              §§goto(addr239);
                           }
                        }
                        §§goto(addr258);
                     }
                     _loc5_ = §§pop();
                     addr108:
                     §§push(Number(0));
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr110);
         }
         §§goto(addr108);
      }
      
      public function get §3%§() : Boolean
      {
         return this.§5!Q§;
      }
      
      private function §>!_§(param1:§'" §, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§9!C§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§6J§)
         {
            §§push(Boolean(_loc4_ = §8s§.§8B§(_loc3_.id,this.§2"!§)));
            if(!_loc9_)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     addr54:
                     §§pop();
                     if(_loc10_)
                     {
                        addr61:
                        if(_loc4_.§#!C§ > 0)
                        {
                           if(_loc10_ || _loc3_)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§2A§;
                              if(_loc10_)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(!(_loc9_ && param2))
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(_loc10_)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          while(true)
                                          {
                                             _loc4_.start();
                                             while(true)
                                             {
                                                §?%§.§",§.add(_loc4_);
                                                while(true)
                                                {
                                                   this.§6J§.push(_loc4_);
                                                   while(true)
                                                   {
                                                      if(!_loc3_.isBehindGraphic)
                                                      {
                                                         §§push(this.§0e§);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               this.§0e§ = new Sprite();
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                }
                                                if(!(_loc10_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr203);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr276);
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr269);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc10_)
                           {
                              §§goto(addr139);
                           }
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr264);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr54);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#B§ = null;
         if(_loc5_ || _loc1_)
         {
            §§push(this.§!&§);
            if(_loc5_)
            {
               §§pop().removeChildren(0,-1,true);
               addr44:
               if(!_loc4_)
               {
                  §§push(this.§!&§);
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§6J§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc4_)
                  {
                     §?%§.§",§.§'!@§(_loc1_);
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(!(_loc4_ && this))
               {
                  this.§6J§ = [];
               }
               while(true)
               {
                  this.§import§ = null;
                  while(!(_loc4_ && _loc3_))
                  {
                     this.§0e§ = null;
                     if(_loc5_ || _loc2_)
                     {
                        return;
                     }
                  }
               }
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         §§goto(addr44);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§,[§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§4!o§);
         if(!_loc5_)
         {
            §§push(§§pop() * param1);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§!&§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               addr79:
               while(true)
               {
                  §§push(-§§pop());
                  addr80:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §,[§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#B§ = null;
         if(_loc4_)
         {
            §§push(this.§=!$§);
            if(!(_loc5_ && _loc1_))
            {
               §§push(!§§pop());
               if(!(_loc5_ && _loc1_))
               {
                  addr38:
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        §§goto(addr42);
                     }
                  }
                  §§goto(addr64);
               }
               addr42:
               §§pop();
               if(!(_loc5_ && _loc1_))
               {
                  addr64:
                  if(!this.§!&§.stage)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr67);
                     }
                  }
               }
               var _loc3_:* = this.§6J§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §?%§.§",§.add(_loc1_);
                     if(!_loc5_)
                     {
                        _loc1_.visible = true;
                     }
                  }
               }
               return;
            }
            §§goto(addr38);
         }
         addr67:
      }
      
      private function §?!V§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#B§ = null;
         for each(_loc1_ in this.§6J§)
         {
            if(!_loc5_)
            {
               §?%§.§",§.§'!@§(_loc1_);
               if(_loc4_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §]D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§=!$§; §§push(this.§=!$§),if(!_loc2_)
            {
               continue;
            },if(§§pop())
            {
               addr56:
               while(true)
               {
                  this.§,[§();
                  addr58:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        addr65:
                     }
                     §§goto(addr60);
                  }
               }
               addr56:
            },this.§?!V§(),if(!_loc3_)
            {
               if(!(_loc2_ || param1))
               {
                  §§goto(addr56);
               }
               if(!_loc3_)
               {
                  addr60:
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  return;
               }
               break;
            },§§goto(addr58))
            {
               while(true)
               {
                  this.§=!$§ = param1;
                  §§goto(addr65);
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      protected function §@@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§;!8§ == 1);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                        return;
                     }
                     addr132:
                     loop3:
                     while(true)
                     {
                        §§push(this.§6J§.length > 0);
                        if(!(_loc2_ && this))
                        {
                           continue loop0;
                        }
                        addr131:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
                  addr28:
                  §§push(§`"=§.§9!e§);
                  if(!_loc2_)
                  {
                     §§push(this.§!&§.x - this.§"C§);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(§§pop() * §`"=§.§;!0§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  if(§§pop() <= 0)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        this.§7S§();
                     }
                     if(_loc2_)
                     {
                        addr86:
                        §§goto(addr28);
                     }
                     return;
                  }
                  this.§!&§.x -= this.§"C§;
                  §§goto(addr86);
                  addr107:
               }
               §§goto(addr131);
            }
         }
         §§goto(addr132);
      }
      
      private function §7S§() : void
      {
      }
   }
}
