package §"!&§
{
   import §]">§.§1!0§;
   
   public class §]!C§ extends §`D§
   {
       
      
      protected var §8k§:String;
      
      protected var §9!C§:Number;
      
      protected var §?!1§:Number;
      
      protected var §!k§:String;
      
      protected var §]!$§:String;
      
      protected var §`!2§:Number;
      
      protected var §6$§:Number;
      
      protected var §=!u§:String;
      
      protected var §#B§:String;
      
      protected var §-]§:Number;
      
      protected var §^V§:Number;
      
      protected var §8!@§:Number;
      
      protected var §%"A§:Number;
      
      protected var §9w§:Array;
      
      protected var §6!5§:Number;
      
      protected var §`"?§:Number;
      
      protected var §&0§:Array;
      
      protected var §=!w§:Boolean;
      
      protected var §^!G§:Boolean;
      
      protected var §7!X§:Boolean;
      
      protected var §3T§:Boolean;
      
      protected var §2!i§:Number;
      
      protected var §9B§:Number;
      
      protected var §4!%§:Number;
      
      protected var §'!M§:Number;
      
      protected var §0!A§:Boolean;
      
      protected var §[!8§:Boolean;
      
      protected var § 2§:Boolean;
      
      protected var §<!f§:Number;
      
      protected var §8>§:Number;
      
      protected var §9z§:Array;
      
      protected var §+"=§:Array;
      
      protected var §5"F§:String;
      
      protected var §=B§:Boolean;
      
      protected var §;9§:Array;
      
      public function §]!C§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
            loop0:
            while(true)
            {
               §9"3§ = param7;
               loop1:
               while(true)
               {
                  this.§8k§ = param1.definition;
                  loop2:
                  while(true)
                  {
                     this.§9!C§ = param1.density;
                     while(true)
                     {
                        this.§?!1§ = param1.radius;
                        loop4:
                        while(true)
                        {
                           this.§!k§ = param1.type;
                           while(true)
                           {
                              this.§]!$§ = param1.sprite;
                              while(true)
                              {
                                 this.§`!2§ = param1.defence;
                                 loop7:
                                 for(; !_loc9_; while(_loc8_ || this)
                                 {
                                    this.§-]§ = param1.explosionRadius;
                                    §§goto(addr432);
                                 })
                                 {
                                    this.§6$§ = param1.strenght;
                                    loop8:
                                    while(true)
                                    {
                                       this.§=!u§ = param1.onCreated;
                                       loop9:
                                       while(true)
                                       {
                                          this.§#B§ = param1.onDestroyed;
                                          continue loop7;
                                          addr413:
                                          if(_loc9_ && param2)
                                          {
                                             continue;
                                          }
                                          this.§%"A§ = param1.explosionDamage;
                                          loop14:
                                          while(true)
                                          {
                                             this.§9w§ = this.§5!H§(param1.spawnedObjects);
                                             loop15:
                                             while(true)
                                             {
                                                this.§6!5§ = param1.spawnDistance;
                                                loop16:
                                                while(true)
                                                {
                                                   this.§`"?§ = param1.angleOffset;
                                                   addr385:
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(param1.particlesDestroyed is Array);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop45:
                                                            while(true)
                                                            {
                                                               this.§&0§ = this.§5!H§(param1.particlesDestroyed);
                                                               loop46:
                                                               while(true)
                                                               {
                                                                  addr308:
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.particlesCollision is Array);
                                                                     if(_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop41:
                                                                        while(_loc8_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              this.§;9§ = this.§5!H§(param1.particlesCollision);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§=!w§ = param1.isBullet;
                                                                                    continue loop2;
                                                                                    §§goto(addr328);
                                                                                 }
                                                                                 addr328:
                                                                              }
                                                                              addr326:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§&0§ = [String(param1.particlesDestroyed)];
                                                                                 break loop41;
                                                                              }
                                                                              addr359:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        addr316:
                                                                     }
                                                                     else if(param1.particlesCollision)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              this.§;9§ = [String(param1.particlesCollision)];
                                                                              while(!_loc9_)
                                                                              {
                                                                                 loop32:
                                                                                 while(_loc8_ || param3)
                                                                                 {
                                                                                    this.§0!A§ = param1.destroyableByTap;
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          this.§[!8§ = param1.destroyWhenFrozen;
                                                                                          while(!_loc9_)
                                                                                          {
                                                                                             this.§ 2§ = param1.isVisible;
                                                                                             loop35:
                                                                                             while(_loc8_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   this.§<!f§ = param1.width;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§8>§ = param1.height;
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                   addr152:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§^V§ = param1.explosionForce;
                                                                                                      addr426:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§8!@§ = param1.explosionDamageRadius;
                                                                                                         break loop35;
                                                                                                      }
                                                                                                   }
                                                                                                   addr432:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§goto(addr413);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr426);
                                                                                                }
                                                                                             }
                                                                                             continue loop9;
                                                                                             if(_loc9_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             addr239:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§3T§ = param1.constantRotation;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_ && this)
                                                                                                   {
                                                                                                      continue loop46;
                                                                                                   }
                                                                                                   this.§2!i§ = param1.maxRotationFrequency;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         this.§9B§ = param1.minRotationFrequency;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§4!%§ = param1.minRotationAmplitude;
                                                                                                            addr199:
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               this.§'!M§ = param1.maxRotationAmplitude;
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr316);
                                                                                                      }
                                                                                                      addr123:
                                                                                                      if(_loc9_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr130:
                                                                                                      if(_loc8_ || param1)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      addr334:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§&0§ = [§<!5§];
                                                                                                         continue loop15;
                                                                                                         §§goto(addr130);
                                                                                                      }
                                                                                                   }
                                                                                                   addr44:
                                                                                                   if(_loc8_ || this)
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                                continue loop46;
                                                                                             }
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr199);
                                                                                    }
                                                                                    while(!(_loc9_ && param3))
                                                                                    {
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue loop45;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop1;
                                                                        addr296:
                                                                     }
                                                                     §§goto(addr277);
                                                                  }
                                                                  continue loop18;
                                                               }
                                                            }
                                                         }
                                                         else if(!param1.particlesDestroyed)
                                                         {
                                                            if(§<!5§)
                                                            {
                                                               §§goto(addr334);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr308);
                                                            }
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              if(!(_loc8_ || this))
                              {
                                 continue;
                              }
                              this.§+"=§ = this.§5!H§(param1.animationSprites);
                              §§goto(addr67);
                           }
                        }
                        if(_loc9_ && param2)
                        {
                           continue;
                        }
                        §§goto(addr308);
                     }
                  }
               }
            }
         }
         §§goto(addr385);
      }
      
      private function §5!H§(param1:*) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(!(_loc7_ && _loc2_))
         {
            §§push(param1 is String);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     §§push([param1]);
                     if(!_loc7_)
                     {
                        return §§pop();
                     }
                     addr91:
                     _loc2_ = §§pop();
                     for each(_loc3_ in param1)
                     {
                        if(_loc6_)
                        {
                           _loc2_.push(_loc3_);
                        }
                     }
                     if(_loc6_)
                     {
                        return _loc2_;
                     }
                  }
                  else
                  {
                     addr49:
                     §§push(param1 is Array);
                     if(_loc6_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              return param1;
                           }
                           addr90:
                           §§goto(addr91);
                           §§push([]);
                        }
                        else
                        {
                           addr89:
                           if(param1 is Object)
                           {
                              §§goto(addr90);
                           }
                        }
                     }
                     §§goto(addr89);
                  }
                  return [];
               }
               §§goto(addr49);
            }
            §§goto(addr89);
         }
         §§goto(addr49);
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§+"=§);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop().length == 0)
               {
                  if(_loc4_)
                  {
                     §§push(super.getAnimationDefinitions());
                  }
                  else
                  {
                     §§goto(addr48);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         addr48:
         _loc1_ = [];
         _loc2_ = [];
         if(!(_loc5_ && this))
         {
            _loc3_ = 0;
         }
         while(true)
         {
            if(_loc3_ >= this.§+"=§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               while(_loc5_)
               {
                  while(_loc5_ && _loc1_)
                  {
                  }
                  _loc3_++;
               }
               continue;
            }
            _loc1_.push(this.§+"=§[_loc3_]);
            while(true)
            {
               _loc2_.push(40);
               §§goto(addr110);
            }
         }
         §§push(§1!0§.§,!Y§);
         §§push(["1",_loc1_,_loc2_]);
         if(_loc4_)
         {
            §§push(null);
         }
         §§push(null);
         if(!(_loc5_ && _loc2_))
         {
            return null;
         }
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§7!X§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§2!i§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§9B§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§'!M§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§4!%§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§^!G§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§6!5§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§`"?§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§-]§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§^V§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§8!@§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§%"A§;
      }
      
      public function get §4!g§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§9w§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§9w§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().length;
         }
         addr50:
         return 0;
      }
      
      public function §"!u§(param1:int) : String
      {
         return this.§9w§[param1];
      }
      
      public function get §2V§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9w§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§9w§);
                  }
                  else
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            return §§pop().length;
         }
         addr49:
         return 0;
      }
      
      public function get loopingParticleCount() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§9z§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr52);
                  }
               }
               return 0;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§9z§.length;
      }
      
      public function getLoopingParticle(param1:int) : String
      {
         return this.§9z§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§3T§;
      }
      
      public function get definition() : String
      {
         return this.§8k§;
      }
      
      public function get §5$§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§&0§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§&0§);
                  }
                  else
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            return §§pop().length;
         }
         addr49:
         return 0;
      }
      
      public function §5<§(param1:int) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§&0§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.§&0§);
                  }
                  else
                  {
                     §§goto(addr66);
                  }
               }
               §§goto(addr66);
            }
            return §§pop()[param1];
         }
         addr66:
         return null;
      }
      
      public function get §8!y§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§;9§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr52);
                  }
               }
               return 0;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§;9§.length;
      }
      
      public function §]!L§(param1:int) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§;9§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr52);
                  }
               }
               return null;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§;9§[param1];
      }
      
      public function get spriteScore() : String
      {
         return this.§5"F§;
      }
      
      public function get §68§() : Boolean
      {
         return this.§=B§;
      }
   }
}
