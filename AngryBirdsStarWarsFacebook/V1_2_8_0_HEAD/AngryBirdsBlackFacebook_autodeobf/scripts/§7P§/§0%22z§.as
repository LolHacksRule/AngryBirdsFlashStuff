package §7P§
{
   import §1!i§.§,#_§;
   import §2"Y§.§%#@§;
   
   public class §0"z§ implements §^#R§
   {
      
      protected static const §@"m§:String = §`#§.§8!h§;
      
      protected static const §<!N§:String = §`#§.§ E§;
      
      protected static const §7G§:String = §`#§.§="Z§;
      
      protected static const §@S§:String = §`#§.§4a§;
      
      protected static const §4Z§:String = §`#§.§,!Y§;
      
      protected static const §]"6§:String = §`#§.§ # §;
      
      protected static const § "9§:String = §`#§.§^!e§;
      
      protected static const §]8§:String = §`#§.§0!D§;
      
      protected static const §^!§:Array = [3,8];
      
      protected static const §,!E§:Array = [2,2];
      
      protected static const §@"h§:Array = [2,3];
      
      protected static const §[#<§:Array = [5,5];
      
      protected static const §``§:Array = [2,2];
      
      protected static const §=!t§:Array = [1,2];
      
      protected static const §'#A§:Array = [10,3.5];
      
      protected static const § w§:Number = 0.05;
      
      protected static const §0"P§:Number = 0.1;
      
      protected static const §6!'§:Number = 0.5;
       
      
      protected var §6#J§:String;
      
      protected var §?F§:Number = 0.0;
      
      protected var §"!e§:Number = 0.0;
      
      protected var §8#U§:§,#_§;
      
      protected var §>5§:Number = -1.0;
      
      protected var §=!y§:Number = 0.0;
      
      protected var §6!2§:Array;
      
      protected var §6"4§:§]D§;
      
      protected var §3"]§:Boolean;
      
      protected var §1!'§:Number = 0.0;
      
      protected var §@#?§:String;
      
      public function §0"z§(param1:§]D§, param2:§%#@§)
      {
         this.§6#J§ = §`#§.§8!h§;
         this.§8#U§ = new §,#_§();
         super();
         this.§6"4§ = param1;
         this.§6!2§ = param2.§=";§();
         this.§8#U§[§@"m§] = §^!§;
         this.§8#U§[§<!N§] = §,!E§;
         this.§8#U§[§7G§] = §@"h§;
         this.§8#U§[§@S§] = §[#<§;
         this.§8#U§[§4Z§] = §``§;
         this.§8#U§[§]"6§] = §=!t§;
         this.§8#U§[§ "9§] = §'#A§;
         this.§-O§();
      }
      
      public function get state() : String
      {
         return this.§6#J§;
      }
      
      public function §3"U§(param1:§7B§) : void
      {
         if(param1.§3!t§().GetLinearVelocity().Length() > 1)
         {
            this.§6!,§(§4Z§);
         }
      }
      
      public function §7!S§(param1:§7B§) : void
      {
         if(param1 is §?"N§)
         {
            this.§6!,§(§4Z§);
         }
      }
      
      public function §0",§(param1:§7B§) : void
      {
      }
      
      public function §6"u§(param1:§7B§) : void
      {
         if(param1 is §?"N§)
         {
            this.§6!,§(§]"6§);
         }
      }
      
      protected function §`"T§(param1:String) : Number
      {
         if(this.§3"]§)
         {
            return -1;
         }
         var _loc2_:Array = this.§8#U§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §6!,§(param1:String) : void
      {
         if(this.isFrozen && param1 != §]8§)
         {
            return;
         }
         if(this.§1!'§ > 0.5 && param1 != § "9§)
         {
            return;
         }
         this.§?F§ = 0;
         this.§"!e§ = this.§`"T§(param1);
         if(param1 != §@"m§)
         {
            this.§>5§ = -1;
         }
         else
         {
            this.§-O§();
         }
         this.§6#J§ = param1;
         this.§6"4§.§4d§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§6#J§)
         {
            case §@"m§:
               this.§1"c§();
               break;
            case §<!N§:
               this.§[##§();
               break;
            case §7G§:
               this.§[V§();
               break;
            case §@S§:
               this.§!!D§();
               break;
            case §4Z§:
               this.§;!_§();
               break;
            case §]"6§:
               this.§ "J§();
               break;
            default:
               this.§6!,§(§@"m§);
         }
      }
      
      protected function §1"c§() : void
      {
         if(Math.random() < § w§)
         {
            this.§6!,§(§7G§);
         }
         else if(Math.random() < §0"P§)
         {
            this.§6!,§(§<!N§);
         }
         else
         {
            this.§6!,§(§@"m§);
         }
      }
      
      protected function §[##§() : void
      {
         this.§6!,§(§@"m§);
      }
      
      protected function §[V§() : void
      {
         this.§6!,§(§@S§);
      }
      
      protected function §!!D§() : void
      {
         if(Math.random() < §6!'§)
         {
            this.§6!,§(§<!N§);
         }
         else
         {
            this.§6!,§(§@"m§);
         }
      }
      
      protected function §;!_§() : void
      {
         this.§6!,§(§@"m§);
      }
      
      protected function § "J§() : void
      {
         this.§6!,§(§<!N§);
      }
      
      protected function §-O§() : void
      {
         if(this.§>5§ < 0)
         {
            this.§>5§ = 0;
            this.§=!y§ = (this.§6!2§[0] + Math.random() * this.§6!2§[1]) * 1000;
         }
      }
      
      public function handleAnimationEnd(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §@"m§)
         {
            if(param2 > 0)
            {
               this.§6"4§.§4d§.selectSubAnimation(0,false);
               this.§-O§();
            }
            else if(param2 == 0 && param3 > 1 && this.§>5§ > this.§=!y§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§6"4§.§4d§.selectSubAnimation(_loc4_,false);
               this.§>5§ = -1;
            }
         }
         else if(param1 == §@S§)
         {
            this.§"#_§(this.§@#?§);
         }
      }
      
      public function §"#_§(param1:String) : void
      {
         if(this.§6#J§ == §@S§)
         {
            this.§@#?§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§6"4§.§"#_§(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§?F§ += param1;
         if(this.§>5§ >= 0)
         {
            this.§>5§ += param1;
         }
         if(this.§"!e§ >= 0 && this.§?F§ >= this.§"!e§)
         {
            this.updateState();
         }
      }
      
      public function get isFrozen() : Boolean
      {
         return this.§3"]§;
      }
      
      public function set isFrozen(param1:Boolean) : void
      {
         this.§3"]§ = param1;
         if(this.§3"]§)
         {
            this.§6!,§(§]8§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§1!'§ = param1;
         if(param1 > 0.5)
         {
            this.§6!,§(§ "9§);
         }
      }
   }
}
