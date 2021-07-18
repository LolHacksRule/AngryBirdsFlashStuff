package §"!&§
{
   import § !Y§.§[!%§;
   
   public class §0"?§ extends §]!C§
   {
       
      
      protected var §]!z§:Number;
      
      protected var §"Y§:Number;
      
      protected var §0!%§:Number;
      
      protected var §5e§:Boolean;
      
      protected var §';§:Boolean;
      
      protected var §1Z§:Boolean;
      
      protected var § " §:String;
      
      protected var §&#§:Boolean;
      
      protected var §&!;§:String;
      
      protected var §8"8§:String;
      
      protected var §=N§:String;
      
      protected var §7!Y§:String;
      
      protected var §="8§:String;
      
      protected var §+!9§:String;
      
      protected var §5t§:String;
      
      protected var §`§:String;
      
      protected var §^5§:String;
      
      protected var §`!!§:String;
      
      protected var §!""§:String;
      
      protected var §8!I§:Array;
      
      protected var §2'§:§[!%§;
      
      protected var §?"0§:String;
      
      public function §0"?§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6);
            loop0:
            while(true)
            {
               §9"3§ = param7;
               loop1:
               while(true)
               {
                  this.§]!z§ = param1.bounceAmplitudeMultiplier;
                  addr284:
                  while(true)
                  {
                     this.§"Y§ = param1.bounceFrequencyMultiplier;
                     loop3:
                     while(true)
                     {
                        this.§0!%§ = param1.friction;
                        loop4:
                        while(true)
                        {
                           this.§5e§ = param1.controllable;
                           loop5:
                           while(true)
                           {
                              this.§';§ = param1.freezeBomb;
                              loop6:
                              while(true)
                              {
                                 this.§1Z§ = param1.rotateWhileFlying;
                                 loop7:
                                 while(true)
                                 {
                                    this.§ " § = param1.specialty;
                                    loop8:
                                    while(true)
                                    {
                                       this.§&#§ = param1.ignoreParticles;
                                       while(true)
                                       {
                                          this.§&!;§ = param1.onCollisionEnter;
                                          addr236:
                                          addr98:
                                          while(true)
                                          {
                                             this.§8"8§ = param1.explosionFactors;
                                             addr230:
                                             while(true)
                                             {
                                                this.§=N§ = param1.normalTrailSprite;
                                                continue loop5;
                                             }
                                          }
                                          while(!(_loc9_ && param3))
                                          {
                                             if(!_loc8_)
                                             {
                                                continue loop4;
                                             }
                                             this.§8!I§ = this.§5!H§(param1.specialParticles);
                                             while(_loc8_ || param1)
                                             {
                                                if(_loc9_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                   continue loop6;
                                                   addr165:
                                                }
                                                if(_loc8_)
                                                {
                                                   addr78:
                                                   if(_loc8_ || param3)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr209:
                                                   while(_loc8_)
                                                   {
                                                      this.§="8§ = param1.aimingAidSprite;
                                                      §§goto(addr78);
                                                   }
                                                   §§goto(addr236);
                                                }
                                                while(true)
                                                {
                                                   this.§+!9§ = param1.enterGravitationParticles;
                                                }
                                                while(!_loc9_)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop5;
                                             }
                                             while(_loc8_ || param1)
                                             {
                                                addr120:
                                                if(_loc8_ || this)
                                                {
                                                   continue loop0;
                                                }
                                                addr180:
                                                while(true)
                                                {
                                                   this.§`§ = param1.onTriggerExit;
                                                   §§goto(addr165);
                                                   §§goto(addr120);
                                                }
                                                §§goto(addr67);
                                             }
                                             addr67:
                                             while(_loc8_)
                                             {
                                                continue loop1;
                                                §§goto(addr113);
                                             }
                                             addr113:
                                             §§goto(addr230);
                                             if(_loc8_ || param3)
                                             {
                                                return;
                                                addr47:
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
         while(true)
         {
            this.§2'§ = this.§1j§(param1.sounds);
            for(; !_loc9_; this.§?"0§ = param1.destroyedSound,if(!(_loc8_ || param3))
            {
               continue;
            },§§goto(addr40))
            {
               if(!_loc9_)
               {
                  continue;
               }
               §§goto(addr284);
            }
            §§goto(addr113);
         }
         §§goto(addr47);
      }
      
      protected function §1j§(param1:Object) : §[!%§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:§[!%§ = new §[!%§();
         for(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      protected function §5!H§(param1:*) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(_loc6_ || param1)
         {
            §§push(param1 is String);
            if(!(_loc7_ && this))
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§push([param1]);
                     if(!_loc7_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr80:
                     §§push([]);
                  }
                  _loc2_ = §§pop();
                  for each(_loc3_ in param1)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        _loc2_.push(_loc3_);
                     }
                  }
                  if(!(_loc7_ && _loc3_))
                  {
                     return _loc2_;
                  }
               }
               else
               {
                  §§push(param1 is Array);
                  if(!_loc7_)
                  {
                     addr54:
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§goto(addr67);
                        }
                     }
                     §§push(param1 is Object);
                  }
                  if(§§pop())
                  {
                     §§goto(addr80);
                  }
               }
               return [];
            }
            §§goto(addr54);
         }
         addr67:
         return param1;
      }
      
      public function get §?!K§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§2'§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§2'§);
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
      
      public function getSound(param1:String) : String
      {
         return this.§2'§[param1];
      }
      
      public function get §;!t§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§8!I§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr58);
                  }
               }
               return 0;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§8!I§.length;
      }
      
      public function §;r§(param1:int) : String
      {
         return this.§8!I§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§`!!§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§=N§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§+!9§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§^5§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§?"0§;
      }
   }
}
