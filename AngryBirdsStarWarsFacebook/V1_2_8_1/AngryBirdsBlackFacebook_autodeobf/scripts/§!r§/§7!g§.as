package §!r§
{
   import §#g§.§]_§;
   import §+d§.§2!g§;
   
   public class §7!g§ implements §>!b§
   {
      
      protected static const §##3§:String = §%!w§.§`r§;
      
      protected static const §1"4§:String = §%!w§.§+!;§;
      
      protected static const §="5§:String = §%!w§.§`c§;
      
      protected static const § # §:String = §%!w§.§<K§;
      
      protected static const §["'§:String = §%!w§.§[!w§;
      
      protected static const §?;§:String = §%!w§.§&!6§;
      
      protected static const §3"_§:String = §%!w§.§"P§;
      
      protected static const §]Z§:String = §%!w§.§'!R§;
      
      protected static const §""a§:Array = [3,8];
      
      protected static const §"!O§:Array = [2,2];
      
      protected static const §[!3§:Array = [2,3];
      
      protected static const § t§:Array = [5,5];
      
      protected static const §@S§:Array = [2,2];
      
      protected static const §,d§:Array = [1,2];
      
      protected static const §9#§:Array = [10,3.5];
      
      protected static const §]"V§:Number = 0.05;
      
      protected static const §"J§:Number = 0.1;
      
      protected static const §@&§:Number = 0.5;
       
      
      protected var §&1§:String;
      
      protected var §`"f§:Number = 0.0;
      
      protected var §,!`§:Number = 0.0;
      
      protected var §7!B§:§2!g§;
      
      protected var § "L§:Number = -1.0;
      
      protected var §>!-§:Number = 0.0;
      
      protected var § !h§:Array;
      
      protected var § "`§:§^#2§;
      
      protected var §&_§:Boolean;
      
      protected var §^w§:Number = 0.0;
      
      protected var §4"[§:String;
      
      public function §7!g§(param1:§^#2§, param2:§]_§)
      {
         this.§&1§ = §%!w§.§`r§;
         this.§7!B§ = new §2!g§();
         super();
         this.§ "`§ = param1;
         this.§ !h§ = param2.§;!c§();
         this.§7!B§[§##3§] = §""a§;
         this.§7!B§[§1"4§] = §"!O§;
         this.§7!B§[§="5§] = §[!3§;
         this.§7!B§[§ # §] = § t§;
         this.§7!B§[§["'§] = §@S§;
         this.§7!B§[§?;§] = §,d§;
         this.§7!B§[§3"_§] = §9#§;
         this.§+!m§();
      }
      
      public function get state() : String
      {
         return this.§&1§;
      }
      
      public function §2!]§(param1:§?!x§) : void
      {
         if(param1.§3"s§().GetLinearVelocity().Length() > 1)
         {
            this.§@!%§(§["'§);
         }
      }
      
      public function §7!R§(param1:§?!x§) : void
      {
         if(param1 is §;!T§)
         {
            this.§@!%§(§["'§);
         }
      }
      
      public function §9+§(param1:§?!x§) : void
      {
      }
      
      public function §!4§(param1:§?!x§) : void
      {
         if(param1 is §;!T§)
         {
            this.§@!%§(§?;§);
         }
      }
      
      protected function §1!k§(param1:String) : Number
      {
         if(this.§&_§)
         {
            return -1;
         }
         var _loc2_:Array = this.§7!B§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §@!%§(param1:String) : void
      {
         if(this.isFrozen && param1 != §]Z§)
         {
            return;
         }
         if(this.§^w§ > 0.5 && param1 != §3"_§)
         {
            return;
         }
         this.§`"f§ = 0;
         this.§,!`§ = this.§1!k§(param1);
         if(param1 != §##3§)
         {
            this.§ "L§ = -1;
         }
         else
         {
            this.§+!m§();
         }
         this.§&1§ = param1;
         this.§ "`§.§?!A§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§&1§)
         {
            case §##3§:
               this.§<X§();
               break;
            case §1"4§:
               this.§'"v§();
               break;
            case §="5§:
               this.§["t§();
               break;
            case § # §:
               this.§3"K§();
               break;
            case §["'§:
               this.§,!q§();
               break;
            case §?;§:
               this.§+b§();
               break;
            default:
               this.§@!%§(§##3§);
         }
      }
      
      protected function §<X§() : void
      {
         if(Math.random() < §]"V§)
         {
            this.§@!%§(§="5§);
         }
         else if(Math.random() < §"J§)
         {
            this.§@!%§(§1"4§);
         }
         else
         {
            this.§@!%§(§##3§);
         }
      }
      
      protected function §'"v§() : void
      {
         this.§@!%§(§##3§);
      }
      
      protected function §["t§() : void
      {
         this.§@!%§(§ # §);
      }
      
      protected function §3"K§() : void
      {
         if(Math.random() < §@&§)
         {
            this.§@!%§(§1"4§);
         }
         else
         {
            this.§@!%§(§##3§);
         }
      }
      
      protected function §,!q§() : void
      {
         this.§@!%§(§##3§);
      }
      
      protected function §+b§() : void
      {
         this.§@!%§(§1"4§);
      }
      
      protected function §+!m§() : void
      {
         if(this.§ "L§ < 0)
         {
            this.§ "L§ = 0;
            this.§>!-§ = (this.§ !h§[0] + Math.random() * this.§ !h§[1]) * 1000;
         }
      }
      
      public function handleAnimationEnd(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §##3§)
         {
            if(param2 > 0)
            {
               this.§ "`§.§?!A§.selectSubAnimation(0,false);
               this.§+!m§();
            }
            else if(param2 == 0 && param3 > 1 && this.§ "L§ > this.§>!-§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§ "`§.§?!A§.selectSubAnimation(_loc4_,false);
               this.§ "L§ = -1;
            }
         }
         else if(param1 == § # §)
         {
            this.§`!A§(this.§4"[§);
         }
      }
      
      public function §`!A§(param1:String) : void
      {
         if(this.§&1§ == § # §)
         {
            this.§4"[§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§ "`§.§`!A§(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§`"f§ += param1;
         if(this.§ "L§ >= 0)
         {
            this.§ "L§ += param1;
         }
         if(this.§,!`§ >= 0 && this.§`"f§ >= this.§,!`§)
         {
            this.updateState();
         }
      }
      
      public function get isFrozen() : Boolean
      {
         return this.§&_§;
      }
      
      public function set isFrozen(param1:Boolean) : void
      {
         this.§&_§ = param1;
         if(this.§&_§)
         {
            this.§@!%§(§]Z§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§^w§ = param1;
         if(param1 > 0.5)
         {
            this.§@!%§(§3"_§);
         }
      }
   }
}
