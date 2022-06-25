package §<x§
{
   import §!!K§.§else§;
   import §,!!§.§#!Y§;
   import §2_§.§'u§;
   import §2_§.§5=§;
   import §4>§.Texture;
   import §6!p§.ParticleManager;
   import §7!B§.§-§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §9!N§.ParticleDesignerPS;
   import §@^§.§<!T§;
   import §^!Y§.§'R§;
   import §^!Y§.§1C§;
   import §^!Y§.§]p§;
   import starling.events.Event;
   
   public class §#Q§
   {
       
      
      private var §3o§:int;
      
      private var §^W§:int;
      
      private var §;?§:Number;
      
      private var §#w§:Boolean;
      
      private var §2O§:Sprite;
      
      private var §,P§:Array;
      
      private var §#d§:Boolean = true;
      
      private var §+]§:§'R§;
      
      private var §"!x§:Sprite;
      
      private var §!!j§:Sprite;
      
      public function §#Q§(param1:§<!T§, param2:Sprite, param3:§'R§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§1C§ = null;
         if(!(_loc15_ && this))
         {
            this.§,P§ = [];
            while(true)
            {
               super();
               loop1:
               for(; _loc14_ || this; if(_loc15_ && param1)
               {
                  continue;
               },if(false)
               {
                  §§goto(addr65);
               },§§goto(addr96))
               {
                  this.§+]§ = param3;
                  while(true)
                  {
                     this.§2O§ = param2;
                     loop3:
                     while(true)
                     {
                        addr65:
                        while(true)
                        {
                           this.§;?§ = param1.§&!&§;
                           continue loop3;
                        }
                     }
                     if(!(_loc15_ && param2))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function get §-!b§() : Boolean
      {
         return this.§#w§;
      }
      
      private function §[5§(param1:§<!T§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§5=§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§,P§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§%h§(_loc3_.id,this.§+]§)));
            if(!(_loc10_ && param2))
            {
               if(§§pop())
               {
                  if(!(_loc10_ && param2))
                  {
                     addr63:
                     §§pop();
                     if(_loc9_ || this)
                     {
                        addr75:
                        if(_loc4_.§;G§ > 0)
                        {
                           if(!_loc10_)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§6!r§;
                              if(_loc9_)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(_loc9_)
                                 {
                                    addr95:
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(_loc9_)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       loop21:
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          addr297:
                                          loop19:
                                          while(true)
                                          {
                                             _loc4_.start();
                                             addr291:
                                             loop10:
                                             while(true)
                                             {
                                                §else§.§]!#§.add(_loc4_);
                                                loop11:
                                                while(true)
                                                {
                                                   this.§,P§.push(_loc4_);
                                                   addr281:
                                                   while(_loc3_.isBehindGraphic)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§!!j§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  this.§!!j§ = new Sprite();
                                                                  while(true)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                               }
                                                               continue loop21;
                                                               addr259:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr222:
                                                   §§push(this.§"!x§);
                                                   loop8:
                                                   while(!§§pop())
                                                   {
                                                      while(!_loc9_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      addr225:
                                                      this.§"!x§ = new Sprite();
                                                      while(true)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            break loop8;
                                                         }
                                                         continue loop19;
                                                         §§goto(addr225);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§"!x§);
                                                      if(!_loc10_)
                                                      {
                                                         §§pop().addChild(_loc4_);
                                                         loop3:
                                                         while(true)
                                                         {
                                                            addr205:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc10_ && this)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              addr190:
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_++;
                                                                                       addr167:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_ || this)
                                                                                          {
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             §§goto(addr281);
                                                                                          }
                                                                                          §§goto(addr256);
                                                                                       }
                                                                                    }
                                                                                    addr165:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           addr159:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    while(false)
                                                                                    {
                                                                                       §§goto(addr165);
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr163:
                                                                                 }
                                                                                 §§goto(addr275);
                                                                              }
                                                                           }
                                                                           §§goto(addr223);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc4_.§+! §(1 / 20);
                                                                        }
                                                                        §§goto(addr190);
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr216:
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr291);
                           }
                           §§goto(addr297);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!_loc10_)
                           {
                              if(!_loc10_)
                              {
                                 if(_loc9_ || _loc3_)
                                 {
                                    _loc4_.dispose();
                                    §§goto(addr159);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr167);
                           }
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr63);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!(_loc5_ && _loc1_))
         {
            §§push(this.§2O§);
            if(!_loc5_)
            {
               §§pop().§?!z§(0,-1,true);
               §§goto(addr43);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§+T§);
         }
         addr43:
         if(_loc4_)
         {
            §§push(this.§2O§);
         }
         var _loc3_:* = this.§,P§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc5_)
            {
               §else§.§]!#§.§1+§(_loc1_);
               if(!(_loc5_ && _loc3_))
               {
                  _loc1_.dispose();
               }
            }
         }
         if(_loc4_ || _loc1_)
         {
            this.§,P§ = [];
            do
            {
               this.§!!j§ = null;
               do
               {
                  this.§"!x§ = null;
               }
               while(!_loc4_);
               
            }
            while(_loc5_ && _loc1_);
            
         }
      }
      
      private function §+T§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0!d§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§;?§);
         if(_loc4_ || this)
         {
            §§push(§§pop() * param1);
            if(!(_loc5_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param2)
         {
            §§push(this.§2O§);
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
      
      private function §0!d§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(!_loc4_)
         {
            §§push(this.§#d§);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(!(_loc4_ && this))
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§goto(addr53);
                     }
                  }
                  §§goto(addr65);
               }
            }
            addr53:
            §§pop();
            if(_loc5_ || _loc3_)
            {
               addr65:
               if(!this.§2O§.stage)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr68);
                  }
               }
            }
            var _loc3_:* = this.§,P§;
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  §else§.§]!#§.add(_loc1_);
                  if(_loc5_ || _loc3_)
                  {
                     _loc1_.visible = true;
                  }
               }
            }
            return;
         }
         addr68:
      }
      
      private function §@!y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§,P§)
         {
            if(!(_loc5_ && _loc1_))
            {
               §else§.§]!#§.§1+§(_loc1_);
               if(!(_loc5_ && _loc2_))
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §9!p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§#d§)
               {
                  if(!(_loc2_ && param1))
                  {
                     break;
                  }
                  addr99:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  this.§#d§ = param1;
                  continue loop0;
               }
               addr79:
               this.§0!d§();
               addr20:
               return;
            }
            return;
         }
         §§goto(addr99);
      }
      
      private function §>!p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§^W§ == 1);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr138:
                     while(true)
                     {
                        §§push(this.§,P§.length > 0);
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr137:
               }
               while(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr120);
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr138);
               }
               while(true)
               {
                  §§push(§#!Y§.§%!H§);
                  if(_loc2_)
                  {
                     §§push(this.§2O§.x - this.§3o§);
                     if(!(_loc1_ && this))
                     {
                        §§push(§§pop() * §#!Y§.§0!_§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  if(§§pop() <= 0)
                  {
                     if(_loc1_ && this)
                     {
                        break;
                     }
                     if(_loc2_ || _loc1_)
                     {
                        this.§^!_§();
                        break;
                     }
                  }
                  else
                  {
                     this.§2O§.x -= this.§3o§;
                  }
               }
               return;
            }
            §§goto(addr137);
         }
         addr120:
      }
      
      private function §^!_§() : void
      {
      }
   }
}
