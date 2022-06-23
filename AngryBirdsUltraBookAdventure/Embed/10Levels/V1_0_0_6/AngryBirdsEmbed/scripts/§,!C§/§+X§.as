package §,!C§
{
   import §%!6§.§'[§;
   import §+!?§.§"h§;
   import §3G§.§!E§;
   import §7!=§.Texture;
   
   public class §+X§
   {
      
      public static const §9?§:int = 0;
      
      public static const §1!C§:int = 6;
      
      public static const §!q§:int = 7;
      
      public static const §2p§:int = 8;
      
      public static const § !'§:int = 3;
      
      public static const §92§:int = 5;
      
      public static const § >§:int = 2;
      
      public static const § 2§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9?§ = 0;
            §1!C§ = 6;
            if(_loc2_)
            {
               §!q§ = 7;
               §2p§ = 8;
               § !'§ = 3;
               §92§ = 5;
               if(!_loc1_)
               {
                  § >§ = 2;
                  if(!_loc1_)
                  {
                     addr56:
                     § 2§ = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      public var §>!"§:String;
      
      public var §!U§:int;
      
      protected var §2m§:§'[§;
      
      public var §'U§:Number;
      
      public var §4!§:String;
      
      public var §"r§:Number = 1;
      
      public var §%!J§:Number;
      
      private var §?"§:Boolean = false;
      
      private var §+M§:String;
      
      private var §?!I§:int;
      
      private var §#!+§:§6m§;
      
      private var §]!<§:§8!3§;
      
      private var §class§:§implements§;
      
      public function §+X§(param1:String, param2:int, param3:§8!3§, param4:§implements§, param5:§6m§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         super();
         if(_loc15_ || param3)
         {
            this.§>!"§ = param1;
            if(!_loc14_)
            {
               this.§!U§ = param2;
               this.§]!<§ = param3;
               if(!_loc14_)
               {
                  this.§+M§ = param12;
                  if(_loc15_)
                  {
                     addr44:
                     this.§?!I§ = param13;
                     if(!_loc14_)
                     {
                        addr59:
                        this.§?"§ = param11;
                        this.§class§ = param4;
                        if(_loc15_ || param2)
                        {
                           this.§#!+§ = param5;
                           §§goto(addr75);
                        }
                     }
                     §§goto(addr100);
                  }
                  addr75:
                  this.§2m§ = new §'[§(param6);
                  this.§4!§ = param7;
                  this.§"r§ = param8;
                  §§goto(addr83);
               }
               addr83:
               if(this.§"r§ <= 0)
               {
                  addr100:
                  this.§"r§ = 1;
                  if(_loc14_ && param2)
                  {
                  }
                  §§goto(addr123);
               }
               this.§%!J§ = param9;
               if(_loc15_ || param1)
               {
                  this.§'U§ = param10;
                  §§goto(addr123);
               }
               addr123:
               return;
            }
            §§goto(addr44);
         }
         §§goto(addr59);
      }
      
      public function get front() : Boolean
      {
         return this.§?"§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§+M§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§?!I§;
      }
      
      public function §7a§() : int
      {
         return this.shape.§,W§();
      }
      
      public function §;r§() : int
      {
         return this.shape.§9$§();
      }
      
      public function §#G§() : int
      {
         return this.shape.§8'§();
      }
      
      public function override() : Number
      {
         return this.§]!<§.getValue(§8!3§.§4!=§);
      }
      
      public function §1]§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§"!I§));
      }
      
      public function §![§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§'!0§));
      }
      
      public function §<<§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§,0§));
      }
      
      public function §6S§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§default§));
      }
      
      public function §-U§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§%i§));
      }
      
      public function §9>§() : Number
      {
         return Number(this.§]!<§.getValue(§8!3§.§8!9§));
      }
      
      public function §1!%§() : int
      {
         return this.§'U§;
      }
      
      public function get material() : §8!3§
      {
         return this.§]!<§;
      }
      
      public function get shape() : §6m§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         if(!_loc3_)
         {
            §§push(this.§#!+§);
            if(_loc2_ || _loc3_)
            {
               if(!§§pop())
               {
                  _loc1_ = §"h§.§1C§.§ use§.§,!;§(this.§>!"§).getFrame(0).texture;
                  addr31:
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§6m§));
                     §§push(this.§>!"§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc2_)
                     {
                        §§push(§!E§.§#N§);
                        if(_loc2_ || _loc1_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              addr95:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(_loc2_)
                           {
                              §§goto(addr101);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr101);
            }
            addr101:
            §§push(§§pop() * §!E§.§#N§);
            if(!_loc3_)
            {
               addr106:
               §§push(§§pop() / 2);
            }
            §§pop().§#!+§ = new §§pop().§6m§(§§pop(),§§pop(),§§pop(),§§pop());
            return this.§#!+§;
         }
         §§goto(addr31);
      }
      
      public function get §#T§() : §implements§
      {
         return this.§class§;
      }
      
      public function get score() : int
      {
         return this.§2m§.getValue();
      }
   }
}
