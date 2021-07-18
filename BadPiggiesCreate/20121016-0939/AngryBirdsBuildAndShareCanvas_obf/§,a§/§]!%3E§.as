package §,a§
{
   import §%c§.§=!X§;
   import §'@§.§^J§;
   import §5!V§.§!w§;
   import §7R§.Texture;
   
   public class §]!>§
   {
      
      public static const §=!a§:int = 0;
      
      public static const §&j§:int = 6;
      
      public static const §%q§:int = 7;
      
      public static const §;!B§:int = 8;
      
      public static const §-"?§:int = 3;
      
      public static const §9!K§:int = 5;
      
      public static const §,"9§:int = 2;
      
      public static const §&;§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=!a§ = 0;
            while(true)
            {
               §&j§ = 6;
               while(true)
               {
                  §%q§ = 7;
                  addr84:
                  while(_loc1_)
                  {
                  }
               }
            }
            addr105:
         }
         while(true)
         {
            §;!B§ = 8;
            loop4:
            while(true)
            {
               §-"?§ = 3;
               loop5:
               while(!_loc2_)
               {
                  §9!K§ = 5;
                  loop6:
                  while(_loc1_)
                  {
                     §,"9§ = 2;
                     while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           continue loop6;
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr105);
                     }
                     continue loop5;
                  }
                  continue loop4;
               }
               §§goto(addr84);
            }
         }
      }
      
      public var §!F§:String;
      
      public var §,!E§:int;
      
      protected var §@!8§:§^J§;
      
      public var §7!]§:Number;
      
      public var §=!_§:String;
      
      public var § !u§:Number = 1;
      
      public var §'">§:Number;
      
      private var §#">§:Boolean = false;
      
      private var §'K§:String;
      
      private var §0V§:int;
      
      private var §#z§:§^7§;
      
      private var §]L§:§+!Z§;
      
      private var §9S§:§+"&§;
      
      public function §]!>§(param1:String, param2:int, param3:§+!Z§, param4:§+"&§, param5:§^7§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            super();
            while(true)
            {
               this.§!F§ = param1;
               addr179:
               while(true)
               {
                  this.§,!E§ = param2;
               }
            }
            addr182:
         }
         while(true)
         {
            this.§]L§ = param3;
            loop3:
            while(true)
            {
               this.§'K§ = param12;
               loop4:
               while(true)
               {
                  if(!_loc14_)
                  {
                     this.§0V§ = param13;
                     loop5:
                     while(true)
                     {
                        this.§#">§ = param11;
                        while(_loc15_)
                        {
                           if(!_loc14_)
                           {
                              this.§9S§ = param4;
                              while(true)
                              {
                                 this.§#z§ = param5;
                                 addr128:
                                 while(true)
                                 {
                                    this.§@!8§ = new §^J§(param6);
                                    loop9:
                                    while(true)
                                    {
                                       this.§=!_§ = param7;
                                       continue loop4;
                                       addr71:
                                       while(true)
                                       {
                                          if(!(_loc14_ && param2))
                                          {
                                             continue loop5;
                                          }
                                          continue loop9;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              addr133:
                           }
                           addr58:
                           if(_loc14_ && this)
                           {
                              continue;
                           }
                           this.§7!]§ = param10;
                           addr65:
                           if(_loc15_ || param1)
                           {
                              addr35:
                              if(!(_loc14_ && param2))
                              {
                                 addr42:
                                 if(!(_loc15_ || param1))
                                 {
                                    for(; _loc15_; §§goto(addr42))
                                    {
                                       if(this.§ !u§ > 0)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             this.§'">§ = param9;
                                             addr56:
                                             addr93:
                                             while(true)
                                             {
                                                if(!_loc14_)
                                                {
                                                   §§goto(addr58);
                                                }
                                                §§goto(addr65);
                                             }
                                             addr93:
                                             while(!_loc14_)
                                             {
                                                continue loop14;
                                                §§goto(addr35);
                                             }
                                             §§goto(addr128);
                                          }
                                          continue;
                                       }
                                       §§goto(addr71);
                                    }
                                    §§goto(addr133);
                                    addr100:
                                 }
                                 if(_loc15_)
                                 {
                                    return;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr56);
                        }
                        continue loop3;
                     }
                  }
                  else
                  {
                     §§goto(addr182);
                  }
                  §§goto(addr179);
               }
            }
         }
      }
      
      public function get front() : Boolean
      {
         return this.§#">§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§'K§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§0V§;
      }
      
      public function §9!§() : int
      {
         return this.shape.§7!U§();
      }
      
      public function §3[§() : int
      {
         return this.shape.§=y§();
      }
      
      public function §=B§() : int
      {
         return this.shape.§-p§();
      }
      
      public function §5g§() : Number
      {
         return this.§]L§.getValue(§+!Z§.§8";§);
      }
      
      public function §7"8§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§-!#§));
      }
      
      public function §^!?§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§,A§));
      }
      
      public function §[">§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§%"'§));
      }
      
      public function §-!I§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§,!>§));
      }
      
      public function §0i§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§9",§));
      }
      
      public function §=r§() : Number
      {
         return Number(this.§]L§.getValue(§+!Z§.§@!T§));
      }
      
      public function §,!,§() : int
      {
         return this.§7!]§;
      }
      
      public function get material() : §+!Z§
      {
         return this.§]L§;
      }
      
      public function get shape() : §^7§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         if(_loc2_)
         {
            §§push(this.§#z§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  addr31:
                  _loc1_ = §=!X§.§!'§.§<"%§.§@7§(this.§!F§).getFrame(0).texture;
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this);
                     §§push(§§findproperty(§^7§));
                     §§push(this.§!F§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§!w§.§4!-§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              addr80:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(!(_loc3_ && _loc1_))
                           {
                              addr91:
                              §§push(§§pop() * §!w§.§4!-§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() / 2);
                              }
                           }
                           §§pop().§#z§ = new §§pop().§^7§(§§pop(),§§pop(),§§pop(),§§pop());
                           addr112:
                           return this.§#z§;
                           addr110:
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr80);
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr112);
         }
         §§goto(addr31);
      }
      
      public function get §3k§() : §+"&§
      {
         return this.§9S§;
      }
      
      public function get score() : int
      {
         return this.§@!8§.getValue();
      }
   }
}
