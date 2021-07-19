package §]">§
{
   import §"!&§.§%F§;
   import §"!&§.§3",§;
   import §"!&§.§8X§;
   import §"!&§.§="A§;
   import §"!&§.§]!C§;
   import §"!&§.§`D§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §<!o§.§32§;
   import §@"2§.§@!4§;
   import §@w§.§&"<§;
   import §@w§.§[!!§;
   import §@w§.§`a§;
   import §`!j§.§#b§;
   import §`!j§.§2!7§;
   import flash.geom.Point;
   
   public class §0!D§ extends §-%§ implements §&"4§
   {
       
      
      protected var §-L§:String;
      
      protected var §^%§:String;
      
      protected var §4!r§:b2Vec2;
      
      protected var §do§:b2Vec2;
      
      protected var §'! §:Boolean = true;
      
      protected var §,G§:§@!4§;
      
      public function §0!D§(param1:§^g§, param2:§2!7§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§2!7§ = null;
         if(!(_loc9_ && this))
         {
            this.§4!r§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§do§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§-L§ = param5;
                  addr70:
                  while(true)
                  {
                     addr40:
                     addr93:
                     addr117:
                     addr124:
                     while(true)
                     {
                        this.§^%§ = param6;
                        if(!(_loc8_ || param3))
                        {
                           break;
                        }
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                     addr124:
                     if((_loc7_ = param2 as §2!7§).§ H§ > 0)
                     {
                        if(_loc8_)
                        {
                           this.§'! § = false;
                        }
                     }
                     this.§,G§ = new §@!4§(param1.mLevelEngine.mWorld);
                     return;
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.dispose();
            while(true)
            {
               §§push(this.§,G§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        continue;
                     }
                     addr79:
                     do
                     {
                        this.§,G§ = null;
                     }
                     while(_loc1_ && this);
                     
                  }
                  return;
               }
               break;
            }
            addr78:
            §§pop().dispose();
            §§goto(addr79);
         }
         §§goto(addr78);
         §§push(this.§,G§);
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§32§ = §?>§.background as §32§;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc1_)
            {
               if(!(_loc3_ && _loc1_))
               {
                  §§push(_loc1_.textureScale);
                  if(!(_loc3_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr68:
                  return super.getLevelTextureScale();
               }
               return §§pop();
            }
         }
         §§goto(addr68);
      }
      
      override protected function shouldShowScoreText(param1:§1!0§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]!C§ = null;
         if(!(_loc4_ && this))
         {
            if(param1)
            {
               addr28:
               _loc2_ = param1.levelItem as §]!C§;
               if(_loc3_ || param1)
               {
                  §§push(Boolean(_loc2_));
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§pop();
                           if(_loc3_ || param1)
                           {
                              §§push(Boolean(_loc2_.spriteScore));
                              if(_loc3_ || this)
                              {
                                 addr82:
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr100:
                                       §§push(false);
                                    }
                                    else
                                    {
                                       §§goto(addr102);
                                    }
                                 }
                                 §§goto(addr102);
                              }
                           }
                           §§goto(addr102);
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr82);
               }
               §§goto(addr100);
            }
            addr102:
            return super.shouldShowScoreText(param1);
         }
         §§goto(addr28);
      }
      
      override protected function getScoreTextPosition(param1:§1!0§) : Point
      {
         var _loc2_:Number = param1.§^!z§().GetPosition().x;
         var _loc3_:Number = param1.§^!z§().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§#b§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§&"<§ = null;
         var _loc2_:§2!7§ = param1 as §2!7§;
         if(_loc6_ || param1)
         {
            if(_loc2_)
            {
               if(_loc6_)
               {
                  addr39:
                  _loc3_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  while(true)
                  {
                     if(§§pop() >= _loc2_.§ H§)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr113);
                     }
                     §§push(1);
                     if(!_loc7_)
                     {
                        _loc4_ = §§pop();
                        if(_loc7_ && this)
                        {
                           break;
                        }
                        _loc5_ = _loc2_.§!"?§(_loc3_);
                        if(_loc6_ || _loc3_)
                        {
                           §%"F§(_loc5_,_loc5_.id,false,false,false,_loc4_);
                           if(_loc6_ || param1)
                           {
                              _loc3_++;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            super.addLevelObjects(param1);
            addr113:
            return;
         }
         §§goto(addr39);
      }
      
      protected function addParticleSpace(param1:§`a§, param2:Sprite, param3:§#r§) : §<!=§
      {
         return null;
      }
      
      override protected function createObjectInstance(param1:§`a§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §<!=§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:§&"<§ = null;
         var _loc9_:§'!"§ = null;
         var _loc10_:§'!"§ = null;
         var _loc5_:§`D§;
         var _loc6_:String = (_loc5_ = §?>§.levelItemManager.getItem(param1.type) as §`D§).itemName;
         var _loc7_:§#r§ = §?>§.animationManager.getAnimation(_loc6_);
         if(!(_loc11_ && param1))
         {
            if(_loc5_ is §%F§)
            {
               if(_loc12_)
               {
                  §§goto(addr58);
               }
            }
            else
            {
               §§push(param1.type);
               if(!(_loc11_ && param1))
               {
                  if(§§pop().indexOf(§5a§.§!!p§) != -1)
                  {
                     if(_loc12_)
                     {
                        if(_loc8_ = param1 as §&"<§)
                        {
                           if(_loc12_)
                           {
                              if(!_loc5_)
                              {
                                 if(!_loc11_)
                                 {
                                    throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                                 }
                                 addr279:
                              }
                              else
                              {
                                 _loc9_ = §?>§.backgroundTextureManager.getTexture(this.§-L§);
                                 _loc10_ = §?>§.backgroundTextureManager.getTexture(this.§^%§);
                                 if(!_loc11_)
                                 {
                                    return new §5a§(param2,§?>§.mLevelEngine.mWorld,param1.x,param1.y,_loc5_,§="A§(_loc8_.shape).radius,_loc8_.§&G§,_loc8_.§1^§,_loc8_.§^!_§,_loc9_,_loc10_);
                                 }
                                 addr185:
                                 if(_loc6_.substr(0,13) == "BLOCK_STATIC_")
                                 {
                                    if(!_loc11_)
                                    {
                                       §§push(super.createObjectInstance(param1,param2,param3,param4));
                                       if(!_loc11_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr205:
                                       return super.createObjectInstance(param1,param2,param3,param4);
                                    }
                                    return §§pop();
                                 }
                                 §§push(_loc5_ is §]!C§);
                                 if(_loc12_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc12_ || this)
                                       {
                                          addr255:
                                          §§push(param1 is §[!!§);
                                       }
                                       else
                                       {
                                          §§goto(addr279);
                                       }
                                       §§goto(addr215);
                                    }
                                    else
                                    {
                                       §§goto(addr205);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§5&§.§-!Y§,param4);
                                 }
                                 §§goto(addr215);
                                 §§goto(addr205);
                                 addr157:
                              }
                              addr215:
                              return this.createObjectBlockSpace(param2,_loc7_,§?>§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
                           }
                           §§goto(addr255);
                        }
                        §§goto(addr157);
                     }
                     else
                     {
                        §§goto(addr171);
                     }
                  }
                  else
                  {
                     §§push(param1.type);
                  }
                  §§goto(addr185);
               }
               if(§§pop().indexOf("SENSOR_PIG") != -1)
               {
                  if(_loc12_ || param1)
                  {
                     addr171:
                     return new §[!m§(param2,§?>§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1.x,param1.y);
                  }
               }
            }
            §§goto(addr185);
         }
         addr58:
         return this.addParticleSpace(param1,param2,_loc7_);
      }
      
      protected function createObjectBlockSpace(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number) : §-"A§
      {
         return new §-"A§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addObjectPig(param1:§`a§, param2:Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0) : §50§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            if(param3.hasSubAnimation(§3",§.§#"B§))
            {
               if(!_loc7_)
               {
                  return new §?!`§(param2,param3,§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
               }
            }
         }
         return super.addObjectPig(param1,param2,param3,param4,param5);
      }
      
      override protected function createBombBlockInstance(param1:§`a§, param2:Sprite, param3:§#r§, param4:§8X§, param5:int, param6:Number = 1.0) : §<!=§
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:§`D§ = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:§[!!§ = null;
         if(!_loc13_)
         {
            if(param4 is §`D§)
            {
               addr37:
               §§push((_loc7_ = param4 as §`D§).§=c§("explosionRadius"));
               if(!_loc13_)
               {
                  §§push(Number(§§pop()));
                  if(_loc14_ || param1)
                  {
                     _loc8_ = §§pop();
                     if(!(_loc13_ && this))
                     {
                        §§push(_loc7_.§=c§("explosionForce"));
                        if(_loc14_)
                        {
                           §§push(Number(§§pop()));
                        }
                        loop0:
                        while(true)
                        {
                           _loc9_ = §§pop();
                           if(_loc14_)
                           {
                              addr102:
                              while(true)
                              {
                                 §§push(_loc7_.§=c§("explosionDamageRadius"));
                                 addr106:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr107:
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       if(_loc13_ && param3)
                                       {
                                       }
                                       break loop0;
                                    }
                                 }
                              }
                              addr102:
                           }
                           break;
                        }
                        addr312:
                        return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
                        addr122:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(_loc7_.§=c§("explosionDamage"));
                        if(!(_loc13_ && param2))
                        {
                           if(_loc14_)
                           {
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr78:
                                 while(true)
                                 {
                                    if(_loc13_ && param1)
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc13_ && param3))
                                    {
                                       _loc11_ = §§pop();
                                       if(!(_loc13_ && param3))
                                       {
                                          if(true)
                                          {
                                             if(param1 is §[!!§)
                                             {
                                                if(_loc14_ || param3)
                                                {
                                                   break loop2;
                                                }
                                                §§goto(addr312);
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr102);
                                       }
                                       break loop2;
                                    }
                                    §§goto(addr106);
                                 }
                              }
                              addr77:
                           }
                           else
                           {
                              §§goto(addr122);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr78);
                     }
                     _loc12_ = param1 as §[!!§;
                     if(_loc14_ || param3)
                     {
                        if(!isNaN(_loc12_.explosionRadius))
                        {
                           addr277:
                           while(true)
                           {
                              §§push(_loc12_.explosionRadius);
                              addr279:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr280:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    addr281:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           addr277:
                        }
                        loop3:
                        while(true)
                        {
                           if(!isNaN(_loc12_.explosionForce))
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(_loc12_.explosionForce);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop6:
                                    while(!(_loc13_ && param1))
                                    {
                                       _loc9_ = §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc14_ || param2)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                if(isNaN(_loc12_.explosionDamageRadius))
                                                {
                                                   while(!isNaN(_loc12_.explosionDamage))
                                                   {
                                                      if(!(_loc13_ && param3))
                                                      {
                                                         §§push(_loc12_.explosionDamage);
                                                         if(_loc14_)
                                                         {
                                                            §§goto(addr177);
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   addr282:
                                                }
                                                loop9:
                                                while(!_loc13_)
                                                {
                                                   §§push(_loc12_.explosionDamageRadius);
                                                   if(_loc14_ || param1)
                                                   {
                                                      if(!(_loc14_ || this))
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   while(!(_loc13_ && param3))
                                                   {
                                                      _loc10_ = §§pop();
                                                      while(_loc14_)
                                                      {
                                                         if(!(_loc14_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc13_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(!(_loc14_ || param2))
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      continue loop3;
                                                      if(!(_loc13_ && param3))
                                                      {
                                                         if(_loc14_ || this)
                                                         {
                                                            addr192:
                                                            _loc11_ = Number(§§pop());
                                                            §§goto(addr193);
                                                         }
                                                         break loop7;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                                return new §3U§(param2,param3,§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,_loc8_,_loc9_,_loc10_,_loc11_,param6);
                                             }
                                             addr211:
                                          }
                                          else
                                          {
                                             §§goto(addr277);
                                          }
                                       }
                                       §§goto(addr280);
                                    }
                                    §§goto(addr279);
                                 }
                              }
                           }
                           §§goto(addr211);
                        }
                     }
                     §§goto(addr277);
                  }
                  §§goto(addr106);
               }
               §§goto(addr77);
            }
            §§goto(addr312);
         }
         §§goto(addr37);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super.renderObjects(param1,param2,param3);
            while(true)
            {
               §§push(this.§,G§);
               if(!(_loc5_ && param1))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           addr53:
                           §§push(this.§,G§);
                           break;
                        }
                        continue;
                     }
                     addr68:
                  }
                  return;
               }
               break;
            }
            §§pop().§<"<§(param1,this);
            §§goto(addr68);
         }
         §§goto(addr53);
      }
      
      public function §,"C§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§#r§ = null;
         var _loc7_:§]!C§;
         if(_loc7_ = §?>§.levelItemManager.getItem(param1) as §]!C§)
         {
            if(!_loc11_)
            {
               §§push(Number(_loc7_.scale));
               if(_loc12_)
               {
                  _loc8_ = §§pop();
                  if(_loc12_)
                  {
                     addr45:
                     if(param6)
                     {
                        if(!_loc11_)
                        {
                           §§push(Number(1));
                           if(!(_loc11_ && param3))
                           {
                              §§goto(addr68);
                           }
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr79);
               }
               addr68:
               _loc8_ = §§pop();
               if(_loc12_ || this)
               {
                  addr76:
                  §§push(_loc8_);
                  if(!_loc11_)
                  {
                     addr79:
                     §§push(§§pop() * 1.5);
                     if(_loc12_)
                     {
                        addr83:
                        §§push(Number(§§pop()));
                     }
                     _loc8_ = §§pop();
                     §§goto(addr85);
                  }
                  §§goto(addr83);
               }
               addr85:
               _loc9_ = new Sprite();
               _loc10_ = §?>§.animationManager.getAnimation(param1);
               if(_loc12_ || param1)
               {
                  this.§,G§.§,"C§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
                  if(_loc12_ || param3)
                  {
                  }
                  §§goto(addr134);
               }
               overlaySprite.addChild(_loc9_);
               §§goto(addr134);
            }
            §§goto(addr45);
         }
         addr134:
      }
      
      public function §@[§(param1:Number, param2:Number) : §?!`§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:§?!`§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc3_:§?!`§ = null;
         §§push(0);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = §-`§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            §§push(Boolean(_loc7_ = §-`§[_loc6_] as §?!`§));
            if(_loc11_)
            {
               §§push(§§pop());
               if(_loc11_)
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && _loc3_))
                     {
                        addr64:
                        §§pop();
                        if(!_loc11_)
                        {
                           continue;
                        }
                        §§push(_loc7_.health > 0);
                        if(!(_loc10_ && this))
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc10_ && this))
                           {
                              addr87:
                              if(§§pop())
                              {
                                 if(_loc11_)
                                 {
                                    §§pop();
                                    if(!(_loc11_ || param1))
                                    {
                                       continue;
                                    }
                                    §§push(_loc7_.§@k§);
                                    if(!_loc11_)
                                    {
                                    }
                                    addr114:
                                    if(§§pop())
                                    {
                                       if(!_loc11_)
                                       {
                                          continue;
                                       }
                                       _loc8_ = _loc7_.§^!z§().GetPosition();
                                       if(!(_loc10_ && this))
                                       {
                                          §§push(Number(Math.sqrt((param1 - _loc8_.x) * (param1 - _loc8_.x) + (param2 - _loc8_.y) * (param2 - _loc8_.y))));
                                          if(!_loc10_)
                                          {
                                             _loc9_ = §§pop();
                                             if(_loc11_ || this)
                                             {
                                                addr161:
                                                §§push(_loc3_ == null);
                                                if(!(_loc10_ && param2))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc11_ || param1)
                                                      {
                                                         §§pop();
                                                         addr187:
                                                         if(_loc11_)
                                                         {
                                                            addr184:
                                                            §§push(_loc9_ < _loc4_);
                                                         }
                                                         _loc3_ = _loc7_;
                                                         if(!_loc10_)
                                                         {
                                                            §§push(_loc9_);
                                                            if(_loc11_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc4_ = §§pop();
                                                            addr207:
                                                            _loc6_++;
                                                            continue;
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                   }
                                                }
                                                if(!§§pop())
                                                {
                                                }
                                                §§goto(addr207);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr207);
                                 }
                              }
                              §§goto(addr114);
                           }
                        }
                        §§push(!§§pop());
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr64);
         }
         return _loc3_;
      }
      
      public function §9!b§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            §?>§.setSlowMotion(param1,param2,param3,param4);
         }
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:§3=§ = null;
         var _loc6_:§5a§ = null;
         if(!(_loc10_ && param3))
         {
            if(this.§'! §)
            {
               if(!(_loc10_ && this))
               {
                  return super.getForceAtPoint(param1,param2,param3,param4);
               }
               addr61:
               param4.y = 0;
            }
            else
            {
               if(!param4)
               {
                  if(_loc9_)
                  {
                     param4 = new b2Vec2();
                     §§goto(addr56);
                  }
                  §§goto(addr61);
               }
               addr56:
               param4.x = 0;
               if(_loc10_)
               {
               }
               §§goto(addr64);
            }
         }
         addr64:
         loop0:
         for each(_loc5_ in §0!<§)
         {
            if(!(_loc6_ = _loc5_ as §5a§))
            {
               continue;
            }
            if(_loc9_ || param2)
            {
               §§push(this.§4!r§);
               if(!_loc10_)
               {
                  §§push(param1);
                  if(_loc9_ || param2)
                  {
                     §§pop().x = §§pop();
                     if(_loc9_ || param2)
                     {
                        addr159:
                        this.§4!r§.y = param2;
                     }
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           _loc6_.§?!N§(this.§4!r§,param3,this.§do§);
                           while(true)
                           {
                              if(_loc9_)
                              {
                                 param4.§]!H§(this.§do§);
                                 if(!(_loc10_ && param3))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           addr133:
                           while(false)
                           {
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr159);
            }
            §§goto(addr133);
         }
         return param4;
      }
      
      override protected function updateExplosionEffects(param1:§5&§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§<!=§, param2:§<!=§) : Boolean
      {
         return true;
      }
   }
}
