package §&v§
{
   import §"n§.§<!e§;
   import §,z§.§ !o§;
   import §,z§.§"_§;
   import §,z§.§?!z§;
   
   public class §9B§
   {
      
      public static const §&!R§:int = 0;
      
      public static const §,7§:int = 1;
      
      public static const §>!?§:int = 2;
      
      public static const §6,§:int = 3;
      
      public static const §;!b§:int = 5;
      
      public static const §[""§:int = 6;
      
      public static const §[c§:int = 7;
      
      public static const §#!a§:int = 8;
      
      public static const §^!?§:int = 9;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §&!R§ = 0;
            loop0:
            while(true)
            {
               §,7§ = 1;
               loop1:
               while(true)
               {
                  §>!?§ = 2;
                  addr72:
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  §#!a§ = 8;
                  loop7:
                  for(; _loc1_; §^!?§ = 9,if(!(_loc2_ && _loc1_))
                  {
                     addr39:
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                     }
                     loop6:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr72);
                        }
                        else
                        {
                           while(!_loc2_)
                           {
                              §[c§ = 7;
                              continue loop6;
                           }
                           while(true)
                           {
                              §[""§ = 6;
                              §§goto(addr84);
                           }
                           addr84:
                           addr91:
                        }
                     }
                     continue loop1;
                  })
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     addr113:
                     while(true)
                     {
                        §6,§ = 3;
                        break loop7;
                     }
                  }
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §;!b§ = 5;
                     §§goto(addr91);
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      protected var § !B§:String;
      
      protected var §5!J§:int;
      
      protected var §5T§:§<!e§;
      
      protected var §8v§:String;
      
      protected var §;F§:Number;
      
      protected var §1>§:Boolean = false;
      
      protected var §^]§:§each §;
      
      protected var §<!n§:§#c§;
      
      protected var §<!3§:§,4§;
      
      protected var §6!r§:Number = 1.0;
      
      protected var §`,§:String;
      
      protected var §1!3§:int;
      
      public function §9B§(param1:String, param2:int, param3:§#c§, param4:§,4§, param5:§each §, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            super();
            loop0:
            while(true)
            {
               this.§ !B§ = param1;
               loop1:
               while(true)
               {
                  this.§5!J§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§<!n§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§1>§ = param10;
                        while(true)
                        {
                           this.§<!3§ = param4;
                           continue loop1;
                           addr96:
                           if(_loc13_ && param3)
                           {
                              continue;
                           }
                           this.§6!r§ = param9;
                           loop10:
                           while(true)
                           {
                              this.§`,§ = param11;
                              addr58:
                              addr92:
                              loop11:
                              while(!(_loc13_ && this))
                              {
                                 continue loop0;
                                 while(true)
                                 {
                                    this.§1!3§ = param12;
                                    if(_loc14_)
                                    {
                                       continue loop10;
                                    }
                                    continue loop11;
                                 }
                                 return;
                              }
                              addr127:
                              while(_loc14_)
                              {
                                 if(!_loc14_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr96);
                                 §§goto(addr58);
                              }
                              while(true)
                              {
                                 this.§5T§ = new §<!e§(param6);
                                 while(true)
                                 {
                                    this.§8v§ = param7;
                                    while(_loc14_ || this)
                                    {
                                       this.§;F§ = param8;
                                       §§goto(addr92);
                                       if(_loc14_ || param3)
                                       {
                                          if(_loc14_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop3;
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
         §§goto(addr72);
      }
      
      public function get front() : Boolean
      {
         return this.§1>§;
      }
      
      public function get itemType() : int
      {
         return this.§5!J§;
      }
      
      public function get itemName() : String
      {
         return this.§ !B§;
      }
      
      public function get category() : String
      {
         return this.§8v§;
      }
      
      public function get healthMax() : Number
      {
         return this.§;F§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§`,§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§1!3§;
      }
      
      public function §-1§() : int
      {
         return this.shape.§"!j§();
      }
      
      public function §>y§() : int
      {
         return this.shape.§?!L§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§<!n§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§<!n§.bodyType;
      }
      
      public function §@!x§() : Number
      {
         return this.§<!n§.colors;
      }
      
      public function getItemDefence() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!isNaN(this.§<!n§.defence))
            {
               if(_loc1_)
               {
                  addr36:
                  §§push(this.§<!n§.defence);
                  if(_loc1_ || _loc1_)
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
            §§goto(addr57);
         }
         §§goto(addr36);
      }
      
      public function getItemFriction() : Number
      {
         return this.§<!n§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§<!n§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§<!n§.strength;
      }
      
      public function §&!9§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.itemType);
            if(!_loc2_)
            {
               if(§§pop() != §[""§)
               {
                  while(this.front)
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        addr65:
                        break;
                     }
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr57);
                     }
                     else
                     {
                        addr82:
                     }
                     §§goto(addr83);
                     §§push(6);
                     §§goto(addr83);
                  }
                  §§push(20);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
                  addr57:
                  §§push(100);
                  if(_loc1_ || _loc1_)
                  {
                     return §§pop();
                  }
                  addr83:
                  addr83:
                  return §§pop();
               }
               §§goto(addr82);
            }
            §§goto(addr83);
         }
         §§goto(addr65);
      }
      
      public function get shape() : §each §
      {
         return this.§^]§;
      }
      
      public function get soundResource() : §,4§
      {
         return this.§<!3§;
      }
      
      public function get score() : int
      {
         return this.§5T§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function get §%x§() : Boolean
      {
         return this.§<!n§.§!!2§();
      }
      
      public function get materialName() : String
      {
         return this.§<!n§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§<!n§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§<!n§.getVelocityMultiplier(param1);
      }
      
      public function §;!^§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.itemName);
            loop0:
            while(§§pop().indexOf("BIRD") != 0)
            {
               while(true)
               {
                  §§push(this.itemName);
                  if(_loc1_ || _loc2_)
                  {
                     if(§§pop().indexOf("PIG") != 0)
                     {
                        break;
                     }
                     if(!(_loc2_ && this))
                     {
                        if(_loc1_ || this)
                        {
                           §§goto(addr79);
                        }
                        break loop0;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§push(this.§?"'§());
               if(!(_loc1_ || _loc2_))
               {
                  addr79:
                  return this.§!!0§();
               }
               if(!(_loc2_ && this))
               {
                  return §§pop();
               }
               §§goto(addr106);
            }
         }
         addr106:
         this.§9"!§();
         return §§pop();
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §?"'§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(["1",[this.itemName + "_1"]]);
         if(_loc2_ || _loc1_)
         {
            §§push(null);
         }
         var _loc1_:Array = §§pop();
         §§push([§"_§.§=!4§,_loc1_]);
         if(!_loc3_)
         {
            return null;
         }
      }
      
      private function §!!0§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§"_§.§=!4§);
         §§push(["1",[this.itemName + "_01"]]);
         if(!(_loc1_ && this))
         {
            §§push(null);
         }
         §§push(null);
         if(_loc2_ || _loc1_)
         {
            §§push(§ !o§.§ E§);
            §§push(["1",[this.itemName + "_01_BLINK"]]);
            if(_loc2_ || _loc1_)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§ !o§.§," §);
            §§push(["1",[this.itemName + "_01_SMILE"]]);
            if(_loc2_ || this)
            {
               §§push(null);
            }
            return null;
         }
      }
      
      private function §9"!§() : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            §§push(this.itemName);
            loop0:
            for(; §§pop() != "BIRD_SARDINE"; if(!(_loc5_ && _loc3_))
            {
               if(§§pop() == "BIRD_ORANGE")
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr190);
                        }
                        §§goto(addr51);
                        §§push(§"_§.§=!4§);
                     }
                     §§goto(addr204);
                  }
                  if(!(_loc5_ && _loc2_))
                  {
                     if(false)
                     {
                        §§goto(addr190);
                     }
                     §§goto(addr242);
                  }
                  if(_loc4_ || _loc1_)
                  {
                     §§goto(addr228);
                  }
                  break;
               }
               addr242:
               var _loc1_:Array = this.§1d§();
               var _loc2_:Array = this.§7!0§();
               §§push([§"_§.§=!4§,_loc2_]);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§ !o§.§ E§);
                  §§push(["1",[this.itemName + "_BLINK"]]);
                  if(_loc4_)
                  {
                     §§push(null);
                  }
                  §§push(null);
                  §§push(§?!z§.§15§);
                  §§push(["1",[this.itemName + "_FLYING"]]);
                  if(!(_loc5_ && _loc1_))
                  {
                     §§push(null);
                  }
                  §§push(null);
                  §§push(§ !o§.§," §);
                  §§push(["1",[this.itemName + "_YELL"]]);
                  if(!_loc5_)
                  {
                     §§push(null);
                  }
                  §§push(null);
                  §§push(§?!z§.§`;§);
                  §§push(["1",[this.itemName + "_FLYING_YELL"]]);
                  if(!(_loc5_ && _loc1_))
                  {
                     §§push(null);
                  }
                  §§push(null);
               }
               var _loc3_:Array = §§pop();
               if(_loc4_)
               {
                  if(_loc1_)
                  {
                     if(!_loc5_)
                     {
                        _loc3_.push([§?!z§.§-"§,_loc1_]);
                     }
                  }
               }
               return _loc3_;
            })
            {
               while(true)
               {
                  §§push(this.itemName);
                  if(_loc4_ || _loc3_)
                  {
                     if(!_loc5_)
                     {
                        if(§§pop() == "BIRD_MIGHTY_EAGLE")
                        {
                           addr204:
                           §§push(§"_§.§=!4§);
                           break;
                        }
                        addr51:
                        while(true)
                        {
                           §§push(this.itemName);
                           if(!(_loc4_ || _loc3_))
                           {
                              break;
                           }
                           continue loop0;
                           addr228:
                        }
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(["1",[this.itemName + "_YELL"]]);
                        if(_loc4_ || this)
                        {
                           if(!_loc5_)
                           {
                              addr70:
                              §§push(null);
                              if(_loc4_)
                              {
                                 §§push(null);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§ !o§.§ E§);
                                    §§push(["1",[this.itemName + "_BLINK"]]);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(null);
                                    }
                                    §§push(null);
                                    §§push(§?!z§.§15§);
                                    §§push(["1",[this.itemName + "_YELL"]]);
                                    if(!_loc5_)
                                    {
                                       §§push(null);
                                    }
                                    §§push(null);
                                    §§push(§ !o§.§," §);
                                    §§push(["1",[this.itemName + "_EXCITED"]]);
                                    if(!_loc5_)
                                    {
                                       §§push(null);
                                    }
                                    §§push(null);
                                    §§push(§?!z§.§`;§);
                                    §§push(["1",[this.itemName + "_EXCITED"]]);
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       §§push(null);
                                    }
                                    §§push(null);
                                    §§push(§?!z§.§-"§);
                                    §§push(["1",[this.itemName + "_BALLOON"]]);
                                    if(_loc4_ || _loc1_)
                                    {
                                       §§push(null);
                                    }
                                    §§push(null);
                                 }
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(!_loc5_)
                                    {
                                       return §§pop();
                                    }
                                    addr239:
                                    return null;
                                 }
                                 else
                                 {
                                    addr218:
                                    if(!_loc5_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 return §§pop();
                              }
                              addr238:
                              §§push(null);
                              §§goto(addr239);
                           }
                           else
                           {
                              addr209:
                              §§push(null);
                              if(!(_loc5_ && this))
                              {
                                 §§push(null);
                              }
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr70);
                     }
                     else
                     {
                        addr235:
                        §§push([this.itemName]);
                     }
                     §§goto(addr238);
                  }
                  break;
               }
               §§goto(addr209);
               §§push(["BIRD_ME_MOTION","BIRD_ME_RADIAL"]);
            }
            §§goto(addr235);
            §§push(§"_§.§=!4§);
         }
         §§goto(addr204);
      }
      
      private function §7!0§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.itemName == "BIRD_REDBIG")
            {
               if(_loc2_)
               {
                  §§push("1");
                  if(!_loc1_)
                  {
                     §§push(this.itemName);
                     if(_loc2_ || _loc2_)
                     {
                        §§push("_1");
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || this)
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 §§push(null);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§push(null);
                                    if(!_loc2_)
                                    {
                                       addr105:
                                       return null;
                                       addr97:
                                    }
                                 }
                                 return §§pop();
                              }
                              addr84:
                              §§push(null);
                              if(!_loc1_)
                              {
                                 §§goto(addr97);
                              }
                              §§goto(addr105);
                           }
                           else
                           {
                              addr83:
                              §§push(null);
                           }
                           §§goto(addr84);
                        }
                        else
                        {
                           addr82:
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr83);
                     }
                     else
                     {
                        addr81:
                        §§push("_1");
                     }
                     §§goto(addr82);
                  }
                  else
                  {
                     addr79:
                     §§push(this.itemName);
                  }
                  §§goto(addr81);
               }
               else
               {
                  addr78:
                  §§push("1");
               }
               §§goto(addr79);
            }
         }
         §§goto(addr78);
      }
      
      private function §1d§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.itemName);
            loop0:
            for(; §§pop() != "BIRD_BLACK"; if(!(_loc1_ || this))
            {
               continue;
            },§§goto(addr38))
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
                                 addr169:
                                 while(_loc1_ || _loc1_)
                                 {
                                    §§push(this.itemName);
                                    while(true)
                                    {
                                       §§push(§§pop() == "BIRD_YELLOW");
                                       addr148:
                                       while(_loc1_)
                                       {
                                       }
                                       §§push(this.itemName);
                                       addr160:
                                       continue loop5;
                                       if(_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc1_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(_loc1_)
                                 {
                                    §§pop();
                                    §§push(§§pop() == "BIRD_GREEN");
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                addr53:
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   §§push("1");
                                                   if(!(_loc1_ || this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.itemName);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§push("_SPECIAL");
                                                      if(_loc1_ || this)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            §§push(null);
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§push(null);
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     addr127:
                                                                     §§push(null);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr210:
                                                                     return null;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr127);
                                                            }
                                                            else
                                                            {
                                                               addr205:
                                                               §§push(null);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         else
                                                         {
                                                            addr186:
                                                            §§push(null);
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      else
                                                      {
                                                         addr185:
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   else
                                                   {
                                                      addr184:
                                                      §§push("_SPECIAL");
                                                   }
                                                   §§goto(addr185);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §§goto(addr160);
                                                      }
                                                      break;
                                                      §§goto(addr53);
                                                   }
                                                   §§goto(addr169);
                                                   addr158:
                                                }
                                             }
                                             else
                                             {
                                                if(!(_loc1_ || this))
                                                {
                                                   break loop0;
                                                }
                                                addr142:
                                             }
                                          }
                                          return null;
                                       }
                                       addr182:
                                       §§goto(addr184);
                                       §§push(this.itemName);
                                       addr49:
                                    }
                                    §§goto(addr148);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr49);
                              §§goto(addr158);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr182);
            §§push("1");
         }
         §§goto(addr142);
      }
   }
}
