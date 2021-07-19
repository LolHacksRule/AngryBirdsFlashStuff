package §!"+§
{
   import §!!U§.Sprite;
   import §2"Y§.§8!D§;
   import §7!F§.§>"G§;
   import §7P§.§7B§;
   import §^#>§.§#_§;
   
   public class §'!L§ extends §[#5§
   {
       
      
      protected var §@"i§:Number = 0.0;
      
      protected var §4#H§:Number = 0.0;
      
      protected var §70§:Number = 0.0;
      
      protected var §^^§:int = 0;
      
      protected var §="6§:Boolean = false;
      
      protected var §;B§:§8!D§;
      
      public function §'!L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§8!D§, param6:Sprite, param7:§>"G§, param8:Number, param9:Boolean)
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         if(_loc16_)
         {
            super(param1,param2,param3,param4,param6,param7,param8);
         }
         var _loc10_:* = Number(param5.getNumberProperty("damageDoneOnBounce"));
         if(_loc16_)
         {
            if(isNaN(_loc10_))
            {
               if(!_loc15_)
               {
                  addr41:
                  §§push(0);
                  if(_loc16_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc15_ && param2))
                     {
                        addr52:
                        _loc10_ = §§pop();
                        §§push(Number(param5.getNumberProperty("strength")));
                     }
                     var _loc11_:* = §§pop();
                     if(_loc16_)
                     {
                        if(isNaN(_loc11_))
                        {
                           if(!(_loc15_ && param3))
                           {
                              addr71:
                              §§push(0);
                              if(_loc16_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc15_ && param3))
                                 {
                                    addr82:
                                    _loc11_ = §§pop();
                                    §§push(Number(param5.getNumberProperty("impulseGivenOnBirdCollision")));
                                 }
                                 var _loc12_:* = §§pop();
                                 if(!(_loc15_ && param3))
                                 {
                                    if(isNaN(_loc12_))
                                    {
                                       if(_loc16_ || param1)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr206:
                                             while(true)
                                             {
                                                _loc12_ = §§pop();
                                             }
                                          }
                                          addr205:
                                       }
                                       while(true)
                                       {
                                       }
                                       addr207:
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc12_);
                                       if(_loc16_ || this)
                                       {
                                          §§push(§§pop() * §#_§.§8]§);
                                          if(_loc16_)
                                          {
                                             addr188:
                                             if(_loc16_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop4:
                                                while(true)
                                                {
                                                   _loc12_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(param9)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            if(_loc15_ && this)
                                                            {
                                                               break;
                                                            }
                                                            §§push(0);
                                                            if(_loc16_ || this)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr212:
                                                            addr212:
                                                            var _loc13_:* = §§pop();
                                                            if(_loc16_ || this)
                                                            {
                                                               if(isNaN(_loc13_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     _loc13_ = §§pop();
                                                                     addr271:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr261:
                                                               }
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  this.§^^§ = _loc13_;
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        this.§="6§ = param5.§@"8§("turboLaser");
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc16_ || param3))
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(_loc15_ && param3)
                                                                           {
                                                                              break;
                                                                           }
                                                                           this.§;B§ = param5;
                                                                           if(_loc15_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc15_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break loop14;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     var _loc14_:String;
                                                                     if(_loc14_ = this.§;B§.getProperty("createSound"))
                                                                     {
                                                                        if(!(_loc15_ && param1))
                                                                        {
                                                                           this.§;B§.§-Z§(_loc14_);
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         else
                                                         {
                                                            addr166:
                                                            while(_loc16_ || param3)
                                                            {
                                                            }
                                                            continue;
                                                            addr166:
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      while(true)
                                                      {
                                                         this.§@"i§ = _loc11_;
                                                         loop8:
                                                         while(true)
                                                         {
                                                            loop9:
                                                            while(true)
                                                            {
                                                               this.§4#H§ = _loc10_;
                                                               loop10:
                                                               while(!_loc15_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§70§ = _loc12_;
                                                                     if(_loc15_ && param1)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(_loc15_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr212);
                                                                     §§push(Number(param5.getNumberProperty("collidedScoreInc")));
                                                                  }
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr188);
                                    }
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr82);
                           }
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr52);
               }
            }
            §§goto(addr52);
         }
         §§goto(addr41);
      }
      
      public function get health() : Number
      {
         return this.§@"i§;
      }
      
      public function get §@p§() : Number
      {
         return this.§70§;
      }
      
      public function get §&§() : int
      {
         return this.§^^§;
      }
      
      public function get §1!s§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@"i§);
            if(_loc1_)
            {
               if(§§pop() < this.§4#H§)
               {
                  if(_loc1_)
                  {
                     §§push(this.§@"i§);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr52:
                     §§push(this.§4#H§);
                  }
               }
               §§goto(addr52);
            }
            return §§pop();
         }
         §§goto(addr52);
      }
      
      public function get §3P§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§="6§);
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
         var _loc3_:String = this.§;B§.getProperty("deflectionSound");
         if(!_loc5_)
         {
            if(_loc3_)
            {
               if(!_loc5_)
               {
                  this.§;B§.§-Z§(_loc3_);
               }
            }
         }
      }
      
      public function applyDamage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr69:
               while(§§pop() > §§pop())
               {
               }
               addr19:
               return;
               loop3:
               while(true)
               {
                  §§push(this.§@"i§);
                  if(!(_loc2_ || _loc3_))
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(_loc3_ && _loc3_)
                  {
                     break;
                  }
                  if(§§pop() < §§pop())
                  {
                     if(!_loc3_)
                     {
                        addr54:
                        if(!(_loc3_ && param1))
                        {
                           this.§@"i§ = 0;
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§@"i§);
                              if(_loc2_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§@"i§ = §§pop();
                              continue loop3;
                              §§goto(addr54);
                           }
                           addr80:
                        }
                     }
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr19);
               }
               §§goto(addr69);
            }
         }
         §§goto(addr80);
      }
      
      public function §!!>§(param1:§7B§) : Number
      {
         return this.§;B§.getDamageMultiplier(param1.levelItem.materialName);
      }
      
      public function get §,M§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§;B§);
            if(!_loc1_)
            {
               if(§§pop().§!a§ > 0)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.§;B§);
                  }
                  else
                  {
                     §§goto(addr58);
                  }
               }
               §§goto(addr58);
            }
            return §§pop().§&V§(0);
         }
         addr58:
         return null;
      }
      
      public function get §!!`§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;B§);
            if(!(_loc1_ && this))
            {
               if(§§pop().§-Q§ > 0)
               {
                  if(_loc2_)
                  {
                     §§goto(addr55);
                  }
               }
               return null;
            }
            §§goto(addr55);
         }
         addr55:
         return this.§;B§.§="§(0);
      }
   }
}
