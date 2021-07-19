package §%8§
{
   import §4!i§.§@t§;
   import §@!"§.§5!;§;
   import §@!"§.§@_§;
   import §@!"§.§^"2§;
   
   public class §@-§
   {
      
      public static const §4!w§:int = 0;
      
      public static const §9!r§:int = 1;
      
      public static const §0?§:int = 2;
      
      public static const §=6§:int = 3;
      
      public static const §[$§:int = 5;
      
      public static const §6!@§:int = 6;
      
      public static const §;-§:int = 7;
      
      public static const §2![§:int = 8;
      
      public static const §@Z§:int = 9;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §4!w§ = 0;
            loop0:
            while(true)
            {
               §9!r§ = 1;
               loop1:
               while(true)
               {
                  §0?§ = 2;
                  loop2:
                  while(true)
                  {
                     §=6§ = 3;
                     loop3:
                     while(true)
                     {
                        §[$§ = 5;
                        addr58:
                        if(_loc1_ && §@-§)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           continue loop1;
                        }
                        §@Z§ = 9;
                        addr67:
                        if(!_loc1_)
                        {
                           if(_loc1_)
                           {
                              loop5:
                              while(!_loc1_)
                              {
                                 §;-§ = 7;
                                 loop6:
                                 while(true)
                                 {
                                    §2![§ = 8;
                                    addr44:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop6;
                                       }
                                       addr46:
                                       if(!_loc1_)
                                       {
                                          §§goto(addr58);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §6!@§ = 6;
                                             continue loop5;
                                             §§goto(addr46);
                                          }
                                          addr84:
                                       }
                                       §§goto(addr67);
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop2;
                           }
                           if(!_loc1_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        §§goto(addr44);
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      protected var §"!r§:String;
      
      protected var §;!`§:int;
      
      protected var §8O§:§@t§;
      
      protected var §9!8§:String;
      
      protected var §0!N§:Number;
      
      protected var §'j§:Boolean = false;
      
      protected var §]"!§:§[_§;
      
      protected var §+_§:§^f§;
      
      protected var §+>§:§89§;
      
      protected var §"P§:Boolean = false;
      
      protected var §2c§:Number = 1.0;
      
      protected var §@"%§:String;
      
      protected var §8W§:int;
      
      public function §@-§(param1:String, param2:int, param3:§^f§, param4:§89§, param5:§[_§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1, param13:Boolean = false)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"!r§ = param1;
               while(true)
               {
                  this.§;!`§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§+_§ = param3;
                     while(true)
                     {
                        this.§'j§ = param10;
                        continue loop0;
                        addr53:
                        loop10:
                        while(!(_loc14_ && param2))
                        {
                           this.§2c§ = param9;
                           loop11:
                           while(_loc15_)
                           {
                              this.§@"%§ = param11;
                              while(true)
                              {
                                 if(!_loc14_)
                                 {
                                    if(!_loc14_)
                                    {
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop10;
                                 }
                                 continue loop11;
                              }
                              while(true)
                              {
                                 this.§+>§ = param4;
                                 loop6:
                                 while(true)
                                 {
                                    this.§]"!§ = param5;
                                    while(true)
                                    {
                                       if(!_loc14_)
                                       {
                                          addr107:
                                          if(!(_loc15_ || param3))
                                          {
                                             break;
                                          }
                                          this.§8O§ = new §@t§(param6);
                                          continue;
                                       }
                                       continue loop6;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!(_loc14_ && param1))
                              {
                                 continue loop2;
                              }
                              §§goto(addr93);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      public function get front() : Boolean
      {
         return this.§'j§;
      }
      
      public function get itemType() : int
      {
         return this.§;!`§;
      }
      
      public function get itemName() : String
      {
         return this.§"!r§;
      }
      
      public function get category() : String
      {
         return this.§9!8§;
      }
      
      public function get healthMax() : Number
      {
         return this.§0!N§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§@"%§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§8W§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§"P§;
      }
      
      public function §"!R§() : int
      {
         return this.shape.§=!q§();
      }
      
      public function §[!Y§() : int
      {
         return this.shape.§%!r§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§+_§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§+_§.bodyType;
      }
      
      public function §;!X§() : Number
      {
         return this.§+_§.colors;
      }
      
      public function getItemDefence() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!isNaN(this.§+_§.defence))
            {
               if(!_loc2_)
               {
                  §§push(this.§+_§.defence);
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
         return this.§+_§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§+_§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§+_§.strength;
      }
      
      public function §8!D§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.itemType);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != §6!@§)
               {
                  while(this.front)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     addr65:
                     if(_loc1_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr64);
                        }
                        else
                        {
                           addr88:
                        }
                        return 6;
                     }
                  }
                  §§push(20);
                  if(!(_loc1_ || _loc1_))
                  {
                     addr64:
                     return 100;
                  }
                  if(_loc1_)
                  {
                     return §§pop();
                  }
                  §§goto(addr88);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr65);
      }
      
      public function get shape() : §[_§
      {
         return this.§]"!§;
      }
      
      public function get soundResource() : §89§
      {
         return this.§+>§;
      }
      
      public function get score() : int
      {
         return this.§8O§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function get §'!p§() : Boolean
      {
         return this.§+_§.§4X§();
      }
      
      public function get materialName() : String
      {
         return this.§+_§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§+_§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§+_§.getVelocityMultiplier(param1);
      }
      
      public function §7"!§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.itemName);
            loop0:
            while(§§pop().indexOf("BIRD") != 0)
            {
               loop1:
               while(true)
               {
                  §§push(this.itemName);
                  loop2:
                  while(§§pop().indexOf("PIG") != 0)
                  {
                     while(true)
                     {
                        §§push(this.itemName);
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(§§pop().indexOf("MISC_EASTER_EGG") != 0)
                              {
                                 break;
                              }
                              if(!(_loc1_ && this))
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§goto(addr70);
                                 }
                                 continue loop1;
                              }
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    break loop0;
                                 }
                                 break loop2;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     §§push(this.§0q§());
                     if(!(_loc1_ && this))
                     {
                        return §§pop();
                     }
                     addr70:
                     §§push(this.§,!q§());
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           return §§pop();
                        }
                        addr116:
                        return §§pop();
                     }
                     §§goto(addr96);
                  }
                  addr96:
                  return §§pop();
               }
            }
         }
         §§goto(addr116);
         §§push(this.§+!N§());
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §0q§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(["1",[this.itemName + "_1"]]);
         if(!_loc3_)
         {
            §§push(null);
         }
         var _loc1_:Array = §§pop();
         §§push([§@_§.§&P§,_loc1_]);
         if(!(_loc3_ && this))
         {
            return null;
         }
      }
      
      private function §,!q§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(["1",[this.itemName]]);
         if(!_loc2_)
         {
            §§push(null);
         }
         var _loc1_:Array = §§pop();
         §§push([§@_§.§&P§,_loc1_]);
         if(_loc3_)
         {
            return null;
         }
      }
      
      private function §-!5§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§@_§.§&P§);
         §§push(["1",[this.itemName + "_01"]]);
         if(!(_loc1_ && _loc2_))
         {
            §§push(null);
         }
         §§push(null);
         if(_loc2_ || _loc1_)
         {
            §§push(§5!;§.§>!d§);
            §§push(["1",[this.itemName + "_01_BLINK"]]);
            if(_loc2_)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§5!;§.§;1§);
            §§push(["1",[this.itemName + "_01_SMILE"]]);
            if(_loc2_ || _loc2_)
            {
               §§push(null);
            }
            return null;
         }
      }
      
      private function §+!N§() : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc1_)
         {
            §§push(this.itemName);
            loop0:
            while(true)
            {
               if(§§pop() != "BIRD_SARDINE")
               {
                  loop1:
                  do
                  {
                     §§push(this.itemName);
                     loop2:
                     while(§§pop() != "BIRD_MIGHTY_EAGLE")
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.itemName);
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(!(_loc4_ && _loc1_))
                           {
                              if(§§pop() == "BIRD_ORANGE")
                              {
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(§@_§.§&P§);
                                       break loop3;
                                    }
                                    addr41:
                                 }
                                 else
                                 {
                                    if(_loc4_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(!_loc5_)
                                    {
                                       break loop2;
                                    }
                                    if(!_loc5_)
                                    {
                                       addr251:
                                       return [[§@_§.§&P§,[this.itemName]]];
                                       addr250:
                                    }
                                    if(false)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                              var _loc1_:Array = this.§]!G§();
                              var _loc2_:Array = this.§`!W§();
                              §§push([§@_§.§&P§,_loc2_]);
                              if(!_loc4_)
                              {
                                 §§push(§5!;§.§>!d§);
                                 §§push(["1",[this.itemName + "_BLINK"]]);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(null);
                                 }
                                 §§push(null);
                                 §§push(§^"2§.§;_§);
                                 §§push(["1",[this.itemName + "_FLYING"]]);
                                 if(_loc5_)
                                 {
                                    §§push(null);
                                 }
                                 §§push(null);
                                 §§push(§5!;§.§;1§);
                                 §§push(["1",[this.itemName + "_YELL"]]);
                                 if(_loc5_)
                                 {
                                    §§push(null);
                                 }
                                 §§push(null);
                                 §§push(§^"2§.§!s§);
                                 §§push(["1",[this.itemName + "_FLYING_YELL"]]);
                                 if(!_loc4_)
                                 {
                                    §§push(null);
                                 }
                                 §§push(null);
                              }
                              var _loc3_:Array = §§pop();
                              if(_loc5_ || _loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       _loc3_.push([§^"2§.§=!_§,_loc1_]);
                                    }
                                 }
                              }
                              return _loc3_;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           if(!(_loc5_ || _loc2_))
                           {
                              continue loop0;
                           }
                           if(!(_loc5_ || _loc1_))
                           {
                              break;
                           }
                           §§push(["1",[this.itemName + "_YELL"]]);
                           if(!(_loc4_ && this))
                           {
                              if(!(_loc4_ && _loc1_))
                              {
                                 addr79:
                                 §§push(null);
                                 if(_loc5_ || this)
                                 {
                                    §§push(null);
                                    if(_loc5_ || this)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§goto(addr199);
                                          }
                                          addr228:
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr236:
                                             §§push(null);
                                             if(!_loc4_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr250);
                                          }
                                          §§goto(addr251);
                                       }
                                       §§goto(addr236);
                                    }
                                    addr199:
                                    §§push(§5!;§.§>!d§);
                                    §§push(["1",[this.itemName + "_BLINK"]]);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(null);
                                    }
                                    §§push(null);
                                    §§push(§^"2§.§;_§);
                                    §§push(["1",[this.itemName + "_YELL"]]);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(null);
                                    }
                                    §§push(null);
                                    §§push(§5!;§.§;1§);
                                    §§push(["1",[this.itemName + "_EXCITED"]]);
                                    if(_loc5_)
                                    {
                                       §§push(null);
                                    }
                                    §§push(null);
                                    §§push(§^"2§.§!s§);
                                    §§push(["1",[this.itemName + "_EXCITED"]]);
                                    if(!_loc4_)
                                    {
                                       §§push(null);
                                    }
                                    §§push(null);
                                    §§push(§^"2§.§=!_§);
                                    §§push(["1",[this.itemName + "_BALLOON"]]);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(null);
                                    }
                                    return null;
                                 }
                                 §§goto(addr251);
                                 §§goto(addr251);
                              }
                              else
                              {
                                 addr227:
                                 §§push(null);
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr251);
                     }
                  }
                  while(!_loc5_);
                  
                  §§push(§@_§.§&P§);
                  continue;
               }
               §§goto(addr251);
            }
            §§goto(addr227);
            §§push(["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
         }
         §§goto(addr41);
      }
      
      private function §`!W§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.itemName == "BIRD_REDBIG")
            {
               if(!_loc1_)
               {
                  §§push("1");
                  if(_loc2_)
                  {
                     §§push(this.itemName);
                     if(!_loc1_)
                     {
                        §§push("_1");
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              §§push(null);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§push(null);
                                 if(_loc2_)
                                 {
                                    §§push(null);
                                    if(!_loc1_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 addr87:
                                 return null;
                              }
                              else
                              {
                                 addr74:
                                 §§push(null);
                                 if(!_loc1_)
                                 {
                                    §§goto(addr87);
                                 }
                              }
                              return §§pop();
                           }
                           addr73:
                           §§push(null);
                           §§goto(addr74);
                        }
                        else
                        {
                           addr72:
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr73);
                     }
                     else
                     {
                        addr71:
                        §§push("_1");
                     }
                     §§goto(addr72);
                  }
                  else
                  {
                     addr69:
                     §§push(this.itemName);
                  }
                  §§goto(addr71);
               }
               else
               {
                  addr68:
                  §§push("1");
               }
               §§goto(addr69);
            }
         }
         §§goto(addr68);
      }
      
      private function §]!G§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.itemName);
            loop0:
            while(true)
            {
               if(§§pop() == "BIRD_BLACK")
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push("1");
                     break;
                  }
                  while(true)
                  {
                     addr121:
                     if(_loc2_ || this)
                     {
                        §§goto(addr25);
                     }
                  }
               }
               while(true)
               {
                  §§push(this.itemName);
                  while(true)
                  {
                     §§push(§§pop() == "BIRD_WHITE");
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        loop5:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.itemName);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop() == "BIRD_YELLOW");
                                       if(!(_loc1_ && this))
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                break;
                                                addr155:
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop8;
                                                         }
                                                         §§goto(addr121);
                                                      }
                                                      addr25:
                                                      return null;
                                                   }
                                                   addr71:
                                                   §§push("1");
                                                   if(_loc1_ && _loc1_)
                                                   {
                                                      break loop0;
                                                   }
                                                   §§push(this.itemName);
                                                   if(!(_loc1_ && this))
                                                   {
                                                      §§push("_SPECIAL");
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            §§push(null);
                                                            if(!_loc1_)
                                                            {
                                                               §§push(null);
                                                               if(!_loc1_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     addr118:
                                                                     §§push(null);
                                                                     if(_loc2_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     addr216:
                                                                     return null;
                                                                  }
                                                               }
                                                               §§goto(addr118);
                                                            }
                                                            else
                                                            {
                                                               addr211:
                                                               §§push(null);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         else
                                                         {
                                                            addr192:
                                                            §§push(null);
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      else
                                                      {
                                                         addr191:
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   else
                                                   {
                                                      addr190:
                                                      §§push("_SPECIAL");
                                                   }
                                                   §§goto(addr191);
                                                   addr53:
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       addr165:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop8;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           §§goto(addr155);
                        }
                     }
                     if(_loc2_ || _loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr190);
            §§push(this.itemName);
         }
         §§goto(addr71);
      }
   }
}
