package §"!&§
{
   import § !Y§.§]!,§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §7!8§.DisplayObject;
   import §]">§.§ 6§;
   import §]">§.§1!0§;
   import §]">§.§5=§;
   
   public class §8X§
   {
      
      public static const §!!K§:int = 0;
      
      public static const §1!Q§:int = 1;
      
      public static const §@+§:int = 2;
      
      public static const §5x§:int = 3;
      
      public static const §<g§:int = 5;
      
      public static const §1!K§:int = 6;
      
      public static const §3!K§:int = 7;
      
      public static const §8G§:int = 8;
      
      public static const §,"4§:int = 9;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §!!K§ = 0;
            while(true)
            {
               §1!Q§ = 1;
               loop1:
               while(true)
               {
                  §@+§ = 2;
                  loop2:
                  while(true)
                  {
                     §5x§ = 3;
                     loop3:
                     while(true)
                     {
                        §<g§ = 5;
                        loop4:
                        while(true)
                        {
                           §1!K§ = 6;
                           while(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 §3!K§ = 7;
                                 while(_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                                 addr65:
                              }
                              continue loop1;
                              if(!(_loc2_ && _loc2_))
                              {
                                 return;
                                 addr41:
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr60);
            }
         }
         §§goto(addr41);
      }
      
      protected var §@C§:String;
      
      protected var §,S§:int;
      
      protected var §@Q§:§]!,§;
      
      protected var §!Z§:String;
      
      protected var §,L§:Number;
      
      protected var §8!j§:Boolean = false;
      
      protected var §?!g§:set;
      
      protected var §[B§:§<s§;
      
      protected var §'!%§:§=C§;
      
      protected var §=T§:Number = 1.0;
      
      public function §8X§(param1:String, param2:int, param3:§<s§, param4:§=C§, param5:set, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_)
         {
            super();
            while(true)
            {
               this.§@C§ = param1;
               loop1:
               while(true)
               {
                  this.§,S§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§[B§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§8!j§ = param10;
                        while(_loc11_)
                        {
                           this.§'!%§ = param4;
                           loop5:
                           while(_loc11_)
                           {
                              this.§?!g§ = param5;
                              loop6:
                              while(true)
                              {
                                 this.§@Q§ = new §]!,§(param6);
                                 while(true)
                                 {
                                    if(!(_loc12_ && param3))
                                    {
                                       if(_loc11_)
                                       {
                                          while(true)
                                          {
                                             this.§!Z§ = param7;
                                             addr55:
                                             while(!_loc12_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop3;
                                          }
                                          return;
                                          addr36:
                                          addr90:
                                       }
                                       break;
                                    }
                                    continue loop6;
                                    addr29:
                                    if(!(_loc11_ || param3))
                                    {
                                       continue;
                                    }
                                    §§goto(addr36);
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               if(!(_loc11_ || param1))
               {
                  continue;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr90);
      }
      
      public function get front() : Boolean
      {
         return this.§8!j§;
      }
      
      public function get itemType() : int
      {
         return this.§,S§;
      }
      
      public function get itemName() : String
      {
         return this.§@C§;
      }
      
      public function get category() : String
      {
         return this.§!Z§;
      }
      
      public function get healthMax() : Number
      {
         return this.§,L§;
      }
      
      public function §&&§() : int
      {
         return this.shape.getWidth();
      }
      
      public function §1!V§() : int
      {
         return this.shape.getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return this.§[B§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§[B§.bodyType;
      }
      
      public function §9!'§() : Number
      {
         return this.§[B§.colors;
      }
      
      public function getItemDefence() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!isNaN(this.§[B§.defence))
            {
               if(_loc1_ || _loc1_)
               {
                  §§push(this.§[B§.defence);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return 0;
               }
               return §§pop();
            }
         }
         §§goto(addr57);
      }
      
      public function getItemFriction() : Number
      {
         return this.§[B§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§[B§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§[B§.strength;
      }
      
      public function getItemZOrder() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.itemType);
            loop0:
            while(true)
            {
               if(§§pop() == §1!K§)
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr98);
                  }
                  else
                  {
                     addr99:
                  }
                  while(true)
                  {
                  }
                  addr99:
               }
               while(this.front)
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     break;
                  }
                  if(_loc1_)
                  {
                     break loop0;
                  }
                  §§goto(addr99);
               }
               §§push(20);
               if(!(_loc1_ || _loc2_))
               {
                  break;
               }
               if(_loc1_ || _loc2_)
               {
                  return §§pop();
               }
            }
            if(!(_loc2_ && _loc1_))
            {
               return §§pop();
            }
            addr98:
            return 6;
         }
         §§goto(addr99);
      }
      
      public function get shape() : set
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:DisplayObject = null;
         if(!_loc2_)
         {
            §§push(this.§?!g§);
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  _loc1_ = §9q§.§>!L§.animationManager.getAnimation(this.§@C§).getFrame(0);
                  addr32:
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§>!0§));
                     §§push(_loc1_.width);
                     if(_loc3_)
                     {
                        §§push(§^g§.§5!-§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_)
                           {
                              addr69:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(!(_loc2_ && this))
                              {
                                 §§push(§§pop() * §^g§.§5!-§);
                                 if(!_loc3_)
                                 {
                                 }
                                 §§goto(addr95);
                              }
                              §§push(§§pop() / 2);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr95);
            }
            addr95:
            §§pop().§?!g§ = new §§pop().§>!0§(§§pop(),§§pop());
            return this.§?!g§;
         }
         §§goto(addr32);
      }
      
      public function get soundResource() : §=C§
      {
         return this.§'!%§;
      }
      
      public function get score() : int
      {
         return this.§@Q§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§[B§.§@">§();
      }
      
      public function get materialName() : String
      {
         return this.§[B§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§[B§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§[B§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.itemName);
            loop0:
            while(§§pop().indexOf("BIRD") != 0)
            {
               while(true)
               {
                  §§push(this.itemName);
                  if(_loc1_)
                  {
                     if(§§pop().indexOf("PIG") != 0)
                     {
                        break;
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr60);
                     }
                     if(_loc1_)
                     {
                        if(!(_loc2_ && this))
                        {
                           addr72:
                           break;
                        }
                        break loop0;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§push(this.§5!e§());
               if(_loc1_)
               {
                  return §§pop();
               }
               addr60:
               §§push(this.§<1§());
               if(_loc1_)
               {
                  return §§pop();
               }
               addr91:
               return §§pop();
            }
            §§goto(addr91);
            §§push(this.§,u§());
         }
         §§goto(addr72);
      }
      
      private function §5!e§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(["1",[this.itemName + "_1"]]);
         if(!(_loc3_ && _loc2_))
         {
            §§push(null);
         }
         var _loc1_:Array = §§pop();
         §§push([§1!0§.§,!Y§,_loc1_]);
         if(!_loc3_)
         {
            return null;
         }
      }
      
      private function §<1§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§1!0§.§,!Y§);
         §§push(["1",[this.itemName + "_01"]]);
         if(!_loc1_)
         {
            §§push(null);
         }
         §§push(null);
         if(!(_loc1_ && this))
         {
            §§push(§5=§.§[_§);
            §§push(["1",[this.itemName + "_01_BLINK"]]);
            if(!_loc1_)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§5=§.§3P§);
            §§push(["1",[this.itemName + "_01_SMILE"]]);
            if(!(_loc1_ && _loc1_))
            {
               §§push(null);
            }
            return null;
         }
      }
      
      private function §,u§() : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.itemName);
            if(!_loc5_)
            {
               if(§§pop() == "BIRD_SARDINE")
               {
                  if(_loc4_)
                  {
                     §§push(§1!0§.§,!Y§);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr40);
                     }
                     else
                     {
                        addr73:
                        if(§§pop() == "BIRD_MIGHTY_EAGLE")
                        {
                           if(!_loc5_)
                           {
                              addr77:
                              §§goto(addr82);
                              §§push(§1!0§.§,!Y§);
                              §§push(["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                           }
                        }
                        var _loc1_:Array = this.§5Z§();
                        var _loc2_:Array = this.§8!=§();
                        §§push([§1!0§.§,!Y§,_loc2_]);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§5=§.§[_§);
                           §§push(["1",[this.itemName + "_BLINK"]]);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(null);
                           }
                           §§push(null);
                           §§push(§ 6§.§>E§);
                           §§push(["1",[this.itemName + "_FLYING"]]);
                           if(_loc4_)
                           {
                              §§push(null);
                           }
                           §§push(null);
                           §§push(§5=§.§3P§);
                           §§push(["1",[this.itemName + "_YELL"]]);
                           if(!_loc5_)
                           {
                              §§push(null);
                           }
                           §§push(null);
                           §§push(§ 6§.§#D§);
                           §§push(["1",[this.itemName + "_FLYING_YELL"]]);
                           if(_loc4_ || this)
                           {
                              §§push(null);
                           }
                           §§push(null);
                        }
                        var _loc3_:Array = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc1_)
                           {
                              if(_loc4_ || this)
                              {
                                 addr212:
                                 _loc3_.push([§ 6§.§]" §,_loc1_]);
                              }
                           }
                           return _loc3_;
                        }
                        §§goto(addr212);
                     }
                  }
                  §§goto(addr77);
               }
               else
               {
                  §§push(this.itemName);
                  if(_loc4_)
                  {
                     §§goto(addr73);
                  }
               }
               §§goto(addr77);
            }
            addr40:
            §§push([this.itemName]);
            if(_loc4_ || this)
            {
               §§push(null);
               if(_loc4_)
               {
                  §§push(null);
                  if(_loc4_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr90:
                  return null;
               }
            }
            else
            {
               addr82:
               §§push(null);
               if(!(_loc5_ && this))
               {
                  §§goto(addr90);
               }
            }
            return §§pop();
         }
         §§goto(addr77);
      }
      
      private function §8!=§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.itemName == "BIRD_REDBIG")
            {
               if(!_loc1_)
               {
                  §§push("1");
                  if(!_loc1_)
                  {
                     §§push(this.itemName);
                     if(_loc2_)
                     {
                        §§push("_1");
                        if(!(_loc1_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc1_)
                           {
                              §§push(null);
                              if(!_loc1_)
                              {
                                 §§push(null);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§push(null);
                                    if(!(_loc2_ || this))
                                    {
                                       §§goto(addr97);
                                    }
                                 }
                                 return §§pop();
                              }
                              addr93:
                              §§push(null);
                              if(!_loc1_)
                              {
                                 §§push(null);
                              }
                              addr97:
                              return §§pop();
                           }
                           addr78:
                           §§push(null);
                           §§goto(addr93);
                        }
                        else
                        {
                           addr77:
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr78);
                     }
                     else
                     {
                        addr76:
                        §§push("_1");
                     }
                     §§goto(addr77);
                  }
                  else
                  {
                     addr74:
                     §§push(this.itemName);
                  }
                  §§goto(addr76);
               }
               else
               {
                  addr73:
                  §§push("1");
               }
               §§goto(addr74);
            }
         }
         §§goto(addr73);
      }
      
      private function §5Z§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.itemName);
            loop0:
            while(true)
            {
               if(§§pop() != "BIRD_BLACK")
               {
                  while(true)
                  {
                     §§push(this.itemName);
                     while(!_loc2_)
                     {
                        §§push(§§pop() == "BIRD_WHITE");
                        if(_loc1_)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              if(§§pop())
                              {
                                 continue;
                              }
                           }
                        }
                        §§goto(addr153);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr161);
            }
         }
         §§goto(addr156);
      }
   }
}
