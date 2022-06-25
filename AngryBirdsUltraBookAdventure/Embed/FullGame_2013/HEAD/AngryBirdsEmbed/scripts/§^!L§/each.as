package §^!L§
{
   import §+!B§.§<!M§;
   import §0! §.Texture;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   
   public class each
   {
      
      public static const §@i§:int = 0;
      
      public static const §=7§:int = 6;
      
      public static const §=!'§:int = 7;
      
      public static const §!!N§:int = 8;
      
      public static const §`V§:int = 3;
      
      public static const §,U§:int = 5;
      
      public static const §9R§:int = 2;
      
      public static const §6Z§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §=!'§ = 7;
            if(_loc2_ || _loc2_)
            {
               §!!N§ = 8;
               §`V§ = 3;
               if(_loc1_ && _loc1_)
               {
               }
               §§goto(addr83);
            }
            §,U§ = 5;
            if(!(_loc1_ && _loc1_))
            {
               §§goto(addr83);
            }
            §§goto(addr88);
         }
         addr83:
         if(_loc2_)
         {
            addr88:
            §6Z§ = 1;
         }
      }
      
      public var §1>§:String;
      
      public var §@%§:int;
      
      protected var §2!§:§<!M§;
      
      public var §13§:Number;
      
      public var §8H§:String;
      
      public var §&!4§:Number = 1;
      
      public var §@!§:Number;
      
      private var §6n§:Boolean = false;
      
      private var §4N§:String;
      
      private var §0!>§:int;
      
      private var §3<§:§"c§;
      
      private var § %§:§5b§;
      
      private var §6s§:§%h§;
      
      public function each(param1:String, param2:int, param3:§5b§, param4:§%h§, param5:§"c§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         super();
         this.§1>§ = param1;
         this.§@%§ = param2;
         if(!(_loc14_ && param3))
         {
            this.§ %§ = param3;
            this.§4N§ = param12;
            this.§0!>§ = param13;
            this.§6n§ = param11;
            if(_loc15_)
            {
               this.§6s§ = param4;
               if(!_loc14_)
               {
                  this.§3<§ = param5;
                  this.§2!§ = new §<!M§(param6);
                  §§goto(addr79);
               }
               §§goto(addr84);
            }
            addr79:
            this.§8H§ = param7;
            if(!_loc14_)
            {
               addr84:
               this.§&!4§ = param8;
               if(this.§&!4§ <= 0)
               {
                  addr91:
                  this.§&!4§ = 1;
               }
               this.§@!§ = param9;
            }
            this.§13§ = param10;
            return;
         }
         §§goto(addr91);
      }
      
      public function get front() : Boolean
      {
         return this.§6n§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§4N§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§0!>§;
      }
      
      public function § 4§() : int
      {
         return this.shape.§3@§();
      }
      
      public function §1o§() : int
      {
         return this.shape.§&1§();
      }
      
      public function §<!;§() : int
      {
         return this.shape.§'6§();
      }
      
      public function §^!?§() : Number
      {
         return this.§ %§.getValue(§5b§.§>!2§);
      }
      
      public function §"7§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§'!1§));
      }
      
      public function §9`§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§-3§));
      }
      
      public function §+u§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§`@§));
      }
      
      public function §9l§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§^!0§));
      }
      
      public function §9k§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§0!,§));
      }
      
      public function § "§() : Number
      {
         return Number(this.§ %§.getValue(§5b§.§<!I§));
      }
      
      public function §3m§() : int
      {
         return this.§13§;
      }
      
      public function get material() : §5b§
      {
         return this.§ %§;
      }
      
      public function get shape() : §"c§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         if(_loc2_)
         {
            §§push(this.§3<§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  _loc1_ = §=w§.§ o§.§;!L§.§8!0§(this.§1>§).getFrame(0).texture;
                  addr31:
                  if(!_loc3_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§"c§));
                     §§push(this.§1>§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(!(_loc3_ && this))
                     {
                        §§push(§ !§.§`J§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc2_)
                           {
                              addr85:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(_loc2_ || this)
                           {
                              §§goto(addr96);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr85);
                  }
               }
               §§goto(addr96);
            }
            addr96:
            §§push(§§pop() * § !§.§`J§);
            if(_loc2_ || _loc1_)
            {
               addr106:
               §§push(§§pop() / 2);
            }
            §§pop().§3<§ = new §§pop().§"c§(§§pop(),§§pop(),§§pop(),§§pop());
            return this.§3<§;
         }
         §§goto(addr31);
      }
      
      public function get §2;§() : §%h§
      {
         return this.§6s§;
      }
      
      public function get score() : int
      {
         return this.§2!§.getValue();
      }
   }
}
