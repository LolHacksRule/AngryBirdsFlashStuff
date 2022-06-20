package §>!5§
{
   import §6V§.§&"g§;
   import §7"&§.§##v§;
   
   public class §9!0§ implements §!#r§
   {
      
      protected static const §<2§:String = §##$§.§ #E§;
      
      protected static const §2"5§:String = §##$§.§?2§;
      
      protected static const §>!e§:String = §##$§.§[# §;
      
      protected static const §for§:String = §##$§.§%#a§;
      
      protected static const §#$7§:String = §##$§.§&g§;
      
      protected static const §=!p§:String = §##$§.§ u§;
      
      protected static const §2"I§:String = §##$§.§ #5§;
      
      protected static const §,#j§:String = §##$§.§!!h§;
      
      protected static const §-!h§:Array = [3,8];
      
      protected static const §2# §:Array = [2,2];
      
      protected static const §%"M§:Array = [2,3];
      
      protected static const §@#A§:Array = [5,5];
      
      protected static const §#!w§:Array = [2,2];
      
      protected static const §[#D§:Array = [1,2];
      
      protected static const §%H§:Array = [10,3.5];
      
      protected static const §<#I§:Number = 0.05;
      
      protected static const §!#!§:Number = 0.1;
      
      protected static const §=!]§:Number = 0.5;
       
      
      protected var §-"W§:String = "idleState";
      
      protected var §""m§:Number = 0.0;
      
      protected var §?#U§:Number = 0.0;
      
      protected var §<"?§:§&"g§;
      
      protected var §=!"§:Number = -1.0;
      
      protected var §=#1§:Number = 0.0;
      
      protected var §1N§:Array;
      
      protected var §<V§:§[3§;
      
      protected var §#$5§:Boolean;
      
      protected var §==§:Number = 0.0;
      
      protected var §>!?§:String;
      
      public function §9!0§(param1:§[3§, param2:§##v§)
      {
         this.§<"?§ = new §&"g§();
         super();
         this.§<V§ = param1;
         this.§1N§ = param2.§@#"§();
         this.§<"?§[§<2§] = §-!h§;
         this.§<"?§[§2"5§] = §2# §;
         this.§<"?§[§>!e§] = §%"M§;
         this.§<"?§[§for§] = §@#A§;
         this.§<"?§[§#$7§] = §#!w§;
         this.§<"?§[§=!p§] = §[#D§;
         this.§<"?§[§2"I§] = §%H§;
         this.§=$6§();
      }
      
      public function get state() : String
      {
         return this.§-"W§;
      }
      
      public function §;"O§(param1:§#-§) : void
      {
         if(param1.getBody().GetLinearVelocity().Length() > 1)
         {
            this.§9!5§(§#$7§);
         }
      }
      
      public function §'q§(param1:§#-§) : void
      {
         if(param1 is §"7§)
         {
            this.§9!5§(§#$7§);
         }
      }
      
      public function §=#q§(param1:§#-§) : void
      {
      }
      
      public function §5"P§(param1:§#-§) : void
      {
         if(param1 is §"7§)
         {
            this.§9!5§(§=!p§);
         }
      }
      
      protected function §+"!§(param1:String) : Number
      {
         if(this.§#$5§)
         {
            return -1;
         }
         var _loc2_:Array = this.§<"?§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §9!5§(param1:String) : void
      {
         if(this.§ #%§ && param1 != §,#j§)
         {
            return;
         }
         if(this.§==§ > 0.5 && param1 != §2"I§)
         {
            return;
         }
         this.§""m§ = 0;
         this.§?#U§ = this.§+"!§(param1);
         if(param1 != §<2§)
         {
            this.§=!"§ = -1;
         }
         else
         {
            this.§=$6§();
         }
         this.§-"W§ = param1;
         this.§<V§.§<!?§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§-"W§)
         {
            case §<2§:
               this.§]!,§();
               break;
            case §2"5§:
               this.§"!5§();
               break;
            case §>!e§:
               this.§0#x§();
               break;
            case §for§:
               this.§`!'§();
               break;
            case §#$7§:
               this.§>6§();
               break;
            case §=!p§:
               this.§5"w§();
               break;
            default:
               this.§9!5§(§<2§);
         }
      }
      
      protected function §]!,§() : void
      {
         if(Math.random() < §<#I§)
         {
            this.§9!5§(§>!e§);
         }
         else if(Math.random() < §!#!§)
         {
            this.§9!5§(§2"5§);
         }
         else
         {
            this.§9!5§(§<2§);
         }
      }
      
      protected function §"!5§() : void
      {
         this.§9!5§(§<2§);
      }
      
      protected function §0#x§() : void
      {
         this.§9!5§(§for§);
      }
      
      protected function §`!'§() : void
      {
         if(Math.random() < §=!]§)
         {
            this.§9!5§(§2"5§);
         }
         else
         {
            this.§9!5§(§<2§);
         }
      }
      
      protected function §>6§() : void
      {
         this.§9!5§(§<2§);
      }
      
      protected function §5"w§() : void
      {
         this.§9!5§(§2"5§);
      }
      
      protected function §=$6§() : void
      {
         if(this.§=!"§ < 0)
         {
            this.§=!"§ = 0;
            this.§=#1§ = (this.§1N§[0] + Math.random() * this.§1N§[1]) * 1000;
         }
      }
      
      public function §##F§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §<2§)
         {
            if(param2 > 0)
            {
               this.§<V§.§<!?§.selectSubAnimation(0,false);
               this.§=$6§();
            }
            else if(param2 == 0 && param3 > 1 && this.§=!"§ > this.§=#1§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§<V§.§<!?§.selectSubAnimation(_loc4_,false);
               this.§=!"§ = -1;
            }
         }
         else if(param1 == §for§)
         {
            this.playSound(this.§>!?§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§-"W§ == §for§)
         {
            this.§>!?§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§<V§.§51§(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§""m§ += param1;
         if(this.§=!"§ >= 0)
         {
            this.§=!"§ += param1;
         }
         if(this.§?#U§ >= 0 && this.§""m§ >= this.§?#U§)
         {
            this.updateState();
         }
      }
      
      public function get § #%§() : Boolean
      {
         return this.§#$5§;
      }
      
      public function set § #%§(param1:Boolean) : void
      {
         this.§#$5§ = param1;
         if(this.§#$5§)
         {
            this.§9!5§(§,#j§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§==§ = param1;
         if(param1 > 0.5)
         {
            this.§9!5§(§2"I§);
         }
      }
   }
}
