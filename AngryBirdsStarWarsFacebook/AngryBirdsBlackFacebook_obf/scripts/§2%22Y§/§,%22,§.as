package §2"Y§
{
   import §1!i§.§,#_§;
   
   public class §,",§ extends §8!D§
   {
       
      
      protected var §?U§:Number;
      
      protected var §%"E§:Number;
      
      protected var § "E§:Number;
      
      protected var §""5§:Boolean;
      
      protected var §9!v§:Boolean;
      
      protected var §+m§:Boolean;
      
      protected var §,#V§:String;
      
      protected var §2s§:Boolean;
      
      protected var §=8§:String;
      
      protected var §]u§:String;
      
      protected var §#"H§:String;
      
      protected var § #V§:String;
      
      protected var §0"R§:String;
      
      protected var §8!l§:String;
      
      protected var §+8§:String;
      
      protected var §[#K§:String;
      
      protected var §1!;§:String;
      
      protected var §8C§:String;
      
      protected var § @§:String;
      
      protected var §3!4§:Array;
      
      protected var §!"p§:§,#_§;
      
      protected var §<b§:String;
      
      public function §,",§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
            loop0:
            while(true)
            {
               §>"Q§ = param7;
               while(true)
               {
                  this.§?U§ = param1.bounceAmplitudeMultiplier;
                  while(!_loc8_)
                  {
                     this.§%"E§ = param1.bounceFrequencyMultiplier;
                     loop3:
                     while(true)
                     {
                        this.§ "E§ = param1.friction;
                        loop4:
                        while(true)
                        {
                           this.§""5§ = param1.controllable;
                           while(true)
                           {
                              this.§9!v§ = param1.freezeBomb;
                              addr252:
                              while(_loc9_)
                              {
                                 this.§+m§ = param1.rotateWhileFlying;
                              }
                              continue loop4;
                              addr104:
                              if(_loc8_ && this)
                              {
                                 continue;
                              }
                              this.§ @§ = param1.onLaunched;
                              do
                              {
                                 this.§3!4§ = this.§^!h§(param1.specialParticles);
                                 addr71:
                                 loop21:
                                 while(!(_loc8_ && param1))
                                 {
                                    this.§!"p§ = this.§="w§(param1.sounds);
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          if(_loc9_)
                                          {
                                             addr56:
                                             if(!(_loc9_ || param1))
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             if(!(_loc8_ && param2))
                                             {
                                                addr155:
                                                if(!(_loc8_ && param2))
                                                {
                                                   continue loop3;
                                                }
                                                addr203:
                                                while(true)
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      this.§8!l§ = param1.enterGravitationParticles;
                                                      while(!_loc8_)
                                                      {
                                                         this.§+8§ = param1.onTriggerEnter;
                                                         continue loop16;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§#"H§ = param1.normalTrailSprite;
                                                         break loop21;
                                                      }
                                                      addr182:
                                                      addr222:
                                                   }
                                                   break;
                                                   §§goto(addr155);
                                                }
                                                while(true)
                                                {
                                                   this.§0"R§ = param1.aimingAidSprite;
                                                   §§goto(addr190);
                                                }
                                                addr190:
                                             }
                                             §§goto(addr182);
                                          }
                                          continue loop3;
                                       }
                                       continue loop21;
                                    }
                                    while(true)
                                    {
                                       this.§2s§ = param1.ignoreParticles;
                                       addr234:
                                       while(true)
                                       {
                                          this.§=8§ = param1.onCollisionEnter;
                                          while(true)
                                          {
                                             this.§]u§ = param1.explosionFactors;
                                             §§goto(addr222);
                                             addr97:
                                             if(_loc8_ && param3)
                                             {
                                                continue;
                                             }
                                             §§goto(addr104);
                                          }
                                          break loop21;
                                       }
                                       §§goto(addr56);
                                    }
                                 }
                                 while(!(_loc8_ && param2))
                                 {
                                    this.§ #V§ = param1.specialTrailSprite;
                                    §§goto(addr203);
                                    §§goto(addr71);
                                 }
                                 §§goto(addr234);
                              }
                              while(!_loc9_);
                              
                              if(_loc9_)
                              {
                                 addr35:
                                 if(_loc8_ && param3)
                                 {
                                    loop17:
                                    while(true)
                                    {
                                       if(!(_loc8_ && param3))
                                       {
                                          this.§1!;§ = param1.atmosphereTailParticles;
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                this.§8C§ = param1.normalTailParticles;
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§,#V§ = param1.specialty;
                                             continue loop17;
                                          }
                                          addr246:
                                       }
                                       §§goto(addr240);
                                    }
                                    addr125:
                                 }
                                 if(_loc9_)
                                 {
                                    return;
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr90);
                           }
                        }
                     }
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                     this.§[#K§ = param1.onTriggerExit;
                     §§goto(addr125);
                  }
               }
            }
         }
         §§goto(addr246);
      }
      
      protected function §="w§(param1:Object) : §,#_§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:§,#_§ = new §,#_§();
         for(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      protected function §^!h§(param1:*) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(_loc7_ || _loc3_)
         {
            §§push(param1 is String);
            if(!(_loc6_ && this))
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§push([param1]);
                     if(_loc7_ || param1)
                     {
                        return §§pop();
                     }
                     addr87:
                     _loc2_ = §§pop();
                     for each(_loc3_ in param1)
                     {
                        if(!_loc6_)
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
                     §§goto(addr78);
                  }
               }
               else
               {
                  §§push(param1 is Array);
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr78);
                        }
                        else
                        {
                           addr86:
                           §§goto(addr87);
                           §§push([]);
                        }
                     }
                     else
                     {
                        addr85:
                        if(param1 is Object)
                        {
                           §§goto(addr86);
                        }
                     }
                  }
                  §§goto(addr85);
               }
               return [];
            }
            §§goto(addr85);
         }
         addr78:
         return param1;
      }
      
      public function get §8!8§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!"p§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§!"p§);
                  }
                  else
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return §§pop().length;
         }
         addr55:
         return 0;
      }
      
      public function §1"Z§(param1:String) : String
      {
         return this.§!"p§[param1];
      }
      
      public function get §6k§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§3!4§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr57);
                  }
               }
               return 0;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§3!4§.length;
      }
      
      public function §<4§(param1:int) : String
      {
         return this.§3!4§[param1];
      }
      
      public function get normalTailParticles() : String
      {
         return this.§8C§;
      }
      
      public function get normalTrailSprite() : String
      {
         return this.§#"H§;
      }
      
      public function get enterGravitationParticles() : String
      {
         return this.§8!l§;
      }
      
      public function get atmosphereTailParticles() : String
      {
         return this.§1!;§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§<b§;
      }
   }
}
