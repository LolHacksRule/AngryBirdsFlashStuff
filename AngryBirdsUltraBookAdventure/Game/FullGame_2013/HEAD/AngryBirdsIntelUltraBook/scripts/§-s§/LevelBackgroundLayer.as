package §-s§
{
   import §#!,§.§0!b§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.CompositeSpriteParser;
   import §,!7§.TextureManager;
   import §5u§.§[!,§;
   import §6!J§.Texture;
   import §7!>§.Starling;
   import §>! §.ParticleManager;
   import §>=§.§"_§;
   import §]!@§.LevelMain;
   import §]!@§.§`!N§;
   import §^s§.ParticleDesignerPS;
   import starling.events.Event;
   
   public class LevelBackgroundLayer
   {
       
      
      private var §-!"§:int;
      
      private var §4;§:int;
      
      private var §4!=§:Number;
      
      private var §-R§:Boolean;
      
      private var §"!,§:Sprite;
      
      private var §'s§:Array;
      
      private var §^!9§:Boolean = true;
      
      private var §7!`§:TextureManager;
      
      private var §6-§:Sprite;
      
      private var §]!'§:Sprite;
      
      public function LevelBackgroundLayer(param1:§"_§, param2:Sprite, param3:TextureManager, param4:Number)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:Texture = null;
         var _loc13_:§ H§ = null;
         if(_loc15_)
         {
            this.§'s§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§7!`§ = param3;
                  while(_loc15_)
                  {
                     loop6:
                     while(_loc15_ || this)
                     {
                        this.§-R§ = param1.§'3§;
                        if(_loc14_ && param1)
                        {
                           continue;
                        }
                        addr38:
                        if(!(_loc14_ && param1))
                        {
                           if(!_loc15_)
                           {
                              continue loop0;
                           }
                           if(true)
                           {
                              var _loc5_:* = Number(1);
                              if(_loc15_ || param1)
                              {
                                 §§push(param1.§?C§);
                                 if(!(_loc14_ && param1))
                                 {
                                    if(§§pop() != 0)
                                    {
                                       if(!_loc14_)
                                       {
                                          §§push(param1.§?C§);
                                          if(!(_loc14_ && this))
                                          {
                                             addr114:
                                             §§push(Number(§§pop()));
                                             if(_loc15_ || this)
                                             {
                                                addr122:
                                                _loc5_ = §§pop();
                                                §§push(Number(0));
                                             }
                                             var _loc7_:* = §§pop();
                                             var _loc8_:* = Number(0);
                                             var _loc9_:* = Number(1);
                                             var _loc10_:DisplayObject = CompositeSpriteParser.§]P§(param1.mName,this.§7!`§,param1.§7y§);
                                             if(!(_loc14_ && param2))
                                             {
                                                if(!_loc10_)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      _loc13_ = param3.§]w§(param1.mName);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(_loc13_.pivotY);
                                                         if(_loc15_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc14_ && this))
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(_loc15_ || param2)
                                                               {
                                                                  addr188:
                                                                  §§push(this.§-R§);
                                                                  if(!(_loc14_ && param3))
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        addr209:
                                                                        _loc8_ = Number(_loc13_.pivotX);
                                                                        addr206:
                                                                     }
                                                                  }
                                                                  _loc6_ = _loc13_.texture;
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     §§push(this);
                                                                     §§push(_loc13_.width);
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(§§pop() * _loc5_);
                                                                        if(_loc15_ || param2)
                                                                        {
                                                                           §§push(§§pop() - 2);
                                                                        }
                                                                     }
                                                                     §§pop().§-!"§ = §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(_loc13_.scale);
                                                                        if(_loc15_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        _loc9_ = §§pop();
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr300:
                                                                           if(this.§-!"§ <= 0)
                                                                           {
                                                                              if(_loc15_ || param3)
                                                                              {
                                                                                 throw new Error("Invalid texture for background layer: " + param1.mName);
                                                                              }
                                                                              var _loc11_:Sprite = new Sprite();
                                                                              addr373:
                                                                              §§push(0);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              addr604:
                                                                              if(_loc12_ < this.§4;§)
                                                                              {
                                                                                 §§push(!_loc10_);
                                                                                 if(_loc15_ || this)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§push(!_loc6_);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr410:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   _loc10_ = CompositeSpriteParser.§]P§(param1.mName,this.§7!`§,param1.§7y§);
                                                                                                   addr438:
                                                                                                   §§push(_loc10_);
                                                                                                   §§push(_loc12_ - 1);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§push(§§pop() * this.§-!"§);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         addr449:
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc15_ || param2)
                                                                                                               {
                                                                                                                  addr469:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     addr466:
                                                                                                                     §§push(param1.§;!0§);
                                                                                                                  }
                                                                                                                  §§pop().x = §§pop() + §§pop();
                                                                                                                  if(_loc15_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!(_loc14_ && this))
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc15_ || param2)
                                                                                                                           {
                                                                                                                              addr572:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 addr569:
                                                                                                                                 §§push(param1.§%!i§);
                                                                                                                              }
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              if(!(_loc14_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc10_);
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * _loc9_);
                                                                                                                                 }
                                                                                                                                 §§pop().scaleX = §§pop();
                                                                                                                                 §§push(_loc10_);
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(_loc15_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * _loc9_);
                                                                                                                                 }
                                                                                                                                 §§pop().scaleY = §§pop();
                                                                                                                                 addr545:
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    addr495:
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(param1);
                                                                                                                                    §§push(_loc12_ - 1);
                                                                                                                                    if(!(_loc14_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * this.§-!"§);
                                                                                                                                    }
                                                                                                                                    §§pop().§=y§(§§pop(),§§pop());
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       _loc11_.addChild(_loc10_);
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || param3)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr495);
                                                                                                                                             }
                                                                                                                                             _loc10_ = null;
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                if(!(_loc14_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                   if(_loc15_ || param2)
                                                                                                                                                   {
                                                                                                                                                      addr602:
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                   §§goto(addr604);
                                                                                                                                                }
                                                                                                                                                §§goto(addr602);
                                                                                                                                             }
                                                                                                                                             §§goto(addr604);
                                                                                                                                          }
                                                                                                                                          §§goto(addr545);
                                                                                                                                       }
                                                                                                                                       addr625:
                                                                                                                                       addr689:
                                                                                                                                       §§push(this.§"!,§);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§1Z§);
                                                                                                                                          if(_loc15_ || param3)
                                                                                                                                          {
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                addr690:
                                                                                                                                                addr741:
                                                                                                                                                §§push(Boolean(this.§]!'§));
                                                                                                                                                if(!(_loc14_ && this))
                                                                                                                                                {
                                                                                                                                                   addr701:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc14_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr713:
                                                                                                                                                            if(this.§]!'§.numChildren > 0)
                                                                                                                                                            {
                                                                                                                                                               addr716:
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  addr720:
                                                                                                                                                                  §§push(this.§"!,§);
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().addChildAt(this.§]!'§,0);
                                                                                                                                                                        addr729:
                                                                                                                                                                        §§goto(addr625);
                                                                                                                                                                        addr729:
                                                                                                                                                                     }
                                                                                                                                                                     addr778:
                                                                                                                                                                     §§pop().addChild(_loc11_);
                                                                                                                                                                     addr755:
                                                                                                                                                                     if(this.§6-§)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc15_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           addr766:
                                                                                                                                                                           addr764:
                                                                                                                                                                           if(this.§6-§.numChildren > 0)
                                                                                                                                                                           {
                                                                                                                                                                              addr771:
                                                                                                                                                                              this.§"!,§.addChild(this.§6-§);
                                                                                                                                                                              §§goto(addr690);
                                                                                                                                                                              addr769:
                                                                                                                                                                              addr775:
                                                                                                                                                                           }
                                                                                                                                                                           §§push(this.§6-§);
                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().dispose();
                                                                                                                                                                                 §§goto(addr741);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr755);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr766);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr769);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr690);
                                                                                                                                                                     addr781:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr771);
                                                                                                                                                            }
                                                                                                                                                            §§push(this.§]!'§);
                                                                                                                                                            if(_loc15_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc14_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§pop().dispose();
                                                                                                                                                                  addr668:
                                                                                                                                                                  if(_loc15_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc14_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr689);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr775);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr716);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr729);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr690);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr713);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr781);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr729);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr625);
                                                                                                                                                }
                                                                                                                                                §§goto(addr755);
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr668);
                                                                                                                                       }
                                                                                                                                       §§goto(addr720);
                                                                                                                                    }
                                                                                                                                    §§goto(addr778);
                                                                                                                                    §§push(this.§"!,§);
                                                                                                                                    addr531:
                                                                                                                                    addr620:
                                                                                                                                 }
                                                                                                                                 §§goto(addr764);
                                                                                                                              }
                                                                                                                              §§goto(addr729);
                                                                                                                           }
                                                                                                                           §§goto(addr572);
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr569);
                                                                                                                     }
                                                                                                                     §§goto(addr572);
                                                                                                                  }
                                                                                                                  §§goto(addr766);
                                                                                                               }
                                                                                                               §§goto(addr469);
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§goto(addr466);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr469);
                                                                                                   }
                                                                                                   §§goto(addr449);
                                                                                                }
                                                                                                §§goto(addr690);
                                                                                             }
                                                                                             _loc10_ = new §0!b§(_loc6_,false,param1.§7y§);
                                                                                             §§goto(addr438);
                                                                                          }
                                                                                          §§goto(addr701);
                                                                                       }
                                                                                       §§goto(addr531);
                                                                                    }
                                                                                    §§goto(addr438);
                                                                                 }
                                                                                 §§goto(addr410);
                                                                              }
                                                                              if(!_loc14_)
                                                                              {
                                                                                 _loc11_.flatten();
                                                                                 if(_loc15_ || param3)
                                                                                 {
                                                                                    §§goto(addr620);
                                                                                 }
                                                                                 §§goto(addr771);
                                                                              }
                                                                              §§goto(addr729);
                                                                              addr364:
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        this.§-!"§ = Math.round(this.§-!"§);
                                                                     }
                                                                     addr333:
                                                                     addr372:
                                                                     if(!param1.§6!a§)
                                                                     {
                                                                        this.§4;§ = 1;
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr333);
                                                                              }
                                                                              §§goto(addr373);
                                                                           }
                                                                           §§goto(addr372);
                                                                        }
                                                                        §§goto(addr373);
                                                                     }
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(2);
                                                                        §§push(LevelMain.§;y§);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(1.5);
                                                                           if(!_loc14_)
                                                                           {
                                                                              addr362:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc14_ && this))
                                                                              {
                                                                                 §§push(this.§-!"§ * param4);
                                                                              }
                                                                              §§pop().§4;§ = §§pop() + §§pop();
                                                                              §§goto(addr373);
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        §§goto(addr362);
                                                                     }
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                   else
                                                   {
                                                      addr287:
                                                      §§push((_loc10_.bounds.left + _loc10_.bounds.right) / 2);
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc8_ = §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this);
                                                   §§push(_loc10_.width);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() * _loc5_);
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         §§push(§§pop() - 2);
                                                      }
                                                   }
                                                   §§pop().§-!"§ = §§pop();
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      addr273:
                                                      §§push(Number(_loc10_.bounds.bottom));
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(_loc15_)
                                                         {
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                }
                                                §§goto(addr300);
                                             }
                                             §§goto(addr273);
                                          }
                                       }
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr122);
                           }
                        }
                        else
                        {
                           addr66:
                           while(true)
                           {
                              §§goto(addr38);
                           }
                           addr66:
                        }
                        while(true)
                        {
                           this.§4!=§ = param1.§-]§;
                           continue loop6;
                        }
                        §§goto(addr66);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§"!,§ = param2;
            §§goto(addr66);
         }
      }
      
      public function get §^!A§() : Boolean
      {
         return this.§-R§;
      }
      
      private function §=y§(param1:§"_§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§`!N§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§'s§)
         {
            _loc4_ = ParticleManager.§@a§(_loc3_.id,this.§7!`§);
            if(!(_loc10_ && this))
            {
               §§push(Boolean(_loc4_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc10_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        §§pop();
                        if(!(_loc10_ && param2))
                        {
                           while(true)
                           {
                              §§push(_loc4_.§7!O§ > 0);
                              if(_loc10_ && param1)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              if(!(_loc9_ || this))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           addr211:
                           if(!§§pop())
                           {
                              continue loop0;
                           }
                           if(_loc9_ || param2)
                           {
                              if(!(_loc10_ && param2))
                              {
                                 addr226:
                                 _loc4_.dispose();
                                 loop19:
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       if(!(_loc10_ && param1))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          loop20:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc10_ && param2))
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc9_ || this)
                                                {
                                                   addr257:
                                                   if(!_loc10_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      loop21:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               if(_loc9_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                           {
                                                                              if(_loc10_ && param1)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              if(!(_loc9_ || param2))
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr285:
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_ || _loc3_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          addr411:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_.alpha = _loc3_.alpha;
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr387);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§6-§ = new Sprite();
                                                                                       addr338:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                    }
                                                                                    addr334:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr189:
                                                                                 break loop19;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc4_.start();
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    Starling.§5K§.add(_loc4_);
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§'s§.push(_loc4_);
                                                                                       addr387:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(_loc3_.isBehindGraphic));
                                                                                          loop17:
                                                                                          while(!§§pop())
                                                                                          {
                                                                                             §§push(this.§6-§);
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                addr331:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr360:
                                                                                          addr364:
                                                                                          addr365:
                                                                                          while(!_loc9_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§push(!this.§]!'§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§]!'§ = new Sprite();
                                                                                                   addr370:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr366:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§]!'§);
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   §§pop().addChild(_loc4_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr304:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               addr306:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  addr307:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     addr308:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                               }
                                                                                                               break loop12;
                                                                                                            }
                                                                                                         }
                                                                                                         addr354:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr360);
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   addr352:
                                                                                                }
                                                                                                §§goto(addr364);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr406:
                                                                              §§goto(addr334);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc4_.§1!5§(1 / 20);
                                                                           }
                                                                           §§goto(addr285);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr304);
                                                                     }
                                                                  }
                                                                  addr275:
                                                               }
                                                               §§goto(addr370);
                                                            }
                                                            §§goto(addr352);
                                                         }
                                                      }
                                                      addr260:
                                                   }
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr257);
                                          }
                                       }
                                       §§goto(addr338);
                                    }
                                    §§goto(addr308);
                                 }
                                 continue loop0;
                                 addr229:
                              }
                              §§goto(addr366);
                           }
                           §§goto(addr229);
                           addr68:
                        }
                        §§goto(addr387);
                     }
                     §§goto(addr333);
                  }
                  else
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(Boolean(_loc4_));
                           if(_loc9_ || _loc3_)
                           {
                              if(_loc9_)
                              {
                                 §§goto(addr211);
                              }
                           }
                           break;
                        }
                        if(!_loc10_)
                        {
                           _loc4_.x = param2 + _loc3_.x + param1.§;!0§;
                           if(_loc9_)
                           {
                              _loc4_.y = _loc3_.y;
                              if(!(_loc10_ && param1))
                              {
                                 if(false)
                                 {
                                    §§goto(addr68);
                                 }
                                 else
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(_loc9_ || this)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       §§goto(addr411);
                                    }
                                 }
                                 §§goto(addr338);
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr354);
                        §§goto(addr365);
                     }
                     addr95:
                  }
                  §§goto(addr331);
               }
            }
            §§goto(addr275);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc5_)
         {
            §§push(this.§"!,§);
            if(_loc5_ || _loc3_)
            {
               §§pop().§ E§(0,-1,true);
               if(_loc5_ || _loc3_)
               {
                  addr45:
                  this.§"!,§.removeEventListener(Event.ADDED_TO_STAGE,this.§1Z§);
               }
               var _loc2_:int = 0;
               var _loc3_:* = this.§'s§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     Starling.§5K§.§>2§(_loc1_);
                     if(_loc5_ || _loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
               }
               if(_loc5_ || _loc3_)
               {
                  this.§'s§ = [];
                  while(true)
                  {
                     this.§]!'§ = null;
                     §§goto(addr142);
                  }
               }
               addr142:
               while(true)
               {
                  this.§6-§ = null;
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      private function §1Z§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]F§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§4!=§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() * param1);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            §§push(this.§"!,§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               addr100:
               while(true)
               {
                  §§push(-§§pop());
                  addr101:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §]F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§^!9§);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc5_)
                  {
                     addr36:
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              addr61:
                              §§push(!this.§"!,§.stage);
                              if(!_loc5_)
                              {
                                 §§goto(addr68);
                              }
                              addr68:
                              §§goto(addr67);
                           }
                           §§goto(addr76);
                        }
                        addr67:
                        if(§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              addr76:
                              return;
                           }
                        }
                        var _loc3_:* = this.§'s§;
                        for each(_loc1_ in _loc3_)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              Starling.§5K§.add(_loc1_);
                              if(!_loc4_)
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
               §§goto(addr68);
            }
            §§goto(addr36);
         }
         §§goto(addr61);
      }
      
      private function §+2§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§'s§)
         {
            if(!_loc4_)
            {
               Starling.§5K§.§>2§(_loc1_);
               if(!_loc4_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §^!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§^!9§)
            {
               while(true)
               {
                  this.§^!9§ = param1;
                  while(true)
                  {
                     §§push(this.§^!9§);
                     if(_loc2_)
                     {
                        if(!§§pop())
                        {
                           this.§+2§();
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr24);
                           }
                           §§goto(addr89);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr90);
                  continue loop0;
               }
               if(_loc2_ || _loc3_)
               {
                  this.§]F§();
                  addr24:
                  return;
                  addr89:
               }
               break;
            }
         }
      }
      
      private function §9f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§4;§ == 1);
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc1_ || _loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr164:
                     while(true)
                     {
                        §§push(this.§'s§.length > 0);
                        if(_loc1_ || this)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc1_)
                  {
                     return;
                  }
                  if(_loc1_ || _loc2_)
                  {
                     addr145:
                     break;
                  }
                  §§goto(addr164);
               }
               while(true)
               {
                  §§push(§[!,§.§[!^§);
                  if(_loc1_)
                  {
                     §§push(this.§"!,§.x - this.§-!"§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() * §[!,§.§ !7§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  if(§§pop() <= 0)
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        break;
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        this.§-!T§();
                        break;
                     }
                  }
                  else
                  {
                     this.§"!,§.x -= this.§-!"§;
                  }
               }
               return;
            }
         }
         §§goto(addr145);
      }
      
      private function §-!T§() : void
      {
      }
   }
}
