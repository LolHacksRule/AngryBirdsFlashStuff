package §>o§
{
   import §!!9§.Texture;
   import §&!h§.§?!K§;
   import §+&§.§-!7§;
   import §5i§.§4!]§;
   
   public class §8!4§
   {
      
      public static const §`!N§:int = 0;
      
      public static const §0!1§:int = 6;
      
      public static const §%u§:int = 7;
      
      public static const §9!%§:int = 8;
      
      public static const §97§:int = 3;
      
      public static const §+!§:int = 5;
      
      public static const §+!#§:int = 2;
      
      public static const §,!?§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §`!N§ = 0;
            loop0:
            while(true)
            {
               §0!1§ = 6;
               while(true)
               {
                  §%u§ = 7;
                  while(true)
                  {
                     §9!%§ = 8;
                     continue loop0;
                     addr35:
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                        addr42:
                     }
                  }
                  addr64:
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §,!?§ = 1;
                  addr71:
                  if(!_loc2_)
                  {
                     loop6:
                     while(true)
                     {
                        if(_loc1_ && §8!4§)
                        {
                           loop5:
                           while(true)
                           {
                              if(!(_loc1_ && §8!4§))
                              {
                                 addr83:
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §+!#§ = 2;
                                 continue loop6;
                              }
                              addr100:
                              while(true)
                              {
                                 §+!§ = 5;
                                 continue loop5;
                              }
                              §§goto(addr42);
                           }
                           continue loop0;
                        }
                        §§goto(addr64);
                     }
                     continue;
                  }
                  §§goto(addr35);
               }
            }
         }
         §§goto(addr100);
      }
      
      public var §@!p§:String;
      
      public var § W§:int;
      
      protected var §@!q§:§?!K§;
      
      public var §5!1§:Number;
      
      public var §5H§:String;
      
      public var §7!T§:Number = 1;
      
      public var §0K§:Number;
      
      private var § >§:Boolean = false;
      
      private var §`r§:String;
      
      private var §`!b§:int;
      
      private var §;N§:§0!N§;
      
      private var §]!v§:§"!e§;
      
      private var §5!k§:§'y§;
      
      public function §8!4§(param1:String, param2:int, param3:§"!e§, param4:§'y§, param5:§0!N§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            super();
            while(true)
            {
               this.§@!p§ = param1;
               addr191:
               while(!_loc15_)
               {
                  this.§ W§ = param2;
               }
            }
         }
         while(true)
         {
            this.§]!v§ = param3;
            while(true)
            {
               this.§`r§ = param12;
               loop4:
               while(true)
               {
                  this.§`!b§ = param13;
                  addr171:
                  while(true)
                  {
                     this.§ >§ = param11;
                     continue loop4;
                  }
               }
               while(!(_loc15_ && param1))
               {
                  this.§;N§ = param5;
                  §§goto(addr130);
                  §§goto(addr45);
               }
            }
            while(_loc14_ || param1)
            {
               if(this.§7!T§ <= 0)
               {
                  §§goto(addr130);
               }
               §§goto(addr32);
               §§goto(addr38);
            }
         }
      }
      
      public function get front() : Boolean
      {
         return this.§ >§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§`r§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§`!b§;
      }
      
      public function §2g§() : int
      {
         return this.shape.§>1§();
      }
      
      public function §'!"§() : int
      {
         return this.shape.§9^§();
      }
      
      public function §3!9§() : int
      {
         return this.shape.§+!k§();
      }
      
      public function §'a§() : Number
      {
         return this.§]!v§.getValue(§"!e§.§4!T§);
      }
      
      public function §"5§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§-R§));
      }
      
      public function §6!V§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§71§));
      }
      
      public function §3!T§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§@U§));
      }
      
      public function §;!<§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§7_§));
      }
      
      public function §#h§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§@v§));
      }
      
      public function §`!Q§() : Number
      {
         return Number(this.§]!v§.getValue(§"!e§.§^!2§));
      }
      
      public function §0n§() : int
      {
         return this.§5!1§;
      }
      
      public function get material() : §"!e§
      {
         return this.§]!v§;
      }
      
      public function get shape() : §0!N§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(_loc3_)
         {
            §§push(this.§;N§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  _loc1_ = §4!]§.§8C§.animationManager.getAnimation(this.§@!p§).getFrame(0).texture;
                  addr32:
                  if(_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§0!N§));
                     §§push(this.§@!p§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§-!7§.§8!r§);
                        if(_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_ || _loc1_)
                           {
                              addr93:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(_loc3_)
                              {
                                 §§push(§§pop() * §-!7§.§8!r§);
                                 if(!_loc2_)
                                 {
                                    addr102:
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().§;N§ = new §§pop().§0!N§(§§pop(),§§pop(),§§pop(),§§pop());
                                 addr108:
                                 return this.§;N§;
                                 addr106:
                              }
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr108);
         }
         §§goto(addr32);
      }
      
      public function get §8!p§() : §'y§
      {
         return this.§5!k§;
      }
      
      public function get score() : int
      {
         return this.§@!q§.getValue();
      }
   }
}
