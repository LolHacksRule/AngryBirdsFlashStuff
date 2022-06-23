package §%x§
{
   import §"!5§.§,!!§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §2N§
   {
      
      public static const §=!H§:Number = 0.03333333333333333;
      
      public static const §"A§:int = 10;
      
      public static const §5r§:Boolean = false;
      
      public static const §1g§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=!H§ = 1 / 30;
            if(_loc1_ || _loc1_)
            {
               addr40:
               §"A§ = 10;
               if(!_loc2_)
               {
                  §5r§ = false;
                  if(_loc2_ && _loc1_)
                  {
                  }
                  §§goto(addr58);
               }
               §1g§ = true;
            }
            addr58:
            return;
         }
         §§goto(addr40);
      }
      
      public var §[N§:b2World;
      
      private var §4m§:Boolean = true;
      
      public var §%n§:§0v§;
      
      public var §8l§:Sprite;
      
      private var §7$§:b2DebugDraw;
      
      public var §7C§:§#;§;
      
      public var §-&§:Number;
      
      private var §,4§:Number;
      
      private var §3E§:int;
      
      public function §2N§(param1:§#;§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr22:
               this.§7C§ = param1;
               if(_loc2_)
               {
                  this.§'=§();
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function get §4!&§() : int
      {
         return this.§3E§;
      }
      
      public function get §case§() : Number
      {
         return this.§,4§;
      }
      
      private function §'=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§%n§ = new §0v§(this);
         this.§[N§ = new b2World(new b2Vec2(0,20),this.§4m§);
         §§push(this.§[N§);
         if(_loc2_ || _loc1_)
         {
            §§pop().SetContactListener(this.§%n§);
            if(§5r§)
            {
               if(!_loc1_)
               {
                  §§push(this.§[N§);
                  if(!_loc1_)
                  {
                     addr52:
                     §§pop().SetWarmStarting(true);
                     this.§8l§ = new Sprite();
                     if(_loc2_)
                     {
                        this.§7$§ = new b2DebugDraw();
                     }
                     §§push(this.§7$§);
                     §§push(b2DebugDraw.e_shapeBit);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop().AppendFlags(§§pop());
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(this.§7$§);
                           if(!_loc1_)
                           {
                              §§push(b2DebugDraw.e_centerOfMassBit);
                              if(!(_loc1_ && this))
                              {
                                 addr106:
                                 §§pop().AppendFlags(§§pop());
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr118:
                                    this.§7$§.AppendFlags(b2DebugDraw.e_jointBit);
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr126:
                                       §§push(this.§7$§);
                                       §§push(1);
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop() / §#;§.§`!2§);
                                          if(!_loc1_)
                                          {
                                             §§pop().SetDrawScale(§§pop());
                                             §§push(this.§7$§);
                                             §§push(0.3);
                                          }
                                          §§pop().SetFillAlpha(§§pop());
                                          §§push(this.§7$§);
                                          §§push(1);
                                       }
                                       §§pop().SetLineThickness(§§pop());
                                       if(_loc2_ || _loc2_)
                                       {
                                          this.§7$§.SetSprite(this.§8l§);
                                          if(!_loc1_)
                                          {
                                             addr169:
                                             this.§7C§.stage.addChild(this.§8l§);
                                          }
                                       }
                                       addr177:
                                       this.§[N§.SetDebugDraw(this.§7$§);
                                       §§goto(addr180);
                                    }
                                 }
                                 §§goto(addr169);
                              }
                           }
                           §§goto(addr118);
                        }
                        addr180:
                        return;
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr177);
               }
            }
            §§goto(addr126);
         }
         §§goto(addr52);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§[N§);
            if(!(_loc2_ && this))
            {
               §§pop().SetContactListener(null);
               if(_loc1_)
               {
                  this.§%n§ = null;
                  if(_loc1_)
                  {
                     if(§5r§)
                     {
                        if(!_loc2_)
                        {
                           this.§8l§.graphics.clear();
                           addr69:
                           this.§8l§ = null;
                           if(!(_loc2_ && this))
                           {
                              addr81:
                              this.§[N§.ClearForces();
                              if(_loc1_ || _loc1_)
                              {
                                 addr89:
                                 this.§[N§ = null;
                              }
                           }
                           §§goto(addr89);
                        }
                        return;
                     }
                  }
                  §§goto(addr69);
               }
               §§goto(addr89);
            }
         }
         §§goto(addr81);
      }
      
      public function §0d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§5r§)
            {
               if(!(_loc1_ && this))
               {
                  this.§[N§.DrawDebugData();
                  if(_loc1_)
                  {
                  }
                  §§goto(addr59);
               }
               this.§8l§.parent.setChildIndex(this.§8l§,this.§8l§.parent.numChildren - 1);
            }
         }
         addr59:
      }
      
      public function §^-§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(§5r§)
            {
               if(!_loc5_)
               {
                  this.§8l§.x = -param1;
                  if(!_loc5_)
                  {
                     this.§8l§.y = -param2;
                  }
               }
            }
         }
      }
      
      public function §!K§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§,4§ = §=!H§;
         }
         §§push(this.§1'§(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() > §"A§)
               {
                  if(!_loc4_)
                  {
                     addr42:
                     §§push(§"A§);
                     if(_loc3_ || _loc3_)
                     {
                     }
                     §§goto(addr61);
                  }
               }
               §§goto(addr69);
            }
            addr61:
            _loc2_ = int(§§pop());
            if(_loc3_ || _loc3_)
            {
               addr69:
               this.§7m§(_loc2_);
            }
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_ || this)
               {
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     while(§§pop() > §§pop())
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(this.§,4§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * 1000);
                              if(!_loc3_)
                              {
                                 continue;
                              }
                           }
                           §§push(§§pop() - §§pop());
                           if(!(_loc4_ && param1))
                           {
                              §§push(Number(§§pop()));
                              if(_loc4_ && _loc2_)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                     addr129:
                     break loop0;
                  }
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function §7m§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!_loc8_)
         {
            this.§-&§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < param1)
            {
               var _loc6_:*;
               §§push((_loc6_ = this).§3E§);
               if(_loc9_ || param1)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(!(_loc8_ && param1))
               {
                  _loc6_.§3E§ = _loc7_;
               }
               if(_loc9_ || this)
               {
                  §§push(0);
                  if(!_loc9_)
                  {
                     continue;
                  }
                  §§push(Number(§§pop()));
                  if(_loc9_ || _loc2_)
                  {
                     _loc5_ = §§pop();
                     if(_loc9_ || this)
                     {
                        §§push(§1g§);
                        if(!(_loc8_ && param1))
                        {
                           if(§§pop())
                           {
                              addr105:
                              _loc5_ = Number(getTimer());
                              if(_loc8_)
                              {
                                 break;
                              }
                              addr108:
                              §§push(this.§[N§);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§pop().Step(this.§,4§,_loc2_,_loc3_);
                                 §§push(this.§[N§);
                              }
                              §§pop().ClearForces();
                              if(_loc9_ || _loc3_)
                              {
                                 addr166:
                                 §§push(this);
                                 §§push(this.§-&§);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(this.§,4§);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop() * 1000);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§-&§ = §§pop();
                                 if(§1g§)
                                 {
                                    §,!!§.§;!;§.§@a§("Box2D",getTimer() - _loc5_);
                                 }
                              }
                              this.§7C§.§#5§(this.§,4§);
                              if(_loc9_)
                              {
                                 _loc4_++;
                                 if(!(_loc9_ || this))
                                 {
                                    break;
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr166);
                     }
                     break;
                  }
                  §§goto(addr105);
               }
               §§goto(addr108);
            }
            return;
         }
      }
      
      private function §1'§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§push(0);
               while(§§pop() > §§pop())
               {
                  _loc2_++;
                  if(_loc3_ || _loc3_)
                  {
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        §§push(this.§,4§);
                        if(_loc3_)
                        {
                           §§push(§§pop() * 1000);
                           if(!_loc3_)
                           {
                              continue;
                           }
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                        §§push(Number(§§pop()));
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                     }
                     param1 = §§pop();
                     if(!_loc3_)
                     {
                        break;
                     }
                  }
                  continue loop0;
               }
               return _loc2_;
            }
         }
      }
   }
}
