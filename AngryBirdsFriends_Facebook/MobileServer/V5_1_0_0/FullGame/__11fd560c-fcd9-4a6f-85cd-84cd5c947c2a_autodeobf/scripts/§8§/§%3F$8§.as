package §8§#8
{
   import §8"L§.§7^§;
   import §`7§.§0t§;
   
   public class §?$8§ implements §[#i§
   {
      
      protected static const §]"R§:String = §6#?§.§?#§;
      
      protected static const §!#d§:String = §6#?§.§7!S§;
      
      protected static const §3#A§:String = §6#?§.§&#o§;
      
      protected static const §&"M§:String = §6#?§.§9"N§;
      
      protected static const §="f§:String = §6#?§.§8!%§;
      
      protected static const §2!<§:String = §6#?§.§3"p§;
      
      protected static const §[#<§:String = §6#?§.§ each§;
      
      protected static const §#!K§:String = §6#?§.§,#&§;
      
      protected static const § "V§:Array = [3,8];
      
      protected static const §;#I§:Array = [2,2];
      
      protected static const §^"L§:Array = [2,3];
      
      protected static const §,#x§:Array = [5,5];
      
      protected static const §!"n§:Array = [2,2];
      
      protected static const §7c§:Array = [1,2];
      
      protected static const §'G§:Array = [10,3.5];
      
      protected static const §8#y§:Number = 0.05;
      
      protected static const §1#w§:Number = 0.1;
      
      protected static const §2$+§:Number = 0.5;
       
      
      protected var §+a§:String = "idleState";
      
      protected var §="l§:Number = 0.0;
      
      protected var §3B§:Number = 0.0;
      
      protected var §?#>§:§0t§;
      
      protected var §&j§:Number = -1.0;
      
      protected var §2"-§:Number = 0.0;
      
      protected var §<$-§:Array;
      
      protected var §@#N§:§2#'§;
      
      protected var §5z§:Boolean;
      
      protected var §?!n§:Number = 0.0;
      
      protected var §[!&§:String;
      
      public function §?$8§(param1:§2#'§, param2:§7^§)
      {
         this.§?#>§ = new §0t§();
         super();
         this.§@#N§ = param1;
         this.§<$-§ = param2.§>a§();
         this.§?#>§[§]"R§] = § "V§;
         this.§?#>§[§!#d§] = §;#I§;
         this.§?#>§[§3#A§] = §^"L§;
         this.§?#>§[§&"M§] = §,#x§;
         this.§?#>§[§="f§] = §!"n§;
         this.§?#>§[§2!<§] = §7c§;
         this.§?#>§[§[#<§] = §'G§;
         this.§&d§();
      }
      
      public function get state() : String
      {
         return this.§+a§;
      }
      
      public function §9!J§(param1:§,#5§) : void
      {
         if(param1.getBody().GetLinearVelocity().Length() > 1)
         {
            this.§&$7§(§="f§);
         }
      }
      
      public function §5"u§(param1:§,#5§) : void
      {
         if(param1 is §?$%§)
         {
            this.§&$7§(§="f§);
         }
      }
      
      public function § "=§(param1:§,#5§) : void
      {
      }
      
      public function § n§(param1:§,#5§) : void
      {
         if(param1 is §?$%§)
         {
            this.§&$7§(§2!<§);
         }
      }
      
      protected function §`"1§(param1:String) : Number
      {
         if(this.§5z§)
         {
            return -1;
         }
         var _loc2_:Array = this.§?#>§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §&$7§(param1:String) : void
      {
         if(this.§>!V§ && param1 != §#!K§)
         {
            return;
         }
         if(this.§?!n§ > 0.5 && param1 != §[#<§)
         {
            return;
         }
         this.§="l§ = 0;
         this.§3B§ = this.§`"1§(param1);
         if(param1 != §]"R§)
         {
            this.§&j§ = -1;
         }
         else
         {
            this.§&d§();
         }
         this.§+a§ = param1;
         this.§@#N§.§##-§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§+a§)
         {
            case §]"R§:
               this.§4#k§();
               break;
            case §!#d§:
               this.§?"U§();
               break;
            case §3#A§:
               this.§"#6§();
               break;
            case §&"M§:
               this.§!!&§();
               break;
            case §="f§:
               this.§1"v§();
               break;
            case §2!<§:
               this.§?#A§();
               break;
            default:
               this.§&$7§(§]"R§);
         }
      }
      
      protected function §4#k§() : void
      {
         if(Math.random() < §8#y§)
         {
            this.§&$7§(§3#A§);
         }
         else if(Math.random() < §1#w§)
         {
            this.§&$7§(§!#d§);
         }
         else
         {
            this.§&$7§(§]"R§);
         }
      }
      
      protected function §?"U§() : void
      {
         this.§&$7§(§]"R§);
      }
      
      protected function §"#6§() : void
      {
         this.§&$7§(§&"M§);
      }
      
      protected function §!!&§() : void
      {
         if(Math.random() < §2$+§)
         {
            this.§&$7§(§!#d§);
         }
         else
         {
            this.§&$7§(§]"R§);
         }
      }
      
      protected function §1"v§() : void
      {
         this.§&$7§(§]"R§);
      }
      
      protected function §?#A§() : void
      {
         this.§&$7§(§!#d§);
      }
      
      protected function §&d§() : void
      {
         if(this.§&j§ < 0)
         {
            this.§&j§ = 0;
            this.§2"-§ = (this.§<$-§[0] + Math.random() * this.§<$-§[1]) * 1000;
         }
      }
      
      public function §@w§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §]"R§)
         {
            if(param2 > 0)
            {
               this.§@#N§.§##-§.selectSubAnimation(0,false);
               this.§&d§();
            }
            else if(param2 == 0 && param3 > 1 && this.§&j§ > this.§2"-§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§@#N§.§##-§.selectSubAnimation(_loc4_,false);
               this.§&j§ = -1;
            }
         }
         else if(param1 == §&"M§)
         {
            this.playSound(this.§[!&§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§+a§ == §&"M§)
         {
            this.§[!&§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§@#N§.§0#R§(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§="l§ += param1;
         if(this.§&j§ >= 0)
         {
            this.§&j§ += param1;
         }
         if(this.§3B§ >= 0 && this.§="l§ >= this.§3B§)
         {
            this.updateState();
         }
      }
      
      public function get §>!V§() : Boolean
      {
         return this.§5z§;
      }
      
      public function set §>!V§(param1:Boolean) : void
      {
         this.§5z§ = param1;
         if(this.§5z§)
         {
            this.§&$7§(§#!K§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§?!n§ = param1;
         if(param1 > 0.5)
         {
            this.§&$7§(§[#<§);
         }
      }
   }
}
