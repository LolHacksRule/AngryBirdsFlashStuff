package §]">§
{
   import § !Y§.§[!%§;
   import §"!&§.§3",§;
   
   public class §;W§ implements §3?§
   {
      
      protected static const §function§:String = §;"3§.§,Y§;
      
      protected static const §"J§:String = §;"3§.§^"7§;
      
      protected static const §!c§:String = §;"3§.§;"§;
      
      protected static const §<"B§:String = §;"3§.§ !Z§;
      
      protected static const §7#§:String = §;"3§.§@b§;
      
      protected static const §0"E§:String = §;"3§.§`!%§;
      
      protected static const §2!=§:String = §;"3§.§`!Q§;
      
      protected static const §;!4§:String = §;"3§.§"2§;
      
      protected static const §>Z§:Array = [3,8];
      
      protected static const §4"?§:Array = [2,2];
      
      protected static const §1!9§:Array = [2,3];
      
      protected static const §1!-§:Array = [5,5];
      
      protected static const §5!S§:Array = [2,2];
      
      protected static const §=">§:Array = [1,2];
      
      protected static const §'D§:Array = [10,3.5];
      
      protected static const §[@§:Number = 0.05;
      
      protected static const §8!Z§:Number = 0.1;
      
      protected static const §[V§:Number = 0.5;
       
      
      protected var §>!2§:String;
      
      protected var §<!?§:Number = 0.0;
      
      protected var §=!`§:Number = 0.0;
      
      protected var §6!i§:§[!%§;
      
      protected var §<"!§:Number = -1.0;
      
      protected var §]!@§:Number = 0.0;
      
      protected var §;!;§:Array;
      
      protected var §;g§:§?!`§;
      
      protected var §]"&§:Boolean;
      
      protected var §,!#§:Number = 0.0;
      
      protected var §[g§:String;
      
      public function §;W§(param1:§?!`§, param2:§3",§)
      {
         this.§>!2§ = §;"3§.§,Y§;
         this.§6!i§ = new §[!%§();
         super();
         this.§;g§ = param1;
         this.§;!;§ = param2.§+!5§();
         this.§6!i§[§function§] = §>Z§;
         this.§6!i§[§"J§] = §4"?§;
         this.§6!i§[§!c§] = §1!9§;
         this.§6!i§[§<"B§] = §1!-§;
         this.§6!i§[§7#§] = §5!S§;
         this.§6!i§[§0"E§] = §=">§;
         this.§6!i§[§2!=§] = §'D§;
         this.§&"8§();
      }
      
      public function get §=M§() : String
      {
         return this.§>!2§;
      }
      
      public function §try §(param1:§<!=§) : void
      {
         if(param1.§^!z§().GetLinearVelocity().§2+§() > 1)
         {
            this.changeState(§7#§);
         }
      }
      
      public function §3J§(param1:§<!=§) : void
      {
         if(param1 is § 6§)
         {
            this.changeState(§7#§);
         }
      }
      
      public function §,"8§(param1:§<!=§) : void
      {
      }
      
      public function §#Y§(param1:§<!=§) : void
      {
         if(param1 is § 6§)
         {
            this.changeState(§0"E§);
         }
      }
      
      protected function §^K§(param1:String) : Number
      {
         if(this.§]"&§)
         {
            return -1;
         }
         var _loc2_:Array = this.§6!i§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function changeState(param1:String) : void
      {
         if(this.§;"D§ && param1 != §;!4§)
         {
            return;
         }
         if(this.§,!#§ > 0.5 && param1 != §2!=§)
         {
            return;
         }
         this.§<!?§ = 0;
         this.§=!`§ = this.§^K§(param1);
         if(param1 != §function§)
         {
            this.§<"!§ = -1;
         }
         else
         {
            this.§&"8§();
         }
         this.§>!2§ = param1;
         this.§;g§.renderer.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§>!2§)
         {
            case §function§:
               this.§]g§();
               break;
            case §"J§:
               this.§1"4§();
               break;
            case §!c§:
               this.§5" §();
               break;
            case §<"B§:
               this.§2!8§();
               break;
            case §7#§:
               this.§<!m§();
               break;
            case §0"E§:
               this.§'"#§();
               break;
            default:
               this.changeState(§function§);
         }
      }
      
      protected function §]g§() : void
      {
         if(Math.random() < §[@§)
         {
            this.changeState(§!c§);
         }
         else if(Math.random() < §8!Z§)
         {
            this.changeState(§"J§);
         }
         else
         {
            this.changeState(§function§);
         }
      }
      
      protected function §1"4§() : void
      {
         this.changeState(§function§);
      }
      
      protected function §5" §() : void
      {
         this.changeState(§<"B§);
      }
      
      protected function §2!8§() : void
      {
         if(Math.random() < §[V§)
         {
            this.changeState(§"J§);
         }
         else
         {
            this.changeState(§function§);
         }
      }
      
      protected function §<!m§() : void
      {
         this.changeState(§function§);
      }
      
      protected function §'"#§() : void
      {
         this.changeState(§"J§);
      }
      
      protected function §&"8§() : void
      {
         if(this.§<"!§ < 0)
         {
            this.§<"!§ = 0;
            this.§]!@§ = (this.§;!;§[0] + Math.random() * this.§;!;§[1]) * 1000;
         }
      }
      
      public function handleAnimationEnd(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §function§)
         {
            if(param2 > 0)
            {
               this.§;g§.renderer.selectSubAnimation(0,false);
               this.§&"8§();
            }
            else if(param2 == 0 && param3 > 1 && this.§<"!§ > this.§]!@§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§;g§.renderer.selectSubAnimation(_loc4_,false);
               this.§<"!§ = -1;
            }
         }
         else if(param1 == §<"B§)
         {
            this.playSound(this.§[g§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§>!2§ == §<"B§)
         {
            this.§[g§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§;g§.playSound(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§<!?§ += param1;
         if(this.§<"!§ >= 0)
         {
            this.§<"!§ += param1;
         }
         if(this.§=!`§ >= 0 && this.§<!?§ >= this.§=!`§)
         {
            this.updateState();
         }
      }
      
      public function get §;"D§() : Boolean
      {
         return this.§]"&§;
      }
      
      public function set §;"D§(param1:Boolean) : void
      {
         this.§]"&§ = param1;
         if(this.§]"&§)
         {
            this.changeState(§;!4§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§,!#§ = param1;
         if(param1 > 0.5)
         {
            this.changeState(§2!=§);
         }
      }
   }
}
