package §@"2§
{
   import §"!&§.§]!C§;
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §]">§.§<!=§;
   
   public class §1p§ extends §8!M§
   {
       
      
      protected var §`Z§:Number = 0.0;
      
      protected var §5"?§:Number = 0.0;
      
      protected var §5"=§:Number = 0.0;
      
      protected var §3§:int = 0;
      
      protected var §'j§:Boolean = false;
      
      protected var §7!h§:§]!C§;
      
      public function §1p§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§]!C§, param6:Sprite, param7:§#r§, param8:Number, param9:Boolean)
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         if(_loc16_ || param3)
         {
            super(param1,param2,param3,param4,param6,param7,param8);
         }
         var _loc10_:* = Number(param5.§=c§("damageDoneOnBounce"));
         if(!_loc15_)
         {
            if(isNaN(_loc10_))
            {
               if(!_loc15_)
               {
                  addr46:
                  §§push(0);
                  if(!_loc15_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc16_)
                     {
                        _loc10_ = §§pop();
                        addr53:
                        §§push(Number(param5.§=c§("strength")));
                     }
                  }
                  var _loc11_:* = §§pop();
                  if(!_loc15_)
                  {
                     if(isNaN(_loc11_))
                     {
                        if(!(_loc15_ && this))
                        {
                           §§push(0);
                           if(_loc16_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc15_ && param1))
                              {
                                 addr82:
                                 _loc11_ = §§pop();
                                 §§push(Number(param5.§=c§("impulseGivenOnBirdCollision")));
                              }
                              var _loc12_:* = §§pop();
                              if(_loc16_)
                              {
                                 if(isNaN(_loc12_))
                                 {
                                    if(_loc16_)
                                    {
                                       §§push(0);
                                       if(_loc16_)
                                       {
                                          §§push(Number(§§pop()));
                                          loop0:
                                          while(true)
                                          {
                                             _loc12_ = §§pop();
                                             addr197:
                                             while(true)
                                             {
                                                addr162:
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(_loc12_);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop() * §^g§.§5!-§);
                                                      if(_loc16_ || param3)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc16_ || this)
                                                         {
                                                         }
                                                         addr202:
                                                         var _loc13_:* = §§pop();
                                                         if(!(_loc15_ && this))
                                                         {
                                                            if(isNaN(_loc13_))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc13_ = §§pop();
                                                                  addr256:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr251:
                                                            }
                                                            loop1:
                                                            while(true)
                                                            {
                                                               this.§3§ = _loc13_;
                                                               while(true)
                                                               {
                                                                  if(!(_loc15_ && param3))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§'j§ = param5.§-0§("turboLaser");
                                                                        do
                                                                        {
                                                                           this.§7!h§ = param5;
                                                                        }
                                                                        while(!_loc16_);
                                                                        
                                                                        if(!_loc16_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc15_ && param1))
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              var _loc14_:String;
                                                                              if(_loc14_ = this.§7!h§.§0%§("createSound"))
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    this.§7!h§.playSoundLua(_loc14_);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue;
                                                                           return;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                   }
                                                   _loc12_ = §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(param9)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(_loc16_ || param1)
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(_loc16_ || this)
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr161:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr202);
                                                               }
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         continue loop8;
                                                         addr142:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§`Z§ = _loc11_;
                                                         loop13:
                                                         for(; _loc16_; while(_loc16_ || param3)
                                                         {
                                                            this.§5"=§ = _loc12_;
                                                            if(!_loc16_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc16_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            §§goto(addr142);
                                                         })
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            while(true)
                                                            {
                                                               addr108:
                                                               while(true)
                                                               {
                                                                  this.§5"?§ = _loc10_;
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      if(!(_loc16_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      if(false)
                                                      {
                                                         §§goto(addr108);
                                                      }
                                                      §§goto(addr202);
                                                      §§push(Number(param5.§=c§("collidedScoreInc")));
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr82);
                        }
                     }
                  }
                  §§goto(addr82);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr46);
      }
      
      public function get health() : Number
      {
         return this.§`Z§;
      }
      
      public function get §-C§() : Number
      {
         return this.§5"=§;
      }
      
      public function get §,!E§() : int
      {
         return this.§3§;
      }
      
      public function get §[!H§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§`Z§);
            if(!_loc1_)
            {
               if(§§pop() < this.§5"?§)
               {
                  if(_loc2_ || this)
                  {
                     addr58:
                     §§push(this.§`Z§);
                     if(_loc2_)
                     {
                        §§goto(addr62);
                     }
                  }
                  else
                  {
                     addr63:
                     return this.§5"?§;
                  }
                  return §§pop();
               }
               §§goto(addr63);
            }
            addr62:
            return §§pop();
         }
         §§goto(addr58);
      }
      
      public function get §,H§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§'j§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      override public function reflectToAngle(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.reflectToAngle(param1,param2);
         }
         var _loc3_:String = this.§7!h§.§0%§("deflectionSound");
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(!_loc5_)
               {
                  this.§7!h§.playSoundLua(_loc3_);
               }
            }
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr63:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     return;
                  }
                  addr20:
                  if(!_loc2_)
                  {
                     §§push(this);
                     §§push(this.§`Z§);
                     if(_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§`Z§ = §§pop();
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr20);
      }
      
      public function §^^§(param1:§<!=§) : Number
      {
         return this.§7!h§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §"E§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§7!h§);
            if(!_loc2_)
            {
               if(§§pop().§8!y§ > 0)
               {
                  if(_loc1_)
                  {
                     §§push(this.§7!h§);
                  }
                  else
                  {
                     §§goto(addr57);
                  }
               }
               §§goto(addr57);
            }
            return §§pop().§]!L§(0);
         }
         addr57:
         return null;
      }
      
      public function get §4!i§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§7!h§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop().§5$§ > 0)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this.§7!h§);
                  }
                  else
                  {
                     §§goto(addr62);
                  }
               }
               §§goto(addr62);
            }
            return §§pop().§5<§(0);
         }
         addr62:
         return null;
      }
   }
}
