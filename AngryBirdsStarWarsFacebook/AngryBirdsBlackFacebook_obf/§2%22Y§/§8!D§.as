package §2"Y§
{
   import §7P§.§&#=§;
   
   public class §8!D§ extends §["$§
   {
       
      
      protected var §^#4§:String;
      
      protected var §9!]§:Number;
      
      protected var §0#J§:Number;
      
      protected var §;"-§:String;
      
      protected var §%G§:String;
      
      protected var §4O§:Number;
      
      protected var §>!5§:Number;
      
      protected var §3!'§:String;
      
      protected var §!!s§:String;
      
      protected var §]#V§:Number;
      
      protected var §#+§:Number;
      
      protected var § !q§:Number;
      
      protected var §?P§:Number;
      
      protected var §]'§:Array;
      
      protected var §6!i§:Number;
      
      protected var §^!G§:Number;
      
      protected var §@!x§:Array;
      
      protected var §=#>§:Boolean;
      
      protected var §8T§:Boolean;
      
      protected var §<!"§:Boolean;
      
      protected var §1#W§:Boolean;
      
      protected var § "N§:Number;
      
      protected var § !I§:Number;
      
      protected var §7"8§:Number;
      
      protected var §3B§:Number;
      
      protected var §@v§:Boolean;
      
      protected var §[d§:Boolean;
      
      protected var §"!A§:Boolean;
      
      protected var §6"?§:Number;
      
      protected var §[!4§:Number;
      
      protected var § #I§:Array;
      
      protected var §2#I§:Array;
      
      protected var §4#L§:String;
      
      protected var §%!w§:Boolean;
      
      protected var §<=§:Array;
      
      public function §8!D§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6);
            loop0:
            while(true)
            {
               §>"Q§ = param7;
               loop1:
               while(true)
               {
                  this.§^#4§ = param1.definition;
                  loop2:
                  while(true)
                  {
                     this.§9!]§ = param1.density;
                     loop3:
                     while(true)
                     {
                        this.§0#J§ = param1.radius;
                        addr498:
                        addr341:
                        while(true)
                        {
                           this.§;"-§ = param1.type;
                           continue loop2;
                        }
                        if(!(_loc8_ || param1))
                        {
                           continue;
                        }
                        loop26:
                        while(true)
                        {
                           this.§=#>§ = param1.isBullet;
                           loop27:
                           while(true)
                           {
                              this.§8T§ = param1.stopAnimationsAfterCollision;
                              addr269:
                              loop28:
                              while(!(_loc9_ && this))
                              {
                                 this.§<!"§ = param1.animateRotation;
                                 loop29:
                                 while(true)
                                 {
                                    this.§1#W§ = param1.constantRotation;
                                    loop30:
                                    while(_loc8_)
                                    {
                                       this.§ "N§ = param1.maxRotationFrequency;
                                       loop31:
                                       while(!_loc9_)
                                       {
                                          this.§ !I§ = param1.minRotationFrequency;
                                          loop32:
                                          while(true)
                                          {
                                             if(_loc9_ && this)
                                             {
                                                continue loop31;
                                             }
                                             if(!_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      addr224:
                                                      if(!(_loc8_ || this))
                                                      {
                                                         break;
                                                      }
                                                      this.§7"8§ = param1.minRotationAmplitude;
                                                      loop33:
                                                      while(true)
                                                      {
                                                         this.§3B§ = param1.maxRotationAmplitude;
                                                         loop34:
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop32;
                                                            }
                                                            continue loop33;
                                                            addr161:
                                                            addr447:
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && param3))
                                                               {
                                                                  if(!(_loc8_ || param1))
                                                                  {
                                                                     continue loop30;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     this.§[d§ = param1.destroyWhenFrozen;
                                                                     continue loop29;
                                                                  }
                                                                  §§goto(addr447);
                                                                  continue loop30;
                                                               }
                                                               continue loop34;
                                                            }
                                                            addr447:
                                                            while(true)
                                                            {
                                                               this.§#+§ = param1.explosionForce;
                                                               break loop30;
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   loop41:
                                                   while(true)
                                                   {
                                                      addr313:
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(param1.particlesCollision is Array);
                                                         if(_loc8_ || this)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!param1.particlesCollision)
                                                               {
                                                                  continue loop26;
                                                               }
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(!(_loc9_ && param3))
                                                                  {
                                                                     this.§<=§ = [String(param1.particlesCollision)];
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr305:
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           addr479:
                                                                           while(true)
                                                                           {
                                                                              this.§4O§ = param1.defence;
                                                                              addr473:
                                                                              while(true)
                                                                              {
                                                                                 this.§>!5§ = param1.strenght;
                                                                                 break loop24;
                                                                              }
                                                                              §§goto(addr305);
                                                                           }
                                                                        }
                                                                        break;
                                                                        addr135:
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§6"?§ = param1.width;
                                                                              loop43:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    this.§[!4§ = param1.height;
                                                                                    loop44:
                                                                                    while(_loc8_)
                                                                                    {
                                                                                       this.§ #I§ = this.§^!h§(param1.loopingParticles);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop23;
                                                                                          }
                                                                                          continue loop44;
                                                                                       }
                                                                                       while(_loc8_)
                                                                                       {
                                                                                          §§goto(addr135);
                                                                                       }
                                                                                       continue loop29;
                                                                                    }
                                                                                    §§goto(addr473);
                                                                                 }
                                                                                 break;
                                                                                 addr52:
                                                                                 if(_loc9_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr59:
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    if(!(_loc9_ && param1))
                                                                                    {
                                                                                       this.§%!w§ = param1.horFlip;
                                                                                       addr73:
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          continue loop27;
                                                                                       }
                                                                                       addr354:
                                                                                       addr354:
                                                                                       loop47:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§goto(addr52);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      this.§4#L§ = param1.spriteScore;
                                                                                                      continue loop47;
                                                                                                   }
                                                                                                   addr453:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§]#V§ = param1.explosionRadius;
                                                                                                      §§goto(addr447);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr95);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr161);
                                                                                             addr81:
                                                                                          }
                                                                                       }
                                                                                       while(!(_loc9_ && this))
                                                                                       {
                                                                                          this.§@!x§ = [§%d§];
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_ || param2)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             addr379:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§@!x§ = [String(param1.particlesDestroyed)];
                                                                                                break loop43;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr59);
                                                                                       }
                                                                                       continue loop2;
                                                                                       addr354:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§@!x§ = this.§^!h§(param1.particlesDestroyed);
                                                                                       continue loop41;
                                                                                    }
                                                                                    addr395:
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                              while(_loc8_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              §§goto(addr498);
                                                                           }
                                                                           return;
                                                                           addr44:
                                                                           addr142:
                                                                        }
                                                                     }
                                                                     while(!_loc9_)
                                                                     {
                                                                        this.§3!'§ = param1.onCreated;
                                                                        while(true)
                                                                        {
                                                                           this.§!!s§ = param1.onDestroyed;
                                                                           §§goto(addr453);
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            while(_loc8_ || param1)
                                                            {
                                                               this.§<=§ = this.§^!h§(param1.particlesCollision);
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr341);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§?P§ = param1.explosionDamage;
                                                                        break loop28;
                                                                     }
                                                                     addr435:
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.particlesDestroyed is Array);
                                                               break loop22;
                                                               §§goto(addr326);
                                                            }
                                                            addr326:
                                                            addr407:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr395);
                                                         }
                                                         else
                                                         {
                                                            if(!param1.particlesDestroyed)
                                                            {
                                                               if(!§%d§)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr354);
                                                            }
                                                            §§goto(addr379);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr365);
                                             }
                                             §§goto(addr339);
                                          }
                                          addr413:
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                this.§^!G§ = param1.angleOffset;
                                                §§goto(addr407);
                                             }
                                             break;
                                             §§goto(addr224);
                                          }
                                          while(true)
                                          {
                                             this.§6!i§ = param1.spawnDistance;
                                             §§goto(addr413);
                                          }
                                       }
                                       continue loop28;
                                    }
                                    while(true)
                                    {
                                       this.§ !q§ = param1.explosionDamageRadius;
                                       §§goto(addr435);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§]'§ = this.§^!h§(param1.spawnedObjects);
                                 §§goto(addr423);
                                 §§goto(addr269);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      private function §^!h§(param1:*) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(_loc7_)
         {
            §§push(param1 is String);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     §§push([param1]);
                     if(!_loc6_)
                     {
                        return §§pop();
                     }
                     addr82:
                     _loc2_ = §§pop();
                     for each(_loc3_ in param1)
                     {
                        if(_loc7_)
                        {
                           _loc2_.push(_loc3_);
                        }
                     }
                     if(!_loc6_)
                     {
                        return _loc2_;
                     }
                  }
                  else
                  {
                     addr40:
                     §§push(param1 is Array);
                     if(!(_loc6_ && this))
                     {
                        addr50:
                        if(§§pop())
                        {
                           if(_loc7_ || this)
                           {
                              §§goto(addr68);
                           }
                        }
                        §§push(param1 is Object);
                     }
                     if(§§pop())
                     {
                        §§goto(addr82);
                        §§push([]);
                     }
                  }
                  return [];
               }
               §§goto(addr40);
            }
            §§goto(addr50);
         }
         addr68:
         return param1;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(!_loc4_)
         {
            §§push(this.§2#I§);
            if(!_loc4_)
            {
               if(§§pop().length == 0)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(super.getAnimationDefinitions());
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         addr44:
         _loc1_ = [];
         _loc2_ = [];
         if(!_loc4_)
         {
            _loc3_ = 0;
         }
         while(true)
         {
            if(_loc3_ >= this.§2#I§.length)
            {
               if(_loc5_)
               {
                  break;
               }
               while(_loc4_)
               {
                  while(!_loc5_)
                  {
                  }
                  _loc3_++;
               }
               continue;
            }
            _loc1_.push(this.§2#I§[_loc3_]);
            while(true)
            {
               _loc2_.push(40);
               §§goto(addr101);
            }
         }
         §§push(§&#=§.§'%§);
         §§push(["1",_loc1_,_loc2_]);
         if(!_loc4_)
         {
            §§push(null);
         }
         §§push(null);
         if(!(_loc4_ && _loc1_))
         {
            return null;
         }
      }
      
      public function get animateRotation() : Boolean
      {
         return this.§<!"§;
      }
      
      public function get maxRotationFrequency() : Number
      {
         return this.§ "N§;
      }
      
      public function get minRotationFrequency() : Number
      {
         return this.§ !I§;
      }
      
      public function get maxRotationAmplitude() : Number
      {
         return this.§3B§;
      }
      
      public function get minRotationAmplitude() : Number
      {
         return this.§7"8§;
      }
      
      public function get stopAnimationsAfterCollision() : Boolean
      {
         return this.§8T§;
      }
      
      public function get spawnDistance() : Number
      {
         return this.§6!i§;
      }
      
      public function get angleOffset() : Number
      {
         return this.§^!G§;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§]#V§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§#+§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§ !q§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§?P§;
      }
      
      public function get §4"-§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]'§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr58);
                  }
               }
               return 0;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§]'§.length;
      }
      
      public function §8"8§(param1:int) : String
      {
         return this.§]'§[param1];
      }
      
      public function get §1!0§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§]'§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§]'§);
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop().length;
         }
         addr54:
         return 0;
      }
      
      public function get § "0§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§ #I§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr47);
                  }
               }
               return 0;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§ #I§.length;
      }
      
      public function §&#S§(param1:int) : String
      {
         return this.§ #I§[param1];
      }
      
      public function get constantRotation() : Boolean
      {
         return this.§1#W§;
      }
      
      public function get definition() : String
      {
         return this.§^#4§;
      }
      
      public function get §-Q§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§@!x§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr58);
                  }
               }
               return 0;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§@!x§.length;
      }
      
      public function §="§(param1:int) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§@!x§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§@!x§);
                  }
                  else
                  {
                     §§goto(addr60);
                  }
               }
               §§goto(addr60);
            }
            return §§pop()[param1];
         }
         addr60:
         return null;
      }
      
      public function get §!a§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§<=§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr57);
                  }
               }
               return 0;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§<=§.length;
      }
      
      public function §&V§(param1:int) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§<=§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr47);
                  }
               }
               return null;
            }
            §§goto(addr47);
         }
         addr47:
         return this.§<=§[param1];
      }
      
      public function get spriteScore() : String
      {
         return this.§4#L§;
      }
      
      public function get §-"i§() : Boolean
      {
         return this.§%!w§;
      }
   }
}
