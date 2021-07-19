package §2"Y§
{
   import §1!i§.§;7§;
   import §7P§.§&#=§;
   import §7P§.§?"N§;
   import §7P§.§^#$§;
   
   public class §"t§
   {
      
      public static const §1"A§:int = 0;
      
      public static const §5k§:int = 1;
      
      public static const §6!9§:int = 2;
      
      public static const §;"e§:int = 3;
      
      public static const §5s§:int = 5;
      
      public static const §&#F§:int = 6;
      
      public static const §"!x§:int = 7;
      
      public static const §<!Y§:int = 8;
      
      public static const § 4§:int = 9;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §1"A§ = 0;
            loop0:
            while(true)
            {
               §5k§ = 1;
               while(true)
               {
                  §6!9§ = 2;
                  continue loop0;
                  loop7:
                  while(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        § 4§ = 9;
                        if(!_loc1_)
                        {
                           continue loop7;
                        }
                        if(_loc1_)
                        {
                           addr36:
                           if(_loc1_ || _loc2_)
                           {
                              addr43:
                              if(!(_loc2_ && §"t§))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           addr96:
                           while(_loc1_)
                           {
                              §"!x§ = 7;
                              §§goto(addr36);
                           }
                           while(true)
                           {
                              §5s§ = 5;
                              addr91:
                              while(true)
                              {
                                 §&#F§ = 6;
                                 §§goto(addr84);
                              }
                           }
                           addr84:
                        }
                        while(!_loc2_)
                        {
                           §<!Y§ = 8;
                           continue loop7;
                        }
                        §§goto(addr91);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      protected var §<"d§:String;
      
      protected var §[!-§:int;
      
      protected var §,!D§:§;7§;
      
      protected var §&!w§:String;
      
      protected var § B§:Number;
      
      protected var §<!v§:Boolean = false;
      
      protected var §&"5§:§?#^§;
      
      protected var §`!=§:§&!x§;
      
      protected var §@! §:§'#2§;
      
      protected var §8"2§:Number = 1.0;
      
      protected var §@t§:String;
      
      protected var §2"7§:int;
      
      public function §"t§(param1:String, param2:int, param3:§&!x§, param4:§'#2§, param5:§?#^§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            super();
            loop0:
            while(true)
            {
               this.§<"d§ = param1;
               while(true)
               {
                  this.§[!-§ = param2;
                  while(!_loc14_)
                  {
                     this.§`!=§ = param3;
                     while(_loc13_ || param2)
                     {
                        this.§<!v§ = param10;
                        while(!_loc14_)
                        {
                           this.§@! § = param4;
                           loop5:
                           for(; _loc13_; while(_loc13_ || this)
                           {
                              this.§8"2§ = param9;
                              while(!_loc14_)
                              {
                                 this.§@t§ = param11;
                                 while(true)
                                 {
                                    if(!_loc14_)
                                    {
                                       if(!_loc14_)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr83);
                                 }
                                 §§goto(addr95);
                              }
                           })
                           {
                              this.§&"5§ = param5;
                              while(true)
                              {
                                 this.§,!D§ = new §;7§(param6);
                                 addr90:
                                 while(true)
                                 {
                                    this.§&!w§ = param7;
                                    addr83:
                                    while(true)
                                    {
                                       this.§ B§ = param8;
                                       continue loop5;
                                    }
                                 }
                                 addr40:
                                 addr33:
                                 return;
                                 if(!(_loc13_ || this))
                                 {
                                    continue;
                                 }
                                 §§goto(addr40);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function get front() : Boolean
      {
         return this.§<!v§;
      }
      
      public function get itemType() : int
      {
         return this.§[!-§;
      }
      
      public function get itemName() : String
      {
         return this.§<"d§;
      }
      
      public function get category() : String
      {
         return this.§&!w§;
      }
      
      public function get healthMax() : Number
      {
         return this.§ B§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§@t§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§2"7§;
      }
      
      public function getItemWidth() : int
      {
         return this.shape.getWidth();
      }
      
      public function getItemHeight() : int
      {
         return this.shape.getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return this.§`!=§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§`!=§.bodyType;
      }
      
      public function §%"k§() : Number
      {
         return this.§`!=§.colors;
      }
      
      public function getItemDefence() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!isNaN(this.§`!=§.defence))
            {
               if(_loc1_ || _loc1_)
               {
                  §§push(this.§`!=§.defence);
                  if(_loc1_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr67:
                  return 0;
               }
               return §§pop();
            }
         }
         §§goto(addr67);
      }
      
      public function getItemFriction() : Number
      {
         return this.§`!=§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§`!=§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§`!=§.strength;
      }
      
      public function getItemZOrder() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.itemType);
            loop0:
            while(true)
            {
               if(§§pop() != §&#F§)
               {
                  while(this.front)
                  {
                     if(!_loc1_)
                     {
                        break loop0;
                     }
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        addr88:
                        §§goto(addr89);
                     }
                  }
                  §§push(20);
                  if(_loc1_ && _loc2_)
                  {
                     break;
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     addr89:
                  }
                  continue;
                  return 6;
               }
            }
            return §§pop();
         }
         §§goto(addr88);
      }
      
      public function get shape() : §?#^§
      {
         return this.§&"5§;
      }
      
      public function get soundResource() : §'#2§
      {
         return this.§@! §;
      }
      
      public function get score() : int
      {
         return this.§,!D§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§`!=§.§]"7§();
      }
      
      public function get materialName() : String
      {
         return this.§`!=§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§`!=§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§`!=§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.itemName);
            loop0:
            while(true)
            {
               if(§§pop().indexOf("BIRD") == 0)
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.§5#+§());
                     break;
                  }
                  while(true)
                  {
                     addr89:
                     if(_loc1_ || this)
                     {
                        §§goto(addr19);
                     }
                  }
               }
               while(true)
               {
                  §§push(this.itemName);
                  loop3:
                  while(true)
                  {
                     if(§§pop().indexOf("PIG") == 0)
                     {
                        if(!_loc2_)
                        {
                           §§push(this.§'"1§());
                        }
                        else
                        {
                           while(true)
                           {
                              addr32:
                              while(true)
                              {
                                 §§push(this.itemName);
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              addr55:
                              addr19:
                              §§push(this.§@Y§());
                              if(!(_loc2_ && this))
                              {
                                 return §§pop();
                              }
                              addr74:
                              if(_loc1_ || _loc2_)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    return §§pop();
                                 }
                                 break loop0;
                              }
                              addr108:
                              return §§pop();
                              if(!(_loc1_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr74);
                              §§push(this.§7#T§());
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr32);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr72);
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §@Y§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(["1",[this.itemName + "_1"]]);
         if(_loc2_)
         {
            §§push(null);
         }
         var _loc1_:Array = §§pop();
         §§push([§&#=§.§'%§,_loc1_]);
         if(_loc2_ || this)
         {
            return null;
         }
      }
      
      private function §7#T§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(["1",[this.itemName]]);
         if(!(_loc3_ && _loc2_))
         {
            §§push(null);
         }
         var _loc1_:Array = §§pop();
         §§push([§&#=§.§'%§,_loc1_]);
         if(_loc2_)
         {
            return null;
         }
      }
      
      private function §'"1§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§&#=§.§'%§);
         §§push(["1",[this.itemName + "_01"]]);
         if(!_loc2_)
         {
            §§push(null);
         }
         §§push(null);
         if(_loc1_ || this)
         {
            §§push(§^#$§.§^?§);
            §§push(["1",[this.itemName + "_01_BLINK"]]);
            if(!_loc2_)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§^#$§.§3"=§);
            §§push(["1",[this.itemName + "_01_SMILE"]]);
            if(_loc1_)
            {
               §§push(null);
            }
            return null;
         }
      }
      
      private function §5#+§() : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.itemName);
            if(!_loc4_)
            {
               if(§§pop() != "BIRD_SARDINE")
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.itemName);
                     loop1:
                     while(§§pop() != "BIRD_MIGHTY_EAGLE")
                     {
                        while(true)
                        {
                           §§push(this.itemName);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              if(§§pop() == "BIRD_ORANGE")
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§&#=§.§'%§);
                                    break;
                                 }
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    break loop1;
                                 }
                                 if(false)
                                 {
                                    continue loop0;
                                 }
                              }
                              var _loc1_:Array = this.§=!c§();
                              var _loc2_:Array = this.§>"r§();
                              §§push([§&#=§.§'%§,_loc2_]);
                              if(!_loc4_)
                              {
                                 §§push(§^#$§.§^?§);
                                 §§push(["1",[this.itemName + "_BLINK"]]);
                                 if(_loc5_)
                                 {
                                    §§push(null);
                                 }
                                 §§push(null);
                                 §§push(§?"N§.§;!U§);
                                 §§push(["1",[this.itemName + "_FLYING"]]);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(null);
                                 }
                                 §§push(null);
                                 §§push(§^#$§.§3"=§);
                                 §§push(["1",[this.itemName + "_YELL"]]);
                                 if(!_loc4_)
                                 {
                                    §§push(null);
                                 }
                                 §§push(null);
                                 §§push(§?"N§.§-"[§);
                                 §§push(["1",[this.itemName + "_FLYING_YELL"]]);
                                 if(!_loc4_)
                                 {
                                    §§push(null);
                                 }
                                 §§push(null);
                              }
                              var _loc3_:Array = §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc3_.push([§?"N§.§4!8§,_loc1_]);
                                    }
                                 }
                              }
                              return _loc3_;
                           }
                           continue loop1;
                        }
                        if(_loc5_)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§push(["1",[this.itemName + "_YELL"]]);
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    addr64:
                                    §§push(null);
                                    if(!_loc4_)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§goto(addr160);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr160);
                                 }
                                 else
                                 {
                                    §§goto(addr220);
                                 }
                              }
                              §§goto(addr64);
                           }
                           else
                           {
                              addr246:
                              §§push([this.itemName]);
                           }
                           §§goto(addr249);
                        }
                        else
                        {
                           addr217:
                           §§push(["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
                        }
                        addr220:
                        if(!(_loc4_ && this))
                        {
                           §§goto(addr228);
                           §§push(null);
                        }
                        else
                        {
                           addr249:
                           §§goto(addr250);
                           §§push(null);
                        }
                        addr160:
                        §§push(§^#$§.§^?§);
                        §§push(["1",[this.itemName + "_BLINK"]]);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(null);
                        }
                        §§push(null);
                        §§push(§?"N§.§;!U§);
                        §§push(["1",[this.itemName + "_YELL"]]);
                        if(_loc5_ || _loc1_)
                        {
                           §§push(null);
                        }
                        §§push(null);
                        §§push(§^#$§.§3"=§);
                        §§push(["1",[this.itemName + "_EXCITED"]]);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(null);
                        }
                        §§push(null);
                        §§push(§?"N§.§-"[§);
                        §§push(["1",[this.itemName + "_EXCITED"]]);
                        if(_loc5_)
                        {
                           §§push(null);
                        }
                        §§push(null);
                        §§push(§?"N§.§4!8§);
                        §§push(["1",[this.itemName + "_BALLOON"]]);
                        if(_loc5_ || _loc1_)
                        {
                           §§push(null);
                        }
                        §§push(null);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              return §§pop();
                           }
                           addr250:
                           return null;
                        }
                        else
                        {
                           addr228:
                           if(_loc5_ || _loc3_)
                           {
                              addr236:
                              return null;
                           }
                        }
                        return §§pop();
                     }
                     if(!(_loc4_ && _loc1_))
                     {
                        break;
                     }
                     addr252:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  if(_loc5_ || this)
                  {
                     §§goto(addr217);
                     §§push(§&#=§.§'%§);
                  }
                  else
                  {
                     addr244:
                     §§goto(addr246);
                     §§push(§&#=§.§'%§);
                  }
                  §§goto(addr249);
               }
               §§goto(addr244);
            }
            §§goto(addr246);
         }
         §§goto(addr252);
      }
      
      private function §>"r§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.itemName == "BIRD_REDBIG")
            {
               if(!_loc2_)
               {
                  addr24:
                  §§push("1");
                  if(!_loc2_)
                  {
                     §§push(this.itemName);
                     if(_loc1_)
                     {
                        §§push("_1");
                        if(_loc1_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(null);
                              if(_loc1_)
                              {
                                 §§push(null);
                                 if(_loc1_)
                                 {
                                    §§push(null);
                                    if(!_loc2_)
                                    {
                                       return §§pop();
                                    }
                                 }
                              }
                              else
                              {
                                 addr73:
                                 §§push(null);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    return null;
                                 }
                              }
                              return §§pop();
                           }
                           addr72:
                           §§push(null);
                           §§goto(addr73);
                        }
                        else
                        {
                           addr71:
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr72);
                     }
                     else
                     {
                        addr70:
                        §§push("_1");
                     }
                     §§goto(addr71);
                  }
                  else
                  {
                     addr68:
                     §§push(this.itemName);
                  }
                  §§goto(addr70);
               }
               else
               {
                  addr67:
                  §§push("1");
               }
               §§goto(addr68);
            }
            §§goto(addr67);
         }
         §§goto(addr24);
      }
      
      private function §=!c§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.itemName);
            loop0:
            while(§§pop() != "BIRD_BLACK")
            {
               loop1:
               while(true)
               {
                  §§push(this.itemName);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == "BIRD_WHITE");
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.itemName);
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                          addr130:
                                       }
                                       §§push(§§pop() == "BIRD_YELLOW");
                                       while(_loc2_ || _loc2_)
                                       {
                                       }
                                       continue loop5;
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.itemName);
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(_loc1_)
                                          {
                                             continue loop2;
                                          }
                                          addr37:
                                          §§push(§§pop() == "BIRD_GREEN");
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr130);
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr59:
                                                      §§push("1");
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.itemName);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         §§push("_SPECIAL");
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc1_)
                                                            {
                                                               §§push(null);
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  §§push(null);
                                                                  if(!_loc1_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        addr106:
                                                                        §§push(null);
                                                                        if(!_loc1_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        addr191:
                                                                        return null;
                                                                     }
                                                                  }
                                                                  §§goto(addr106);
                                                               }
                                                               else
                                                               {
                                                                  addr186:
                                                                  §§push(null);
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                            else
                                                            {
                                                               addr167:
                                                               §§push(null);
                                                            }
                                                            §§goto(addr186);
                                                         }
                                                         else
                                                         {
                                                            addr166:
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      else
                                                      {
                                                         addr165:
                                                         §§push("_SPECIAL");
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   else
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(_loc1_ && this)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                }
                                                return null;
                                             }
                                             addr163:
                                             §§goto(addr165);
                                             §§push(this.itemName);
                                             addr50:
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop11;
                                             §§goto(addr37);
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 §§goto(addr147);
                              }
                              §§goto(addr50);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr163);
            §§push("1");
         }
         §§goto(addr59);
      }
   }
}
