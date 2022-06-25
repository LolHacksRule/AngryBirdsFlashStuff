package §3G§
{
   import §+!?§.§"h§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §'F§
   {
      
      public static const §=!+§:Number = 0.03333333333333333;
      
      public static const §'H§:int = 10;
      
      public static const §=!A§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!+§ = 1 / 30;
            if(!(_loc1_ && §'F§))
            {
               §'H§ = 10;
               if(!_loc2_)
               {
               }
               §§goto(addr49);
            }
            §=!A§ = true;
         }
         addr49:
      }
      
      public var §<!F§:b2World;
      
      private var §%4§:Boolean = true;
      
      public var §1q§:§4]§;
      
      public var §=!5§:Sprite;
      
      private var §]1§:b2DebugDraw;
      
      private var §&! §:Boolean = false;
      
      public var §33§:§!E§;
      
      public var §^b§:Number;
      
      private var §60§:Number;
      
      private var §!0§:int;
      
      public function §'F§(param1:§!E§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_ || param1)
            {
               this.§33§ = param1;
               if(!(_loc2_ && _loc3_))
               {
                  addr48:
                  this.§"Y§();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function get §>! §() : int
      {
         return this.§!0§;
      }
      
      public function get §=!4§() : Number
      {
         return this.§60§;
      }
      
      private function §"Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§1q§ = new §4]§(this);
            if(_loc2_ || this)
            {
               addr56:
               this.§<!F§ = new b2World(new b2Vec2(0,20),this.§%4§);
               if(_loc2_)
               {
                  this.§<!F§.SetContactListener(this.§1q§);
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§<!F§);
            if(!_loc2_)
            {
               §§pop().SetContactListener(null);
               addr24:
               this.§1q§ = null;
               if(_loc1_)
               {
                  if(this.§&! §)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        this.§=!5§.graphics.clear();
                        addr63:
                        this.§=!5§ = null;
                        if(_loc1_ || _loc2_)
                        {
                           addr75:
                           this.§<!F§.ClearForces();
                           §§goto(addr73);
                        }
                        §§goto(addr83);
                     }
                     addr73:
                     if(_loc1_ || this)
                     {
                        addr83:
                        this.§<!F§ = null;
                     }
                     return;
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr75);
         }
         §§goto(addr24);
      }
      
      public function §'L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§&! §)
            {
               if(_loc2_)
               {
                  addr34:
                  this.§<!F§.DrawDebugData();
                  if(_loc2_)
                  {
                     this.§=!5§.parent.setChildIndex(this.§=!5§,this.§=!5§.parent.numChildren - 1);
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §+C§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(_loc6_)
         {
            if(this.§&! §)
            {
               _loc4_ = §"h§.§1C§.§>9§(0,0);
               addr25:
               if(!_loc5_)
               {
                  this.§=!5§.x = _loc4_.x;
                  if(!(_loc5_ && this))
                  {
                     this.§=!5§.y = _loc4_.y;
                     if(_loc5_)
                     {
                     }
                     §§goto(addr89);
                  }
                  §§push(this.§]1§);
                  §§push(1 / §!E§.§#N§);
                  if(!(_loc5_ && param3))
                  {
                     §§push(§§pop() * param3);
                  }
                  §§pop().SetDrawScale(§§pop());
               }
            }
            addr89:
            return;
         }
         §§goto(addr25);
      }
      
      public function §5N§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§60§ = §=!+§;
         }
         §§push(this.§#J§(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() > §'H§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr63:
                     §§push(§'H§);
                     if(_loc4_)
                     {
                        addr66:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(_loc4_ || this)
                     {
                        addr75:
                        this.§2!@§(_loc2_);
                     }
                  }
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(0);
                        while(§§pop() > §§pop())
                        {
                           §§push(param1);
                           if(_loc4_)
                           {
                              §§push(this.§60§);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() * 1000);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc3_)
                                    {
                                       break loop0;
                                    }
                                    §§push(Number(§§pop()));
                                    if(!_loc4_)
                                    {
                                       break loop0;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        addr135:
                        §§push(param1);
                        break;
                     }
                     break;
                  }
                  return §§pop();
               }
               §§goto(addr75);
            }
            §§goto(addr66);
         }
         §§goto(addr63);
      }
      
      public function §2!@§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(!(_loc9_ && this))
         {
            this.§^b§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(true)
            {
               if(§§pop() < param1)
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§!0§);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_ || param1)
                  {
                     _loc6_.§!0§ = _loc7_;
                  }
                  if(!_loc9_)
                  {
                     §§push(0);
                     if(_loc9_)
                     {
                        continue;
                     }
                     §§push(Number(§§pop()));
                     if(!_loc9_)
                     {
                        _loc5_ = §§pop();
                        §§push(§=!A§);
                        if(_loc8_ || this)
                        {
                           if(§§pop())
                           {
                              if(_loc8_)
                              {
                                 addr94:
                                 _loc5_ = Number(getTimer());
                                 §§goto(addr95);
                              }
                              addr183:
                              _loc4_++;
                              continue loop0;
                           }
                           addr95:
                           §§push(this.§<!F§);
                           if(!(_loc9_ && param1))
                           {
                              §§pop().Step(this.§60§,_loc2_,_loc3_);
                              if(_loc8_ || this)
                              {
                                 §§push(this.§<!F§);
                              }
                              break;
                           }
                           §§pop().ClearForces();
                           §§push(this);
                           §§push(this.§^b§);
                           if(_loc8_ || param1)
                           {
                              §§push(this.§60§);
                              if(_loc8_ || param1)
                              {
                                 §§push(§§pop() * 1000);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().§^b§ = §§pop();
                           if(!(_loc9_ && _loc2_))
                           {
                              break;
                           }
                           §§goto(addr187);
                        }
                        addr160:
                        if(§§pop())
                        {
                           if(!(_loc8_ || _loc3_))
                           {
                              continue loop0;
                           }
                           §"h§.§73§.§false§("Box2D",getTimer() - _loc5_);
                        }
                        this.§33§.§&'§(this.§60§);
                        if(_loc9_)
                        {
                           continue loop0;
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr94);
                  }
                  break;
               }
               addr187:
               return;
            }
            §§goto(addr160);
         }
      }
      
      private function §#J§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
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
                  if(_loc4_)
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(this.§60§);
                        if(_loc4_)
                        {
                           §§push(§§pop() * 1000);
                           if(!_loc4_)
                           {
                              continue;
                           }
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        §§push(Number(§§pop()));
                        if(!_loc4_)
                        {
                           continue loop1;
                        }
                     }
                     param1 = §§pop();
                     if(!(_loc4_ || param1))
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
      
      public function set §5!6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§<!F§);
         if(!_loc2_)
         {
            if(§§pop() == null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  return;
               }
               addr102:
               §§push(this.§]1§);
               if(!(_loc2_ && param1))
               {
                  addr125:
                  §§push(b2DebugDraw.e_centerOfMassBit);
                  if(_loc3_ || _loc2_)
                  {
                     §§pop().AppendFlags(§§pop());
                     §§push(this.§]1§);
                     §§push(b2DebugDraw.e_jointBit);
                  }
                  §§pop().AppendFlags(§§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     this.§]1§.SetFillAlpha(0.3);
                     §§goto(addr171);
                  }
                  §§goto(addr155);
               }
               §§goto(addr146);
            }
            else
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     §§push(this.§&! §);
                     if(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc2_ && param1))
                           {
                              §§push(!this.§=!5§);
                              if(!_loc2_)
                              {
                                 addr59:
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr67);
                              }
                              §§pop();
                              addr67:
                              if(§§pop())
                              {
                                 this.§=!5§ = new Sprite();
                                 this.§]1§ = new b2DebugDraw();
                                 if(!_loc2_)
                                 {
                                    §§push(this.§]1§);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(b2DebugDraw.e_shapeBit);
                                       if(!_loc2_)
                                       {
                                          §§pop().AppendFlags(§§pop());
                                          §§goto(addr102);
                                       }
                                       §§goto(addr125);
                                    }
                                    §§goto(addr171);
                                 }
                                 addr171:
                                 §§push(this.§]1§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr146:
                                    §§pop().SetLineThickness(1);
                                    if(_loc3_ || _loc3_)
                                    {
                                       this.§=!5§.mouseEnabled = false;
                                       addr155:
                                    }
                                    §§push(this.§]1§);
                                 }
                                 §§pop().SetSprite(this.§=!5§);
                                 this.§33§.stage.addChild(this.§=!5§);
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr189:
                                    this.§<!F§.SetDebugDraw(this.§]1§);
                                 }
                                 §§goto(addr192);
                              }
                              addr192:
                              this.§&! § = param1;
                              return;
                              §§push(!this.§]1§);
                           }
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr192);
               }
               §§goto(addr67);
            }
            §§goto(addr192);
         }
         §§goto(addr189);
      }
      
      public function get §5!6§() : Boolean
      {
         return this.§&! §;
      }
      
      public function get §;^§() : b2DebugDraw
      {
         return this.§]1§;
      }
      
      public function §`y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§]1§)
            {
               if(!_loc2_)
               {
                  addr23:
                  this.§=!5§.graphics.clear();
               }
            }
            return;
         }
         §§goto(addr23);
      }
   }
}
