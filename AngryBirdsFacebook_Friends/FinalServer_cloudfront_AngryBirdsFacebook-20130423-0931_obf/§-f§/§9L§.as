package §-f§
{
   import §4!<§.§'!S§;
   import §9@§.§9!D§;
   import §<5§.Texture;
   import §@!"§.§?l§;
   
   public class §9L§
   {
      
      public static const §7O§:int = 0;
      
      public static const §7!V§:int = 6;
      
      public static const §=8§:int = 7;
      
      public static const §6!y§:int = 8;
      
      public static const §'!8§:int = 3;
      
      public static const §["-§:int = 5;
      
      public static const §+"W§:int = 2;
      
      public static const §"!-§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §9L§)
         {
            §7O§ = 0;
            while(true)
            {
               §7!V§ = 6;
               addr117:
               addr95:
               while(true)
               {
                  §=8§ = 7;
                  addr112:
                  while(true)
                  {
                     §6!y§ = 8;
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §["-§ = 5;
               loop5:
               while(true)
               {
                  §+"W§ = 2;
                  while(true)
                  {
                     if(_loc1_)
                     {
                        continue loop5;
                     }
                     addr59:
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr117);
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr95);
                        }
                        else
                        {
                           while(true)
                           {
                              §'!8§ = 3;
                              continue loop4;
                           }
                           addr107:
                        }
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr107);
      }
      
      public var §@x§:String;
      
      public var §<!G§:int;
      
      protected var §9"8§:§9!D§;
      
      public var §8"4§:Number;
      
      public var §;"V§:String;
      
      public var §-!@§:Number = 1;
      
      public var §^!2§:Number;
      
      private var §>2§:Boolean = false;
      
      private var §0"9§:String;
      
      private var §!"F§:int;
      
      private var §]!k§:§+"R§;
      
      private var §;a§:§@!M§;
      
      private var §""I§:§[!J§;
      
      public function §9L§(param1:String, param2:int, param3:§@!M§, param4:§[!J§, param5:§+"R§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            super();
            loop0:
            while(true)
            {
               this.§@x§ = param1;
               while(true)
               {
                  this.§<!G§ = param2;
                  while(true)
                  {
                     this.§;a§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§0"9§ = param12;
                        while(true)
                        {
                           this.§!"F§ = param13;
                           loop5:
                           while(true)
                           {
                              this.§>2§ = param11;
                              while(true)
                              {
                                 this.§""I§ = param4;
                                 continue loop3;
                                 addr125:
                                 while(!(_loc15_ && param3))
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc15_ && param2))
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      public function get front() : Boolean
      {
         return this.§>2§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§0"9§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§!"F§;
      }
      
      public function §9C§() : int
      {
         return this.shape.§&"A§();
      }
      
      public function §6d§() : int
      {
         return this.shape.§`"V§();
      }
      
      public function §&"'§() : int
      {
         return this.shape.§0a§();
      }
      
      public function §%o§() : Number
      {
         return this.§;a§.getValue(§@!M§.§4r§);
      }
      
      public function §`!§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§>"3§));
      }
      
      public function §9!+§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§1!4§));
      }
      
      public function §3"M§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§4!n§));
      }
      
      public function §'"3§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§>a§));
      }
      
      public function §3"@§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§1$§));
      }
      
      public function §>!b§() : Number
      {
         return Number(this.§;a§.getValue(§@!M§.§8!$§));
      }
      
      public function §<!5§() : int
      {
         return this.§8"4§;
      }
      
      public function get material() : §@!M§
      {
         return this.§;a§;
      }
      
      public function get shape() : §+"R§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(!_loc2_)
         {
            §§push(this.§]!k§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  _loc1_ = §?l§.§'h§.animationManager.getAnimation(this.§@x§).getFrame(0).texture;
                  addr27:
                  if(!(_loc2_ && this))
                  {
                     §§push(this);
                     §§push(§§findproperty(§+"R§));
                     §§push(this.§@x§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§'!S§.§2"<§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_)
                           {
                              addr86:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(_loc3_)
                           {
                              §§push(§§pop() * §'!S§.§2"<§);
                              if(!_loc3_)
                              {
                              }
                              §§goto(addr99);
                           }
                           §§push(§§pop() / 2);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr99);
            }
            addr99:
            §§pop().§]!k§ = new §§pop().§+"R§(§§pop(),§§pop(),§§pop(),§§pop());
            return this.§]!k§;
         }
         §§goto(addr27);
      }
      
      public function get §!j§() : §[!J§
      {
         return this.§""I§;
      }
      
      public function get score() : int
      {
         return this.§9"8§.getValue();
      }
   }
}
