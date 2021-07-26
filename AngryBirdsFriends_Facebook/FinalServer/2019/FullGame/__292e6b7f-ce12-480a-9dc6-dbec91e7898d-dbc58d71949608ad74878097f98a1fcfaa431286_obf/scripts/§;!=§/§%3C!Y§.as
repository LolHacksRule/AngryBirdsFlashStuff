package §;!=§
{
   import §#"4§.§&r§;
   import §8#K§.§?"L§;
   
   public class §<!Y§ implements §^9§
   {
      
      protected static const §@$8§:String = §!$A§.§'"L§;
      
      protected static const §@"f§:String = §!$A§.§2"V§;
      
      protected static const §9"B§:String = §!$A§.§^#X§;
      
      protected static const §5#R§:String = §!$A§.§]#K§;
      
      protected static const §[#q§:String = §!$A§.§#"V§;
      
      protected static const §3"8§:String = §!$A§.§;#X§;
      
      protected static const §4"8§:String = §!$A§.§;!c§;
      
      protected static const §>"6§:String = §!$A§.§1&§;
      
      protected static const §1"!§:Array = [3,8];
      
      protected static const §&#!§:Array = [2,2];
      
      protected static const §'!a§:Array = [2,3];
      
      protected static const §6!T§:Array = [5,5];
      
      protected static const §5#x§:Array = [2,2];
      
      protected static const §7#<§:Array = [1,2];
      
      protected static const §^"#§:Array = [10,3.5];
      
      protected static const §&!]§:Number = 0.05;
      
      protected static const §<#k§:Number = 0.1;
      
      protected static const §+#^§:Number = 0.5;
       
      
      protected var §7B§:String = "idleState";
      
      protected var §@![§:Number = 0.0;
      
      protected var §7!n§:Number = 0.0;
      
      protected var §8#4§:§&r§;
      
      protected var § #6§:Number = -1.0;
      
      protected var §-a§:Number = 0.0;
      
      protected var §[V§:Array;
      
      protected var §!#^§:§-#+§;
      
      protected var §4#s§:Boolean;
      
      protected var §0#`§:Number = 0.0;
      
      protected var §[$ §:String;
      
      public function §<!Y§(param1:§-#+§, param2:§?"L§)
      {
         this.§8#4§ = new §&r§();
         super();
         this.§!#^§ = param1;
         this.§[V§ = param2.§`!o§();
         this.§8#4§[§@$8§] = §1"!§;
         this.§8#4§[§@"f§] = §&#!§;
         this.§8#4§[§9"B§] = §'!a§;
         this.§8#4§[§5#R§] = §6!T§;
         this.§8#4§[§[#q§] = §5#x§;
         this.§8#4§[§3"8§] = §7#<§;
         this.§8#4§[§4"8§] = §^"#§;
         this.§4'§();
      }
      
      public function get state() : String
      {
         return this.§7B§;
      }
      
      public function §-"R§(param1:§'#N§) : void
      {
         if(param1.getBody().GetLinearVelocity().Length() > 1)
         {
            this.§<R§(§[#q§);
         }
      }
      
      public function §4X§(param1:§'#N§) : void
      {
         if(param1 is §[!k§)
         {
            this.§<R§(§[#q§);
         }
      }
      
      public function §"#]§(param1:§'#N§) : void
      {
      }
      
      public function §,$;§(param1:§'#N§) : void
      {
         if(param1 is §[!k§)
         {
            this.§<R§(§3"8§);
         }
      }
      
      protected function §package§(param1:String) : Number
      {
         if(this.§4#s§)
         {
            return -1;
         }
         var _loc2_:Array = this.§8#4§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §<R§(param1:String) : void
      {
         if(this.§!0§ && param1 != §>"6§)
         {
            return;
         }
         if(this.§0#`§ > 0.5 && param1 != §4"8§)
         {
            return;
         }
         this.§@![§ = 0;
         this.§7!n§ = this.§package§(param1);
         if(param1 != §@$8§)
         {
            this.§ #6§ = -1;
         }
         else
         {
            this.§4'§();
         }
         this.§7B§ = param1;
         this.§!#^§.§?!V§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§7B§)
         {
            case §@$8§:
               this.§8#C§();
               break;
            case §@"f§:
               this.§,#R§();
               break;
            case §9"B§:
               this.§-%§();
               break;
            case §5#R§:
               this.§&x§();
               break;
            case §[#q§:
               this.§@#N§();
               break;
            case §3"8§:
               this.§^"r§();
               break;
            default:
               this.§<R§(§@$8§);
         }
      }
      
      protected function §8#C§() : void
      {
         if(Math.random() < §&!]§)
         {
            this.§<R§(§9"B§);
         }
         else if(Math.random() < §<#k§)
         {
            this.§<R§(§@"f§);
         }
         else
         {
            this.§<R§(§@$8§);
         }
      }
      
      protected function §,#R§() : void
      {
         this.§<R§(§@$8§);
      }
      
      protected function §-%§() : void
      {
         this.§<R§(§5#R§);
      }
      
      protected function §&x§() : void
      {
         if(Math.random() < §+#^§)
         {
            this.§<R§(§@"f§);
         }
         else
         {
            this.§<R§(§@$8§);
         }
      }
      
      protected function §@#N§() : void
      {
         this.§<R§(§@$8§);
      }
      
      protected function §^"r§() : void
      {
         this.§<R§(§@"f§);
      }
      
      protected function §4'§() : void
      {
         if(this.§ #6§ < 0)
         {
            this.§ #6§ = 0;
            this.§-a§ = (this.§[V§[0] + Math.random() * this.§[V§[1]) * 1000;
         }
      }
      
      public function §1#%§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §@$8§)
         {
            if(param2 > 0)
            {
               this.§!#^§.§?!V§.selectSubAnimation(0,false);
               this.§4'§();
            }
            else if(param2 == 0 && param3 > 1 && this.§ #6§ > this.§-a§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§!#^§.§?!V§.selectSubAnimation(_loc4_,false);
               this.§ #6§ = -1;
            }
         }
         else if(param1 == §5#R§)
         {
            this.playSound(this.§[$ §);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§7B§ == §5#R§)
         {
            this.§[$ § = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§!#^§.playSoundLua(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§@![§ += param1;
         if(this.§ #6§ >= 0)
         {
            this.§ #6§ += param1;
         }
         if(this.§7!n§ >= 0 && this.§@![§ >= this.§7!n§)
         {
            this.updateState();
         }
      }
      
      public function get §!0§() : Boolean
      {
         return this.§4#s§;
      }
      
      public function set §!0§(param1:Boolean) : void
      {
         this.§4#s§ = param1;
         if(this.§4#s§)
         {
            this.§<R§(§>"6§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§0#`§ = param1;
         if(param1 > 0.5)
         {
            this.§<R§(§4"8§);
         }
      }
   }
}
