package §[#a§
{
   import §>!#§.§'"R§;
   import §`#C§.§<?§;
   
   public class §5P§ implements §%"<§
   {
      
      protected static const §&#G§:String = §5#v§.§`"'§;
      
      protected static const §5v§:String = §5#v§.§%!J§;
      
      protected static const §9!-§:String = §5#v§.§;!t§;
      
      protected static const §;!R§:String = §5#v§.§'!4§;
      
      protected static const §##l§:String = §5#v§.§8p§;
      
      protected static const § "3§:String = §5#v§.§1"I§;
      
      protected static const §2#7§:String = §5#v§.§;"U§;
      
      protected static const §%#@§:String = §5#v§.§2#J§;
      
      protected static const §8"Y§:Array = [3,8];
      
      protected static const §-!`§:Array = [2,2];
      
      protected static const §4!%§:Array = [2,3];
      
      protected static const §?!9§:Array = [5,5];
      
      protected static const §@!Z§:Array = [2,2];
      
      protected static const §%#m§:Array = [1,2];
      
      protected static const §"X§:Array = [10,3.5];
      
      protected static const §]!,§:Number = 0.05;
      
      protected static const §@"W§:Number = 0.1;
      
      protected static const §@!`§:Number = 0.5;
       
      
      protected var §&"R§:String = "idleState";
      
      protected var §[b§:Number = 0.0;
      
      protected var §9!Z§:Number = 0.0;
      
      protected var §?S§:§'"R§;
      
      protected var §>$4§:Number = -1.0;
      
      protected var §>"1§:Number = 0.0;
      
      protected var §&]§:Array;
      
      protected var §"#T§:§;"Y§;
      
      protected var § W§:Boolean;
      
      protected var §?"#§:Number = 0.0;
      
      protected var §7!W§:String;
      
      public function §5P§(param1:§;"Y§, param2:§<?§)
      {
         this.§?S§ = new §'"R§();
         super();
         this.§"#T§ = param1;
         this.§&]§ = param2.§,#_§();
         this.§?S§[§&#G§] = §8"Y§;
         this.§?S§[§5v§] = §-!`§;
         this.§?S§[§9!-§] = §4!%§;
         this.§?S§[§;!R§] = §?!9§;
         this.§?S§[§##l§] = §@!Z§;
         this.§?S§[§ "3§] = §%#m§;
         this.§?S§[§2#7§] = §"X§;
         this.§@"z§();
      }
      
      public function get state() : String
      {
         return this.§&"R§;
      }
      
      public function §1z§(param1:§<"H§) : void
      {
         if(param1.getBody().GetLinearVelocity().Length() > 1)
         {
            this.§;A§(§##l§);
         }
      }
      
      public function §9!7§(param1:§<"H§) : void
      {
         if(param1 is §-k§)
         {
            this.§;A§(§##l§);
         }
      }
      
      public function §'!S§(param1:§<"H§) : void
      {
      }
      
      public function §@"d§(param1:§<"H§) : void
      {
         if(param1 is §-k§)
         {
            this.§;A§(§ "3§);
         }
      }
      
      protected function § =§(param1:String) : Number
      {
         if(this.§ W§)
         {
            return -1;
         }
         var _loc2_:Array = this.§?S§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §;A§(param1:String) : void
      {
         if(this.§["+§ && param1 != §%#@§)
         {
            return;
         }
         if(this.§?"#§ > 0.5 && param1 != §2#7§)
         {
            return;
         }
         this.§[b§ = 0;
         this.§9!Z§ = this.§ =§(param1);
         if(param1 != §&#G§)
         {
            this.§>$4§ = -1;
         }
         else
         {
            this.§@"z§();
         }
         this.§&"R§ = param1;
         this.§"#T§.§4"C§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§&"R§)
         {
            case §&#G§:
               this.§@!&§();
               break;
            case §5v§:
               this.§3#x§();
               break;
            case §9!-§:
               this.§%!w§();
               break;
            case §;!R§:
               this.§7$5§();
               break;
            case §##l§:
               this.§]#5§();
               break;
            case § "3§:
               this.§5!X§();
               break;
            default:
               this.§;A§(§&#G§);
         }
      }
      
      protected function §@!&§() : void
      {
         if(Math.random() < §]!,§)
         {
            this.§;A§(§9!-§);
         }
         else if(Math.random() < §@"W§)
         {
            this.§;A§(§5v§);
         }
         else
         {
            this.§;A§(§&#G§);
         }
      }
      
      protected function §3#x§() : void
      {
         this.§;A§(§&#G§);
      }
      
      protected function §%!w§() : void
      {
         this.§;A§(§;!R§);
      }
      
      protected function §7$5§() : void
      {
         if(Math.random() < §@!`§)
         {
            this.§;A§(§5v§);
         }
         else
         {
            this.§;A§(§&#G§);
         }
      }
      
      protected function §]#5§() : void
      {
         this.§;A§(§&#G§);
      }
      
      protected function §5!X§() : void
      {
         this.§;A§(§5v§);
      }
      
      protected function §@"z§() : void
      {
         if(this.§>$4§ < 0)
         {
            this.§>$4§ = 0;
            this.§>"1§ = (this.§&]§[0] + Math.random() * this.§&]§[1]) * 1000;
         }
      }
      
      public function §]#@§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §&#G§)
         {
            if(param2 > 0)
            {
               this.§"#T§.§4"C§.selectSubAnimation(0,false);
               this.§@"z§();
            }
            else if(param2 == 0 && param3 > 1 && this.§>$4§ > this.§>"1§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§"#T§.§4"C§.selectSubAnimation(_loc4_,false);
               this.§>$4§ = -1;
            }
         }
         else if(param1 == §;!R§)
         {
            this.playSound(this.§7!W§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§&"R§ == §;!R§)
         {
            this.§7!W§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§"#T§.§6!s§(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§[b§ += param1;
         if(this.§>$4§ >= 0)
         {
            this.§>$4§ += param1;
         }
         if(this.§9!Z§ >= 0 && this.§[b§ >= this.§9!Z§)
         {
            this.updateState();
         }
      }
      
      public function get §["+§() : Boolean
      {
         return this.§ W§;
      }
      
      public function set §["+§(param1:Boolean) : void
      {
         this.§ W§ = param1;
         if(this.§ W§)
         {
            this.§;A§(§%#@§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§?"#§ = param1;
         if(param1 > 0.5)
         {
            this.§;A§(§2#7§);
         }
      }
   }
}
