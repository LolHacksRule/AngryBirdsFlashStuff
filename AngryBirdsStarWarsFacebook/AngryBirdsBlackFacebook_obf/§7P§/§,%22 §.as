package §7P§
{
   import §!!U§.Sprite;
   import §!"+§.§%!R§;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§%#@§;
   import §2"Y§.§2"q§;
   import §2"Y§.§8!D§;
   import §2"Y§.§?#Q§;
   import §2"Y§.§["$§;
   import §7!F§.§8!W§;
   import §7!F§.§>"G§;
   import §9#@§.§1"6§;
   import §<"B§.§7"B§;
   import §<"B§.§94§;
   import §<"B§.§>"l§;
   import §?m§.§8!B§;
   import §?m§.§=!z§;
   import §[""§.§##W§;
   import §[""§.§3!2§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import flash.geom.Point;
   
   public class §," § extends §;=§ implements §,#Z§
   {
       
      
      protected var § !F§:String;
      
      protected var §+6§:String;
      
      protected var §&#'§:b2Vec2;
      
      protected var §^§:b2Vec2;
      
      protected var §<m§:Boolean = true;
      
      protected var §'J§:§%!R§;
      
      public function §," §(param1:§#_§, param2:§8!B§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§=!z§ = null;
         if(_loc8_)
         {
            this.§&#'§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§^§ = new b2Vec2();
               if(!(_loc9_ && this))
               {
                  if(!_loc8_)
                  {
                     continue;
                  }
                  this.§ !F§ = param5;
                  loop1:
                  while(true)
                  {
                     addr47:
                     while(true)
                     {
                        this.§+6§ = param6;
                        while(true)
                        {
                           super(param1,param2,param3,param4);
                           if(!_loc8_)
                           {
                              break loop0;
                           }
                           if(_loc8_ || param3)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               break;
            }
            if((_loc7_ = param2 as §=!z§).§?u§ > 0)
            {
               if(_loc8_)
               {
                  this.§<m§ = false;
               }
            }
            §§goto(addr122);
         }
         §§goto(addr45);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.dispose();
         }
         loop0:
         while(true)
         {
            §§push(this.§'J§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'J§);
                     addr61:
                     addr45:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                     addr52:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     §§goto(addr52);
                  }
               }
               return;
            }
            §§goto(addr61);
         }
      }
      
      override protected function getLevelTextureScale() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1"6§ = §2#G§.background as §1"6§;
         if(!(_loc3_ && _loc2_))
         {
            if(_loc1_)
            {
               if(!_loc3_)
               {
                  §§push(_loc1_.textureScale);
                  if(!(_loc3_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  return super.getLevelTextureScale();
               }
               return §§pop();
            }
         }
         §§goto(addr63);
      }
      
      override protected function shouldShowScoreText(param1:§&#=§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8!D§ = null;
         if(_loc3_ || this)
         {
            if(param1)
            {
               _loc2_ = param1.levelItem as §8!D§;
               addr28:
               if(_loc3_)
               {
                  §§push(Boolean(_loc2_));
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(!_loc4_)
                           {
                              §§push(Boolean(_loc2_.spriteScore));
                              if(_loc3_ || _loc3_)
                              {
                                 addr77:
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr80:
                                       §§push(false);
                                    }
                                    else
                                    {
                                       §§goto(addr82);
                                    }
                                 }
                                 §§goto(addr82);
                              }
                              return §§pop();
                           }
                           §§goto(addr82);
                        }
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr80);
            }
            addr82:
            return super.shouldShowScoreText(param1);
         }
         §§goto(addr28);
      }
      
      override protected function getScoreTextPosition(param1:§&#=§) : Point
      {
         var _loc2_:Number = param1.§3!t§().GetPosition().x;
         var _loc3_:Number = param1.§3!t§().GetPosition().y;
         return new Point(_loc2_,_loc3_);
      }
      
      override protected function addLevelObjects(param1:§8!B§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:§>"l§ = null;
         var _loc2_:§=!z§ = param1 as §=!z§;
         if(_loc6_)
         {
            if(_loc2_)
            {
               if(_loc6_ || this)
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
                     if(§§pop() >= _loc2_.§?u§)
                     {
                        if(_loc6_ || param1)
                        {
                           break;
                        }
                        §§goto(addr113);
                     }
                     §§push(1);
                     if(_loc6_ || this)
                     {
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           break;
                        }
                        _loc5_ = _loc2_.§=!8§(_loc3_);
                        if(!(_loc7_ && _loc3_))
                        {
                           §<#1§(_loc5_,_loc5_.id,false,false,false,_loc4_);
                           if(_loc7_)
                           {
                              continue loop0;
                           }
                        }
                        _loc3_++;
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
      
      protected function addParticleSpace(param1:§94§, param2:Sprite, param3:§>"G§) : §7B§
      {
         return null;
      }
      
      override protected function createObjectInstance(param1:§94§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §7B§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:* = null;
         var _loc7_:§>"G§ = null;
         var _loc8_:§>"l§ = null;
         var _loc9_:§8!W§ = null;
         var _loc10_:§8!W§ = null;
         var _loc5_:§"t§;
         if((_loc5_ = §2#G§.levelItemManager.getItem(param1.type)) is §["$§)
         {
            if(_loc12_ || param2)
            {
               §§push(_loc5_.itemName);
               if(!(_loc11_ && param1))
               {
                  §§push(§§pop());
               }
               _loc6_ = §§pop();
            }
            _loc7_ = §2#G§.animationManager.getAnimation(_loc6_);
            if(!(_loc11_ && this))
            {
               if(_loc5_ is §2"q§)
               {
                  if(!_loc11_)
                  {
                     return this.addParticleSpace(param1,param2,_loc7_);
                  }
               }
               else
               {
                  addr88:
                  §§push(param1.type);
                  if(_loc12_)
                  {
                     if(§§pop().indexOf(§"M§.§+"§) != -1)
                     {
                        if(_loc12_ || this)
                        {
                           if(_loc8_ = param1 as §>"l§)
                           {
                              if(_loc12_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc12_ || param3)
                                    {
                                       throw new Error("Can\'t find gravity sensor definition for \'" + param1.type + "\'");
                                    }
                                 }
                                 else
                                 {
                                    _loc9_ = §2#G§.backgroundTextureManager.getTexture(this.§ !F§);
                                    _loc10_ = §2#G§.backgroundTextureManager.getTexture(this.§+6§);
                                    if(_loc12_ || this)
                                    {
                                       return new §"M§(param2,§2#G§.mLevelEngine.mWorld,param1,_loc5_ as §["$§,§?#Q§(_loc8_.shape).radius,_loc8_.§?#_§,_loc8_.§8!i§,_loc8_.§=5§,_loc9_,_loc10_);
                                    }
                                    addr208:
                                    §§push(_loc6_);
                                    if(_loc12_)
                                    {
                                       §§push(0);
                                       if(_loc12_ || param1)
                                       {
                                          §§push(13);
                                          if(_loc12_)
                                          {
                                             if(§§pop().substr(§§pop(),§§pop()) == "BLOCK_STATIC_")
                                             {
                                                if(_loc12_ || param1)
                                                {
                                                   §§goto(addr232);
                                                }
                                             }
                                             else
                                             {
                                                addr306:
                                                if(_loc6_.substr(0,7) == "BUBBLE_")
                                                {
                                                   return new §1!K§(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4);
                                                   addr309:
                                                }
                                             }
                                             §§push(_loc5_ is §8!D§);
                                             if(_loc12_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §§goto(addr284);
                                                   }
                                                   §§goto(addr302);
                                                }
                                                else
                                                {
                                                   §§goto(addr331);
                                                }
                                             }
                                             addr284:
                                             if(param1 is §7"B§)
                                             {
                                                if(_loc12_ || this)
                                                {
                                                   return this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§>"_§.§#!G§,param4);
                                                }
                                                addr302:
                                             }
                                             return this.createObjectBlockSpace(param2,_loc7_,§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4);
                                          }
                                       }
                                    }
                                    §§goto(addr306);
                                    addr188:
                                 }
                                 addr232:
                                 return super.createObjectInstance(param1,param2,param3,param4);
                              }
                              §§goto(addr309);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr208);
                     }
                     else
                     {
                        §§push(param1.type);
                     }
                     §§goto(addr208);
                  }
                  if(§§pop().indexOf("SENSOR_PIG") != -1)
                  {
                     if(!_loc11_)
                     {
                        return new § "=§(param2,§2#G§.mLevelEngine.mWorld,_loc5_,_loc5_.shape,param1);
                     }
                  }
               }
               §§goto(addr208);
            }
            §§goto(addr88);
         }
         addr331:
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      protected function createObjectBlockSpace(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number) : §`#G§
      {
         return new §`#G§(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addObjectPig(param1:§94§, param2:Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0) : §<!2§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            if(param3.hasSubAnimation(§%#@§.§2#'§))
            {
               if(_loc6_ || this)
               {
                  return new §]D§(param2,param3,§2#G§.mLevelEngine.mWorld,param4,param1,param5);
                  addr45:
               }
            }
            return super.addObjectPig(param1,param2,param3,param4,param5);
         }
         §§goto(addr45);
      }
      
      override protected function createBombBlockInstance(param1:§94§, param2:Sprite, param3:§>"G§, param4:§"t§, param5:int, param6:Number = 1.0) : §7B§
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:§["$§ = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:§7"B§ = null;
         if(_loc14_ || param2)
         {
            if(param4 is §["$§)
            {
               addr42:
               §§push((_loc7_ = param4 as §["$§).getNumberProperty("explosionRadius"));
               if(!_loc13_)
               {
                  §§push(Number(§§pop()));
                  if(_loc14_ || param2)
                  {
                     _loc8_ = §§pop();
                     if(_loc14_)
                     {
                        §§push(_loc7_.getNumberProperty("explosionForce"));
                        loop4:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop5:
                           while(true)
                           {
                              _loc9_ = §§pop();
                              if(_loc14_ || this)
                              {
                                 while(true)
                                 {
                                    §§push(_loc7_.getNumberProperty("explosionDamageRadius"));
                                    loop2:
                                    while(true)
                                    {
                                       if(!_loc13_)
                                       {
                                          §§push(Number(§§pop()));
                                          loop3:
                                          while(true)
                                          {
                                             if(!(_loc14_ || param2))
                                             {
                                                continue loop5;
                                             }
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                if(!(_loc14_ || this))
                                                {
                                                   break loop3;
                                                }
                                                §§push(_loc7_.getNumberProperty("explosionDamage"));
                                                if(!(_loc13_ && this))
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                                if(_loc14_)
                                                {
                                                   addr80:
                                                   _loc11_ = §§pop();
                                                   if(_loc14_ || this)
                                                   {
                                                   }
                                                   break loop3;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr277);
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 addr90:
                              }
                              §§goto(addr277);
                           }
                        }
                        addr116:
                     }
                     while(true)
                     {
                        if(true)
                        {
                           if(param1 is §7"B§)
                           {
                              if(_loc14_)
                              {
                                 _loc12_ = param1 as §7"B§;
                                 if(!_loc13_)
                                 {
                                    if(!isNaN(_loc12_.explosionRadius))
                                    {
                                       addr250:
                                       _loc8_ = Number(_loc12_.explosionRadius);
                                       addr247:
                                       addr249:
                                    }
                                    if(!isNaN(_loc12_.explosionForce))
                                    {
                                       addr240:
                                       _loc9_ = Number(_loc12_.explosionForce);
                                       addr237:
                                       addr239:
                                    }
                                    addr186:
                                    if(!isNaN(_loc12_.explosionDamageRadius))
                                    {
                                       if(!_loc13_)
                                       {
                                          if(!(_loc13_ && param1))
                                          {
                                             addr211:
                                             §§push(_loc12_.explosionDamageRadius);
                                             if(_loc14_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             if(_loc14_ || param2)
                                             {
                                                if(!_loc13_)
                                                {
                                                   if(_loc14_)
                                                   {
                                                      if(!(_loc13_ && this))
                                                      {
                                                         _loc10_ = §§pop();
                                                         §§goto(addr230);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr240);
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr230);
                                    }
                                    addr230:
                                    if(!isNaN(_loc12_.explosionDamage))
                                    {
                                       if(_loc14_)
                                       {
                                          if(!_loc13_)
                                          {
                                             if(!_loc13_)
                                             {
                                                §§push(_loc12_.explosionDamage);
                                                if(!(_loc13_ && this))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                if(_loc14_)
                                                {
                                                   _loc11_ = §§pop();
                                                   addr175:
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr186);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr211);
                                             }
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr252);
                                 }
                                 §§goto(addr250);
                              }
                              else
                              {
                                 §§goto(addr277);
                              }
                           }
                           addr252:
                           return new §'"Y§(param2,param3,§2#G§.mLevelEngine.mWorld,param4,param1,_loc8_,_loc9_,_loc10_,_loc11_,param6);
                        }
                        §§goto(addr90);
                        addr277:
                        return super.createBombBlockInstance(param1,param2,param3,param4,param5,param6);
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr116);
               }
               §§goto(addr104);
            }
            §§goto(addr277);
         }
         §§goto(addr42);
      }
      
      override public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super.renderObjects(param1,param2,param3);
            do
            {
               §§push(this.§'J§);
               if(_loc5_ || param2)
               {
                  if(!§§pop())
                  {
                     §§goto(addr20);
                  }
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§push(this.§'J§);
               }
               §§pop().§&a§(param1,this);
            }
            while(!_loc5_);
            
         }
         addr20:
      }
      
      override protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1);
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() / param2);
         }
         return §§pop() - §§pop();
      }
      
      protected function §2?§(param1:Number, param2:Number) : Number
      {
         return super.getExplosionDamageMultiplier(param1,param2);
      }
      
      override protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§&#=§) : §3!2§
      {
         var _loc4_:Number = param3.§3!t§().GetPosition().x;
         var _loc5_:Number = param3.§3!t§().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.§3!t§().GetAngle();
         return §##W§.§`!5§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §""X§(param1:Number, param2:Number, param3:§&#=§) : §3!2§
      {
         return super.getExplosionDistanceToObject(param1,param2,param3);
      }
      
      public function §#!#§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:Sprite = null;
         var _loc10_:§>"G§ = null;
         var _loc7_:§8!D§;
         if(_loc7_ = §2#G§.levelItemManager.getItem(param1) as §8!D§)
         {
            if(_loc11_ || this)
            {
               §§push(Number(_loc7_.scale));
               if(_loc11_ || param1)
               {
                  _loc8_ = §§pop();
                  if(_loc11_)
                  {
                     addr54:
                     if(param6)
                     {
                        if(_loc11_)
                        {
                           §§push(Number(1));
                           if(!_loc12_)
                           {
                              _loc8_ = §§pop();
                              if(_loc12_ && param2)
                              {
                              }
                              §§goto(addr99);
                           }
                           addr98:
                           _loc8_ = Number(§§pop());
                           §§goto(addr97);
                        }
                     }
                     §§push(_loc8_);
                     if(!(_loc12_ && param3))
                     {
                        §§push(§§pop() * 1.5);
                        if(_loc11_ || param1)
                        {
                           addr97:
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr98);
                  }
                  addr99:
                  _loc9_ = new Sprite();
                  _loc10_ = §2#G§.animationManager.getAnimation(param1);
                  if(!_loc12_)
                  {
                     this.§'J§.§#!#§(param2,param3,param4,param5,_loc7_,_loc9_,_loc10_,_loc8_,param6);
                     if(!(_loc12_ && this))
                     {
                        §!'§.addChild(_loc9_);
                     }
                  }
                  §§goto(addr143);
               }
               §§goto(addr98);
            }
            §§goto(addr54);
         }
         addr143:
      }
      
      public function §+!U§(param1:Number, param2:Number) : §]D§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:§]D§ = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc3_:§]D§ = null;
         §§push(0);
         if(_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = §1!b§.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            §§push(Boolean(_loc7_ = §1!b§[_loc6_] as §]D§));
            if(!_loc11_)
            {
               §§push(§§pop());
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     if(!(_loc11_ && _loc3_))
                     {
                        §§pop();
                        if(_loc10_)
                        {
                           §§push(_loc7_.health > 0);
                           if(_loc10_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc11_ && _loc3_))
                              {
                                 addr86:
                                 if(§§pop())
                                 {
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§pop();
                                       if(!(_loc10_ || param2))
                                       {
                                          continue;
                                       }
                                       addr103:
                                       §§push(_loc7_.§3!$§);
                                       if(_loc11_ && param1)
                                       {
                                       }
                                       addr123:
                                       if(§§pop())
                                       {
                                          if(!(_loc10_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          _loc8_ = _loc7_.§3!t§().GetPosition();
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§push(Number(Math.sqrt((param1 - _loc8_.x) * (param1 - _loc8_.x) + (param2 - _loc8_.y) * (param2 - _loc8_.y))));
                                             if(!_loc11_)
                                             {
                                                _loc9_ = §§pop();
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(_loc3_ == null);
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            addr194:
                                                            §§pop();
                                                            addr201:
                                                            if(_loc10_)
                                                            {
                                                               addr198:
                                                               §§push(_loc9_ < _loc4_);
                                                            }
                                                            _loc3_ = _loc7_;
                                                            if(_loc10_)
                                                            {
                                                               §§push(_loc9_);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc4_ = §§pop();
                                                               addr221:
                                                               _loc6_++;
                                                               continue;
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr221);
                                    }
                                 }
                                 §§goto(addr123);
                              }
                           }
                           §§goto(addr123);
                           §§push(!§§pop());
                        }
                     }
                     §§goto(addr103);
                  }
               }
            }
            §§goto(addr86);
         }
         return _loc3_;
      }
      
      public function §&Q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            §2#G§.setSlowMotion(param1,param2,param3,param4);
         }
      }
      
      override public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:§1#E§ = null;
         var _loc6_:§"M§ = null;
         if(!(_loc9_ && this))
         {
            if(this.§<m§)
            {
               if(_loc10_)
               {
                  return super.getForceAtPoint(param1,param2,param3,param4);
               }
            }
            else
            {
               if(!param4)
               {
                  if(!(_loc9_ && param2))
                  {
                     addr53:
                     param4 = new b2Vec2();
                     addr57:
                     param4.x = 0;
                     if(_loc9_ && this)
                     {
                     }
                     §§goto(addr70);
                  }
                  param4.y = 0;
                  addr70:
                  for each(_loc5_ in §63§)
                  {
                     if(!(_loc6_ = _loc5_ as §"M§))
                     {
                        continue;
                     }
                     if(_loc10_ || param1)
                     {
                        §§push(this.§&#'§);
                        if(!_loc9_)
                        {
                           §§push(param1);
                           if(!(_loc9_ && param1))
                           {
                              §§pop().x = §§pop();
                              if(_loc10_ || this)
                              {
                                 addr170:
                                 this.§&#'§.y = param2;
                              }
                              loop1:
                              while(true)
                              {
                                 addr141:
                                 while(true)
                                 {
                                    _loc6_.§2E§(this.§&#'§,param3,this.§^§);
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr139);
                  }
                  return param4;
               }
               §§goto(addr57);
            }
            §§goto(addr57);
         }
         §§goto(addr53);
      }
      
      override protected function updateExplosionEffects(param1:§>"_§, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function §1#;§(param1:§>"_§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super.updateExplosionEffects(param1,param2,param3,param4);
         }
      }
      
      override protected function hasMinimumCollisionSpeed(param1:§7B§, param2:§7B§) : Boolean
      {
         return true;
      }
      
      protected function §3!6§(param1:§&#=§, param2:§&#=§) : Number
      {
         return super.getCollisionDamageFactor(param1,param2);
      }
      
      override protected function getCollisionDamageFactor(param1:§&#=§, param2:§&#=§) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1 is §?"N§);
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  §§push(param2 is §?"N§);
                  if(_loc5_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     loop2:
                     do
                     {
                        §§push(param1.§!!>§(param2.§+"J§()));
                        loop3:
                        while(_loc4_ || this)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              if(!(_loc5_ && this))
                              {
                                 if(_loc5_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(0);
                                       break loop3;
                                    }
                                 }
                                 else
                                 {
                                    addr76:
                                 }
                                 continue;
                                 break loop0;
                              }
                              break;
                           }
                           continue loop2;
                        }
                        return §§pop();
                     }
                     while(!(_loc5_ && param1));
                     
                     continue;
                  }
                  §§goto(addr76);
               }
            }
         }
         return 1;
      }
      
      protected function §=!#§(param1:§&#=§, param2:§&#=§) : Number
      {
         return super.getCollisionForceFactor(param1,param2);
      }
      
      override protected function getCollisionForceFactor(param1:§&#=§, param2:§&#=§) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc5_ || param1)
         {
            if(!(param1 is §?"N§))
            {
               return 1;
            }
         }
         §§push(param1.§!!>§(param2.§+"J§()));
         do
         {
            §§push(Number(§§pop()));
            do
            {
               _loc3_ = §§pop();
               return _loc3_;
            }
            while(!(_loc5_ || param2));
            
         }
         while(_loc4_);
         
         return §§pop();
      }
      
      public function get §5#R§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§1#E§ = null;
         if(!_loc4_)
         {
            if(§63§.length > 0)
            {
               addr26:
               var _loc2_:int = 0;
               var _loc3_:* = §63§;
               while(true)
               {
                  for each(_loc1_ in _loc3_)
                  {
                     if(!_loc5_)
                     {
                        addr74:
                        break;
                     }
                     §§push(_loc1_ is §"M§);
                     if(!(_loc5_ || _loc2_))
                     {
                        return §§pop();
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
               }
               §§goto(addr74);
               §§push(true);
            }
            return false;
         }
         §§goto(addr26);
      }
   }
}
