package §?b§
{
   import §5H§.§[k§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §[A§
   {
      
      public static const §7I§:Number = 0.03333333333333333;
      
      public static const §[r§:int = 10;
      
      public static const §4!!§:Boolean = false;
      
      public static const §+!9§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7I§ = 1 / 30;
            if(_loc1_ || _loc1_)
            {
               addr40:
               §[r§ = 10;
               if(!_loc2_)
               {
                  §4!!§ = false;
                  if(_loc2_ && _loc1_)
                  {
                  }
                  §§goto(addr58);
               }
               §+!9§ = true;
            }
            addr58:
            return;
         }
         §§goto(addr40);
      }
      
      public var §-I§:b2World;
      
      private var §'_§:Boolean = true;
      
      public var §4t§:§2e§;
      
      public var §]E§:Sprite;
      
      private var §[H§:b2DebugDraw;
      
      public var §4!%§:§7!,§;
      
      public var §?#§:Number;
      
      private var §;4§:Number;
      
      private var §#u§:int;
      
      public function §[A§(param1:§7!,§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr22:
               this.§4!%§ = param1;
               if(_loc2_)
               {
                  this.§[?§();
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function get §'U§() : int
      {
         return this.§#u§;
      }
      
      public function get §"k§() : Number
      {
         return this.§;4§;
      }
      
      private function §[?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§4t§ = new §2e§(this);
         this.§-I§ = new b2World(new b2Vec2(0,20),this.§'_§);
         §§push(this.§-I§);
         if(_loc2_ || _loc1_)
         {
            §§pop().SetContactListener(this.§4t§);
            if(§4!!§)
            {
               if(!_loc1_)
               {
                  §§push(this.§-I§);
                  if(!_loc1_)
                  {
                     addr52:
                     §§pop().SetWarmStarting(true);
                     this.§]E§ = new Sprite();
                     if(_loc2_)
                     {
                        this.§[H§ = new b2DebugDraw();
                     }
                     §§push(this.§[H§);
                     §§push(b2DebugDraw.e_shapeBit);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop().AppendFlags(§§pop());
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(this.§[H§);
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
                                    this.§[H§.AppendFlags(b2DebugDraw.e_jointBit);
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr126:
                                       §§push(this.§[H§);
                                       §§push(1);
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop() / §7!,§.§ '§);
                                          if(!_loc1_)
                                          {
                                             §§pop().SetDrawScale(§§pop());
                                             §§push(this.§[H§);
                                             §§push(0.3);
                                          }
                                          §§pop().SetFillAlpha(§§pop());
                                          §§push(this.§[H§);
                                          §§push(1);
                                       }
                                       §§pop().SetLineThickness(§§pop());
                                       if(_loc2_ || _loc2_)
                                       {
                                          this.§[H§.SetSprite(this.§]E§);
                                          if(!_loc1_)
                                          {
                                             addr169:
                                             this.§4!%§.stage.addChild(this.§]E§);
                                          }
                                       }
                                       addr177:
                                       this.§-I§.SetDebugDraw(this.§[H§);
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
            §§push(this.§-I§);
            if(!(_loc2_ && this))
            {
               §§pop().SetContactListener(null);
               if(_loc1_)
               {
                  this.§4t§ = null;
                  if(_loc1_)
                  {
                     if(§4!!§)
                     {
                        if(!_loc2_)
                        {
                           this.§]E§.graphics.clear();
                           addr69:
                           this.§]E§ = null;
                           if(!(_loc2_ && this))
                           {
                              addr81:
                              this.§-I§.ClearForces();
                              if(_loc1_ || _loc1_)
                              {
                                 addr89:
                                 this.§-I§ = null;
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
      
      public function §8>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§4!!§)
            {
               if(!(_loc1_ && this))
               {
                  this.§-I§.DrawDebugData();
                  if(_loc1_)
                  {
                  }
                  §§goto(addr59);
               }
               this.§]E§.parent.setChildIndex(this.§]E§,this.§]E§.parent.numChildren - 1);
            }
         }
         addr59:
      }
      
      public function §-b§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            if(§4!!§)
            {
               if(!_loc5_)
               {
                  this.§]E§.x = -param1;
                  if(!_loc5_)
                  {
                     this.§]E§.y = -param2;
                  }
               }
            }
         }
      }
      
      public function §3!=§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§;4§ = §7I§;
         }
         §§push(this.§2;§(param1));
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
               if(§§pop() > §[r§)
               {
                  if(!_loc4_)
                  {
                     addr42:
                     §§push(§[r§);
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
               this.§%X§(_loc2_);
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
                           §§push(this.§;4§);
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
      
      public function §%X§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!_loc8_)
         {
            this.§?#§ = 0;
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
               §§push((_loc6_ = this).§#u§);
               if(_loc9_ || param1)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(!(_loc8_ && param1))
               {
                  _loc6_.§#u§ = _loc7_;
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
                        §§push(§+!9§);
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
                              §§push(this.§-I§);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§pop().Step(this.§;4§,_loc2_,_loc3_);
                                 §§push(this.§-I§);
                              }
                              §§pop().ClearForces();
                              if(_loc9_ || _loc3_)
                              {
                                 addr166:
                                 §§push(this);
                                 §§push(this.§?#§);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(this.§;4§);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop() * 1000);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§?#§ = §§pop();
                                 if(§+!9§)
                                 {
                                    §[k§.§+S§.§8!+§("Box2D",getTimer() - _loc5_);
                                 }
                              }
                              this.§4!%§.§default§(this.§;4§);
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
      
      private function §2;§(param1:Number) : int
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
                        §§push(this.§;4§);
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
