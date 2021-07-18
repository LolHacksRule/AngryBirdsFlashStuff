package §-"N§
{
   import §!!=§.§"l§;
   import §"a§.§!"J§;
   import §%!g§.ParticleManager;
   import §'!6§.§ "E§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §3">§.ParticleDesignerPS;
   import §4!<§.§'!S§;
   import §4!<§.§5"<§;
   import §<5§.Texture;
   import §<T§.§?!Z§;
   import §<T§.§^"5§;
   import §<T§.§`m§;
   import §`1§.§#!#§;
   import starling.events.Event;
   
   public class §]5§
   {
       
      
      protected var §&"J§:int;
      
      private var §6!"§:int;
      
      protected var §&!b§:Number;
      
      private var §=!P§:Boolean;
      
      protected var §?!T§:Sprite;
      
      private var §?!6§:Array;
      
      private var §&!A§:Boolean = true;
      
      private var §=!2§:§`m§;
      
      private var §8!X§:Sprite;
      
      private var §9"S§:Sprite;
      
      public function §]5§(param1:§#!#§, param2:Sprite, param3:§`m§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§^"5§ = null;
         if(!(_loc15_ && this))
         {
            this.§?!6§ = [];
            while(true)
            {
               super();
               while(!_loc15_)
               {
                  this.§=!2§ = param3;
                  addr58:
                  if(!(_loc14_ || this))
                  {
                     continue;
                  }
                  this.§=!P§ = param1.§1!U§;
                  if(_loc14_)
                  {
                     addr37:
                     if(!(_loc15_ && param2))
                     {
                        if(false)
                        {
                           loop4:
                           while(true)
                           {
                              this.§&!b§ = param1.§?E§;
                              addr51:
                              addr75:
                              while(_loc14_ || this)
                              {
                                 §§goto(addr58);
                              }
                              while(true)
                              {
                                 this.§?!T§ = param2;
                                 break loop4;
                                 §§goto(addr51);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr46);
                              §§goto(addr37);
                           }
                           addr46:
                           addr70:
                        }
                        var _loc5_:* = Number(1);
                        if(_loc14_)
                        {
                           §§push(param1.§<[§);
                           if(!(_loc15_ && param1))
                           {
                              if(§§pop() != 0)
                              {
                                 if(_loc14_ || param3)
                                 {
                                    addr109:
                                    §§push(param1.§<[§);
                                    if(!_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc14_ || param3)
                                       {
                                          _loc5_ = §§pop();
                                       }
                                       addr124:
                                       var _loc7_:* = §§pop();
                                       var _loc8_:* = Number(0);
                                       var _loc9_:* = Number(1);
                                       var _loc10_:DisplayObject;
                                       if(!(_loc10_ = §?!Z§.§ "8§(param1.mName,this.§=!2§,param1.§8"$§)))
                                       {
                                          if(!_loc15_)
                                          {
                                             §§push((_loc13_ = param3.§#!L§(param1.mName)).pivotY);
                                             if(_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc14_ || param3)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(_loc14_)
                                                   {
                                                      if(!this.§=!P§)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            addr174:
                                                            _loc8_ = Number(_loc13_.pivotX);
                                                         }
                                                      }
                                                   }
                                                   _loc6_ = _loc13_.texture;
                                                   if(_loc14_)
                                                   {
                                                      §§push(this);
                                                      §§push(_loc13_.width);
                                                      if(_loc14_)
                                                      {
                                                         §§push(§§pop() * _loc5_);
                                                         if(!(_loc15_ && this))
                                                         {
                                                            §§push(§§pop() - 2);
                                                         }
                                                      }
                                                      §§pop().§&"J§ = §§pop();
                                                      if(!(_loc15_ && this))
                                                      {
                                                         §§push(_loc13_.scale);
                                                         if(_loc14_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc9_ = §§pop();
                                                         if(_loc14_ || param3)
                                                         {
                                                            addr270:
                                                            if(this.§&"J§ <= 0)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  throw new Error("Invalid texture for background layer: " + param1.mName);
                                                               }
                                                               addr299:
                                                               if(false)
                                                               {
                                                                  addr301:
                                                                  if(param1.§5=§)
                                                                  {
                                                                     if(_loc14_ || param2)
                                                                     {
                                                                        addr312:
                                                                        §§push(this);
                                                                        §§push(2);
                                                                        §§push(§'!S§.§<!@§);
                                                                        if(!(_loc15_ && param3))
                                                                        {
                                                                           §§push(1.5);
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr334:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(this.§&"J§ * param4);
                                                                              }
                                                                              §§pop().§6!"§ = §§pop() + §§pop();
                                                                              addr336:
                                                                              if(_loc15_)
                                                                              {
                                                                                 addr355:
                                                                                 §§goto(addr301);
                                                                              }
                                                                              addr356:
                                                                              var _loc11_:Sprite = new Sprite();
                                                                              var _loc12_:int = 0;
                                                                              addr561:
                                                                              if(_loc12_ < this.§6!"§)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc14_ || param3)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc14_ || this)
                                                                                          {
                                                                                             _loc10_ = §?!Z§.§ "8§(param1.mName,this.§=!2§,param1.§8"$§);
                                                                                             addr401:
                                                                                             §§push(_loc10_);
                                                                                             §§push(_loc12_ - 1);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§push(§§pop() * this.§&"J§);
                                                                                                if(!(_loc15_ && this))
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc14_ || param2)
                                                                                                      {
                                                                                                         addr427:
                                                                                                         §§push(_loc5_);
                                                                                                         if(_loc14_ || param3)
                                                                                                         {
                                                                                                            addr442:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               addr440:
                                                                                                               §§push(§§pop() + param1.§]!U§);
                                                                                                            }
                                                                                                            §§pop().x = §§pop() + §§pop();
                                                                                                            if(_loc14_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc10_);
                                                                                                               §§push(_loc7_);
                                                                                                               if(_loc14_ || param3)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(_loc14_ || param1)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        addr541:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc14_ || param1)
                                                                                                                        {
                                                                                                                           §§push(param1.§`" §);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        if(!(_loc15_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc10_);
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc9_);
                                                                                                                           }
                                                                                                                           §§pop().scaleX = §§pop();
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              §§push(_loc10_);
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!(_loc15_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * _loc9_);
                                                                                                                              }
                                                                                                                              §§pop().scaleY = §§pop();
                                                                                                                              addr466:
                                                                                                                              §§push(this);
                                                                                                                              §§push(param1);
                                                                                                                              §§push(_loc12_ - 1);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§&"J§);
                                                                                                                              }
                                                                                                                              §§pop().§ !f§(§§pop(),§§pop());
                                                                                                                              addr498:
                                                                                                                              if(!(_loc15_ && param3))
                                                                                                                              {
                                                                                                                                 _loc11_.addChild(_loc10_);
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    if(_loc14_ || param2)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr466);
                                                                                                                                       }
                                                                                                                                       _loc10_ = null;
                                                                                                                                       if(!(_loc15_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc12_++;
                                                                                                                                       }
                                                                                                                                       §§goto(addr561);
                                                                                                                                    }
                                                                                                                                    §§goto(addr498);
                                                                                                                                 }
                                                                                                                                 addr711:
                                                                                                                                 if(this.§9"S§)
                                                                                                                                 {
                                                                                                                                    addr639:
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       addr643:
                                                                                                                                       addr641:
                                                                                                                                       if(this.§9"S§.numChildren > 0)
                                                                                                                                       {
                                                                                                                                          addr646:
                                                                                                                                          §§push(this.§?!T§);
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§pop().addChildAt(this.§9"S§,0);
                                                                                                                                             addr654:
                                                                                                                                             if(_loc14_ || param3)
                                                                                                                                             {
                                                                                                                                                addr586:
                                                                                                                                                §§push(this.§?!T§);
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                                                                                                                                      if(!(_loc15_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr646);
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr654);
                                                                                                                                                      }
                                                                                                                                                      addr620:
                                                                                                                                                      if(_loc14_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc14_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr586);
                                                                                                                                                         }
                                                                                                                                                         addr708:
                                                                                                                                                         this.§?!T§.addChild(this.§8!X§);
                                                                                                                                                         §§goto(addr711);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr639);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr708);
                                                                                                                                                }
                                                                                                                                                §§goto(addr646);
                                                                                                                                                addr661:
                                                                                                                                             }
                                                                                                                                             addr687:
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr711);
                                                                                                                                             }
                                                                                                                                             if(!(_loc15_ && param1))
                                                                                                                                             {
                                                                                                                                                addr703:
                                                                                                                                                addr701:
                                                                                                                                                if(this.§8!X§.numChildren > 0)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr708);
                                                                                                                                                }
                                                                                                                                                §§push(this.§8!X§);
                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().dispose();
                                                                                                                                                      §§goto(addr687);
                                                                                                                                                   }
                                                                                                                                                   addr693:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr687);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr711);
                                                                                                                                                }
                                                                                                                                                §§goto(addr703);
                                                                                                                                             }
                                                                                                                                             §§goto(addr693);
                                                                                                                                             §§push(this.§8!X§);
                                                                                                                                             addr716:
                                                                                                                                          }
                                                                                                                                          §§pop().addChild(_loc11_);
                                                                                                                                          §§goto(addr716);
                                                                                                                                       }
                                                                                                                                       §§push(this.§9"S§);
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             §§pop().dispose();
                                                                                                                                             §§goto(addr620);
                                                                                                                                          }
                                                                                                                                          §§goto(addr711);
                                                                                                                                       }
                                                                                                                                       §§goto(addr643);
                                                                                                                                    }
                                                                                                                                    §§goto(addr711);
                                                                                                                                 }
                                                                                                                                 §§goto(addr586);
                                                                                                                              }
                                                                                                                              addr572:
                                                                                                                              _loc11_.flatten();
                                                                                                                              if(!(_loc15_ && this))
                                                                                                                              {
                                                                                                                                 §§goto(addr646);
                                                                                                                                 §§push(this.§?!T§);
                                                                                                                              }
                                                                                                                              §§goto(addr641);
                                                                                                                           }
                                                                                                                           §§goto(addr646);
                                                                                                                        }
                                                                                                                        §§goto(addr701);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr541);
                                                                                                            }
                                                                                                            §§goto(addr661);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr440);
                                                                                                   }
                                                                                                   §§goto(addr427);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr442);
                                                                                          }
                                                                                          §§goto(addr703);
                                                                                       }
                                                                                       _loc10_ = new § "E§(_loc6_,false,param1.§8"$§);
                                                                                       §§goto(addr401);
                                                                                    }
                                                                                    §§goto(addr586);
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                              if(!(_loc15_ && param3))
                                                                              {
                                                                                 §§goto(addr572);
                                                                              }
                                                                              §§goto(addr646);
                                                                              addr338:
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     §§goto(addr336);
                                                                  }
                                                                  this.§6!"§ = 1;
                                                                  if(_loc14_)
                                                                  {
                                                                     §§goto(addr299);
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            else
                                                            {
                                                               this.§&"J§ = Math.round(this.§&"J§);
                                                            }
                                                            §§goto(addr355);
                                                         }
                                                         §§goto(addr312);
                                                      }
                                                      §§goto(addr338);
                                                   }
                                                   §§goto(addr312);
                                                }
                                             }
                                             §§goto(addr174);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this);
                                          §§push(_loc10_.width);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() * _loc5_);
                                             if(_loc14_)
                                             {
                                                addr233:
                                                §§push(§§pop() - 2);
                                             }
                                             §§pop().§&"J§ = §§pop();
                                             if(_loc14_)
                                             {
                                                §§push(Number(_loc10_.§ #§.bottom));
                                                if(_loc14_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!(_loc15_ && this))
                                                   {
                                                      addr252:
                                                      §§push((_loc10_.§ #§.left + _loc10_.§ #§.right) / 2);
                                                      if(_loc14_ || param3)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr270);
                                                }
                                                _loc8_ = §§pop();
                                                §§goto(addr270);
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr124);
                                 }
                              }
                              §§push(Number(0));
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr51);
               }
            }
         }
         §§goto(addr75);
      }
      
      public function get §;T§() : Boolean
      {
         return this.§=!P§;
      }
      
      private function § !f§(param1:§#!#§, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§5"<§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§?!6§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§;!y§(_loc3_.id,this.§=!2§)));
            if(_loc10_ || this)
            {
               if(§§pop())
               {
                  if(_loc10_ || param2)
                  {
                     addr64:
                     §§pop();
                     if(!_loc9_)
                     {
                        addr71:
                        if(_loc4_.§@p§ > 0)
                        {
                           if(_loc10_)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§]!U§;
                              if(_loc10_)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(_loc10_ || param1)
                                 {
                                    addr96:
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       loop19:
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          addr296:
                                          while(_loc9_)
                                          {
                                             continue loop19;
                                          }
                                          addr290:
                                          _loc4_.start();
                                          while(true)
                                          {
                                             §!"J§.§<!C§.add(_loc4_);
                                          }
                                       }
                                       addr303:
                                    }
                                    loop15:
                                    while(true)
                                    {
                                       this.§?!6§.push(_loc4_);
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(!_loc3_.isBehindGraphic)
                                             {
                                                break;
                                             }
                                             loop12:
                                             while(true)
                                             {
                                                §§push(this.§9"S§);
                                                loop8:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§9"S§ = new Sprite();
                                                      addr260:
                                                      while(true)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr232:
                                                addr234:
                                                §§pop().addChild(_loc4_);
                                                while(true)
                                                {
                                                   if(_loc10_ || param1)
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   §§goto(addr256);
                                                   §§goto(addr232);
                                                }
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr198:
                                                      while(true)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc9_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr161:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr167);
                                                                           }
                                                                           §§goto(addr260);
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                     addr161:
                                                                  }
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr192:
                                                                     if(_loc10_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc5_++;
                                                                           addr169:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              addr221:
                                                                              while(true)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§8!X§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§pop().addChild(_loc4_);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             addr210:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr234);
                                                                                          }
                                                                                       }
                                                                                       addr208:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr216:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr167:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§8!X§ = new Sprite();
                                                                        §§goto(addr221);
                                                                     }
                                                                  }
                                                                  §§goto(addr169);
                                                                  §§goto(addr208);
                                                               }
                                                               else
                                                               {
                                                                  _loc4_.§ "@§(1 / 20);
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            continue loop18;
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr296);
                                          }
                                          §§goto(addr290);
                                       }
                                       §§goto(addr216);
                                    }
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr303);
                           }
                           §§goto(addr96);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc10_)
                           {
                              if(_loc10_ || param1)
                              {
                                 addr159:
                                 _loc4_.dispose();
                                 §§goto(addr161);
                              }
                              §§goto(addr198);
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr159);
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr64);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc5_)
         {
            §§push(this.§?!T§);
            if(!_loc4_)
            {
               §§pop().§<!7§(0,-1,true);
               §§goto(addr44);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         addr44:
         if(_loc5_ || _loc3_)
         {
            §§push(this.§?!T§);
         }
         for each(_loc1_ in this.§?!6§)
         {
            if(!(_loc4_ && _loc1_))
            {
               §!"J§.§<!C§.§ !V§(_loc1_);
               if(_loc4_ && this)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(!_loc4_)
         {
            this.§?!6§ = [];
            while(true)
            {
               this.§9"S§ = null;
               §§goto(addr121);
            }
         }
         addr121:
         while(true)
         {
            this.§8!X§ = null;
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop1;
            }
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§<!i§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§&!b§);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() * param1);
            if(_loc4_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§?!T§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               addr109:
               while(true)
               {
                  §§push(-§§pop());
                  addr110:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      private function §<!i§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!(_loc5_ && _loc1_))
         {
            §§push(this.§&!A§);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(_loc4_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        §§goto(addr52);
                     }
                  }
                  §§goto(addr59);
               }
            }
            addr52:
            §§pop();
            if(_loc4_)
            {
               addr59:
               if(!this.§?!T§.stage)
               {
                  if(_loc4_ || _loc2_)
                  {
                     return;
                  }
               }
            }
            for each(_loc1_ in this.§?!6§)
            {
               if(!_loc5_)
               {
                  §!"J§.§<!C§.add(_loc1_);
                  if(!(_loc5_ && this))
                  {
                     _loc1_.visible = true;
                  }
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      private function §^"O§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         var _loc3_:* = this.§?!6§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               §!"J§.§<!C§.§ !V§(_loc1_);
               if(!(_loc5_ || _loc1_))
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §%"7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§&!A§)
            {
               while(true)
               {
                  this.§&!A§ = param1;
                  while(true)
                  {
                     §§push(this.§&!A§);
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           this.§<!i§();
                           break;
                        }
                        break;
                     }
                     this.§^"O§();
                     if(!(_loc3_ || param1))
                     {
                        break;
                     }
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
                  if(_loc2_ && _loc2_)
                  {
                     while(true)
                     {
                        §§goto(addr89);
                     }
                     addr99:
                  }
                  §§goto(addr89);
                  continue loop0;
               }
               if(!_loc2_)
               {
                  addr20:
                  return;
               }
               break;
            }
            return;
         }
         §§goto(addr99);
      }
      
      protected function §<X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6!"§ == 1);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr113:
                     do
                     {
                        §§push(this.§?!6§.length > 0);
                        if(_loc1_)
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
                  if(!_loc1_)
                  {
                     §§goto(addr102);
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr113);
               }
               addr24:
               §§push(§"l§.§2!N§);
               if(!_loc1_)
               {
                  §§push(this.§?!T§.x - this.§&"J§);
                  if(_loc2_)
                  {
                     §§push(§§pop() * §"l§.§@!>§);
                  }
                  §§push(§§pop() + §§pop());
               }
               if(§§pop() <= 0)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     if(_loc1_)
                     {
                        addr87:
                        §§goto(addr24);
                     }
                     this.§6E§();
                  }
                  return;
               }
               this.§?!T§.x -= this.§&"J§;
               §§goto(addr87);
            }
         }
         addr102:
      }
      
      private function §6E§() : void
      {
      }
   }
}
