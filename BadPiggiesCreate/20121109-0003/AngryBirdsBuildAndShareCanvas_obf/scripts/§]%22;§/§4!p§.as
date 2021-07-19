package §]";§
{
   import §%!0§.§,4§;
   import §,P§.§'_§;
   import §0!%§.Texture;
   import §<!1§.§9!=§;
   
   public class §4!p§
   {
      
      public static const §>_§:int = 0;
      
      public static const §8!§:int = 6;
      
      public static const §?!$§:int = 7;
      
      public static const §?!o§:int = 8;
      
      public static const §#!U§:int = 3;
      
      public static const §^"0§:int = 5;
      
      public static const §+Q§:int = 2;
      
      public static const § z§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>_§ = 0;
            while(true)
            {
               §8!§ = 6;
               loop1:
               while(true)
               {
                  §?!$§ = 7;
                  addr96:
                  while(true)
                  {
                     §?!o§ = 8;
                     continue loop1;
                  }
               }
            }
            addr105:
         }
         while(true)
         {
            §#!U§ = 3;
            loop5:
            while(true)
            {
               §^"0§ = 5;
               addr60:
               while(_loc1_)
               {
                  if(_loc1_)
                  {
                     §+Q§ = 2;
                     continue loop5;
                  }
                  §§goto(addr96);
               }
               §§goto(addr74);
            }
         }
      }
      
      public var §+!A§:String;
      
      public var §@F§:int;
      
      protected var §[Y§:§9!=§;
      
      public var §6!i§:Number;
      
      public var §=!S§:String;
      
      public var §77§:Number = 1;
      
      public var §%5§:Number;
      
      private var §!%§:Boolean = false;
      
      private var §,H§:String;
      
      private var §'"$§:int;
      
      private var §^!^§:§1Y§;
      
      private var §!!Y§:§0A§;
      
      private var § @§:§34§;
      
      public function §4!p§(param1:String, param2:int, param3:§0A§, param4:§34§, param5:§1Y§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            super();
            while(true)
            {
               this.§+!A§ = param1;
               loop1:
               while(true)
               {
                  this.§@F§ = param2;
                  addr154:
                  if(!(_loc14_ || this))
                  {
                     continue;
                  }
                  this.§=!S§ = param7;
                  loop10:
                  while(_loc14_ || param1)
                  {
                     this.§77§ = param8;
                     while(true)
                     {
                        if(_loc15_ && param2)
                        {
                           continue loop10;
                        }
                        addr114:
                        if(_loc14_ || param3)
                        {
                           addr121:
                           if(_loc15_ && param2)
                           {
                              break;
                           }
                           if(this.§77§ <= 0)
                           {
                              if(_loc14_ || param1)
                              {
                                 continue;
                              }
                              addr85:
                              addr193:
                              while(!(_loc15_ && param3))
                              {
                                 if(_loc14_ || param3)
                                 {
                                    return;
                                 }
                              }
                              while(true)
                              {
                                 this.§,H§ = param12;
                                 loop4:
                                 while(true)
                                 {
                                    this.§'"$§ = param13;
                                    break loop10;
                                    addr147:
                                    while(true)
                                    {
                                       if(_loc15_ && param3)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr154);
                                       addr41:
                                       while(_loc14_ || param1)
                                       {
                                          this.§6!i§ = param10;
                                          if(!_loc14_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr29);
                                       }
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr85);
                              }
                              addr85:
                           }
                           while(true)
                           {
                              this.§%5§ = param9;
                              §§goto(addr41);
                           }
                        }
                        while(true)
                        {
                           this.§[Y§ = new §9!=§(param6);
                           §§goto(addr147);
                           §§goto(addr114);
                        }
                     }
                     while(true)
                     {
                        this.§!!Y§ = param3;
                        §§goto(addr193);
                        §§goto(addr121);
                     }
                  }
                  while(true)
                  {
                     this.§!%§ = param11;
                     §§goto(addr178);
                     §§goto(addr133);
                  }
                  addr133:
               }
               if(!(_loc14_ || param2))
               {
                  continue;
               }
               this.§77§ = 1;
               §§goto(addr85);
            }
         }
         §§goto(addr208);
      }
      
      public function get front() : Boolean
      {
         return this.§!%§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§,H§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§'"$§;
      }
      
      public function §6!3§() : int
      {
         return this.shape.§0! §();
      }
      
      public function §6c§() : int
      {
         return this.shape.§;,§();
      }
      
      public function §<!A§() : int
      {
         return this.shape.§=7§();
      }
      
      public function §9!-§() : Number
      {
         return this.§!!Y§.getValue(§0A§.§3U§);
      }
      
      public function §0-§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§!"3§));
      }
      
      public function §<&§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§`!l§));
      }
      
      public function §2"3§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§1a§));
      }
      
      public function §-!m§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§8!@§));
      }
      
      public function §+!F§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§4&§));
      }
      
      public function §#h§() : Number
      {
         return Number(this.§!!Y§.getValue(§0A§.§'>§));
      }
      
      public function §`!c§() : int
      {
         return this.§6!i§;
      }
      
      public function get material() : §0A§
      {
         return this.§!!Y§;
      }
      
      public function get shape() : §1Y§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(_loc3_)
         {
            §§push(this.§^!^§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  addr27:
                  _loc1_ = §'_§.§=M§.§00§.§`" §(this.§+!A§).getFrame(0).texture;
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§1Y§));
                     §§push(this.§+!A§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§,4§.§,^§);
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc2_)
                           {
                              addr76:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(_loc3_)
                           {
                              §§push(§§pop() * §,4§.§,^§);
                              if(!(_loc2_ && this))
                              {
                                 addr102:
                                 §§push(§§pop() / 2);
                              }
                           }
                           §§pop().§^!^§ = new §§pop().§1Y§(§§pop(),§§pop(),§§pop(),§§pop());
                           addr108:
                           return this.§^!^§;
                           addr106:
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr108);
         }
         §§goto(addr27);
      }
      
      public function get §9Y§() : §34§
      {
         return this.§ @§;
      }
      
      public function get score() : int
      {
         return this.§[Y§.getValue();
      }
   }
}
