package §1&§
{
   import § N§.§1!A§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§%Y§;
   import §#e§.§'?§;
   import §#e§.§`!9§;
   import §,O§.ParticleDesignerPS;
   import §-!O§.§?Z§;
   import §4?§.ParticleManager;
   import §5!G§.§4!$§;
   import §5Z§.§[Z§;
   import §8z§.Texture;
   import §9T§.§1r§;
   import §9T§.§['§;
   import starling.events.Event;
   
   public class §1!O§
   {
       
      
      protected var §7=§:int;
      
      private var §>!4§:int;
      
      protected var §#V§:Number;
      
      private var §`4§:Boolean;
      
      protected var §8A§:Sprite;
      
      private var §5b§:Array;
      
      private var §&9§:Boolean = true;
      
      private var §2"§:§'?§;
      
      private var §!0§:Sprite;
      
      private var §0I§:Sprite;
      
      public function §1!O§(param1:§4!$§, param2:Sprite, param3:§'?§, param4:Number)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:Texture = null;
         var _loc13_:§`!9§ = null;
         if(!_loc14_)
         {
            this.§5b§ = [];
            while(true)
            {
               super();
               this.§2"§ = param3;
               this.§8A§ = param2;
               loop1:
               for(; _loc15_; while(!(_loc14_ && param3))
               {
               })
               {
                  while(true)
                  {
                     this.§#V§ = param1.§`!;§;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§`4§ = param1.§6!0§;
            if(_loc15_ || param1)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr40);
            }
            §§goto(addr45);
         }
         var _loc5_:* = Number(1);
         if(_loc15_)
         {
            §§push(param1.§6-§);
            if(_loc15_)
            {
               if(§§pop() != 0)
               {
                  if(_loc15_)
                  {
                     addr86:
                     §§push(param1.§6-§);
                     if(_loc15_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc14_)
                        {
                           addr93:
                           _loc5_ = §§pop();
                           §§push(Number(0));
                        }
                        var _loc7_:* = §§pop();
                        var _loc8_:* = Number(0);
                        var _loc9_:* = Number(1);
                        var _loc10_:DisplayObject;
                        if(!(_loc10_ = §%Y§.§3k§(param1.mName,this.§2"§,param1.§[[§)))
                        {
                           if(_loc15_)
                           {
                              §§push((_loc13_ = param3.§&! §(param1.mName)).pivotY);
                              if(!_loc14_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc15_ || param2)
                                 {
                                    _loc7_ = §§pop();
                                    if(!(_loc14_ && param3))
                                    {
                                       if(!this.§`4§)
                                       {
                                          if(_loc15_)
                                          {
                                             addr151:
                                             _loc8_ = Number(_loc13_.pivotX);
                                             addr148:
                                          }
                                       }
                                       _loc6_ = _loc13_.texture;
                                       §§push(this);
                                       §§push(_loc13_.width);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop() * _loc5_);
                                          if(!(_loc14_ && param1))
                                          {
                                             addr170:
                                             §§push(§§pop() - 2);
                                          }
                                          §§pop().§7=§ = §§pop();
                                          §§push(_loc13_.scale);
                                          if(_loc15_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc9_ = §§pop();
                                          if(_loc15_ || param2)
                                          {
                                             addr238:
                                             if(this.§7=§ <= 0)
                                             {
                                                throw new Error("Invalid texture for background layer: " + param1.mName);
                                             }
                                          }
                                          this.§7=§ = Math.round(this.§7=§);
                                          while(true)
                                          {
                                             if(!param1.§"M§)
                                             {
                                                continue;
                                             }
                                             §§push(this);
                                             §§push(2);
                                             §§push(§1r§.§'6§);
                                             if(_loc15_ || param3)
                                             {
                                                §§push(1.5);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc15_ || param2)
                                                   {
                                                      addr302:
                                                      §§push(§§pop() / (this.§7=§ * param4));
                                                   }
                                                   §§pop().§>!4§ = §§pop() + §§pop();
                                                   break;
                                                }
                                             }
                                             §§goto(addr302);
                                          }
                                          §§goto(addr313);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr148);
                                 }
                              }
                              §§goto(addr151);
                           }
                           else
                           {
                              addr220:
                              §§push((_loc10_.§>P§.left + _loc10_.§>P§.right) / 2);
                              if(_loc15_ || param3)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc8_ = §§pop();
                           }
                           §§goto(addr238);
                        }
                        else
                        {
                           §§push(this);
                           §§push(_loc10_.width);
                           if(!_loc14_)
                           {
                              §§push(§§pop() * _loc5_);
                              if(_loc15_)
                              {
                                 addr201:
                                 §§push(§§pop() - 2);
                              }
                              §§pop().§7=§ = §§pop();
                              if(_loc15_)
                              {
                                 §§push(Number(_loc10_.§>P§.bottom));
                                 if(_loc15_ || param1)
                                 {
                                    _loc7_ = §§pop();
                                    if(!_loc14_)
                                    {
                                       §§goto(addr220);
                                    }
                                    §§goto(addr238);
                                 }
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr201);
                        }
                     }
                     §§goto(addr93);
                  }
               }
            }
            §§goto(addr93);
         }
         §§goto(addr86);
      }
      
      public function get §;!J§() : Boolean
      {
         return this.§`4§;
      }
      
      private function §=E§(param1:§4!$§, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§['§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§5b§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§0p§(_loc3_.id,this.§2"§)));
            if(!(_loc9_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     §§pop();
                     §§push(_loc4_.§6!,§ > 0);
                  }
               }
            }
            if(§§pop())
            {
               _loc4_.x = param2 + _loc3_.x + param1.§7x§;
               if(_loc10_)
               {
                  _loc4_.y = _loc3_.y;
                  _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                  _loc4_.rotation = _loc3_.rotation;
                  _loc4_.alpha = _loc3_.alpha;
                  loop15:
                  while(true)
                  {
                     _loc4_.start();
                     addr238:
                     loop5:
                     while(true)
                     {
                        §[Z§.§[A§.add(_loc4_);
                        this.§5b§.push(_loc4_);
                        if(!_loc3_.isBehindGraphic)
                        {
                           §§push(this.§!0§);
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§!0§ = new Sprite();
                                 continue loop5;
                              }
                              addr160:
                              while(true)
                              {
                                 §§push(this.§!0§);
                                 if(_loc9_ && param1)
                                 {
                                    break;
                                 }
                                 §§pop().addChild(_loc4_);
                                 loop14:
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                             if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                             {
                                                addr103:
                                                if(!(_loc10_ || this))
                                                {
                                                   break loop10;
                                                }
                                                if(!_loc9_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop5;
                                             }
                                             _loc4_.§^m§(1 / 20);
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc10_)
                                                {
                                                   while(true)
                                                   {
                                                      continue loop13;
                                                   }
                                                   addr155:
                                                }
                                                else
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§0I§);
                                                         if(_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop().addChild(_loc4_);
                                                         continue loop10;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            this.§0I§ = new Sprite();
                                                            continue loop4;
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      addr191:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr132:
                                    while(true)
                                    {
                                       if(_loc10_)
                                       {
                                          if(_loc9_)
                                          {
                                             break loop5;
                                             addr138:
                                          }
                                          _loc4_.dispose();
                                          while(false)
                                          {
                                             §§goto(addr140);
                                          }
                                          continue loop0;
                                       }
                                       continue loop14;
                                       §§goto(addr103);
                                    }
                                 }
                              }
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr205);
                        §§goto(addr238);
                     }
                  }
               }
               §§goto(addr155);
            }
            else
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(!(_loc9_ && _loc3_))
               {
                  §§goto(addr132);
               }
            }
            §§goto(addr138);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!_loc5_)
         {
            §§push(this.§8A§);
            if(_loc4_ || this)
            {
               §§pop().§5a§(0,-1,true);
               addr48:
               if(_loc4_ || _loc3_)
               {
                  §§push(this.§8A§);
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§5b§)
               {
                  if(!_loc5_)
                  {
                     §[Z§.§[A§.§2!&§(_loc1_);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(_loc4_ || _loc1_)
               {
                  this.§5b§ = [];
               }
               while(true)
               {
                  this.§0I§ = null;
                  while(_loc4_ || _loc2_)
                  {
                     this.§!0§ = null;
                     if(_loc4_ || this)
                     {
                        return;
                     }
                  }
               }
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§+!F§);
         }
         §§goto(addr48);
      }
      
      private function §+!F§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=U§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§#V§);
         if(!_loc5_)
         {
            §§push(§§pop() * param1);
            if(_loc4_)
            {
               addr24:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               §§push(this.§8A§);
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  addr94:
                  while(true)
                  {
                     §§push(-§§pop());
                     addr95:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        continue loop0;
                     }
                  }
               }
               addr93:
            }
            while(true)
            {
               §§push(this.§8A§);
               if(_loc4_)
               {
                  §§push(param2);
                  if(!(_loc5_ && param1))
                  {
                     §§push(-§§pop());
                  }
                  if(!(_loc5_ && param1))
                  {
                     if(_loc4_)
                     {
                        §§pop().y = §§pop();
                        do
                        {
                           this.§'8§();
                        }
                        while(_loc5_ && this);
                        
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr95);
               }
               else
               {
                  §§goto(addr93);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      private function §=U§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(!_loc4_)
         {
            §§push(this.§&9§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr60);
                        }
                        §§goto(addr63);
                     }
                  }
               }
            }
            addr60:
            §§goto(addr56);
         }
         addr56:
         if(!this.§8A§.stage)
         {
            if(!_loc4_)
            {
               addr63:
               return;
            }
         }
         for each(_loc1_ in this.§5b§)
         {
            if(_loc5_ || _loc1_)
            {
               §[Z§.§[A§.add(_loc1_);
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.visible = true;
         }
      }
      
      private function §9y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§5b§)
         {
            if(!(_loc5_ && _loc1_))
            {
               §[Z§.§[A§.§2!&§(_loc1_);
               if(!_loc5_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§&9§; while(true)
            {
               §§push(this.§&9§);
               if(!(_loc2_ || this))
               {
                  continue loop0;
               }
               if(!§§pop())
               {
                  this.§9y§();
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        addr76:
                        if(_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr24);
                     }
                     §§goto(addr81);
                  }
                  addr24:
                  return;
                  addr80:
               }
               §§goto(addr76);
            })
            {
               while(true)
               {
                  this.§&9§ = param1;
                  continue loop0;
               }
            }
            return;
         }
         this.§=U§();
         §§goto(addr80);
      }
      
      protected function §'8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§>!4§ == 1);
            if(!_loc2_)
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
                        §§push(this.§5b§.length > 0);
                        if(!(_loc2_ && this))
                        {
                           while(§§pop())
                           {
                              if(_loc2_ && this)
                              {
                                 break;
                              }
                              if(_loc1_ || this)
                              {
                                 return;
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              §§push(§?Z§.§#!#§);
                              if(!(_loc2_ && this))
                              {
                                 §§push(this.§8A§.x - this.§7=§);
                                 if(_loc1_)
                                 {
                                    §§push(§§pop() * §?Z§.levelScale);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              if(§§pop() <= 0)
                              {
                                 if(!(_loc1_ || this))
                                 {
                                    break;
                                 }
                                 if(_loc1_)
                                 {
                                    this.§`!$§();
                                    break;
                                 }
                              }
                              else
                              {
                                 this.§8A§.x -= this.§7=§;
                              }
                           }
                           return;
                           addr105:
                        }
                     }
                  }
                  addr131:
               }
               §§goto(addr105);
            }
            §§goto(addr131);
         }
         §§goto(addr132);
      }
      
      private function §`!$§() : void
      {
      }
   }
}
