package §`!j§
{
   import § !Y§.§9k§;
   import § !Y§.§[!%§;
   import §"!&§.§="A§;
   import §@w§.§#v§;
   import §@w§.§%![§;
   import §@w§.§&"<§;
   import §@w§.§1o§;
   import §@w§.§[!!§;
   import §@w§.§`a§;
   import flash.geom.Point;
   
   public class §2!7§ extends §#b§
   {
      
      private static const §2"8§:Number = 4.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §2"8§ = 4;
         }
      }
      
      protected var §5!d§:Number = 4.0;
      
      protected var §"!x§:Vector.<§&"<§> = null;
      
      protected var §6"6§:§[!%§;
      
      protected var §92§:Number = 0.0;
      
      protected var §"!k§:Boolean;
      
      protected var §"!!§:Object;
      
      public function §2!7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"!!§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§"!x§ = new Vector.<§&"<§>();
                  addr54:
                  while(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public static function §<!P§(param1:String) : §2!7§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2!7§ = new §2!7§();
         if(!(_loc3_ && _loc2_))
         {
            _loc2_.§[!j§(param1);
         }
         return _loc2_;
      }
      
      public function get § H§() : int
      {
         return this.§"!x§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§"!k§;
      }
      
      override public function get worldGravity() : Number
      {
         return this.§92§;
      }
      
      public function §!"?§(param1:int) : §&"<§
      {
         return this.§"!x§[param1];
      }
      
      protected function §[!j§(param1:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(§9k§.§4l§(param1));
         if(_loc9_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = §9k§.§-^§(_loc2_);
         if(!(_loc10_ && param1))
         {
            §;!2§ = _loc3_.theme;
            while(true)
            {
               §>"8§ = new Vector.<§1U§>();
               while(_loc9_)
               {
                  while(true)
                  {
                     mBirds = new Vector.<§%![§>();
                     do
                     {
                        §-`§ = new Vector.<§`a§>();
                     }
                     while(_loc10_);
                     
                     if(_loc10_ && _loc3_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     var _loc4_:Number = _loc3_.physicsToWorld;
                     if(_loc9_)
                     {
                        §§push(this);
                        if(_loc9_ || this)
                        {
                           if(_loc3_.gravityForceMultiplier !== undefined)
                           {
                              addr95:
                              §§push(Number(_loc3_.gravityForceMultiplier));
                              if(_loc10_ && this)
                              {
                              }
                           }
                           else
                           {
                              §§push(§2"8§);
                              if(!_loc10_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§pop().§5!d§ = §§pop();
                           if(!_loc10_)
                           {
                              if(_loc3_.worldGravity)
                              {
                                 if(!_loc10_)
                                 {
                                    this.§92§ = _loc3_.worldGravity;
                                    addr132:
                                    var _loc5_:§1U§ = this.§#"F§(_loc3_.castleCameraData,_loc4_,§1U§.CASTLE);
                                    var _loc6_:§1U§ = this.§#"F§(_loc3_.birdCameraData,_loc4_,§1U§.SLINGSHOT);
                                    if(_loc9_ || _loc3_)
                                    {
                                       §>"8§.push(_loc5_);
                                       if(!(_loc10_ && param1))
                                       {
                                          §>"8§.push(_loc6_);
                                       }
                                    }
                                    var _loc7_:Vector.<String> = this.§2e§(_loc3_.world,_loc2_);
                                    if(!_loc10_)
                                    {
                                       this.§6!F§(_loc3_.world,_loc7_);
                                    }
                                    var _loc8_:Vector.<String> = this.§ get§(_loc3_.joints,_loc2_);
                                    if(!_loc10_)
                                    {
                                       this.§="1§(_loc3_.joints,_loc8_);
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc3_.slingshotX)
                                          {
                                             if(!_loc10_)
                                             {
                                                §4,§ = _loc3_.slingshotX;
                                             }
                                             while(true)
                                             {
                                             }
                                             addr238:
                                          }
                                          while(_loc3_.slingshotY)
                                          {
                                             if(_loc10_)
                                             {
                                                break;
                                             }
                                             addr217:
                                             if(!_loc10_)
                                             {
                                                continue loop5;
                                             }
                                             §§goto(addr238);
                                          }
                                          return;
                                       }
                                    }
                                    §^!b§ = _loc3_.slingshotY;
                                    §§goto(addr217);
                                 }
                              }
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr132);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr54);
         }
      }
      
      private function §2e§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§#N§(param1,param2,"world");
      }
      
      private function § get§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§#N§(param1,param2,"joints");
      }
      
      private function §#N§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc5_:§%!S§ = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = 0;
         var _loc4_:Array = [];
         §§push(param2);
         §§push("\"" + param3);
         if(!(_loc14_ && param1))
         {
            §§push(§§pop() + "\"");
         }
         var _loc6_:int;
         §§push(_loc6_ = §§pop().indexOf(§§pop()));
         if(_loc13_)
         {
            if(§§pop() >= 0)
            {
               if(!_loc14_)
               {
                  §§push(param2);
                  if(_loc13_)
                  {
                     §§push(§§pop().substring(_loc6_));
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr61);
            }
            §§goto(addr139);
         }
         addr61:
         var _loc11_:int = 0;
         var _loc12_:* = param1;
         while(§§hasnext(_loc12_,_loc11_))
         {
            §§push(§§nextname(_loc11_,_loc12_));
            if(!_loc14_)
            {
               _loc9_ = §§pop();
               if(_loc13_)
               {
                  addr77:
                  §§push(_loc8_);
                  §§push("\"" + _loc9_);
                  if(_loc13_ || param2)
                  {
                     §§push(§§pop() + "\"");
                  }
                  §§push(int(§§pop().indexOf(§§pop())));
                  if(_loc13_)
                  {
                     §§push(_loc10_ = §§pop());
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
               }
               (_loc5_ = new §%!S§()).name = _loc9_;
               if(_loc13_)
               {
                  _loc5_.index = _loc10_;
                  if(!(_loc14_ && this))
                  {
                     _loc4_.push(_loc5_);
                  }
               }
               continue;
            }
            §§goto(addr77);
         }
         if(_loc13_ || param2)
         {
            addr139:
            _loc4_.sortOn("index",Array.NUMERIC);
         }
         var _loc7_:Vector.<String> = new Vector.<String>();
         if(_loc13_)
         {
            _loc11_ = 0;
            if(!_loc14_)
            {
               for each(_loc5_ in _loc4_)
               {
                  if(!(_loc14_ && param3))
                  {
                     _loc7_.push(_loc5_.name);
                  }
               }
            }
         }
         return _loc7_;
      }
      
      private function §6!F§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(!_loc9_)
         {
            if(param1.ground)
            {
               if(_loc8_)
               {
                  this.§"!k§ = true;
               }
            }
         }
         var _loc3_:int = 1;
         loop0:
         for each(_loc4_ in param2)
         {
            §§push(Boolean((_loc5_ = param1[_loc4_]).startNumber));
            if(_loc8_)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     §§pop();
                     if(!_loc9_)
                     {
                        §§push(_loc5_.name.indexOf("Bird") >= 0);
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr139:
                              this.§9"C§(_loc5_);
                           }
                           else
                           {
                              if(!_loc5_.radius)
                              {
                                 §§push(this.§"!]§(_loc5_,_loc3_));
                                 if(_loc8_)
                                 {
                                    addr83:
                                    if(§§pop())
                                    {
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          _loc3_++;
                                       }
                                       if(!_loc9_)
                                       {
                                          if(_loc9_ && param2)
                                          {
                                             addr109:
                                             if(_loc8_ || param2)
                                             {
                                                if(!_loc9_)
                                                {
                                                   this.§+!t§(_loc5_);
                                                }
                                                else
                                                {
                                                   §§goto(addr139);
                                                }
                                             }
                                          }
                                          if(false)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                          break;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue;
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr109);
                        }
                        continue;
                        addr128:
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr128);
         }
      }
      
      private function §9"C§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%![§ = new §%![§();
         if(_loc4_)
         {
            _loc2_.x = param1.x;
            loop0:
            while(true)
            {
               _loc2_.y = param1.y;
               loop1:
               while(true)
               {
                  _loc2_.angle = param1.angle;
                  loop2:
                  while(true)
                  {
                     _loc2_.type = param1.definition;
                     loop3:
                     do
                     {
                        _loc2_.index = param1.startNumber - 1;
                        loop4:
                        while(_loc2_.index == 0)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 continue loop2;
                              }
                              continue;
                              continue;
                           }
                           addr109:
                           loop5:
                           while(!_loc3_)
                           {
                              §§push(§§findproperty(§^!b§));
                              §§push(_loc2_.y);
                              if(_loc4_)
                              {
                                 §§push(§§pop() - 8.5);
                              }
                              §§pop().§^!b§ = §§pop();
                              while(!_loc3_)
                              {
                                 §9!o§ = _loc2_.angle;
                                 while(true)
                                 {
                                    break loop4;
                                 }
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop5;
                                    continue loop5;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           mBirds.push(_loc2_);
                           if(_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr34);
                        }
                     }
                     while(!(_loc4_ || this));
                     
                  }
               }
            }
         }
      }
      
      private function §+!t§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&"<§ = new §&"<§();
         if(_loc4_ || this)
         {
            _loc2_.x = param1.x;
            loop0:
            while(true)
            {
               _loc2_.y = param1.y;
               while(true)
               {
                  _loc2_.shape = new §="A§(param1.radius);
                  while(true)
                  {
                     _loc2_.type = param1.definition;
                     addr109:
                     while(!_loc3_)
                     {
                        _loc2_.angle = this.§69§(param1.angle);
                        while(true)
                        {
                           _loc2_.§&G§ = param1.gravitationMinForce;
                           while(!_loc3_)
                           {
                              _loc2_.§1^§ = param1.gravitationMaxForce;
                              while(_loc4_ || _loc2_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  addr42:
                  if(_loc4_ || param1)
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §3!r§(param1:Object) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
            {
               if(_loc2_ || _loc3_)
               {
                  addr47:
                  §§push(true);
                  if(!(_loc3_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr66:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr66);
         }
         §§goto(addr47);
      }
      
      private function §"!]§(param1:Object, param2:int) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§`a§ = null;
         var _loc4_:§[!!§ = null;
         var _loc5_:§#v§ = null;
         if(!_loc6_)
         {
            §§push(this.§3!r§(param1));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     addr138:
                     return false;
                  }
                  addr213:
                  (_loc5_ = new §#v§()).shotPattern = param1.shotPattern;
                  _loc3_ = _loc5_;
                  addr229:
                  _loc3_.x = param1.x;
                  if(!(_loc6_ && param2))
                  {
                     _loc3_.y = param1.y;
                     while(true)
                     {
                        _loc3_.angle = this.§69§(param1.angle);
                        addr362:
                        loop11:
                        while(true)
                        {
                           _loc3_.type = param1.definition;
                           loop12:
                           while(true)
                           {
                              _loc3_.id = param2;
                              loop13:
                              while(true)
                              {
                                 if(param1.themeTexture)
                                 {
                                    while(true)
                                    {
                                       _loc3_.themeTexture = param1.themeTexture;
                                       addr333:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr329:
                                 }
                                 while(true)
                                 {
                                    §-`§.push(_loc3_);
                                    continue loop13;
                                    §§goto(addr333);
                                 }
                                 addr269:
                                 if(_loc7_)
                                 {
                                    continue loop11;
                                 }
                                 continue loop12;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr246);
                  }
               }
               else
               {
                  while(true)
                  {
                     §§push(param1.explosionRadius == undefined);
                     loop1:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(param1.explosionForce == undefined);
                                          if(!(_loc7_ || this))
                                          {
                                             break;
                                             addr96:
                                          }
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break loop8;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§pop();
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(param1.explosionDamageRadius == undefined);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc6_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               addr39:
                                                               §§push(§§pop());
                                                               if(_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop5;
                                                      }
                                                      (_loc4_ = new §[!!§()).explosionRadius = param1.explosionRadius;
                                                      if(!_loc6_)
                                                      {
                                                         _loc4_.explosionForce = param1.explosionForce;
                                                      }
                                                      loop21:
                                                      while(true)
                                                      {
                                                         addr185:
                                                         addr203:
                                                         while(true)
                                                         {
                                                            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
                                                            continue loop21;
                                                         }
                                                         _loc3_ = _loc4_;
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                   }
                                                   §§goto(addr39);
                                                }
                                                if(_loc7_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      break loop6;
                                                   }
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      break loop6;
                                                   }
                                                   continue;
                                                }
                                                continue loop3;
                                             }
                                             addr151:
                                             break loop6;
                                          }
                                          continue loop2;
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§goto(addr155);
                                          }
                                          else
                                          {
                                             §§goto(addr213);
                                          }
                                       }
                                       else
                                       {
                                          if(param1.shotPattern != undefined)
                                          {
                                             §§goto(addr213);
                                          }
                                          else
                                          {
                                             _loc3_ = new §`a§();
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                              }
                              §§goto(addr96);
                           }
                        }
                     }
                  }
               }
               §§goto(addr213);
            }
            §§goto(addr151);
         }
         §§goto(addr213);
      }
      
      private function §="1§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§1o§ = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Boolean = false;
         var _loc18_:Number = NaN;
         var _loc19_:Boolean = false;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:int = 0;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         if(_loc29_ || _loc3_)
         {
            if(!param1)
            {
               if(_loc29_)
               {
                  return;
               }
            }
         }
         for each(_loc3_ in param2)
         {
            _loc5_ = (_loc4_ = param1[_loc3_]).type;
            _loc6_ = new Point(_loc4_.x1,_loc4_.y1);
            _loc7_ = new Point(_loc4_.x2,_loc4_.y2);
            _loc8_ = null;
            if(!(_loc28_ && this))
            {
               §§push(_loc4_.end1);
               while(true)
               {
                  _loc9_ = §§pop();
                  while(true)
                  {
                     §§push(_loc4_.end2);
                     if(!_loc29_)
                     {
                        break;
                     }
                     _loc10_ = §§pop();
                     while(true)
                     {
                        §§push(this.§6"6§);
                        loop4:
                        while(true)
                        {
                           §§push(_loc9_);
                           addr452:
                           while(true)
                           {
                              §§push(int(§§pop()[§§pop()]));
                              addr454:
                              while(true)
                              {
                                 _loc11_ = §§pop();
                                 continue loop4;
                              }
                           }
                        }
                        if(!(_loc29_ || this))
                        {
                           continue;
                        }
                        §§goto(addr197);
                     }
                  }
               }
            }
            §§goto(addr158);
         }
      }
      
      private function §#"F§(param1:Object, param2:Number, param3:String) : §1U§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc4_:§1U§ = new §1U§();
         var _loc5_:Object = null;
         if(!_loc11_)
         {
            if(param1.ipad)
            {
               addr29:
               _loc5_ = param1.ipad;
            }
            else
            {
               _loc5_ = param1.iphone;
            }
            var _loc6_:Number = _loc5_.screenWidth;
            var _loc7_:Number = _loc5_.screenHeight;
            var _loc8_:Number = _loc5_.sx;
            var _loc9_:Number = _loc5_.px;
            var _loc10_:Number = _loc5_.py;
            if(!_loc11_)
            {
               §§push(_loc4_);
               §§push(_loc9_);
               if(!_loc11_)
               {
                  §§push(§§pop() / param2);
               }
               §§pop().x = §§pop();
               while(true)
               {
                  §§push(_loc4_);
                  §§push(_loc10_);
                  if(!_loc11_)
                  {
                     §§push(§§pop() / param2);
                  }
                  §§pop().y = §§pop();
                  while(true)
                  {
                     §§push(_loc4_);
                     §§push(_loc9_);
                     if(_loc12_ || this)
                     {
                        §§push(0.5);
                        if(_loc12_)
                        {
                           §§push(_loc6_);
                           if(_loc12_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc11_ && this))
                              {
                                 addr256:
                                 §§push(§§pop() / _loc8_);
                                 if(!_loc11_)
                                 {
                                    addr259:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc11_)
                                    {
                                       addr263:
                                       §§push(§§pop() / param2);
                                    }
                                    §§pop().left = §§pop();
                                    continue;
                                 }
                                 §§goto(addr263);
                              }
                              §§goto(addr259);
                           }
                        }
                        §§goto(addr256);
                     }
                     §§goto(addr263);
                  }
               }
            }
            §§goto(addr79);
         }
         §§goto(addr29);
      }
      
      protected function §69§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            §§push(§§pop() * 180);
            if(_loc2_ || _loc3_)
            {
               return §§pop() / Math.PI;
            }
         }
      }
      
      protected function initNameHACK() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function §<L§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§"!!§[param1]);
            if(_loc3_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     addr46:
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                     }
                     §§goto(addr65);
                  }
                  §§push(§§pop());
               }
            }
            addr65:
            return §§pop();
         }
         §§goto(addr46);
      }
   }
}
