package §9"%§
{
   import §#!e§.§1"B§;
   import §%!v§.§[<§;
   import §%Q§.§4u§;
   import §%Q§.§6G§;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §9"!§.§9"3§;
   import §]!4§.§^!f§;
   import flash.geom.Point;
   
   public class §1!Q§ extends §]a§
   {
      
      private static const §95§:Boolean = true;
      
      private static const §3!;§:int = 3000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §95§ = true;
            do
            {
               §3!;§ = 3000;
            }
            while(!(_loc2_ || §1!Q§));
            
         }
      }
      
      public var §;'§:Sprite;
      
      private var §;!E§:Vector.<Object>;
      
      public function §1!Q§(param1:§9"3§, param2:§1"B§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§;'§ = new Sprite();
         }
         while(true)
         {
            this.§;'§.§`!u§ = false;
            while(_loc4_ || param1)
            {
               super(param1,param2,param3);
               if(!_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      override protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§;'§);
            if(!(_loc3_ && param1))
            {
               if(!§§pop().contains(param1))
               {
                  while(true)
                  {
                     super.removeChildFromMainSprite(param1);
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     if(_loc2_ || _loc3_)
                     {
                        return;
                     }
                  }
                  return;
                  addr83:
               }
               §§push(this.§;'§);
            }
            §§pop().removeChild(param1);
            §§goto(addr83);
         }
         §§goto(addr66);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §&!r§
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:Array = null;
         var _loc15_:* = null;
         var _loc16_:String = null;
         if(_loc17_)
         {
            §§push(param1);
            if(!_loc18_)
            {
               §§push("MISC_EASTER_EGG_");
               if(!(_loc18_ && param3))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc18_)
                     {
                        addr52:
                        §§push(param1);
                        if(_loc17_)
                        {
                           addr55:
                           §§push("_");
                           if(_loc17_)
                           {
                              _loc11_ = §§pop().split(§§pop());
                              §§push(_loc11_[_loc11_.length - 1]);
                              if(_loc17_ || this)
                              {
                                 _loc12_ = §§pop();
                                 addr122:
                                 if(!(_loc18_ && param2))
                                 {
                                    §§push("1000-");
                                    if(!(_loc18_ && param2))
                                    {
                                       §§push(§§pop() + _loc12_);
                                    }
                                    §§push(§§pop());
                                 }
                                 §§push(param1);
                                 if(_loc17_)
                                 {
                                    addr125:
                                    §§push("MISC_FB_GD_GOLDENEGG_");
                                    if(_loc17_)
                                    {
                                       addr128:
                                       if(§§pop().indexOf(§§pop()) == 0)
                                       {
                                          addr133:
                                          _loc14_ = param1.split("_");
                                          §§push(_loc14_[_loc14_.length - 1]);
                                          if(!_loc18_)
                                          {
                                             _loc15_ = §§pop();
                                             if(_loc17_ || param3)
                                             {
                                                addr158:
                                                §§push("3001-");
                                                if(!_loc18_)
                                                {
                                                   §§push(§§pop() + _loc15_);
                                                }
                                                _loc16_ = §§pop();
                                                if(_loc17_)
                                                {
                                                   if((AngryBirdsFP11.sUserProgress as §[<§).§6M§(_loc16_))
                                                   {
                                                      if(!_loc17_)
                                                      {
                                                         addr172:
                                                         var _loc10_:§&!r§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            if(param1.indexOf("_ZOMBIE") != -1)
                                                            {
                                                               do
                                                               {
                                                                  _loc10_.sprite.removeFromParent();
                                                                  do
                                                                  {
                                                                     this.§;'§.addChild(_loc10_.sprite);
                                                                  }
                                                                  while(_loc18_);
                                                                  
                                                               }
                                                               while(_loc18_);
                                                               
                                                               addr218:
                                                            }
                                                            return _loc10_;
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                   }
                                                }
                                                §§goto(addr172);
                                             }
                                             return null;
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                                 §§goto(addr133);
                              }
                              _loc13_ = §§pop();
                              if(!_loc18_)
                              {
                                 if((AngryBirdsFP11.sUserProgress as §[<§).§6M§(_loc13_))
                                 {
                                    if(!(_loc18_ && this))
                                    {
                                       return null;
                                    }
                                    §§goto(addr122);
                                 }
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr122);
               }
               §§goto(addr128);
            }
            §§goto(addr55);
         }
         §§goto(addr52);
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§;'§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr86:
               while(true)
               {
                  §§push(-§§pop());
                  addr87:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      override public function addObjectParsePigs(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§&!r§ = null;
         var _loc11_:§4u§ = §6G§.§1!P§(param2);
         if(_loc13_ || param3)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push("_INFECTED");
               addr131:
               addr134:
               while(§§pop().indexOf(§§pop()) == -1)
               {
                  continue loop0;
               }
               addr134:
               return new §<!V§(this,param1,§@O§.mLevelEngine.mWorld,§@O§,§5!b§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
         }
         §§goto(addr153);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && param3))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push("MISC_EASTER_EGG_");
               addr93:
               while(§§pop().indexOf(§§pop()) != 0)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §?!6§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §&!9§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§&!9§ = new §&!9§(this,_loc5_,§@O§.mLevelEngine.mWorld,§@O§,§5!b§,param1,param2,param3,param4);
         if(_loc8_)
         {
            §=",§[§=",§.length] = _loc6_;
            do
            {
               §6"-§.addChild(_loc5_);
            }
            while(_loc7_ && param2);
            
         }
         return _loc6_;
      }
      
      override protected function applyExplosionDamage(param1:§&!r§, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Boolean = true;
         if(_loc5_ || this)
         {
            param1.applyDamage(param2,true,false,false,true);
         }
      }
      
      override protected function addDestructionParticles(param1:§&!r§, param2:§^!f§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§&!r§> = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            § '§.push(§6!u§.createExplosion(param1,param2,param3,param4));
            while(param1 != §^!x§.§`§)
            {
               if(!_loc5_)
               {
                  break;
               }
               addr51:
               if(_loc6_ && param3)
               {
                  continue;
               }
               addr47:
               §>!E§.§7N§("TntExplosions","ChannelExplosions");
               §§goto(addr51);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §4!R§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§;!E§)
            {
               while(true)
               {
                  this.§;!E§ = new Vector.<Object>();
                  addr52:
                  while(true)
                  {
                  }
               }
               addr46:
            }
            while(true)
            {
               this.§;!E§.push(param1);
               if(_loc3_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr46);
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function updateLevelObjectsGoingOn(param1:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:§<o§ = null;
         if(!_loc9_)
         {
            if(this.§;!E§ != null)
            {
               if(_loc10_)
               {
                  addr43:
                  _loc2_ = int(this.§;!E§.length - 1);
               }
               loop0:
               while(_loc2_ >= 0)
               {
                  _loc3_ = this.§;!E§[_loc2_];
                  _loc4_ = _loc3_.point;
                  _loc5_ = _loc3_.normal;
                  if(_loc10_ || this)
                  {
                     §§push(!isNaN(_loc4_.x));
                     if(_loc10_)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              if(!(_loc9_ && param1))
                              {
                                 while(true)
                                 {
                                    addr107:
                                    addr115:
                                    while(true)
                                    {
                                       §§push(!isNaN(_loc4_.y));
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    loop1:
                                    while(§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(Number(Math.atan2(_loc5_.x,_loc5_.y)));
                                       loop2:
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          while(true)
                                          {
                                             §§push(-47);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() * §9"3§.§'"F§);
                                                if(_loc10_ || this)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc7_ = §§pop();
                                                if(_loc9_)
                                                {
                                                   continue loop0;
                                                }
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                if(true)
                                                {
                                                   (_loc8_ = this.addObject(_loc3_.itemName,_loc4_.x + _loc5_.x * _loc7_,_loc4_.y + _loc5_.y * _loc7_,_loc6_ * 57.2957795 + 180,false,false,false,1,false) as §<o§).§@p§(_loc4_,_loc5_);
                                                   break loop1;
                                                }
                                                §§goto(addr107);
                                             }
                                             break;
                                          }
                                          addr207:
                                          _loc2_ = §§pop() - 1;
                                          continue loop0;
                                       }
                                    }
                                    this.§;!E§.splice(_loc2_,1);
                                    if(_loc9_ && _loc2_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 addr145:
                              }
                              §§push(_loc2_);
                              if(_loc9_)
                              {
                              }
                              §§goto(addr207);
                           }
                           addr137:
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr145);
               }
               if(_loc10_)
               {
                  addr214:
                  super.updateLevelObjectsGoingOn(param1);
               }
               return;
            }
            §§goto(addr214);
         }
         §§goto(addr43);
      }
      
      override public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§;!E§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        loop4:
                        do
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr95:
                                 §§push(true);
                                 break;
                              }
                              if(_loc2_)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§;!E§.length == 0);
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    addr107:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           return super.isPigsAlive(param1);
                        }
                        while(!_loc2_);
                        
                        return §§pop();
                     }
                     addr86:
                  }
                  §§goto(addr107);
               }
            }
         }
         §§goto(addr95);
      }
      
      override public function getPigCount(param1:Boolean = false) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.getPigCount(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§;!E§ == null);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr122:
                     while(true)
                     {
                        §§push(this.§;!E§.length == 0);
                        if(_loc3_ || _loc3_)
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              continue;
                           }
                           §§push(!§§pop());
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr110:
                        _loc2_ += this.§;!E§.length;
                        addr105:
                     }
                     else
                     {
                        §§goto(addr122);
                     }
                  }
                  break;
               }
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(_loc4_ && this)
                  {
                     §§goto(addr105);
                  }
                  return §§pop();
               }
               §§goto(addr110);
            }
         }
         §§goto(addr122);
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;!E§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              §§push(false);
                              break;
                           }
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 addr19:
                                 while(true)
                                 {
                                    §§push(super.isWorldAtSleep());
                                    if(_loc1_ || this)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       addr95:
                                       while(true)
                                       {
                                          §§pop();
                                          addr96:
                                          while(true)
                                          {
                                             §§push(this.§;!E§.length == 0);
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                break loop1;
                                             }
                                             §§push(!§§pop());
                                             continue loop1;
                                          }
                                       }
                                    }
                                    break loop1;
                                 }
                              }
                              addr85:
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr19);
                     }
                     return §§pop();
                     addr77:
                  }
               }
               §§goto(addr95);
               while(true)
               {
                  if(_loc2_ && _loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr77);
               }
            }
         }
         §§goto(addr85);
      }
   }
}
