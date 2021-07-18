package §&<§
{
   import § !+§.§3+§;
   import §+!9§.§'!>§;
   import §,!K§.§[V§;
   import §,§.§ p§;
   import §,§.§]!f§;
   import §6;§.§%[§;
   import §94§.§,d§;
   import §9t§.§35§;
   import §9t§.§6!_§;
   import §9t§.§=!>§;
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   import starling.events.Event;
   
   public class §'P§
   {
       
      
      protected var § true§:int;
      
      private var §0!T§:int;
      
      protected var §7!Y§:Number;
      
      private var §[@§:Boolean;
      
      protected var §8!2§:Sprite;
      
      private var §7>§:Array;
      
      private var §'K§:Boolean = true;
      
      private var §>!K§:§=!>§;
      
      private var §%u§:Sprite;
      
      private var §,V§:Sprite;
      
      public function §'P§(param1:§'!>§, param2:Sprite, param3:§=!>§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§35§ = null;
         if(!_loc15_)
         {
            this.§7>§ = [];
            while(true)
            {
               super();
            }
            addr75:
         }
         loop1:
         while(true)
         {
            this.§>!K§ = param3;
            loop2:
            while(true)
            {
               this.§8!2§ = param2;
               while(true)
               {
                  if(_loc14_)
                  {
                     if(_loc15_)
                     {
                        break;
                     }
                     while(true)
                     {
                        this.§7!Y§ = param1.§@c§;
                        continue loop1;
                        addr37:
                        if(_loc15_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        var _loc5_:* = Number(1);
                        if(!_loc15_)
                        {
                           §§push(param1.§#![§);
                           if(!_loc15_)
                           {
                              if(§§pop() != 0)
                              {
                                 if(!(_loc15_ && param3))
                                 {
                                    addr94:
                                    §§push(param1.§#![§);
                                    if(!(_loc15_ && param2))
                                    {
                                       addr103:
                                       §§push(Number(§§pop()));
                                       if(_loc14_ || param2)
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
                                    if(!(_loc10_ = §6!_§.§&m§(param1.mName,this.§>!K§,param1.§<C§)))
                                    {
                                       if(_loc14_)
                                       {
                                          §§push((_loc13_ = param3.§=!+§(param1.mName)).pivotY);
                                          if(_loc14_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc14_)
                                             {
                                                _loc7_ = §§pop();
                                                if(!(_loc15_ && param3))
                                                {
                                                   if(!this.§[@§)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         addr164:
                                                         _loc8_ = Number(_loc13_.pivotX);
                                                         addr161:
                                                      }
                                                   }
                                                   _loc6_ = _loc13_.texture;
                                                   if(!(_loc15_ && param2))
                                                   {
                                                      §§push(this);
                                                      §§push(_loc13_.width);
                                                      if(!(_loc15_ && param2))
                                                      {
                                                         §§push(§§pop() * _loc5_);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§§pop() - 2);
                                                         }
                                                      }
                                                      §§pop().§ true§ = §§pop();
                                                      if(!_loc15_)
                                                      {
                                                         §§push(_loc13_.scale);
                                                         if(_loc14_ || param1)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc9_ = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            addr270:
                                                            if(this.§ true§ <= 0)
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  throw new Error("Invalid texture for background layer: " + param1.mName);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               this.§ true§ = Math.round(this.§ true§);
                                                            }
                                                            addr305:
                                                            addr360:
                                                            if(!param1.§!!f§)
                                                            {
                                                               this.§0!T§ = 1;
                                                               if(_loc14_ || param1)
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr303:
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr305);
                                                                        }
                                                                        addr361:
                                                                        var _loc11_:Sprite = new Sprite();
                                                                        var _loc12_:int = 0;
                                                                        addr546:
                                                                        if(_loc12_ < this.§0!T§)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc14_ || this)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc14_ || param1)
                                                                                    {
                                                                                       _loc10_ = §6!_§.§&m§(param1.mName,this.§>!K§,param1.§<C§);
                                                                                       addr406:
                                                                                       §§push(_loc10_);
                                                                                       §§push(_loc12_ - 1);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§push(§§pop() * this.§ true§);
                                                                                          if(!(_loc15_ && this))
                                                                                          {
                                                                                             addr421:
                                                                                             §§push(_loc8_);
                                                                                             if(!(_loc15_ && param1))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      addr441:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr438:
                                                                                                         §§push(param1.§,!,§);
                                                                                                      }
                                                                                                      §§pop().x = §§pop() + §§pop();
                                                                                                      if(_loc14_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         §§push(_loc7_);
                                                                                                         if(_loc14_ || param3)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               addr519:
                                                                                                               §§push(_loc5_);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  addr533:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc15_ && this))
                                                                                                                  {
                                                                                                                     §§push(param1.§;C§);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  §§push(_loc10_);
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(_loc14_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc9_);
                                                                                                                  }
                                                                                                                  §§pop().scaleX = §§pop();
                                                                                                                  addr534:
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     if(!(_loc15_ && param2))
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc9_);
                                                                                                                        }
                                                                                                                        §§pop().scaleY = §§pop();
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           addr459:
                                                                                                                           §§push(this);
                                                                                                                           §§push(param1);
                                                                                                                           §§push(_loc12_ - 1);
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * this.§ true§);
                                                                                                                           }
                                                                                                                           §§pop().§'!_§(§§pop(),§§pop());
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              _loc11_.addChild(_loc10_);
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr459);
                                                                                                                                 }
                                                                                                                                 _loc10_ = null;
                                                                                                                                 if(!(_loc15_ && param2))
                                                                                                                                 {
                                                                                                                                    _loc12_++;
                                                                                                                                 }
                                                                                                                                 §§goto(addr546);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr677:
                                                                                                                           if(this.§,V§)
                                                                                                                           {
                                                                                                                              addr639:
                                                                                                                              if(this.§,V§.numChildren > 0)
                                                                                                                              {
                                                                                                                                 addr644:
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    addr648:
                                                                                                                                    §§push(this.§8!2§);
                                                                                                                                    if(_loc14_ || this)
                                                                                                                                    {
                                                                                                                                       §§pop().addChildAt(this.§,V§,0);
                                                                                                                                       addr659:
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          addr571:
                                                                                                                                          §§push(this.§8!2§);
                                                                                                                                          if(_loc14_ || param3)
                                                                                                                                          {
                                                                                                                                             §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§-!e§);
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc15_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(_loc14_ || param3)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc15_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc15_)
                                                                                                                                                         {
                                                                                                                                                            addr675:
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr677);
                                                                                                                                                            addr716:
                                                                                                                                                         }
                                                                                                                                                         return;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr639);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr644);
                                                                                                                                                }
                                                                                                                                                §§goto(addr659);
                                                                                                                                             }
                                                                                                                                             addr627:
                                                                                                                                             if(!(_loc15_ && param2))
                                                                                                                                             {
                                                                                                                                                §§goto(addr571);
                                                                                                                                             }
                                                                                                                                             addr694:
                                                                                                                                             addr696:
                                                                                                                                             §§push(this.§8!2§);
                                                                                                                                             if(!(_loc15_ && this))
                                                                                                                                             {
                                                                                                                                                §§pop().addChild(this.§%u§);
                                                                                                                                                §§goto(addr716);
                                                                                                                                             }
                                                                                                                                             addr719:
                                                                                                                                             §§pop().addChild(_loc11_);
                                                                                                                                             §§push(this.§%u§);
                                                                                                                                             if(!(_loc15_ && this))
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr691:
                                                                                                                                                   addr689:
                                                                                                                                                   if(this.§%u§.numChildren > 0)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr694);
                                                                                                                                                   }
                                                                                                                                                   §§push(this.§%u§);
                                                                                                                                                   if(_loc14_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§pop().dispose();
                                                                                                                                                      §§goto(addr675);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr691);
                                                                                                                                                }
                                                                                                                                                §§goto(addr677);
                                                                                                                                             }
                                                                                                                                             §§goto(addr691);
                                                                                                                                             addr721:
                                                                                                                                          }
                                                                                                                                          §§goto(addr648);
                                                                                                                                       }
                                                                                                                                       §§goto(addr689);
                                                                                                                                    }
                                                                                                                                    §§goto(addr696);
                                                                                                                                 }
                                                                                                                                 §§goto(addr721);
                                                                                                                              }
                                                                                                                              §§push(this.§,V§);
                                                                                                                              if(!(_loc15_ && param2))
                                                                                                                              {
                                                                                                                                 if(!(_loc15_ && this))
                                                                                                                                 {
                                                                                                                                    §§pop().dispose();
                                                                                                                                    §§goto(addr627);
                                                                                                                                 }
                                                                                                                                 §§goto(addr677);
                                                                                                                              }
                                                                                                                              §§goto(addr639);
                                                                                                                           }
                                                                                                                           §§goto(addr571);
                                                                                                                        }
                                                                                                                        §§goto(addr675);
                                                                                                                     }
                                                                                                                     §§goto(addr534);
                                                                                                                  }
                                                                                                                  §§goto(addr627);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§goto(addr533);
                                                                                                         }
                                                                                                         §§goto(addr519);
                                                                                                         addr450:
                                                                                                      }
                                                                                                      §§goto(addr533);
                                                                                                   }
                                                                                                   §§goto(addr441);
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§goto(addr438);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr441);
                                                                                       }
                                                                                       §§goto(addr421);
                                                                                    }
                                                                                    §§goto(addr533);
                                                                                 }
                                                                                 _loc10_ = new §6p§(_loc6_,false,param1.§<C§);
                                                                                 §§goto(addr406);
                                                                              }
                                                                              §§goto(addr450);
                                                                           }
                                                                           §§goto(addr406);
                                                                        }
                                                                        if(_loc14_ || param2)
                                                                        {
                                                                           _loc11_.flatten();
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§goto(addr719);
                                                                              §§push(this.§8!2§);
                                                                           }
                                                                           §§goto(addr639);
                                                                        }
                                                                        §§goto(addr691);
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  addr309:
                                                                  §§push(this);
                                                                  §§push(2);
                                                                  §§push(§ p§.§=j§);
                                                                  if(_loc14_ || param3)
                                                                  {
                                                                     §§push(1.5);
                                                                     if(_loc14_ || param3)
                                                                     {
                                                                        addr341:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           §§push(this.§ true§ * param4);
                                                                        }
                                                                        §§pop().§0!T§ = §§pop() + §§pop();
                                                                        §§goto(addr361);
                                                                        addr343:
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                                  §§goto(addr341);
                                                               }
                                                            }
                                                            §§goto(addr309);
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr303);
                                                }
                                                §§goto(addr161);
                                             }
                                          }
                                          §§goto(addr164);
                                       }
                                       else
                                       {
                                          addr238:
                                          §§push(Number(_loc10_.§-j§.bottom));
                                          if(!(_loc15_ && this))
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc15_)
                                             {
                                                §§push((_loc10_.§-j§.left + _loc10_.§-j§.right) / 2);
                                                if(_loc14_ || param1)
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
                                    }
                                    else
                                    {
                                       §§push(this);
                                       §§push(_loc10_.width);
                                       if(_loc14_ || this)
                                       {
                                          §§push(§§pop() * _loc5_);
                                          if(_loc14_ || param3)
                                          {
                                             §§push(§§pop() - 2);
                                          }
                                       }
                                       §§pop().§ true§ = §§pop();
                                       if(_loc14_ || param2)
                                       {
                                          §§goto(addr238);
                                       }
                                    }
                                    §§goto(addr270);
                                 }
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr94);
                     }
                     continue;
                  }
                  continue loop2;
               }
               §§goto(addr75);
            }
         }
      }
      
      public function get §[!]§() : Boolean
      {
         return this.§[@§;
      }
      
      private function §'!_§(param1:§'!>§, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§]!f§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§7>§)
         {
            §§push(Boolean(_loc4_ = §,d§.§5!Z§(_loc3_.id,this.§>!K§)));
            if(!(_loc9_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc9_ && this))
                  {
                     addr64:
                     §§pop();
                     if(_loc10_)
                     {
                        addr71:
                        if(_loc4_.§ =§ > 0)
                        {
                           if(!(_loc9_ && this))
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§,!,§;
                              if(_loc10_ || param1)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(_loc10_)
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(!_loc9_)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       loop20:
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          addr313:
                                          loop23:
                                          while(true)
                                          {
                                             _loc4_.start();
                                             loop24:
                                             while(true)
                                             {
                                                §%[§.§6+§.add(_loc4_);
                                                loop25:
                                                while(true)
                                                {
                                                   this.§7>§.push(_loc4_);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         continue loop25;
                                                      }
                                                      if(_loc3_.isBehindGraphic)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§%u§);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(_loc9_ && param1)
                                                               {
                                                                  continue loop23;
                                                               }
                                                               this.§%u§ = new Sprite();
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     continue loop24;
                                                                  }
                                                                  addr285:
                                                                  while(true)
                                                                  {
                                                                     this.§,V§ = new Sprite();
                                                                     break loop14;
                                                                  }
                                                               }
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  addr263:
                                                                  addr284:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§,V§);
                                                                     if(!(_loc10_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§pop().addChild(_loc4_);
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!(_loc10_ || param2))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr166:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc10_ || param2))
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   while(false)
                                                                                                   {
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                   addr182:
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             §§goto(addr253);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc4_.§6!9§(1 / 20);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc10_ || _loc3_))
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             if(!(_loc10_ || this))
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          addr202:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_++;
                                                                                          continue loop6;
                                                                                       }
                                                                                       addr193:
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              addr235:
                                                                              while(true)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr263);
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                               }
                                                               addr253:
                                                            }
                                                            continue loop23;
                                                         }
                                                      }
                                                   }
                                                   addr282:
                                                   while(true)
                                                   {
                                                      §§goto(addr284);
                                                      §§goto(addr297);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr277);
                              }
                              §§goto(addr313);
                           }
                           §§goto(addr182);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!(_loc9_ && param2))
                           {
                              if(!(_loc9_ && this))
                              {
                                 if(_loc10_ || param2)
                                 {
                                    if(!_loc9_)
                                    {
                                       _loc4_.dispose();
                                       §§goto(addr166);
                                    }
                                    §§goto(addr282);
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr202);
                           }
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr282);
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
         var _loc1_:§3+§ = null;
         if(_loc5_ || this)
         {
            §§push(this.§8!2§);
            if(_loc5_)
            {
               §§pop().§7!X§(0,-1,true);
               §§goto(addr49);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§-!e§);
         }
         addr49:
         if(_loc5_ || _loc1_)
         {
            §§push(this.§8!2§);
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§7>§)
         {
            if(!_loc4_)
            {
               §%[§.§6+§.§3f§(_loc1_);
               if(_loc4_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(_loc5_ || _loc2_)
         {
            this.§7>§ = [];
         }
         do
         {
            this.§,V§ = null;
            do
            {
               this.§%u§ = null;
            }
            while(_loc4_);
            
         }
         while(_loc4_ && _loc1_);
         
      }
      
      private function §-!e§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5l§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§7!Y§);
         if(!_loc4_)
         {
            §§push(§§pop() * param1);
            if(_loc5_ || param2)
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(this.§8!2§);
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  addr90:
                  while(true)
                  {
                     §§push(-§§pop());
                     addr91:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr86);
         }
         §§goto(addr30);
      }
      
      private function §5l§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§3+§ = null;
         if(!(_loc4_ && _loc1_))
         {
            §§push(this.§'K§);
            if(_loc5_)
            {
               §§push(!§§pop());
               if(_loc5_ || this)
               {
                  addr39:
                  if(!§§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           addr70:
                           if(!this.§8!2§.stage)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 return;
                              }
                           }
                        }
                        for each(_loc1_ in this.§7>§)
                        {
                           if(_loc5_)
                           {
                              §%[§.§6+§.add(_loc1_);
                              if(!(_loc5_ || _loc1_))
                              {
                                 continue;
                              }
                           }
                           _loc1_.visible = true;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr39);
         }
         §§goto(addr70);
      }
      
      private function §'?§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§3+§ = null;
         for each(_loc1_ in this.§7>§)
         {
            if(!_loc5_)
            {
               §%[§.§6+§.§3f§(_loc1_);
               if(!_loc5_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §1L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§'K§)
            {
               while(true)
               {
                  this.§'K§ = param1;
                  while(true)
                  {
                     §§push(this.§'K§);
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           this.§'?§();
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc2_ && _loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                           addr81:
                           if(_loc2_)
                           {
                              break loop0;
                           }
                           §§goto(addr25);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  continue loop0;
               }
               return;
            }
            return;
         }
         this.§5l§();
         §§goto(addr81);
      }
      
      protected function §%F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§0!T§ == 1);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr127:
                     loop3:
                     while(true)
                     {
                        §§push(this.§7>§.length > 0);
                        if(_loc1_)
                        {
                           while(§§pop())
                           {
                              if(!(_loc2_ && this))
                              {
                                 return;
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              §§push(§[V§.§]!^§);
                              if(_loc1_)
                              {
                                 §§push(this.§8!2§.x - this.§ true§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop() * §[V§.§+!>§);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              if(§§pop() <= 0)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    this.§,U§();
                                 }
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§8!2§.x -= this.§ true§;
                              }
                           }
                           return;
                           addr95:
                        }
                     }
                  }
                  addr126:
               }
               §§goto(addr95);
            }
            §§goto(addr126);
         }
         §§goto(addr127);
      }
      
      private function §,U§() : void
      {
      }
   }
}
