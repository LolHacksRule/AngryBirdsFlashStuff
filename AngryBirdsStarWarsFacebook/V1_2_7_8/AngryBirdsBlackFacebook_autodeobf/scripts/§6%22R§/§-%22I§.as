package §6"R§
{
   import §7A§.§5"2§;
   import §>P§.§&"T§;
   
   public class §-"I§ implements §!+§
   {
      
      protected static const §'A§:String = §6"U§.§+S§;
      
      protected static const §^"^§:String = §6"U§.§3"s§;
      
      protected static const §7,§:String = §6"U§.§`#3§;
      
      protected static const §5"y§:String = §6"U§.§#"1§;
      
      protected static const §'"h§:String = §6"U§.§3z§;
      
      protected static const §,A§:String = §6"U§.§5W§;
      
      protected static const §^"k§:String = §6"U§.§1!m§;
      
      protected static const §,!Q§:String = §6"U§.§;R§;
      
      protected static const §8!G§:Array = [3,8];
      
      protected static const §!!g§:Array = [2,2];
      
      protected static const §=!?§:Array = [2,3];
      
      protected static const §`!j§:Array = [5,5];
      
      protected static const §`!h§:Array = [2,2];
      
      protected static const § "H§:Array = [1,2];
      
      protected static const §'!2§:Array = [10,3.5];
      
      protected static const §+#,§:Number = 0.05;
      
      protected static const §7p§:Number = 0.1;
      
      protected static const §<",§:Number = 0.5;
       
      
      protected var §;"#§:String;
      
      protected var §!u§:Number = 0.0;
      
      protected var §6i§:Number = 0.0;
      
      protected var §!"y§:§5"2§;
      
      protected var §5"g§:Number = -1.0;
      
      protected var §2y§:Number = 0.0;
      
      protected var §&!d§:Array;
      
      protected var §-@§:§[!R§;
      
      protected var §"_§:Boolean;
      
      protected var §&"G§:Number = 0.0;
      
      protected var §3H§:String;
      
      public function §-"I§(param1:§[!R§, param2:§&"T§)
      {
         this.§;"#§ = §6"U§.§+S§;
         this.§!"y§ = new §5"2§();
         super();
         this.§-@§ = param1;
         this.§&!d§ = param2.§>r§();
         this.§!"y§[§'A§] = §8!G§;
         this.§!"y§[§^"^§] = §!!g§;
         this.§!"y§[§7,§] = §=!?§;
         this.§!"y§[§5"y§] = §`!j§;
         this.§!"y§[§'"h§] = §`!h§;
         this.§!"y§[§,A§] = § "H§;
         this.§!"y§[§^"k§] = §'!2§;
         this.§+!s§();
      }
      
      public function get state() : String
      {
         return this.§;"#§;
      }
      
      public function § ",§(param1:§!z§) : void
      {
         if(param1.§?"Z§().GetLinearVelocity().Length() > 1)
         {
            this.§7"C§(§'"h§);
         }
      }
      
      public function §`"Z§(param1:§!z§) : void
      {
         if(param1 is §%!0§)
         {
            this.§7"C§(§'"h§);
         }
      }
      
      public function §^u§(param1:§!z§) : void
      {
      }
      
      public function §9"L§(param1:§!z§) : void
      {
         if(param1 is §%!0§)
         {
            this.§7"C§(§,A§);
         }
      }
      
      protected function §%9§(param1:String) : Number
      {
         if(this.§"_§)
         {
            return -1;
         }
         var _loc2_:Array = this.§!"y§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §7"C§(param1:String) : void
      {
         if(this.isFrozen && param1 != §,!Q§)
         {
            return;
         }
         if(this.§&"G§ > 0.5 && param1 != §^"k§)
         {
            return;
         }
         this.§!u§ = 0;
         this.§6i§ = this.§%9§(param1);
         if(param1 != §'A§)
         {
            this.§5"g§ = -1;
         }
         else
         {
            this.§+!s§();
         }
         this.§;"#§ = param1;
         this.§-@§.§1!w§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§;"#§)
         {
            case §'A§:
               this.§1g§();
               break;
            case §^"^§:
               this.§'i§();
               break;
            case §7,§:
               this.§<!n§();
               break;
            case §5"y§:
               this.§^"o§();
               break;
            case §'"h§:
               this.§3!G§();
               break;
            case §,A§:
               this.§,"?§();
               break;
            default:
               this.§7"C§(§'A§);
         }
      }
      
      protected function §1g§() : void
      {
         if(Math.random() < §+#,§)
         {
            this.§7"C§(§7,§);
         }
         else if(Math.random() < §7p§)
         {
            this.§7"C§(§^"^§);
         }
         else
         {
            this.§7"C§(§'A§);
         }
      }
      
      protected function §'i§() : void
      {
         this.§7"C§(§'A§);
      }
      
      protected function §<!n§() : void
      {
         this.§7"C§(§5"y§);
      }
      
      protected function §^"o§() : void
      {
         if(Math.random() < §<",§)
         {
            this.§7"C§(§^"^§);
         }
         else
         {
            this.§7"C§(§'A§);
         }
      }
      
      protected function §3!G§() : void
      {
         this.§7"C§(§'A§);
      }
      
      protected function §,"?§() : void
      {
         this.§7"C§(§^"^§);
      }
      
      protected function §+!s§() : void
      {
         if(this.§5"g§ < 0)
         {
            this.§5"g§ = 0;
            this.§2y§ = (this.§&!d§[0] + Math.random() * this.§&!d§[1]) * 1000;
         }
      }
      
      public function handleAnimationEnd(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §'A§)
         {
            if(param2 > 0)
            {
               this.§-@§.§1!w§.selectSubAnimation(0,false);
               this.§+!s§();
            }
            else if(param2 == 0 && param3 > 1 && this.§5"g§ > this.§2y§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§-@§.§1!w§.selectSubAnimation(_loc4_,false);
               this.§5"g§ = -1;
            }
         }
         else if(param1 == §5"y§)
         {
            this.§=Y§(this.§3H§);
         }
      }
      
      public function §=Y§(param1:String) : void
      {
         if(this.§;"#§ == §5"y§)
         {
            this.§3H§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§-@§.§=Y§(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§!u§ += param1;
         if(this.§5"g§ >= 0)
         {
            this.§5"g§ += param1;
         }
         if(this.§6i§ >= 0 && this.§!u§ >= this.§6i§)
         {
            this.updateState();
         }
      }
      
      public function get isFrozen() : Boolean
      {
         return this.§"_§;
      }
      
      public function set isFrozen(param1:Boolean) : void
      {
         this.§"_§ = param1;
         if(this.§"_§)
         {
            this.§7"C§(§,!Q§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§&"G§ = param1;
         if(param1 > 0.5)
         {
            this.§7"C§(§^"k§);
         }
      }
   }
}
