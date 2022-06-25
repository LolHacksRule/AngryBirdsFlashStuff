package §3p§
{
   import §"L§.LevelModel;
   import §%t§.b2PrismaticJoint;
   import §%t§.b2WeldJoint;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&L§.b2Vec2;
   import §&V§.§+H§;
   import §&V§.§3V§;
   import §&V§.§>!G§;
   import §&V§.§`!1§;
   import §,!_§.§;K§;
   import §2!H§.§&!U§;
   import §2!H§.§1H§;
   import §2!H§.LevelMain;
   import §2!H§.ScoreCollector;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §7i§.Texture;
   import §;T§.§5s§;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemMaterial;
   import §;T§.LevelItemShape;
   import §;T§.LevelItemSoundResource;
   import §=?§.SoundEngine;
   import §[m§.LevelThemeBackgroundManager;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelObjectManager
   {
       
      
      protected var §8c§:Vector.<LevelObject>;
      
      protected var §-!,§:int;
      
      public var §"!>§:LevelMain;
      
      public var §?h§:Vector.<§#!f§>;
      
      protected var §+E§:Sprite;
      
      protected var §!!@§:Sprite;
      
      private var §^x§:Sprite;
      
      private var §#J§:Sprite;
      
      private var §3!j§:Sprite;
      
      protected var §]!S§:Vector.<Texture>;
      
      protected var §=![§:Vector.<§>!G§>;
      
      protected var §6!@§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §?B§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §0m§:Boolean = false;
      
      protected var §?!C§:Number;
      
      protected var §=1§:int;
      
      protected var §1N§:Vector.<§`!1§>;
      
      protected var §6-§:int = 0;
      
      private var §+R§:int = 0;
      
      private var §<D§:int = 0;
      
      private var §7Y§:int;
      
      private var §-R§:Boolean = true;
      
      private var §"R§:Boolean = true;
      
      public function LevelObjectManager(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§>!G§ = null;
         var _loc6_:§+H§ = null;
         var _loc7_:LevelObject = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:LevelObject = null;
         var _loc11_:LevelObject = null;
         if(!_loc14_)
         {
            this.§8c§ = new Vector.<LevelObject>();
            loop0:
            while(true)
            {
               this.§?h§ = new Vector.<§#!f§>();
               loop1:
               while(true)
               {
                  this.§]!S§ = new Vector.<Texture>();
                  loop2:
                  while(true)
                  {
                     this.§?!C§ = this.§&!U§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     while(true)
                     {
                        this.§1N§ = new Vector.<§`!1§>();
                        loop4:
                        while(!(_loc14_ && param1))
                        {
                           super();
                           loop5:
                           while(true)
                           {
                              this.§"!>§ = param1;
                              while(true)
                              {
                                 this.§-!,§ = 0;
                                 continue loop1;
                                 addr260:
                                 while(_loc15_ || param1)
                                 {
                                    this.§+E§ = new Sprite();
                                    while(!(_loc14_ && this))
                                    {
                                       continue loop0;
                                       addr130:
                                       if(!(_loc14_ && param3))
                                       {
                                          addr137:
                                          if(_loc15_ || this)
                                          {
                                             this.§7Y§ = this.§8c§.length;
                                             addr144:
                                             if(_loc15_)
                                             {
                                                if(_loc15_ || param1)
                                                {
                                                   addr54:
                                                   if(!(_loc14_ && this))
                                                   {
                                                      while(false)
                                                      {
                                                         loop24:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(LevelThemeBackgroundManager.§]!0§(param2.theme).§8@§);
                                                            §§push(this.§"!>§.§'g§.§4!>§);
                                                            if(_loc15_ || param1)
                                                            {
                                                               §§push(this.§"!>§);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop().§'g§);
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(§§pop().§5;§);
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc15_ || param3)
                                                                        {
                                                                           addr102:
                                                                           §§push(§§pop() / 2);
                                                                           §§push(this.§"!>§.§'g§.§ !c§);
                                                                           if(_loc15_)
                                                                           {
                                                                              addr108:
                                                                              §§push(§§pop() + §1H§.§;!`§);
                                                                           }
                                                                           §§pop().addObject(§§pop(),§§pop(),§§pop());
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr116:
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    addr123:
                                                                                    if(!(_loc14_ && param1))
                                                                                    {
                                                                                       §§goto(addr130);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§3!j§ = new Sprite();
                                                                                          break loop24;
                                                                                          §§goto(addr123);
                                                                                       }
                                                                                       addr229:
                                                                                    }
                                                                                 }
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§!!@§);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       addr150:
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          §§pop().addChild(this.§3!j§);
                                                                                          break loop25;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().addChild(this.§+E§);
                                                                                          addr213:
                                                                                          while(_loc15_)
                                                                                          {
                                                                                             §§push(this.§!!@§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().addChild(this.§^x§);
                                                                                                addr198:
                                                                                                addr235:
                                                                                                while(!(_loc14_ && param1))
                                                                                                {
                                                                                                   §§push(this.§!!@§);
                                                                                                   break loop22;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§#J§ = new Sprite();
                                                                                                   §§goto(addr229);
                                                                                                   §§goto(addr198);
                                                                                                }
                                                                                                break loop22;
                                                                                             }
                                                                                          }
                                                                                          continue loop5;
                                                                                          §§goto(addr150);
                                                                                       }
                                                                                       addr209:
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr116);
                                                                                 }
                                                                                 for(; !(_loc14_ && param3); §§goto(addr190))
                                                                                 {
                                                                                    addr179:
                                                                                    if(_loc15_ || param1)
                                                                                    {
                                                                                       §§pop().addChild(this.§#J§);
                                                                                       continue;
                                                                                    }
                                                                                    addr292:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§<!4§ = false;
                                                                                       while(true)
                                                                                       {
                                                                                          this.§"R§ = true;
                                                                                          addr272:
                                                                                          while(_loc15_ || this)
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr179);
                                                                                    }
                                                                                 }
                                                                                 addr190:
                                                                                 §§goto(addr194);
                                                                              }
                                                                              break;
                                                                              §§goto(addr144);
                                                                           }
                                                                           while(!(_loc14_ && this))
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           §§goto(addr198);
                                                                           addr114:
                                                                        }
                                                                        §§goto(addr102);
                                                                     }
                                                                     §§goto(addr108);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr102);
                                                         }
                                                      }
                                                      §§push(0);
                                                      if(_loc15_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                      var _loc4_:* = §§pop();
                                                      if(_loc15_ || param2)
                                                      {
                                                         §§push(0);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         _loc4_ = §§pop();
                                                      }
                                                      loop27:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc15_)
                                                         {
                                                            §§push(param2.§2L§);
                                                            if(_loc15_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     this.§75§();
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        this.§[B§(true);
                                                                        addr580:
                                                                        while(true)
                                                                        {
                                                                           this.§=![§ = new Vector.<§>!G§>();
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(0);
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 break loop27;
                                                                              }
                                                                              addr561:
                                                                           }
                                                                           addr600:
                                                                           var _loc12_:int = 0;
                                                                           §§goto(addr852);
                                                                        }
                                                                        addr580:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr543:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc15_ || param3)
                                                                           {
                                                                              addr589:
                                                                              §§push(param2.§=!#§);
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(_loc15_ || param3)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.§=![§.push(§>!G§.§8!j§(param2.§1!N§(_loc4_)));
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc14_ && this))
                                                                                          {
                                                                                             if(_loc15_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                                if(_loc15_ || param2)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break loop27;
                                                                                          }
                                                                                          if(!(_loc14_ && param2))
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             if(_loc15_ || param2)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr852);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr580);
                                                                                       }
                                                                                       §§goto(addr561);
                                                                                    }
                                                                                    §§goto(addr600);
                                                                                 }
                                                                                 addr852:
                                                                                 if(!(_loc14_ && param3))
                                                                                 {
                                                                                    loop30:
                                                                                    for each(_loc5_ in this.§=![§)
                                                                                    {
                                                                                       if(!(_loc14_ && this))
                                                                                       {
                                                                                          §§push(int(_loc5_.index1 + this.§7Y§));
                                                                                          loop31:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   addr667:
                                                                                                   addr708:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(int(_loc5_.index2 + this.§7Y§));
                                                                                                      if(!(_loc15_ || this))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                   addr720:
                                                                                                   §§push(§§pop() < this.§8c§.length);
                                                                                                   if(_loc15_ || param3)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      break loop31;
                                                                                                   }
                                                                                                   continue loop30;
                                                                                                }
                                                                                                addr706:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          _loc10_ = this.§8c§[_loc8_];
                                                                                          _loc11_ = this.§8c§[_loc9_];
                                                                                          if(!(_loc14_ && param1))
                                                                                          {
                                                                                             §§push(Boolean(_loc10_));
                                                                                             loop32:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc14_ && param2))
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                                                                                      }
                                                                                                      if(_loc5_.type == §3V§.§@+§)
                                                                                                      {
                                                                                                         this.§1N§.push(new §`!1§(_loc8_,_loc9_,_loc5_.§]!f§));
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!(_loc14_ && this))
                                                                                                      {
                                                                                                         _loc5_.§7#§ = this.§"!>§.mLevelEngine.mWorld.§"!"§(_loc5_.§0§(_loc10_,_loc11_));
                                                                                                         break;
                                                                                                         addr812:
                                                                                                      }
                                                                                                      addr847:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(_loc11_));
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            continue loop32;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   continue loop30;
                                                                                                   addr797:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§goto(addr847);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr812);
                                                                                       }
                                                                                       §§goto(addr706);
                                                                                    }
                                                                                 }
                                                                                 addr852:
                                                                                 return;
                                                                                 §§goto(addr589);
                                                                              }
                                                                              §§goto(addr600);
                                                                              addr591:
                                                                           }
                                                                           §§goto(addr600);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr580);
                                                               }
                                                               else
                                                               {
                                                                  _loc6_ = param2.§`T§(_loc4_);
                                                                  _loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
                                                                  if(_loc14_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc7_.uniqueID = _loc6_.uniqueID;
                                                                     if(!_loc15_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(_loc15_ || param1)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        addr457:
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     continue;
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                            }
                                                            §§goto(addr591);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         §§goto(addr563);
                                                      }
                                                      addr61:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         §§goto(addr209);
                                                         §§push(this.§!!@§);
                                                      }
                                                      break;
                                                      §§goto(addr54);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr114);
                                          }
                                          while(!_loc14_)
                                          {
                                             §§goto(addr292);
                                             §§push(this.§!!@§);
                                             §§goto(addr137);
                                          }
                                          continue loop1;
                                          addr299:
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      protected function get §&!U§() : Class
      {
         return §&!U§;
      }
      
      public function get §5!K§() : Sprite
      {
         return this.§3!j§;
      }
      
      public function get §3$§() : Sprite
      {
         return this.§!!@§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§8c§.length <= 0)
            {
               if(!(_loc3_ || _loc2_))
               {
                  break;
               }
               if(_loc3_ || _loc3_)
               {
                  this.§8c§ = null;
                  if(_loc3_ || _loc3_)
                  {
                     this.§1N§ = null;
                     loop1:
                     while(true)
                     {
                        §§push(this.§!!@§);
                        if(!(_loc2_ && this))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§!!@§);
                                 loop8:
                                 while(!(_loc2_ && _loc3_))
                                 {
                                    this.§#J§ = null;
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       addr34:
                                       if(!(_loc2_ && this))
                                       {
                                          addr41:
                                          if(_loc3_ || this)
                                          {
                                             if(_loc3_)
                                             {
                                                if(true)
                                                {
                                                   addr188:
                                                   if(this.§]!S§.length > 0)
                                                   {
                                                      _loc1_ = this.§]!S§.pop();
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         this.§"!>§.textureManager.unregisterBitmapDataTexture(_loc1_);
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                   break loop0;
                                                   addr168:
                                                }
                                                while(true)
                                                {
                                                   this.§^x§ = null;
                                                   continue loop8;
                                                }
                                                addr52:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   this.§!!@§ = null;
                                                }
                                                addr114:
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§+E§ = null;
                                             if(_loc2_)
                                             {
                                                break loop0;
                                             }
                                             continue loop1;
                                             §§goto(addr41);
                                          }
                                          continue loop1;
                                       }
                                       addr68:
                                       while(true)
                                       {
                                          §§goto(addr34);
                                       }
                                       §§goto(addr52);
                                    }
                                    break loop0;
                                 }
                              }
                              addr110:
                           }
                           else
                           {
                              §§goto(addr168);
                           }
                        }
                        while(true)
                        {
                           §§pop().dispose();
                           §§goto(addr114);
                           §§goto(addr110);
                        }
                     }
                  }
                  break;
               }
            }
            else
            {
               this.§&U§(0);
            }
         }
      }
      
      private function §[B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+E§.visible = param1;
         }
      }
      
      private function §75§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:LevelObject = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§-m§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<LevelObject> = new Vector.<LevelObject>();
         for each(_loc3_ in this.§8c§)
         {
            if(_loc17_ || this)
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(!_loc16_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§!!@§);
            if(!_loc16_)
            {
               if(_loc1_ != null)
               {
                  _loc1_ = _loc1_.union(_loc4_);
                  continue;
               }
            }
            _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
         }
         if(!_loc16_)
         {
            §§push(Boolean(_loc1_));
            loop1:
            for(; §§pop(); loop7:
            while(!(_loc16_ && _loc2_))
            {
               §§push(§§pop());
               if(_loc17_ || this)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  loop8:
                  while(true)
                  {
                     §§pop();
                     loop9:
                     while(true)
                     {
                        if(!(_loc16_ && _loc3_))
                        {
                           §§push(_loc1_.height > 2048);
                           if(_loc17_ || this)
                           {
                              if(!_loc17_)
                              {
                                 continue loop8;
                              }
                              if(!_loc17_)
                              {
                                 continue loop7;
                              }
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 _loc1_.left /= 2;
                                 break loop9;
                              }
                              loop10:
                              while(true)
                              {
                                 §§push(int(_loc1_.width));
                                 loop11:
                                 while(_loc17_ || this)
                                 {
                                    _loc6_ = §§pop();
                                    loop12:
                                    for(; _loc17_; loop14:
                                    while(true)
                                    {
                                       if(_loc17_ || _loc2_)
                                       {
                                          if(!(_loc17_ || this))
                                          {
                                             break;
                                             addr149:
                                          }
                                          while(true)
                                          {
                                             §§push(int(_loc1_.left));
                                             loop16:
                                             while(true)
                                             {
                                                if(_loc17_)
                                                {
                                                   if(!(_loc17_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   _loc8_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         if(_loc16_ && _loc1_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(int(_loc1_.top));
                                                         if(_loc17_ || this)
                                                         {
                                                            _loc9_ = §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop16;
                                                      }
                                                      continue loop14;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc17_)
                                                      {
                                                         if(!(_loc16_ && _loc1_))
                                                         {
                                                            §§push(§§pop() / 2);
                                                            if(_loc17_)
                                                            {
                                                               addr285:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc5_ = §§pop();
                                                            break loop12;
                                                         }
                                                         §§goto(addr336);
                                                      }
                                                      §§goto(addr285);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr177);
                                                }
                                             }
                                             continue loop11;
                                          }
                                          continue loop10;
                                       }
                                       continue loop12;
                                    },while(true)
                                    {
                                       _loc1_.right /= 2;
                                       addr310:
                                       while(true)
                                       {
                                          _loc1_.bottom /= 2;
                                          §§goto(addr302);
                                       }
                                    })
                                    {
                                       §§push(int(_loc1_.height));
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          continue loop12;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc17_ || this))
                                       {
                                          break loop9;
                                       }
                                       §§goto(addr294);
                                    }
                                 }
                                 if(_loc16_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc17_)
                                 {
                                    continue loop9;
                                 }
                                 if(_loc17_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr149);
                                    }
                                    _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                    if(!_loc16_)
                                    {
                                       this.§8!H§(_loc10_.rect,_loc10_,_loc5_);
                                    }
                                    _loc11_ = this.§47§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                    if(_loc17_ || _loc2_)
                                    {
                                       _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                    }
                                    _loc12_ = this.§"!>§.textureManager.getTextureFromBitmapData(_loc10_);
                                    if(!_loc16_)
                                    {
                                       this.§]!S§.push(_loc12_);
                                    }
                                    _loc13_ = new §-m§(_loc12_);
                                    if(_loc17_ || _loc1_)
                                    {
                                       _loc13_.x = _loc8_ / _loc5_;
                                       _loc13_.y = _loc9_ / _loc5_;
                                       _loc13_.scaleX = 1 / _loc5_;
                                       addr483:
                                       addr489:
                                    }
                                    _loc13_.scaleY = 1 / _loc5_;
                                    addr467:
                                    if(!_loc16_)
                                    {
                                       addr435:
                                       this.§+E§.addChild(_loc13_);
                                       if(_loc17_ || this)
                                       {
                                          if(_loc17_)
                                          {
                                             _loc11_.dispose();
                                             if(_loc17_ || _loc3_)
                                             {
                                                if(!(_loc16_ && _loc1_))
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr435);
                                                   }
                                                   break loop1;
                                                }
                                                §§goto(addr483);
                                             }
                                             §§goto(addr435);
                                          }
                                          §§goto(addr489);
                                       }
                                       §§goto(addr467);
                                    }
                                    addr476:
                                    §§goto(addr476);
                                 }
                                 §§goto(addr310);
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr334);
                        }
                        §§goto(addr335);
                     }
                     while(_loc16_)
                     {
                        §§goto(addr337);
                     }
                     addr330:
                     while(true)
                     {
                        _loc1_.top /= 2;
                        §§goto(addr318);
                     }
                  }
               }
               §§goto(addr210);
            })
            {
               while(true)
               {
                  §§push(1);
                  addr335:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr336:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        addr337:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              if(!_loc16_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop1;
                              addr294:
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr330);
      }
      
      private function §47§(param1:Vector.<LevelObject>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc7_:LevelObject = null;
         var _loc11_:LevelItemShape = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc11_ = _loc7_.§8!&§.shape;
            _loc12_ = _loc11_.§%!S§();
            _loc13_ = new Rectangle(_loc12_[0].x / LevelMain.§8N§ * param6,_loc12_[0].y / LevelMain.§8N§ * param6,(_loc12_[1].x - _loc12_[0].x) / LevelMain.§8N§ * param6,(_loc12_[1].y - _loc12_[0].y) / LevelMain.§8N§ * param6);
            if(!_loc16_)
            {
               _loc10_.identity();
               loop1:
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  while(true)
                  {
                     _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                     while(!_loc16_)
                     {
                        _loc10_.rotate((360 - _loc7_.§=Y§()) / 180 * Math.PI);
                        loop4:
                        for(; !(_loc16_ && this); while(!(_loc16_ && param2))
                        {
                           continue loop1;
                        })
                        {
                           while(true)
                           {
                              do
                              {
                                 _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                                 continue loop4;
                              }
                              while(false);
                              
                              continue loop0;
                           }
                        }
                     }
                  }
                  if(_loc16_ && this)
                  {
                     continue;
                  }
                  _loc8_.draw(_loc9_,_loc10_);
                  if(_loc17_)
                  {
                     §§goto(addr145);
                  }
                  §§goto(addr165);
               }
            }
            §§goto(addr201);
         }
         if(!_loc16_)
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §8!H§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         §§push(this.§"!>§.background.§ #§());
         if(!_loc16_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§;K§ = this.§"!>§.backgroundTextureManager.§]&§(_loc4_);
         if(_loc17_)
         {
            if(_loc5_)
            {
               addr59:
               _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
               _loc7_ = new Matrix();
               if(_loc17_ || param1)
               {
                  _loc7_.scale(param3,param3);
                  while(true)
                  {
                     _loc6_.draw(_loc5_.bitmapData,_loc7_);
                     while(true)
                     {
                        §§push(_loc6_.width - 2);
                        loop2:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           while(true)
                           {
                              _loc8_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc6_.height - 2);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param1.top / _loc9_);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                while(true)
                                                {
                                                   if(param1.top < 0)
                                                   {
                                                      while(_loc17_ || param2)
                                                      {
                                                         §§push(_loc10_);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            addr446:
                                                            while(true)
                                                            {
                                                               _loc10_ = §§pop();
                                                               addr447:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop7;
                                                      addr434:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1.bottom / _loc9_);
                                                      while(_loc17_)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!_loc17_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(int(§§pop()));
                                                         loop17:
                                                         while(true)
                                                         {
                                                            _loc11_ = §§pop();
                                                            addr428:
                                                            while(true)
                                                            {
                                                               §§push(_loc11_);
                                                               addr379:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  continue loop17;
                                                               }
                                                            }
                                                         }
                                                         if(_loc16_ && param2)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr296);
                                                         §§push(int(§§pop()));
                                                      }
                                                      continue loop8;
                                                      §§goto(addr447);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        if(_loc16_ && param3)
                        {
                           continue;
                        }
                        §§goto(addr281);
                     }
                     if(!(_loc17_ || this))
                     {
                        continue;
                     }
                     §§push(_loc13_);
                     if(!(_loc16_ && this))
                     {
                        §§push(§§pop() + 1);
                     }
                     §§goto(addr267);
                  }
               }
               §§goto(addr376);
            }
            §§goto(addr496);
         }
         §§goto(addr59);
      }
      
      public function §@!&§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:LevelObject = null;
         var _loc11_:* = param2;
         if(_loc13_ || this)
         {
            §§push("BIRD_BLACK");
            if(!(_loc12_ && param3))
            {
               §§push(_loc11_);
               if(!(_loc12_ && param1))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc12_ && param2))
                     {
                        §§push(0);
                        if(_loc13_ || param2)
                        {
                        }
                     }
                     else
                     {
                        addr380:
                        §§push(6);
                        if(!_loc13_)
                        {
                           addr394:
                        }
                     }
                     §§goto(addr396);
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(_loc13_)
                     {
                        §§push(_loc11_);
                        if(!_loc12_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc12_ && param3))
                              {
                                 addr264:
                                 §§push(1);
                                 if(!_loc13_)
                                 {
                                    addr359:
                                 }
                                 §§goto(addr396);
                              }
                              else
                              {
                                 §§goto(addr380);
                              }
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(!_loc12_)
                              {
                                 §§push(_loc11_);
                                 if(_loc13_)
                                 {
                                    addr274:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc13_ || param2)
                                       {
                                          §§push(2);
                                          if(!_loc12_)
                                          {
                                             §§goto(addr396);
                                          }
                                          else
                                          {
                                             §§goto(addr359);
                                          }
                                       }
                                       else
                                       {
                                          addr310:
                                          §§push(3);
                                          if(!_loc13_)
                                          {
                                             addr331:
                                          }
                                          §§goto(addr396);
                                       }
                                       §§goto(addr396);
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc13_ || this)
                                       {
                                          addr294:
                                          §§push(_loc11_);
                                          if(!(_loc12_ && this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc13_ || param2)
                                                {
                                                   §§goto(addr310);
                                                }
                                                else
                                                {
                                                   §§goto(addr380);
                                                }
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(_loc13_)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc13_ || this)
                                                   {
                                                   }
                                                   addr348:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc13_ || param1)
                                                      {
                                                         addr356:
                                                         §§push(5);
                                                         if(_loc13_)
                                                         {
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr396);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr380);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr372:
                                                      addr371:
                                                      if("BIRD_REDBIG" === _loc11_)
                                                      {
                                                         if(_loc13_ || param2)
                                                         {
                                                            §§goto(addr380);
                                                         }
                                                      }
                                                      else if(true)
                                                      {
                                                         addr396:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               _loc10_ = new §3l§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 1:
                                                               _loc10_ = new §9!Q§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 2:
                                                               _loc10_ = new §>!5§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 3:
                                                               _loc10_ = new §=&§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 4:
                                                               _loc10_ = new §,O§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 5:
                                                               _loc10_ = new §]!J§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            case 6:
                                                               _loc10_ = new §6!Q§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                               break;
                                                            default:
                                                               _loc10_ = new §4!G§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
                                                         }
                                                         return _loc10_;
                                                         §§push(7);
                                                      }
                                                      §§goto(addr396);
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr396);
                                                }
                                                addr340:
                                                §§push(_loc11_);
                                                if(!(_loc12_ && param1))
                                                {
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr372);
                                             }
                                             §§goto(addr396);
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc13_)
                                             {
                                                §§push(4);
                                                if(!_loc12_)
                                                {
                                                   §§goto(addr331);
                                                }
                                                §§goto(addr396);
                                             }
                                             else
                                             {
                                                §§goto(addr356);
                                             }
                                          }
                                          else
                                          {
                                             §§push("BIRD_RED");
                                             if(_loc13_ || param3)
                                             {
                                                §§goto(addr340);
                                             }
                                             §§goto(addr371);
                                          }
                                          §§goto(addr396);
                                       }
                                       §§goto(addr340);
                                    }
                                 }
                                 §§goto(addr372);
                              }
                              §§goto(addr294);
                           }
                           §§goto(addr396);
                        }
                        §§goto(addr274);
                     }
                     §§goto(addr340);
                  }
               }
               §§goto(addr348);
            }
            §§goto(addr294);
         }
         §§goto(addr264);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§6-§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : LevelObject
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite = new Sprite();
         if(_loc15_)
         {
            _loc10_.scaleX = param8;
            if(_loc15_)
            {
               _loc10_.scaleY = param8;
            }
         }
         var _loc11_:LevelObject = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8);
         if(_loc15_ || param3)
         {
            §§push(_loc11_.isTexture());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  this.§8c§[this.§8c§.length] = _loc11_;
                  if(_loc15_)
                  {
                     if(_loc15_ || this)
                     {
                        §§goto(addr110);
                     }
                     else
                     {
                        §§goto(addr214);
                     }
                  }
                  break;
               }
               if(!(_loc14_ && param2))
               {
                  §§push(_loc10_);
                  §§push(this.§-R§);
                  if(!_loc14_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  this.§8c§[this.§8c§.length] = _loc11_;
                  addr214:
                  if(!_loc14_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc11_ is §4!G§);
                        if(!(_loc14_ && this))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc15_ || this)
                           {
                              §§push(§§pop());
                              if(!(_loc14_ && param3))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc14_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§pop();
                                          if(!(_loc14_ && param3))
                                          {
                                             while(true)
                                             {
                                                §§push(_loc11_.§?O§());
                                                if(!(_loc14_ && param1))
                                                {
                                                   if(_loc14_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(!§§pop());
                                                   if(!(_loc14_ && this))
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr362:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop0;
                                                   }
                                                }
                                                addr337:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr338:
                                                   while(true)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                             }
                                             addr155:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§3!j§.addChild(_loc10_);
                                          §§goto(addr347);
                                       }
                                       addr342:
                                    }
                                    §§goto(addr87);
                                 }
                              }
                              §§goto(addr360);
                           }
                           §§goto(addr337);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc14_)
                           {
                              §§goto(addr342);
                           }
                           §§goto(addr347);
                        }
                        else
                        {
                           this.§#J§.addChild(_loc10_);
                        }
                        §§goto(addr334);
                     }
                     addr110:
                  }
                  §§goto(addr315);
                  addr214:
               }
               §§goto(addr271);
               §§goto(addr214);
            }
            while(true)
            {
               §§goto(addr337);
            }
         }
         §§goto(addr155);
      }
      
      public function §8!j§(param1:int, param2:LevelObject, param3:LevelObject) : §>!G§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§>!G§ = null;
         var _loc4_:int = this.§8c§.indexOf(param2) - this.§7Y§;
         var _loc5_:int = this.§8c§.indexOf(param3) - this.§7Y§;
         if(_loc8_)
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               §§push(0);
               if(_loc8_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && this))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc8_ || this)
                           {
                              addr79:
                              §§pop();
                              §§goto(addr99);
                           }
                           §§goto(addr97);
                        }
                        if(§§pop())
                        {
                           addr99:
                           if(_loc8_ || this)
                           {
                              addr89:
                              §§push(_loc5_ >= 0);
                              if(!(_loc7_ && param2))
                              {
                                 addr97:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           _loc6_ = new §>!G§(§3V§.§9`§,_loc4_,_loc5_,new Point(0,0),new Point(0,0));
                           if(!_loc7_)
                           {
                              _loc6_.§7#§ = this.§"!>§.mLevelEngine.mWorld.§"!"§(_loc6_.§0§(param2,param3));
                              do
                              {
                                 this.§=![§.push(_loc6_);
                              }
                              while(_loc7_ && param1);
                              
                           }
                           return _loc6_;
                        }
                        return null;
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr89);
         }
         §§goto(addr79);
      }
      
      public function §]M§(param1:§>!G§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(param1.§7#§ is b2WeldJoint);
            if(_loc5_ || _loc2_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§goto(addr40);
               }
            }
            var _loc2_:LevelObject = this.§`T§(param1.index1 + this.§7Y§);
            var _loc3_:LevelObject = this.§`T§(param1.index2 + this.§7Y§);
            if(!(_loc4_ && _loc3_))
            {
               this.§"!>§.mLevelEngine.mWorld.§-!A§(param1.§7#§);
            }
            do
            {
               param1.§7#§ = this.§"!>§.mLevelEngine.mWorld.§"!"§(param1.§0§(_loc2_,_loc3_));
            }
            while(_loc4_);
            
            return;
         }
         addr40:
      }
      
      public function §9l§(param1:LevelObject) : Vector.<§>!G§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§>!G§ = null;
         var _loc2_:Vector.<§>!G§> = new Vector.<§>!G§>();
         var _loc3_:int = this.§8c§.indexOf(param1) - this.§7Y§;
         if(_loc7_ || param1)
         {
            §§push(_loc3_);
            if(_loc7_)
            {
               if(§§pop() >= 0)
               {
                  addr49:
                  addr48:
                  for each(_loc4_ in this.§=![§)
                  {
                     if(!(_loc7_ || param1))
                     {
                        continue;
                     }
                     §§push(_loc4_.index1 == _loc3_);
                     if(!(_loc8_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc7_)
                        {
                           §§push(§§pop());
                           if(_loc7_ || this)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              if(!(_loc8_ && this))
                              {
                                 §§pop();
                                 if(_loc7_ || this)
                                 {
                                    §§push(_loc4_.index2 == _loc3_);
                                    if(_loc7_)
                                    {
                                       addr134:
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§goto(addr134);
                                 }
                                 _loc2_.push(_loc4_);
                                 continue;
                              }
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr134);
                  }
               }
               return _loc2_;
            }
            §§goto(addr49);
         }
         §§goto(addr48);
      }
      
      public function §%V§() : Vector.<§>!G§>
      {
         return this.§=![§;
      }
      
      public function §2N§(param1:LevelObject) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§8c§.indexOf(param1) - this.§7Y§;
         var _loc3_:int = this.§=![§.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(this.§=![§[_loc3_].index2 == _loc2_);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc4_)
                                 {
                                    if(_loc5_ && param1)
                                    {
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(§§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                break loop2;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       addr133:
                                    }
                                    break;
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§=![§.splice(_loc3_,1);
                                       addr123:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr107:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr48:
                                    while(true)
                                    {
                                       §§push(§§pop() - 1);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr123);
                     }
                     continue;
                  }
                  §§push(this.§=![§[_loc3_].index1 == _loc2_);
                  §§goto(addr133);
               }
               §§goto(addr48);
            }
            §§goto(addr57);
         }
      }
      
      public function §^Y§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§8c§.indexOf(param1) - this.§7Y§;
         var _loc4_:int = this.§8c§.indexOf(param2) - this.§7Y§;
         var _loc5_:int = this.§=![§.length - 1;
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc7_ && param2))
            {
               if(!(_loc7_ && param2))
               {
                  if(_loc6_)
                  {
                     if(§§pop() < 0)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              if(_loc6_)
                              {
                                 §§push(false);
                                 if(!(_loc7_ && param2))
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          while(_loc6_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr215:
                                                   while(true)
                                                   {
                                                      §§push(this.§=![§[_loc5_].index1 == _loc4_);
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                             §§goto(addr114);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr228);
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr86);
                     }
                     else
                     {
                        §§push(this.§=![§[_loc5_].index1 == _loc3_);
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr83);
               }
               §§goto(addr84);
            }
            §§goto(addr85);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:LevelObject = null;
         var _loc11_:§5s§ = null;
         var _loc12_:§5s§ = null;
         if(!(_loc15_ && this))
         {
            §§push(param2);
            if(!_loc15_)
            {
               §§push("BIRD");
               if(!(_loc15_ && param1))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!(_loc15_ && param3))
                     {
                        addr54:
                        _loc10_ = this.§@!&§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(!_loc15_)
                        {
                           var _loc13_:*;
                           §§push((_loc13_ = this).§<D§);
                           if(_loc16_ || this)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc14_:* = §§pop();
                           if(!(_loc15_ && param2))
                           {
                              _loc13_.§<D§ = _loc14_;
                           }
                        }
                     }
                     else
                     {
                        addr100:
                        §§push(LevelItemManager.§&!i§(param2));
                        if(!(_loc15_ && param2))
                        {
                           _loc11_ = §§pop();
                           _loc10_ = new §]x§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                        }
                        else
                        {
                           addr141:
                           _loc12_ = §§pop();
                           if(!_loc15_)
                           {
                              §§push(_loc12_ == null);
                              if(!_loc15_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc16_)
                                 {
                                    §§push(§§pop());
                                    if(_loc16_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc15_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc16_ || param1)
                                             {
                                                §§pop();
                                                if(!(_loc15_ && param2))
                                                {
                                                   §§push(param2);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop().indexOf("MISC_") == 0);
                                                      if(_loc16_ || param3)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc16_)
                                                         {
                                                            addr207:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc15_ && this))
                                                               {
                                                                  addr228:
                                                                  §§push("MISC_FOOD_");
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     §§push(§§pop() + param2.substring(5));
                                                                  }
                                                                  param2 = §§pop();
                                                                  if(!_loc16_)
                                                                  {
                                                                  }
                                                                  _loc10_ = new §0w§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                                                                  addr344:
                                                                  return _loc10_;
                                                                  addr287:
                                                               }
                                                               _loc12_ = LevelItemManager.§&!i§(param2);
                                                            }
                                                            §§push(_loc12_.§17§);
                                                            if(_loc16_)
                                                            {
                                                               §§push(§5s§.§"!W§);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc16_)
                                                                     {
                                                                        addr252:
                                                                        §§push(§§pop());
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr255:
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc16_ || param3)
                                                                           {
                                                                              addr264:
                                                                              §§pop();
                                                                              if(_loc16_ || this)
                                                                              {
                                                                                 addr277:
                                                                                 addr274:
                                                                                 addr272:
                                                                                 §§push(_loc12_.§17§ == §5s§.§'!W§);
                                                                                 if(_loc15_ && param3)
                                                                                 {
                                                                                 }
                                                                                 addr286:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr287);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc10_ = new LevelObject(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param9,_loc12_.front);
                                                                                    §§goto(addr344);
                                                                                 }
                                                                              }
                                                                              §§goto(addr344);
                                                                           }
                                                                           §§goto(addr286);
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr272);
                                             }
                                          }
                                          §§goto(addr207);
                                       }
                                    }
                                    §§goto(addr255);
                                 }
                                 §§goto(addr277);
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr228);
                        }
                     }
                     §§goto(addr228);
                  }
                  else
                  {
                     addr97:
                     if(param2.indexOf("PIG") == 0)
                     {
                        §§goto(addr100);
                     }
                     else
                     {
                        §§push(LevelItemManager.§&!i§(param2));
                     }
                     §§goto(addr141);
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr54);
      }
      
      public function §2F§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelObject = null;
         var _loc2_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8c§[_loc2_] as LevelObject;
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§0o§ > 0)
                     {
                        _loc3_.§!!E§();
                        loop2:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 _loc3_.§[!`§();
                                 addr95:
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       continue loop1;
                                    }
                                    addr136:
                                    while(true)
                                    {
                                       this.§&U§(_loc2_,true,true,true);
                                    }
                                 }
                                 continue loop1;
                              }
                              addr91:
                           }
                           while(true)
                           {
                              addr46:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(§§pop() - 1);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(int(§§pop()));
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 if(!(_loc4_ && param1))
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr95);
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr136);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr109);
         }
         if(!(_loc4_ && _loc3_))
         {
            this.§8!A§(param1);
         }
      }
      
      protected function §8!A§(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:§>!G§ = null;
         var _loc4_:§`!1§ = null;
         var _loc5_:* = 0;
         var _loc6_:LevelObject = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:int = this.§1N§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(_loc12_ || _loc3_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr537);
               }
               _loc4_ = this.§1N§[_loc2_];
               if(!(_loc11_ && this))
               {
                  if(_loc4_.§`r§)
                  {
                     if(_loc12_ || _loc3_)
                     {
                        addr64:
                        §§push(_loc4_.update(param1));
                        if(_loc12_)
                        {
                           §§push(int(§§pop()));
                           if(!(_loc11_ && _loc3_))
                           {
                              _loc5_ = §§pop();
                              if(_loc12_)
                              {
                                 §§push(_loc5_);
                                 if(!_loc11_)
                                 {
                                    addr83:
                                    if(§§pop() != -1)
                                    {
                                       if(_loc11_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       addr92:
                                       §§push(this);
                                       §§push("block_");
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() + _loc5_);
                                       }
                                       _loc6_ = §§pop().§2z§(§§pop());
                                       if(_loc12_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc12_ || this)
                                             {
                                                addr113:
                                                this.§"!A§(_loc6_,true,true,true);
                                                if(_loc12_ || _loc3_)
                                                {
                                                }
                                                addr133:
                                                §§push(_loc2_);
                                                if(_loc12_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(!(_loc11_ && this))
                                                   {
                                                      addr145:
                                                      _loc2_ = §§pop();
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr133);
                                          }
                                          this.§1N§.splice(_loc2_,1);
                                          §§goto(addr133);
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr113);
               }
               §§goto(addr64);
            }
            break;
         }
         var _loc9_:* = §§pop();
         if(_loc12_)
         {
            loop1:
            for each(_loc3_ in this.§=![§)
            {
               if(!_loc11_)
               {
                  §§push(_loc3_.type == §3V§.§]C§);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr532:
                                    while(true)
                                    {
                                       §§push(Boolean(_loc3_.§=!h§));
                                    }
                                 }
                                 addr531:
                              }
                              while(true)
                              {
                                 loop9:
                                 while(§§pop())
                                 {
                                    if(_loc12_ || _loc2_)
                                    {
                                       §§push(_loc3_.§7#§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push((§§pop() as b2PrismaticJoint).§02§());
                                          addr518:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr519:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                             }
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             if(!(_loc12_ || _loc3_))
                                             {
                                                continue loop10;
                                             }
                                             §§push((§§pop() as b2PrismaticJoint).§?!&§());
                                             if(_loc12_ || this)
                                             {
                                                if(_loc12_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop15:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      loop16:
                                                      while(!_loc11_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Boolean(_loc3_.§in §));
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr460:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(_loc3_.§3-§));
                                                                           }
                                                                        }
                                                                        addr459:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop26:
                                                                              while(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 if(!(_loc12_ || param1))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop28:
                                                                                       while(_loc12_)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc12_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  loop35:
                                                                                                                  while(!_loc11_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     loop36:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           continue loop33;
                                                                                                                        }
                                                                                                                        if(!(_loc12_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop37:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              loop38:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop39:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    loop40:
                                                                                                                                    while(_loc12_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc12_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          break loop14;
                                                                                                                                       }
                                                                                                                                       §§push(0);
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                          loop41:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      §§pop();
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr459);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop18;
                                                                                                                                                addr411:
                                                                                                                                             }
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                continue loop9;
                                                                                                                                             }
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(!(_loc11_ && param1))
                                                                                                                                             {
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      continue loop36;
                                                                                                                                                   }
                                                                                                                                                   if(_loc11_ && _loc2_)
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      continue loop20;
                                                                                                                                                   }
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                }
                                                                                                                                                if(!(_loc11_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr230:
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   loop48:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         break loop9;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc12_ || param1))
                                                                                                                                                      {
                                                                                                                                                         addr293:
                                                                                                                                                         if(true)
                                                                                                                                                         {
                                                                                                                                                            break loop9;
                                                                                                                                                         }
                                                                                                                                                         continue loop39;
                                                                                                                                                      }
                                                                                                                                                      if(_loc12_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc12_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc11_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                            continue loop28;
                                                                                                                                                         }
                                                                                                                                                         continue loop38;
                                                                                                                                                      }
                                                                                                                                                      loop43:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc12_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc12_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop29;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() <= _loc3_.lowerLimit);
                                                                                                                                                                     if(!(_loc11_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop41;
                                                                                                                                                                        }
                                                                                                                                                                        addr347:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           continue loop43;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr223:
                                                                                                                                                                        if(!(_loc11_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop48;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() >= _loc3_.upperLimit);
                                                                                                                                                                     }
                                                                                                                                                                     addr355:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        if(_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop37;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop31;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               continue loop40;
                                                                                                                                                            }
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                         addr418:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc11_ && param1)
                                                                                                                                                            {
                                                                                                                                                               break loop43;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr355);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr532);
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                   addr230:
                                                                                                                                                }
                                                                                                                                                continue loop35;
                                                                                                                                             }
                                                                                                                                             §§goto(addr347);
                                                                                                                                             §§goto(addr418);
                                                                                                                                          }
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    continue loop15;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr230);
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop32;
                                                                                                               }
                                                                                                               addr377:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr411);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr460);
                                                                                       if(_loc11_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr223);
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr230);
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr520:
                                                      while(true)
                                                      {
                                                         continue loop14;
                                                      }
                                                   }
                                                   addr485:
                                                }
                                                §§goto(addr519);
                                             }
                                             §§goto(addr485);
                                          }
                                          §§goto(addr518);
                                       }
                                    }
                                    §§goto(addr520);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr488);
            }
         }
         addr537:
         if(!(_loc11_ && _loc3_))
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§?h§.push(§#!f§.createExplosion(param1,param2,param3));
         }
         do
         {
            SoundEngine.§9!X§("TntExplosions","ChannelExplosions");
         }
         while(_loc5_);
         
      }
      
      public function § !f§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelObject = null;
         var _loc3_:* = int(this.§8c§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               _loc4_ = this.§8c§[_loc3_];
               if(!_loc5_)
               {
                  §§push(Boolean(_loc4_));
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        addr63:
                        if(_loc4_.isInCoordinates(param1,param2))
                        {
                           if(_loc6_)
                           {
                              addr66:
                              §§push(_loc3_);
                              if(_loc6_ || param2)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr92:
                              §§push(_loc3_);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() - 1);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                           }
                           _loc3_ = §§pop();
                           continue;
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr63);
               }
               §§goto(addr66);
            }
            break;
         }
         return §§pop();
      }
      
      public function §;C§(param1:Number, param2:Number) : LevelObject
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelObject = null;
         var _loc3_:* = int(this.§8c§.length - 1);
         while(true)
         {
            if(_loc3_ < 0)
            {
               return null;
            }
            _loc4_ = this.§8c§[_loc3_];
            if(_loc6_ || _loc3_)
            {
               §§push(Boolean(_loc4_));
               if(!(_loc5_ && param2))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr68:
                        if(_loc4_.isInCoordinates(param1,param2))
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     break;
                  }
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc6_ || param1)
                     {
                        §§push(int(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr68);
            }
            break;
         }
         return _loc4_;
      }
      
      public function §`T§(param1:int) : LevelObject
      {
         return this.§8c§[param1];
      }
      
      public function §8?§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:LevelObject = null;
         var _loc3_:* = int(this.§8c§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8c§[_loc3_] as LevelObject;
            if(!(_loc6_ || param1))
            {
               continue;
            }
            _loc4_.§8?§(param2,param1);
            if(!(_loc6_ || _loc3_))
            {
               continue;
            }
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(§§pop() - 1);
               if(_loc6_ || param2)
               {
                  addr88:
                  §§push(int(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr88);
         }
      }
      
      private function §&!!§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:LevelObject = null;
         if(!_loc8_)
         {
            §§push(this.mSardineCanAdded);
            if(!_loc8_)
            {
               §§push(!§§pop());
               if(!(_loc8_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc9_ || _loc3_)
                     {
                        §§push(true);
                        if(_loc9_)
                        {
                           §§goto(addr51);
                        }
                     }
                     else
                     {
                        addr59:
                        §§push(this.mMightyEagleAdded);
                        if(!_loc8_)
                        {
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 §§push(false);
                                 if(!(_loc8_ && param2))
                                 {
                                    §§goto(addr74);
                                 }
                              }
                              else
                              {
                                 addr75:
                                 §§push(false);
                                 if(!_loc8_)
                                 {
                                    addr78:
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc8_)
                              {
                                 §§push(param1.§0o§);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(param1.§]!3§);
                                    loop1:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          §§push(this.§=1§);
                                          loop2:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr548:
                                             while(true)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      this.§=1§ = this.§"!>§.§,6§;
                                                      addr554:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr549:
                                                }
                                                addr524:
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(param1.§&E§());
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§pop();
                                                                     loop11:
                                                                     for(; !(_loc8_ && this); if(_loc8_ && param1)
                                                                     {
                                                                        continue;
                                                                     },§§goto(addr137))
                                                                     {
                                                                        §§push(this.§5!k§(param1));
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              loop49:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop42:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop43:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop18:
                                                                                                   while(!_loc8_)
                                                                                                   {
                                                                                                      §§push(this.mMightyEagleTimer);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(§§pop() < this.§&!U§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                         {
                                                                                                            loop19:
                                                                                                            while(_loc9_)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(this.mMightyEagleTimer);
                                                                                                                  loop20:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param2);
                                                                                                                     loop21:
                                                                                                                     while(!_loc8_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr455:
                                                                                                                           loop23:
                                                                                                                           while(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(this.mMightyEagleTimer);
                                                                                                                                 loop24:
                                                                                                                                 while(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < this.§&!U§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                    loop25:
                                                                                                                                    while(_loc9_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       loop26:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                addr381:
                                                                                                                                                if(!(_loc8_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr389:
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(!(_loc9_ || param1))
                                                                                                                                                   {
                                                                                                                                                      continue loop43;
                                                                                                                                                   }
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      loop27:
                                                                                                                                                      while(_loc9_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         loop28:
                                                                                                                                                         for(; !(_loc8_ && this); if(!(_loc9_ || this))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         },§§push(this.§5!k§(param1)),if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            continue loop25;
                                                                                                                                                         },if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(true);
                                                                                                                                                                  if(!(_loc9_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop25;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop26;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop25;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr658);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr330);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr658);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr603);
                                                                                                                                                            }
                                                                                                                                                         },§§goto(addr305))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            loop29:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() > this.§&!U§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                                               addr305:
                                                                                                                                                               addr509:
                                                                                                                                                               while(_loc9_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc8_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc8_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(SoundEngine.§9!X§("Mighty_Eagle_Selected_1","ChannelBird"));
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          loop34:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(SoundEngine.§9!X§("Mighty_Eagle_Flying_1","ChannelBird"));
                                                                                                                                                                                             if(!(_loc9_ || this))
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             loop35:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                         loop37:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() >= this.§&!U§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(param1.§9f§());
                                                                                                                                                                                                                  loop38:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().GetPosition());
                                                                                                                                                                                                                     addr245:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - this.§&!U§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr259:
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc5_ = §§pop();
                                                                                                                                                                                                                              if(_loc8_ && _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 return _loc3_;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr658:
                                                                                                                                                                                                                              addr658:
                                                                                                                                                                                                                              addr657:
                                                                                                                                                                                                                              addr657:
                                                                                                                                                                                                                              addr657:
                                                                                                                                                                                                                              addr657:
                                                                                                                                                                                                                              addr658:
                                                                                                                                                                                                                              addr657:
                                                                                                                                                                                                                              addr657:
                                                                                                                                                                                                                              addr657:
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop11;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr209:
                                                                                                                                                                                                                              continue loop34;
                                                                                                                                                                                                                              if(!(_loc9_ || _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc6_ = §§pop();
                                                                                                                                                                                                                              if(_loc9_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop28;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr657);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop35;
                                                                                                                                                                                                                           addr262:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr259);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr137:
                                                                                                                                                                                                                     continue loop29;
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param1.§9f§());
                                                                                                                                                                                                                        if(_loc8_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop38;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().GetPosition());
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(this.§&!U§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§&!U§.MIGHTY_EAGLE_Y_CHANGE);
                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() * 1.07);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(!(_loc8_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop37;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr209);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr245);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                              if(_loc9_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * this.§?!C§);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§<O§(§§pop());
                                                                                                                                                                                                                              addr576:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§=1§ = 0;
                                                                                                                                                                                                                                 break loop19;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr563:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop21;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr654:
                                                                                                                                                                                                               this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr657);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr588:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(this.§?!C§);
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * this.§&!U§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().§?!C§ = §§pop();
                                                                                                                                                                                                            break loop18;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr232:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§?!C§);
                                                                                                                                                                                                         break loop23;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr582:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr549);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr563);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr657);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr232);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop18;
                                                                                                                                                                              addr339:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop49;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop27;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop49;
                                                                                                                                                                     addr330:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr522:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  break loop28;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§"!>§.§,6§);
                                                                                                                                                            break loop24;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(_loc9_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         continue loop16;
                                                                                                                                                      }
                                                                                                                                                      continue loop7;
                                                                                                                                                      addr424:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr339);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      addr497:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc9_ || this))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop9;
                                                                                                                                                         }
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop10;
                                                                                                                                                      §§goto(addr381);
                                                                                                                                                   }
                                                                                                                                                   addr496:
                                                                                                                                                }
                                                                                                                                                §§goto(addr509);
                                                                                                                                             }
                                                                                                                                             §§goto(addr497);
                                                                                                                                          }
                                                                                                                                          §§goto(addr389);
                                                                                                                                       }
                                                                                                                                       continue loop43;
                                                                                                                                       if(_loc8_ && param1)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       if(!(_loc8_ && param2))
                                                                                                                                       {
                                                                                                                                          §§goto(addr126);
                                                                                                                                       }
                                                                                                                                       §§goto(addr657);
                                                                                                                                    }
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr424);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr657);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() < this.§&!U§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                              {
                                                                                                                                 §§goto(addr588);
                                                                                                                              }
                                                                                                                              §§goto(addr560);
                                                                                                                           }
                                                                                                                           if(_loc9_ || this)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr576);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr657);
                                                                                                      }
                                                                                                      §§goto(addr455);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr560);
                                                                                                   }
                                                                                                   addr602:
                                                                                                }
                                                                                                §§goto(addr657);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr518:
                                                                        }
                                                                        §§goto(addr522);
                                                                     }
                                                                     §§goto(addr554);
                                                                  }
                                                                  §§goto(addr658);
                                                               }
                                                               §§goto(addr518);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr582);
                                    }
                                 }
                              }
                              §§goto(addr602);
                           }
                           §§goto(addr75);
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr59);
               }
               addr74:
               return §§pop();
            }
            addr51:
            return §§pop();
         }
         §§goto(addr75);
      }
      
      private function §,!T§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:LevelObject = null;
         if(!(_loc8_ && param1))
         {
            §§push(Boolean(this.§&!U§.MIGHTY_EAGLE_USE_SHADE));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr145:
                        loop12:
                        while(true)
                        {
                           §§push(this.§0m§);
                           loop8:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!(_loc9_ || _loc3_))
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              while(!_loc9_)
                              {
                                 continue loop2;
                              }
                              addr108:
                              if(_loc9_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc8_ && param2)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop())
                                    {
                                       break loop8;
                                    }
                                    loop9:
                                    while(§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          this.§0m§ = true;
                                          while(_loc9_ || _loc3_)
                                          {
                                             this.§"!>§.§%2§();
                                             if(_loc9_ || param1)
                                             {
                                                continue loop10;
                                             }
                                          }
                                          addr126:
                                          while(true)
                                          {
                                             if(_loc8_ && param1)
                                             {
                                                continue loop12;
                                             }
                                             while(true)
                                             {
                                                §§push(this.mMightyEagleTimer);
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(§§pop() > this.§&!U§.MIGHTY_EAGLE_SHADING_DELAY);
                                                   if(_loc9_ || param2)
                                                   {
                                                      if(_loc8_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      break loop8;
                                                   }
                                                   continue loop9;
                                                }
                                                addr148:
                                                var _loc3_:* = §§pop();
                                                if(!(_loc8_ && this))
                                                {
                                                   §§push(this);
                                                   §§push(this.mMightyEagleTimer);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop() + param2);
                                                   }
                                                   §§pop().mMightyEagleTimer = §§pop();
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      addr171:
                                                      §§push(this.§"!>§.particles);
                                                      §§push(§0'§.§@R§);
                                                      §§push(LevelParticleManager.§[K§);
                                                      §§push(§0'§.§&A§);
                                                      §§push(param1.§9f§().GetPosition().x);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc8_)
                                                            {
                                                               §§push(Math.random() * (_loc3_ * 2));
                                                               if(!_loc8_)
                                                               {
                                                                  addr205:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(param1.§9f§().GetPosition().y);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                  }
                                                                  addr235:
                                                                  §§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() + Math.random() * (_loc3_ * 2),3500,"",§0'§.§%!`§(param1.§#>§),0,0,1,0,4);
                                                                  §§push(1);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  var _loc4_:* = §§pop();
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr375:
                                                                     if(this.mMightyEagleHasTouchedGround)
                                                                     {
                                                                        addr376:
                                                                        param1.§1!X§(this.§&!U§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                                        addr384:
                                                                        §§push(-1);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              addr372:
                                                                              §§push(this.§?B§);
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       this.§?B§ = false;
                                                                                    }
                                                                                    this.§"!>§.§-!i§();
                                                                                    addr317:
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          param1.§@r§(LevelItemSoundResource.§@m§);
                                                                                          addr307:
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                this.mSardineCanAdded = false;
                                                                                                addr297:
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr283:
                                                                                                   param1.§7!O§.§1L§ = true;
                                                                                                   addr280:
                                                                                                   if(_loc9_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(param1.§7!O§);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§pop().§<3§();
                                                                                                         if(!(_loc8_ && this))
                                                                                                         {
                                                                                                            if(!(_loc8_ && param1))
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr280);
                                                                                                               }
                                                                                                               addr386:
                                                                                                               var _loc6_:int = 0;
                                                                                                               var _loc7_:* = this.§8c§;
                                                                                                               addr472:
                                                                                                               §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                               if(!(_loc8_ && param1))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                                                     if(_loc9_ || param2)
                                                                                                                     {
                                                                                                                        addr460:
                                                                                                                        §§push(Boolean(_loc5_));
                                                                                                                        §§push(Boolean(_loc5_));
                                                                                                                        if(_loc9_ || this)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr470:
                                                                                                                           §§pop();
                                                                                                                           addr435:
                                                                                                                           addr471:
                                                                                                                           §§push(_loc5_.§"!7§());
                                                                                                                           if(_loc9_ || param2)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    addr451:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr454:
                                                                                                                                       _loc5_.§9f§().SetAwake(true);
                                                                                                                                       addr452:
                                                                                                                                       addr457:
                                                                                                                                       §§push(_loc5_.§9f§());
                                                                                                                                       if(_loc9_ || param2)
                                                                                                                                       {
                                                                                                                                          §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr435);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr472);
                                                                                                                                                }
                                                                                                                                                §§goto(addr471);
                                                                                                                                             }
                                                                                                                                             §§goto(addr452);
                                                                                                                                          }
                                                                                                                                          §§goto(addr457);
                                                                                                                                       }
                                                                                                                                       §§goto(addr454);
                                                                                                                                    }
                                                                                                                                    §§goto(addr472);
                                                                                                                                 }
                                                                                                                                 §§goto(addr460);
                                                                                                                              }
                                                                                                                              §§goto(addr470);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr451);
                                                                                                                     }
                                                                                                                     §§goto(addr454);
                                                                                                                  }
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(_loc9_ || param2)
                                                                                                                        {
                                                                                                                           this.§`L§();
                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr509:
                                                                                                                              §§push(this.mMightyEagleTimer > 6000);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                    }
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(this.isPigsAlive());
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                addr537:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(_loc9_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr545:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr553:
                                                                                                                                                         _loc6_ = 0;
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            addr557:
                                                                                                                                                            _loc7_ = this.§8c§;
                                                                                                                                                            addr634:
                                                                                                                                                            for each(_loc5_ in _loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(_loc5_));
                                                                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(!(_loc8_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_.§"!7§());
                                                                                                                                                                              if(_loc9_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 addr614:
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr617:
                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                       §§push(_loc5_.§]!3§);
                                                                                                                                                                                       if(!(_loc8_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * 2);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr614);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr634);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr614);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr617);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            param1.§@!C§(param2,new Point(this.§&!U§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§&!U§.MIGHTY_EAGLE_Y_CHANGE),this.§&!U§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                                            addr646:
                                                                                                                                                            if(!(_loc9_ || param2))
                                                                                                                                                            {
                                                                                                                                                               addr687:
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr646);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr643:
                                                                                                                                                            return false;
                                                                                                                                                            addr681:
                                                                                                                                                            addr690:
                                                                                                                                                            addr640:
                                                                                                                                                         }
                                                                                                                                                         this.§?B§ = this.mMightyEagleHasTouchedGround;
                                                                                                                                                         §§goto(addr687);
                                                                                                                                                         addr699:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr681);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr690);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr643);
                                                                                                                                          }
                                                                                                                                          §§goto(addr640);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr545);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr537);
                                                                                                                           }
                                                                                                                           §§goto(addr553);
                                                                                                                        }
                                                                                                                        §§goto(addr509);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr557);
                                                                                                               }
                                                                                                               §§goto(addr634);
                                                                                                            }
                                                                                                            §§goto(addr384);
                                                                                                         }
                                                                                                         §§goto(addr280);
                                                                                                      }
                                                                                                      §§goto(addr283);
                                                                                                   }
                                                                                                   §§goto(addr297);
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             §§goto(addr372);
                                                                                          }
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                    addr358:
                                                                                    §§goto(addr358);
                                                                                 }
                                                                                 §§goto(addr509);
                                                                              }
                                                                              §§goto(addr375);
                                                                           }
                                                                        }
                                                                        §§goto(addr386);
                                                                     }
                                                                     this.mMightyEagleHasTouchedGround = param1.§9f§().GetPosition().y >= -5.5;
                                                                     §§goto(addr699);
                                                                  }
                                                                  §§goto(addr376);
                                                                  addr227:
                                                                  addr234:
                                                               }
                                                               §§push(_loc3_);
                                                               if(!(_loc8_ && param2))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr227);
                                                                  }
                                                                  §§goto(addr235);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr108);
                                          }
                                          continue loop12;
                                       }
                                    }
                                    §§goto(addr148);
                                    §§push(Number(3));
                                 }
                                 addr112:
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr126);
                           }
                        }
                     }
                  }
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr145);
      }
      
      private function §2k§() : void
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         var _loc1_:§#!f§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:LevelObject = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§?h§.length > 0)
         {
            _loc1_ = this.§?h§.shift();
            if(!_loc21_)
            {
               §§push(_loc1_.pushRadius);
               if(!(_loc21_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               loop1:
               while(true)
               {
                  _loc2_ = §§pop();
                  if(!_loc21_)
                  {
                     §§push(_loc1_.x);
                     if(_loc20_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc21_)
                        {
                           _loc3_ = §§pop();
                           if(!(_loc21_ && _loc1_))
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(_loc1_.y);
                                 if(_loc20_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc20_ || _loc3_)
                                    {
                                       _loc4_ = §§pop();
                                       if(!_loc21_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc1_.damage);
                                             if(!(_loc21_ && this))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc21_ && this))
                                                {
                                                   if(_loc21_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   _loc5_ = §§pop();
                                                   if(_loc20_ || _loc3_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(0);
                                                      if(!_loc21_)
                                                      {
                                                         var _loc18_:* = §§pop();
                                                         if(_loc20_)
                                                         {
                                                            for each(_loc6_ in this.§8c§)
                                                            {
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(_loc6_.§9f§());
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().GetPosition());
                                                                     addr528:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr529:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           addr530:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              addr531:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr532:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    addr533:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_.§9f§());
                                                                                       continue loop31;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr524);
                                                            }
                                                         }
                                                         if(!(_loc21_ && _loc1_))
                                                         {
                                                            §§push(this.§"!>§);
                                                            loop89:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().particles);
                                                               loop90:
                                                               while(true)
                                                               {
                                                                  §§push(this.§%z§(_loc1_.type));
                                                                  loop91:
                                                                  while(true)
                                                                  {
                                                                     §§push(LevelParticleManager.§[K§);
                                                                     loop92:
                                                                     while(true)
                                                                     {
                                                                        §§push(§0'§.§7R§);
                                                                        loop93:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           loop94:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              loop95:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§0'§.§7!!§,0,0,0,0,1,20,true));
                                                                                 loop96:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr830:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(30);
                                                                                       addr788:
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             addr790:
                                                                                             while(true)
                                                                                             {
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(150);
                                                                                                      addr833:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         §§push(0.75);
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            if(_loc20_ || _loc3_)
                                                                                                            {
                                                                                                               addr769:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc21_ && this))
                                                                                                               {
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               loop5:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr784:
                                                                                                                  loop6:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                     loop7:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(1250);
                                                                                                                        if(!(_loc21_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(Math.random() * 750);
                                                                                                                           loop8:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 if(!(_loc20_ || this))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              loop9:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc21_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop5;
                                                                                                                                 }
                                                                                                                                 if(!(_loc20_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                    addr756:
                                                                                                                                    loop10:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       loop11:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(180);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / Math.PI);
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc17_ = §§pop();
                                                                                                                                                   continue loop10;
                                                                                                                                                }
                                                                                                                                                addr563:
                                                                                                                                                if(_loc21_ && this)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      continue loop9;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(_loc21_)
                                                                                                                                                      {
                                                                                                                                                         continue loop22;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc20_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§"!>§);
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop89;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop().particles);
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop90;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§0'§.§%J§);
                                                                                                                                                                           if(!(_loc20_ || _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop91;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(LevelParticleManager.§[K§);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop92;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§0'§.§&A§);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop93;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           if(!(_loc20_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop94;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop95;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                           §§push("");
                                                                                                                                                                           §§push(§0'§.§7!!§);
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * Math.cos(_loc17_));
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              if(!(_loc21_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr657:
                                                                                                                                                                                 §§push(§§pop() * Math.sin(_loc17_));
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop().§@4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0));
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(!(_loc21_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop1;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop0;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop96;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr657);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop90;
                                                                                                                                                                        addr594:
                                                                                                                                                                     }
                                                                                                                                                                     continue loop21;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop10;
                                                                                                                                                               }
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr693);
                                                                                                                                             }
                                                                                                                                             continue loop8;
                                                                                                                                          }
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr783:
                                                                                                            }
                                                                                                            addr782:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr783);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr756);
                                                      }
                                                      §§goto(addr788);
                                                   }
                                                   §§goto(addr790);
                                                }
                                                §§goto(addr755);
                                             }
                                             §§goto(addr784);
                                          }
                                          addr108:
                                       }
                                       §§goto(addr830);
                                    }
                                    §§goto(addr755);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr782);
                                 §§goto(addr769);
                              }
                           }
                           §§goto(addr715);
                        }
                        §§goto(addr575);
                     }
                     §§goto(addr755);
                  }
                  break;
               }
               while(true)
               {
                  §§push(_loc7_);
                  if(!(_loc21_ && _loc2_))
                  {
                     §§push(5);
                     if(_loc20_ || _loc3_)
                     {
                        §§goto(addr563);
                     }
                     §§goto(addr833);
                  }
                  §§goto(addr578);
               }
            }
            §§goto(addr108);
         }
      }
      
      protected function §%z§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               if(false)
               {
                  addr47:
                  §§push(0);
                  if(_loc3_)
                  {
                  }
               }
               else
               {
                  §§push(0);
               }
               §§goto(addr53);
            }
            §§goto(addr47);
         }
         addr53:
         switch(§§pop())
         {
         }
         return §0'§.§-s§;
      }
      
      public function §&e§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:LevelObject = null;
         var _loc3_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§8c§[_loc3_];
            if(!_loc5_)
            {
               §§push(_loc2_.§3g§());
               if(_loc4_ || param1)
               {
                  if(!§§pop())
                  {
                     §§push(_loc2_.§?O§());
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           §§push(this.§5!k§(_loc2_));
                           loop1:
                           while(!§§pop())
                           {
                              §§push(_loc2_.isReadyToBeRemoved(param1));
                              loop2:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             _loc2_.§@r§(LevelItemSoundResource.§5!,§);
                                             loop4:
                                             while(true)
                                             {
                                                this.§&U§(_loc3_,false,true,true);
                                                loop5:
                                                while(true)
                                                {
                                                   addr68:
                                                   while(true)
                                                   {
                                                      addr37:
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc4_)
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                         }
                                                         _loc3_ = §§pop();
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr87:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break loop7;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§&U§(_loc3_,false,false,false);
                                             }
                                             addr171:
                                          }
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§goto(addr37);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§,!T§(_loc2_,param1));
                                                   break loop2;
                                                }
                                                addr180:
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§goto(addr37);
                                    }
                                    addr192:
                                 }
                                 addr217:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr218);
                                    }
                                    §§goto(addr172);
                                 }
                              }
                           }
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       _loc2_.§@r§(LevelItemSoundResource.§5!,§);
                                       §§goto(addr171);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr217);
                                       }
                                       addr213:
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr225);
                              }
                              §§goto(addr192);
                           }
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr213);
               }
               §§goto(addr217);
            }
            §§goto(addr83);
         }
         if(!(_loc5_ && _loc2_))
         {
            this.§2k§();
         }
      }
      
      private function §`L§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>!G§ = null;
         for each(_loc1_ in this.§=![§)
         {
            if(_loc4_ || _loc1_)
            {
               this.§"!>§.mLevelEngine.mWorld.§-!A§(_loc1_.§7#§);
            }
         }
      }
      
      public function §,!c§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelObject = null;
         §§push(0);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(_loc1_ >= this.§8c§.length)
            {
               return false;
            }
            _loc2_ = this.§8c§[_loc1_];
            if(!(_loc4_ || _loc3_))
            {
               addr68:
               break;
            }
            §§push(_loc2_.explode());
            if(_loc3_)
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
               if(_loc4_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc1_ = §§pop();
         }
         §§goto(addr68);
         §§push(true);
      }
      
      public function §5!k§(param1:LevelObject) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr158:
                           while(true)
                           {
                              §§push(param1.§8!&§.§>t§() == LevelItemMaterial.§!!&§);
                              if(_loc3_)
                              {
                                 §§push(!§§pop());
                              }
                              addr130:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr157:
                     }
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc2_)
                           {
                              if(_loc2_ && param1)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 loop7:
                                 while(_loc3_)
                                 {
                                    §§push(this.§"!>§.§'g§.§4!1§(param1.§9f§().GetPosition().x,param1.§9f§().GetPosition().y));
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc3_ || param1)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      addr91:
                                                      §§push(true);
                                                      if(!_loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   else if(!(_loc3_ || _loc3_))
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§goto(addr91);
                                                }
                                                §§push(false);
                                                if(_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr91);
                                             }
                                             addr31:
                                             if(_loc3_)
                                             {
                                                return §§pop();
                                             }
                                             continue loop5;
                                             addr81:
                                          }
                                          §§goto(addr91);
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr91);
                                 }
                                 §§goto(addr158);
                              }
                           }
                           §§goto(addr81);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function §&U§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:§>!G§ = null;
         var _loc7_:§`!1§ = null;
         if(_loc13_ || param2)
         {
            if(param1 < 0)
            {
               if(_loc13_ || param3)
               {
                  return;
               }
            }
         }
         var _loc5_:LevelObject = this.§8c§[param1];
         if(!_loc12_)
         {
            §§push(_loc5_.§"!7§());
            if(_loc13_)
            {
               if(§§pop())
               {
                  if(!_loc12_)
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).§+R§);
                     if(_loc13_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(!(_loc12_ && param1))
                     {
                        _loc8_.§+R§ = _loc9_;
                     }
                     if(!_loc12_)
                     {
                        addr262:
                        if(_loc5_ == this.§"!>§.activeObject)
                        {
                           while(true)
                           {
                              §§push(this.§"!>§);
                              addr269:
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr271:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr267:
                        }
                        loop2:
                        while(true)
                        {
                           §§push(param2);
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§"!>§);
                                    if(!(_loc12_ && this))
                                    {
                                       §§push(_loc5_.§8!&§.score);
                                       §§push(ScoreCollector.§&o§);
                                       §§push(true);
                                       §§push(_loc5_.§9f§().GetPosition().x);
                                       §§push(_loc5_.§9f§().GetPosition().y);
                                       if(!_loc12_)
                                       {
                                          §§push(3);
                                          if(!(_loc12_ && param2))
                                          {
                                             addr254:
                                             §§push(§§pop() - §§pop());
                                             §§push(§0'§.§'>§(_loc5_.§#>§));
                                          }
                                          §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             addr195:
                                             while(true)
                                             {
                                                §§push(param3);
                                                addr197:
                                                loop14:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr198:
                                                      while(true)
                                                      {
                                                         this.addDestructionParticles(_loc5_,this.§"!>§.particles);
                                                         addr205:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr198:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               if(_loc13_ || param2)
                                                               {
                                                                  if(!(_loc12_ && param1))
                                                                  {
                                                                     this.§^1§(_loc5_);
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.isTexture());
                                                                              if(!_loc13_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(!(_loc13_ || this))
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(!_loc13_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    addr156:
                                                                                    this.§#!$§(_loc5_.sprite);
                                                                                 }
                                                                                 while(_loc13_ || param1)
                                                                                 {
                                                                                    this.§2N§(_loc5_);
                                                                                    if(!(_loc13_ || param1))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc13_ || param3))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    _loc8_ = 0;
                                                                                    _loc9_ = this.§=![§;
                                                                                    addr347:
                                                                                    §§push(§§hasnext(_loc9_,_loc8_));
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             if(_loc6_.index1 >= param1)
                                                                                             {
                                                                                                if(!(_loc12_ && param1))
                                                                                                {
                                                                                                   var _loc10_:*;
                                                                                                   var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                                                   if(!(_loc12_ && this))
                                                                                                   {
                                                                                                      _loc10_.index1 = _loc11_;
                                                                                                   }
                                                                                                   if(_loc13_ || param2)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr347);
                                                                                             }
                                                                                             if(_loc6_.index2 >= param1)
                                                                                             {
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                                                   if(_loc13_ || param3)
                                                                                                   {
                                                                                                      _loc10_.index2 = _loc11_;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                       }
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                _loc8_ = 0;
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   _loc9_ = this.§1N§;
                                                                                                   addr432:
                                                                                                   for each(_loc7_ in _loc9_)
                                                                                                   {
                                                                                                      if(!(_loc12_ && this))
                                                                                                      {
                                                                                                         §§push(_loc7_.id1);
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§push(param1);
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     _loc7_.§`r§ = true;
                                                                                                                     if(_loc13_ || param2)
                                                                                                                     {
                                                                                                                        addr406:
                                                                                                                        if(_loc7_.id1 >= param1)
                                                                                                                        {
                                                                                                                           if(_loc13_ || param2)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr432);
                                                                                                                     }
                                                                                                                     §§push((_loc10_ = _loc7_).id1);
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                     }
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        _loc10_.id1 = _loc11_;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr432);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr406);
                                                                                                      }
                                                                                                      §§goto(addr432);
                                                                                                   }
                                                                                                   addr435:
                                                                                                   if(!(_loc12_ && this))
                                                                                                   {
                                                                                                      addr443:
                                                                                                      _loc5_.dispose();
                                                                                                   }
                                                                                                   _loc5_ = null;
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      this.§8c§[param1] = null;
                                                                                                   }
                                                                                                   this.§8c§.splice(param1,1);
                                                                                                   addr486:
                                                                                                   if(_loc12_ && param1)
                                                                                                   {
                                                                                                      §§goto(addr486);
                                                                                                   }
                                                                                                   return;
                                                                                                   addr434:
                                                                                                }
                                                                                                §§goto(addr435);
                                                                                             }
                                                                                             §§goto(addr443);
                                                                                          }
                                                                                          §§goto(addr435);
                                                                                       }
                                                                                       §§goto(addr434);
                                                                                    }
                                                                                    §§goto(addr432);
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr156);
                                                                           }
                                                                           continue loop14;
                                                                           addr135:
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     addr192:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr198);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                }
                                             }
                                          }
                                          addr261:
                                       }
                                       §§goto(addr254);
                                    }
                                    break;
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr195);
                           }
                        }
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr271);
               }
               else
               {
                  §§push(_loc5_.§'W§());
                  if(_loc13_ || this)
                  {
                     addr88:
                     if(§§pop())
                     {
                        if(!_loc12_)
                        {
                           §§push((_loc8_ = this).§6-§);
                           if(!_loc12_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(!_loc12_)
                           {
                              _loc8_.§6-§ = _loc9_;
                           }
                           if(_loc13_ || param2)
                           {
                              §§goto(addr262);
                           }
                           §§goto(addr261);
                        }
                        §§goto(addr271);
                     }
                     §§goto(addr262);
                  }
               }
               §§goto(addr197);
            }
            §§goto(addr88);
         }
         §§goto(addr271);
      }
      
      protected function addDestructionParticles(param1:LevelObject, param2:LevelParticleManager) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §#!$§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§#J§);
            if(!(_loc3_ && param1))
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§^x§);
                     if(!_loc3_)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§+E§);
                              if(_loc2_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§3!j§);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(§§pop().contains(param1))
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr53:
                                                this.§3!j§.removeChild(param1);
                                             }
                                             if(_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   addr100:
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.§+E§);
                                                      break loop1;
                                                   }
                                                   continue loop1;
                                                }
                                                if(_loc2_ || param1)
                                                {
                                                   return;
                                                }
                                                addr136:
                                                if(_loc2_)
                                                {
                                                   §§push(this.§^x§);
                                                   break loop0;
                                                }
                                             }
                                             else
                                             {
                                                addr107:
                                             }
                                             if(_loc3_)
                                             {
                                                return;
                                             }
                                             addr143:
                                             if(_loc2_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   return;
                                                }
                                                addr159:
                                                this.§#J§.removeChild(param1);
                                                break;
                                             }
                                             continue loop0;
                                             break;
                                          }
                                          return;
                                       }
                                       §§goto(addr53);
                                    }
                                    return;
                                 }
                                 §§goto(addr100);
                              }
                              break;
                           }
                           §§pop().removeChild(param1);
                           §§goto(addr107);
                        }
                        §§goto(addr136);
                     }
                     break;
                  }
                  §§pop().removeChild(param1);
                  §§goto(addr143);
               }
            }
            §§goto(addr159);
         }
         §§goto(addr143);
      }
      
      protected function §^1§(param1:LevelObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1.§8k§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               if(!(_loc2_ && param1))
               {
                  §§push(Boolean(§§pop()));
               }
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr150:
                        while(true)
                        {
                           §§push(param1.§#!B§());
                           if(_loc3_ || this)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc3_ || this)
                           {
                              if(!_loc2_)
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    addr130:
                                    continue loop0;
                                 }
                                 addr20:
                                 return;
                                 addr81:
                              }
                              break;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §"!A§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§&U§(this.§8c§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§!!@§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr74:
               while(true)
               {
                  §§push(-§§pop());
                  addr75:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr73:
         }
         while(true)
         {
            §§push(this.§!!@§);
            if(_loc4_)
            {
               §§push(param2);
               if(!_loc3_)
               {
                  if(_loc4_)
                  {
                     addr60:
                     §§push(-§§pop());
                     if(_loc4_)
                     {
                        §§pop().y = §§pop();
                        if(_loc4_ || param1)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr75);
               }
               §§goto(addr60);
            }
            else
            {
               §§goto(addr73);
            }
         }
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:LevelObject = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ < this.§8c§.length)
         {
            _loc3_ = this.§8c§[_loc2_] as LevelObject;
            if(!(_loc5_ && _loc2_))
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc4_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr272:
                                    while(true)
                                    {
                                       §§push(_loc3_.§0o§);
                                       addr226:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr227:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             addr228:
                                             while(_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 addr271:
                              }
                              while(true)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop12:
                                       while(_loc4_ || _loc2_)
                                       {
                                          §§push(param1);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             loop14:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop15:
                                                while(_loc4_)
                                                {
                                                   §§push(§§pop());
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr50:
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(_loc5_ && _loc2_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.§7!O§);
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    §§push(§§pop().mTryToScream);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr115:
                                                                                                            if(!(_loc4_ || this))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     break loop15;
                                                                                                                  }
                                                                                                                  §§goto(addr115);
                                                                                                               }
                                                                                                               continue loop11;
                                                                                                               addr217:
                                                                                                            }
                                                                                                            if(_loc4_ || param1)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr271);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr249:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_.§7!O§);
                                                                                                                        addr155:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().mTryToBlink);
                                                                                                                           addr156:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              addr157:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc5_ && param1)
                                                                                                                                 {
                                                                                                                                    break loop24;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr248:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr227);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(_loc5_)
                                                                                                            {
                                                                                                            }
                                                                                                            return §§pop();
                                                                                                            addr146:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               if(_loc4_ || param1)
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                         addr182:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr286:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         break loop28;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr253);
                                                                                                }
                                                                                                §§goto(addr228);
                                                                                             }
                                                                                             §§goto(addr146);
                                                                                          }
                                                                                          §§goto(addr157);
                                                                                       }
                                                                                       §§goto(addr226);
                                                                                    }
                                                                                    §§goto(addr156);
                                                                                 }
                                                                                 §§goto(addr155);
                                                                              }
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break loop19;
                                                                                 }
                                                                                 §§goto(addr146);
                                                                                 §§push(true);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr222);
                                                                              }
                                                                              §§goto(addr182);
                                                                           }
                                                                           addr131:
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                     §§goto(addr50);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr222);
                                                                  }
                                                                  addr43:
                                                               }
                                                               §§goto(addr131);
                                                            }
                                                            continue loop12;
                                                            addr129:
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       §§goto(addr272);
                                    }
                                    §§goto(addr43);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr286);
                  }
               }
            }
            §§goto(addr249);
         }
         return false;
      }
      
      public function §>z§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:LevelObject = null;
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§8c§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               _loc4_ = this.§8c§[_loc3_] as LevelObject;
               if(!_loc6_)
               {
                  §§push(Boolean(_loc4_));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr325:
                                 while(true)
                                 {
                                    §§push(_loc4_.§"!7§());
                                    addr310:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                              addr324:
                           }
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc4_.§0o§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr251:
                                                                     §§push(param1);
                                                                     while(!(_loc6_ && this))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr310);
                                                                     addr251:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr289:
                                                                     while(_loc5_ || _loc2_)
                                                                     {
                                                                        §§push(_loc4_.§7!O§);
                                                                     }
                                                                     continue loop10;
                                                                     addr289:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr52:
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr55:
                                                                              §§push(int(§§pop()));
                                                                              if(_loc5_)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              addr133:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              continue loop29;
                                                                           }
                                                                        }
                                                                        §§goto(addr55);
                                                                     }
                                                                     §§goto(addr52);
                                                                  }
                                                                  addr45:
                                                                  if(true)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.§7!O§);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop().mTryToScream);
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        addr80:
                                                                        §§push(0);
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() <= §§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr151:
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr178:
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr187:
                                                                                             §§push(§§pop());
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                if(_loc6_ && _loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr213);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr113);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                      }
                                                                                                      addr288:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr113);
                                                                                                   }
                                                                                                   §§goto(addr289);
                                                                                                   §§goto(addr187);
                                                                                                }
                                                                                                addr287:
                                                                                             }
                                                                                             §§goto(addr113);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr269:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         if(!(_loc5_ || _loc2_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr287);
                                                                                                      §§goto(addr151);
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                   addr269:
                                                                                                }
                                                                                                §§goto(addr324);
                                                                                                §§goto(addr178);
                                                                                             }
                                                                                             §§goto(addr325);
                                                                                             addr266:
                                                                                          }
                                                                                          §§goto(addr325);
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              §§goto(addr80);
                                                                           }
                                                                           continue loop7;
                                                                           addr148:
                                                                        }
                                                                        if(_loc6_ && _loc2_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§push(§§pop() <= §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc5_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           addr113:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    addr122:
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                       }
                                                                                       §§goto(addr133);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr216:
                                                                                       while(_loc5_)
                                                                                       {
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          §§goto(addr325);
                                                                                          §§goto(addr122);
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                       addr216:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr135);
                                                                              }
                                                                              §§goto(addr45);
                                                                           }
                                                                           continue loop0;
                                                                           addr113:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr213:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr216);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr251);
                                                                              }
                                                                           }
                                                                           addr213:
                                                                        }
                                                                        §§goto(addr310);
                                                                        §§goto(addr213);
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                                  addr62:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().mTryToBlink);
                                                                  continue loop11;
                                                                  §§goto(addr62);
                                                               }
                                                            }
                                                            addr241:
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr241);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr325);
            }
            break;
         }
         return §§pop();
      }
      
      public function §]V§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:LevelObject = null;
         §§push(0);
         if(!(_loc5_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§8c§)
         {
            if(!_loc5_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_.§9!&§());
                                    loop7:
                                    while(_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc5_)
                                       {
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(§§pop());
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                continue loop2;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!(_loc6_ || _loc3_))
                                          {
                                             continue loop3;
                                          }
                                          if(§§pop())
                                          {
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             loop10:
                                             while(§§pop())
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   §§push(_loc1_);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         addr96:
                                                         §§push(int(§§pop()));
                                                      }
                                                      _loc1_ = §§pop();
                                                      addr98:
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr159:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§8r§());
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   §§goto(addr96);
                                                }
                                                §§goto(addr98);
                                             }
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr158);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr66);
                     }
                  }
               }
            }
            §§goto(addr159);
         }
         return _loc1_;
      }
      
      public function §9L§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:LevelObject = null;
         §§push(0);
         if(!(_loc6_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc3_:int = 0;
         for each(_loc2_ in this.§8c§)
         {
            if(!_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(!(_loc6_ && _loc1_))
               {
                  §§push(§§pop());
                  if(_loc5_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           addr83:
                           §§push(_loc2_.isTexture());
                           if(!(_loc6_ && this))
                           {
                              addr103:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr103);
                        }
                        §§push(_loc1_);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(§§pop() + 1);
                           if(_loc5_ || _loc3_)
                           {
                              addr122:
                              §§push(int(§§pop()));
                           }
                           _loc1_ = §§pop();
                           continue;
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr83);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelObject = null;
         var _loc2_:* = int(this.§8c§.length - 1);
         loop0:
         for(; _loc2_ >= 0; if(true)
         {
            continue;
         },§§goto(addr97))
         {
            _loc3_ = this.§8c§[_loc2_];
            if(_loc5_ || _loc3_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc3_.§"!7§());
                                 if(!_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc5_ || this)
                                          {
                                             if(!(_loc5_ || _loc2_))
                                             {
                                                continue loop3;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!(_loc5_ || this))
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(!(_loc4_ && param1))
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   addr97:
                                                   do
                                                   {
                                                      §§push(_loc3_.§0o§ > 0);
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop11;
                                                      }
                                                      addr114:
                                                   }
                                                   while(_loc5_ || param1);
                                                   
                                                   continue loop6;
                                                   addr71:
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             continue loop4;
                                             addr181:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr123:
                                                while(true)
                                                {
                                                   §§push(_loc3_.§7!O§);
                                                   §§push(LevelObjectRenderer.§9!g§);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(§§pop() * param1);
                                                   }
                                                   §§pop().mTryToScream = §§pop();
                                                   addr138:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr123:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                }
                                                _loc2_ = §§pop();
                                                if(!(_loc5_ || this))
                                                {
                                                   continue;
                                                }
                                                if(_loc5_ || this)
                                                {
                                                   break;
                                                }
                                                §§goto(addr123);
                                             }
                                             §§goto(addr71);
                                          }
                                       }
                                    }
                                    addr146:
                                 }
                                 §§goto(addr181);
                              }
                           }
                        }
                        §§goto(addr146);
                     }
                  }
               }
            }
            §§goto(addr123);
         }
      }
      
      public function §@!W§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§8c§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(_loc4_)
            {
               §§push(Boolean(_loc2_));
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr169:
                           while(true)
                           {
                              §§push(_loc2_.§'W§());
                              addr116:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr100:
                                 if(_loc4_ || _loc2_)
                                 {
                                    return §§pop();
                                 }
                              }
                           }
                        }
                        addr168:
                     }
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  while(!(_loc3_ && _loc1_))
                  {
                     §§pop();
                     §§goto(addr154);
                  }
               }
            }
            §§goto(addr154);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§8c§.length - 1;
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(!_loc4_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr323:
                              while(true)
                              {
                                 §§push(_loc2_.§0o§);
                                 addr304:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr305:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr306:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                           }
                           addr322:
                        }
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              §§push(§§pop());
                              loop11:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop12:
                                 while(_loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop34:
                                             while(true)
                                             {
                                                §§push(_loc2_.§`O§());
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      §§push(§§pop());
                                                      loop19:
                                                      while(_loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop20:
                                                         for(; !(_loc4_ && this); if(!_loc3_)
                                                         {
                                                            continue;
                                                         },§§goto(addr161),§§push(Boolean(§§pop())))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop30:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§&E§());
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        loop32:
                                                                        while(_loc3_)
                                                                        {
                                                                           addr218:
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§'W§());
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc4_ && _loc2_)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                addr161:
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(_loc4_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr118:
                                                                                                               return false;
                                                                                                            }
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_.§17§);
                                                                                                               addr241:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §5s§.§#z§);
                                                                                                                  addr245:
                                                                                                                  addr314:
                                                                                                                  while(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr40:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc1_);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - 1);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr50:
                                                                                                                           _loc1_ = §§pop();
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                        §§goto(addr241);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr50);
                                                                                                               }
                                                                                                               if(_loc3_ || this)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     while(false)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_.§0o§);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc3_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr102:
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 if(_loc3_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 addr166:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_ && this)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 §§goto(addr245);
                                                                                                                              }
                                                                                                                              §§goto(addr305);
                                                                                                                           }
                                                                                                                           §§goto(addr304);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                     addr62:
                                                                                                                  }
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc3_ || _loc2_))
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && this))
                                                                                                                     {
                                                                                                                        §§goto(addr64);
                                                                                                                     }
                                                                                                                     §§goto(addr323);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr222:
                                                                                                                     §§push(false);
                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc3_ || _loc1_)
                                                                                                                        {
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        §§goto(addr306);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr182:
                                                                                                                  §§pop();
                                                                                                               }
                                                                                                               §§goto(addr304);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc4_ && _loc3_)
                                                                                                               {
                                                                                                                  break loop32;
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            §§goto(addr322);
                                                                                                            §§goto(addr222);
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      §§goto(addr40);
                                                                                                   }
                                                                                                   continue loop34;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr222);
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§goto(addr166);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr222);
                                                                              }
                                                                              §§goto(addr218);
                                                                           }
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     §§goto(addr222);
                                                                  }
                                                               }
                                                               addr299:
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop12;
                                                   }
                                                   §§goto(addr299);
                                                }
                                             }
                                          }
                                          §§goto(addr40);
                                       }
                                       addr265:
                                    }
                                    §§goto(addr314);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr62);
         }
         return true;
      }
      
      public function §4J§(param1:Boolean = false) : LevelObject
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:LevelObject = null;
         if(_loc7_ || _loc3_)
         {
            §§push(this.isPigsAlive());
            if(!(_loc8_ && this))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc8_ && _loc2_))
               {
                  §§goto(addr46);
               }
            }
            var _loc2_:int = this.§8c§.length;
            §§push(1);
            if(!_loc8_)
            {
               §§push(int(§§pop() + Math.random() * this.§>z§(param1)));
            }
            var _loc3_:* = §§pop();
            §§push(0);
            if(_loc7_ || this)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc4_);
               loop1:
               while(true)
               {
                  §§push(_loc3_);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        return null;
                     }
                     §§push(0);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(int(§§pop()));
                        if(!(_loc7_ || _loc2_))
                        {
                           continue loop1;
                        }
                     }
                     _loc5_ = §§pop();
                     if(_loc8_)
                     {
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           continue loop1;
                        }
                        §§push(_loc2_);
                        if(!(_loc7_ || _loc2_))
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(_loc7_ || _loc3_)
                           {
                              break loop2;
                           }
                        }
                        else
                        {
                           _loc6_ = this.§8c§[_loc5_];
                           if(_loc7_ || this)
                           {
                              §§push(Boolean(_loc6_));
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr401:
                                             while(true)
                                             {
                                                §§push(_loc6_.§"!7§());
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr327:
                                                   while(_loc7_ || param1)
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                          addr400:
                                       }
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop15:
                                                         while(_loc7_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc6_.§0o§);
                                                               loop41:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  loop42:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc8_ && _loc2_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop39:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          if(_loc7_ || _loc2_)
                                                                                          {
                                                                                             addr128:
                                                                                             §§push(int(§§pop()));
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                if(!(_loc8_ && _loc2_))
                                                                                                {
                                                                                                   if(!(_loc8_ && _loc2_))
                                                                                                   {
                                                                                                      addr149:
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         if(!(_loc8_ && this))
                                                                                                         {
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               addr168:
                                                                                                               do
                                                                                                               {
                                                                                                                  if(§§pop() < _loc3_)
                                                                                                                  {
                                                                                                                     continue loop39;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(!_loc7_);
                                                                                                               
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  return _loc6_;
                                                                                                               }
                                                                                                               addr254:
                                                                                                               while(_loc7_)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr327);
                                                                                                            }
                                                                                                            addr326:
                                                                                                         }
                                                                                                         §§goto(addr327);
                                                                                                      }
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ || _loc3_)
                                                                                                         {
                                                                                                            if(_loc7_ || _loc3_)
                                                                                                            {
                                                                                                               continue loop39;
                                                                                                            }
                                                                                                            addr306:
                                                                                                            §§push(_loc6_.§7!O§);
                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(§§pop().mTryToScream);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(_loc8_ && param1)
                                                                                                                  {
                                                                                                                     continue loop41;
                                                                                                                  }
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        addr227:
                                                                                                                        if(_loc7_ || param1)
                                                                                                                        {
                                                                                                                           addr235:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          break loop30;
                                                                                                                                       }
                                                                                                                                       continue loop39;
                                                                                                                                    }
                                                                                                                                    addr241:
                                                                                                                                 }
                                                                                                                                 §§goto(addr400);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              addr265:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              if(_loc8_ && _loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr286:
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          loop37:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc7_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                §§goto(addr306);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr369:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   addr370:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.§7!O§);
                                                                                                                                                      break loop37;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr369:
                                                                                                                                             }
                                                                                                                                             §§goto(addr227);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().mTryToBlink);
                                                                                                                                             addr261:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                addr262:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop42;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr265);
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                }
                                                                                                                                                continue loop42;
                                                                                                                                             }
                                                                                                                                             §§goto(addr306);
                                                                                                                                          }
                                                                                                                                          addr298:
                                                                                                                                          addr260:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          addr359:
                                                                                                                                          while(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc8_ && this)
                                                                                                                                             {
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr369);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       addr358:
                                                                                                                                    }
                                                                                                                                    §§goto(addr241);
                                                                                                                                 }
                                                                                                                                 §§goto(addr359);
                                                                                                                              }
                                                                                                                              §§goto(addr286);
                                                                                                                           }
                                                                                                                           §§goto(addr327);
                                                                                                                        }
                                                                                                                        §§goto(addr298);
                                                                                                                     }
                                                                                                                     §§goto(addr235);
                                                                                                                  }
                                                                                                                  §§goto(addr262);
                                                                                                               }
                                                                                                               §§goto(addr261);
                                                                                                            }
                                                                                                            §§goto(addr260);
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr149);
                                                                                                      }
                                                                                                      while(!(_loc8_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                            addr252:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               addr253:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  §§goto(addr254);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr370);
                                                                                                   }
                                                                                                   §§goto(addr252);
                                                                                                }
                                                                                                §§goto(addr253);
                                                                                             }
                                                                                             §§goto(addr168);
                                                                                          }
                                                                                          §§goto(addr128);
                                                                                       }
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                    §§goto(addr128);
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              §§goto(addr326);
                                                                           }
                                                                        }
                                                                        §§goto(addr327);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                   }
                                                   §§goto(addr324);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr383);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         addr46:
         return null;
      }
      
      public function §<o§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§8c§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               §§push(0);
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(_loc1_);
                              if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             addr92:
                                             §§push(this.§"!>§.slingshot.§<o§());
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc4_)
                                                {
                                                   addr98:
                                                   §§push(int(§§pop()));
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc4_ && this)
                                                      {
                                                         addr180:
                                                         §§push(§§pop() + (this.§8c§[_loc2_] as LevelObject).§8!&§.score);
                                                         break;
                                                      }
                                                      addr105:
                                                      _loc1_ = §§pop();
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc4_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               break loop0;
                                                            }
                                                            addr137:
                                                            while(true)
                                                            {
                                                               §§push(LevelMain.§!!R§.getValue());
                                                               addr141:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop() * int((this.§8c§[_loc2_] as LevelObject).§]!3§));
                                                                  addr163:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break loop15;
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        addr167:
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           addr109:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    addr120:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       break loop9;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr119:
                                                                              }
                                                                              §§goto(addr120);
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break;
                                                         §§goto(addr105);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr183:
                                                            while(true)
                                                            {
                                                               if((this.§8c§[_loc2_] as LevelObject).§`O§())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr137);
                                                                  }
                                                                  addr136:
                                                               }
                                                               §§goto(addr109);
                                                            }
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr182:
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         §§goto(addr183);
                                                         continue loop10;
                                                      }
                                                   }
                                                   addr98:
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr106);
                     }
                     else
                     {
                        §§push(_loc1_);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr141);
               }
               §§goto(addr92);
            }
            §§goto(addr98);
         }
         return §§pop();
      }
      
      public function §76§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(param1.§'W§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param2.§'W§());
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr94:
                                    if(_loc3_ || param2)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(true);
                                                   break;
                                                }
                                                addr167:
                                                §§push(true);
                                             }
                                             else
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr24);
                                                      }
                                                      addr118:
                                                   }
                                                   §§goto(addr119);
                                                }
                                                §§goto(addr158);
                                             }
                                             §§goto(addr168);
                                          }
                                          addr24:
                                          while(true)
                                          {
                                             §§push(false);
                                             if(_loc4_)
                                             {
                                                addr168:
                                                break loop15;
                                             }
                                             if(_loc3_)
                                             {
                                                addr30:
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr37:
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   addr166:
                                                   while(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1.§]@§());
                                                         addr122:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc3_ || param1)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§goto(addr167);
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc4_ && this)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      continue loop15;
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr158:
                                                      while(_loc3_)
                                                      {
                                                         §§push(param2.§]@§());
                                                         if(_loc4_ && param1)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc3_ || param2)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr30);
                                                }
                                                §§goto(addr37);
                                             }
                                             while(true)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(_loc4_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr94);
                                                }
                                                else
                                                {
                                                   §§goto(addr157);
                                                }
                                             }
                                             if(_loc3_)
                                             {
                                                §§goto(addr170);
                                             }
                                             continue loop4;
                                          }
                                          return §§pop();
                                       }
                                       return §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr166);
                        }
                        addr170:
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      public function §#!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.mSardineCanAdded = true;
         }
         do
         {
            this.§6-§ = 0;
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §%v§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(_loc21_)
         {
            §§push(this.mMightyEagleAdded);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.mSardineCanAdded);
                  while(true)
                  {
                     if(!_loc20_)
                     {
                        §§push(Boolean(§§pop()));
                        loop2:
                        while(true)
                        {
                           if(_loc21_ || this)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    if(_loc21_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(_loc21_ || param1)
                                             {
                                                §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   if(_loc21_ || param2)
                                                   {
                                                      §§push(this.mMightyEagleTimer);
                                                      if(_loc21_ || param2)
                                                      {
                                                         if(!(_loc20_ && this))
                                                         {
                                                            §§push(§§pop() == this.§&!U§.MIGHTY_EAGLE_WAIT_TIME);
                                                            if(!_loc20_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr229:
                                                               while(true)
                                                               {
                                                                  if(_loc21_ || param1)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param2.§3g§());
                                                                        if(!_loc20_)
                                                                        {
                                                                           if(_loc21_)
                                                                           {
                                                                              addr118:
                                                                              §§push(Boolean(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 addr120:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc21_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                this.mMightyEagleTimer = 0;
                                                                                                continue loop6;
                                                                                             }
                                                                                             addr361:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.§?O§());
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr364:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr365:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         addr366:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr368:
                                                                                                                  loop32:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param2.§"!7§());
                                                                                                                     addr339:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr367:
                                                                                                            }
                                                                                                            addr340:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr341:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr342:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        §§push(param2.§]!3§);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * 2);
                                                                                                                        }
                                                                                                                        §§push(§§pop().applyDamage(§§pop(),true,true,true,false));
                                                                                                                        addr354:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr355:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 addr334:
                                                                                                                                 return true;
                                                                                                                              }
                                                                                                                              §§goto(addr368);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr342:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param2.§?O§());
                                                                                                                        addr311:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr308:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr339);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr237);
                                                                                       }
                                                                                       addr121:
                                                                                    }
                                                                                    §§goto(addr24);
                                                                                 }
                                                                                 §§goto(addr118);
                                                                              }
                                                                           }
                                                                           §§goto(addr205);
                                                                        }
                                                                        §§goto(addr120);
                                                                     }
                                                                     addr111:
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr371);
                                                   }
                                                   §§goto(addr355);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr364);
                                             addr179:
                                             if(_loc21_ || _loc3_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr197);
                                                }
                                                addr195:
                                             }
                                          }
                                          addr193:
                                       }
                                       §§goto(addr24);
                                    }
                                    §§goto(addr366);
                                 }
                                 if(!(_loc21_ || param1))
                                 {
                                    continue;
                                 }
                                 §§goto(addr220);
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§goto(addr312);
                        }
                     }
                     §§goto(addr367);
                     if(_loc20_ && _loc3_)
                     {
                        continue;
                     }
                     if(!(_loc20_ && this))
                     {
                        if(!(_loc20_ && param2))
                        {
                           if(_loc21_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc20_)
                                 {
                                    if(_loc21_)
                                    {
                                       §§goto(addr81);
                                       §§push(false);
                                    }
                                    §§goto(addr133);
                                 }
                                 if(_loc21_ || param2)
                                 {
                                    if(_loc21_)
                                    {
                                       if(!(_loc20_ && param2))
                                       {
                                          if(!_loc20_)
                                          {
                                             if(_loc21_ || param2)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr111);
                                                }
                                                addr369:
                                                §§goto(addr371);
                                                §§push(Number(10));
                                             }
                                             §§goto(addr342);
                                          }
                                          §§goto(addr307);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr229);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr369);
                           }
                           §§goto(addr326);
                        }
                        §§goto(addr280);
                     }
                     §§goto(addr275);
                  }
               }
               §§goto(addr361);
            }
         }
         §§goto(addr342);
      }
      
      public function §'!7§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelObject = null;
         var _loc1_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_ == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§&U§(_loc1_,true,true,true);
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       addr46:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                             if(!_loc3_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                          }
                                          _loc1_ = §§pop();
                                          if(_loc4_ || _loc1_)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       addr148:
                                       if(_loc4_)
                                       {
                                          if(true)
                                          {
                                             break loop4;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc2_.§"!7§());
                                             if(!(_loc4_ || _loc1_))
                                             {
                                                break;
                                             }
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             addr147:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop7;
                                             }
                                          }
                                          continue loop4;
                                          addr76:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr76);
                                       }
                                    }
                                 }
                                 §§goto(addr46);
                              }
                              continue loop0;
                              addr107:
                           }
                        }
                     }
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr148);
         }
      }
      
      public function §8h§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelObject = null;
         var _loc1_:* = int(this.§8c§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc2_ == null);
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr132:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              this.§&U§(_loc1_,true,true,true);
                           }
                           loop7:
                           while(!_loc4_)
                           {
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc3_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                 }
                                 _loc1_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    while(false)
                                    {
                                       §§goto(addr73);
                                    }
                                    continue loop0;
                                    addr71:
                                 }
                                 continue loop7;
                              }
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr45);
                     }
                  }
               }
            }
            §§goto(addr71);
         }
      }
      
      public function §[!=§() : int
      {
         return this.§8c§.length;
      }
      
      public function §5!H§(param1:LevelModel) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:LevelObject = null;
         var _loc5_:§+H§ = null;
         var _loc6_:§3V§ = null;
         var _loc7_:§>!G§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc9_ && param1))
            {
               if(§§pop() >= this.§8c§.length)
               {
                  §§push(Number(0));
                  break;
               }
               _loc4_ = this.§8c§[_loc2_];
               if(!(_loc9_ && param1))
               {
                  §§push(_loc4_.§#!S§);
                  if(_loc8_ || param1)
                  {
                     §§push(!§§pop());
                     if(_loc8_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc8_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        else
                        {
                           addr74:
                           if(_loc4_.isGround())
                           {
                              if(!(_loc8_ || _loc2_))
                              {
                                 continue;
                              }
                              addr82:
                           }
                           else
                           {
                              _loc5_ = new §+H§();
                              if(!(_loc9_ && this))
                              {
                                 _loc5_.angle = _loc4_.§=Y§();
                                 while(true)
                                 {
                                    _loc5_.id = _loc4_.§#>§;
                                    while(_loc8_ || _loc2_)
                                    {
                                       _loc5_.x = _loc4_.§9f§().GetPosition().x;
                                       while(!(_loc9_ && this))
                                       {
                                          _loc5_.y = _loc4_.§9f§().GetPosition().y;
                                          while(_loc8_)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                _loc5_.uniqueID = _loc4_.uniqueID;
                                                do
                                                {
                                                   param1.addObject(_loc5_);
                                                }
                                                while(!(_loc8_ || _loc2_));
                                                
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                while(false)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(_loc2_);
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      addr186:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc2_ = §§pop();
                                                   continue loop0;
                                                }
                                                §§goto(addr186);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr109);
                           }
                        }
                        §§goto(addr170);
                     }
                  }
                  §§goto(addr74);
               }
               §§goto(addr82);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            while(_loc3_ < this.§=![§.length)
            {
               _loc7_ = this.§=![§[_loc3_];
               _loc6_ = new §3V§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§>!H§,_loc7_.§in §,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§3-§,_loc7_.motorSpeed,_loc7_.§=!h§,_loc7_.maxTorque);
               if(_loc8_)
               {
                  param1.§&8§(_loc6_);
                  if(!_loc9_)
                  {
                     §§push(_loc3_);
                     if(_loc8_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc3_ = §§pop();
                  }
               }
            }
         }
      }
      
      public function §5!&§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            if(this.§8c§.length <= _loc1_)
            {
               if(!_loc2_)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  addr87:
                  §§push(_loc1_);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                     if(_loc3_ || _loc2_)
                     {
                        addr103:
                        §§push(int(§§pop()));
                     }
                     _loc1_ = §§pop();
                     addr105:
                     continue;
                     addr105:
                  }
                  §§goto(addr103);
               }
               else
               {
                  addr61:
                  if(_loc3_ || _loc3_)
                  {
                     continue;
                  }
               }
               §§goto(addr105);
            }
            else if(this.§8c§[_loc1_].isGround())
            {
               §§goto(addr87);
            }
            else
            {
               this.§"!A§(this.§8c§[_loc1_]);
               §§goto(addr61);
            }
            §§goto(addr87);
         }
      }
      
      public function §!!K§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(!(_loc6_ && param1))
               {
                  if(§§pop() >= this.§8c§.length)
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        break;
                     }
                     addr110:
                  }
                  else if(this.§8c§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     if(_loc5_ || param2)
                     {
                        _loc3_.push(this.§8c§[_loc4_]);
                     }
                     §§goto(addr110);
                  }
                  §§push(_loc4_);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(Number(§§pop()));
            }
            _loc4_ = §§pop();
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§-R§ = param1;
            if(!_loc3_)
            {
               addr29:
               this.§[B§(param1);
            }
            var _loc2_:* = Number(0);
            while(true)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(§§pop() >= this.§8c§.length)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr102:
                        this.§8c§[_loc2_].sprite.visible = !this.§-R§;
                        while(true)
                        {
                           addr67:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr90:
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                    addr90:
                                 }
                              }
                              §§goto(addr90);
                           }
                        }
                        addr111:
                     }
                     while(!_loc4_)
                     {
                        §§goto(addr111);
                     }
                     continue;
                  }
                  if(this.§8c§[_loc2_].isTexture())
                  {
                     §§goto(addr102);
                  }
                  §§goto(addr67);
               }
               §§goto(addr90);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§"R§ = param1;
         }
      }
      
      public function §+!]§() : Boolean
      {
         return this.§"R§;
      }
      
      public function §]D§() : int
      {
         return this.§<D§;
      }
      
      public function §!!J§() : int
      {
         return this.§+R§;
      }
      
      public function §2z§(param1:String) : LevelObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:LevelObject = null;
         §§push(0);
         if(_loc5_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < this.§8c§.length)
         {
            _loc3_ = this.§8c§[_loc2_] as LevelObject;
            if(_loc5_ || _loc2_)
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(_loc5_)
                  {
                     return _loc3_;
                  }
               }
            }
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() + 1);
               if(!_loc4_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc2_ = §§pop();
         }
         return null;
      }
   }
}
