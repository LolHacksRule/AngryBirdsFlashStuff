package §^0§
{
   import §-!j§.§]!e§;
   import §2E§.§&#a§;
   
   public class §1"+§ implements §1!J§
   {
      
      protected static const §8K§:String = §3"5§.§##H§;
      
      protected static const §9#5§:String = §3"5§.§?$@§;
      
      protected static const §@"p§:String = §3"5§.§`#d§;
      
      protected static const §%"-§:String = §3"5§.§?#7§;
      
      protected static const §6">§:String = §3"5§.§-#H§;
      
      protected static const §,"d§:String = §3"5§.§5&§;
      
      protected static const §-$D§:String = §3"5§.§-#M§;
      
      protected static const §`&§:String = §3"5§.§9";§;
      
      protected static const §%!w§:Array = [3,8];
      
      protected static const §,!5§:Array = [2,2];
      
      protected static const §=!B§:Array = [2,3];
      
      protected static const §@E§:Array = [5,5];
      
      protected static const §&"$§:Array = [2,2];
      
      protected static const §`!J§:Array = [1,2];
      
      protected static const §2!T§:Array = [10,3.5];
      
      protected static const §5!#§:Number = 0.05;
      
      protected static const §?#F§:Number = 0.1;
      
      protected static const §,"e§:Number = 0.5;
       
      
      protected var §`"Y§:String = "idleState";
      
      protected var §2!I§:Number = 0.0;
      
      protected var §]"x§:Number = 0.0;
      
      protected var §=P§:§&#a§;
      
      protected var §9f§:Number = -1.0;
      
      protected var §6$C§:Number = 0.0;
      
      protected var §^#!§:Array;
      
      protected var §0!;§:§-"a§;
      
      protected var § #;§:Boolean;
      
      protected var §39§:Number = 0.0;
      
      protected var §-"M§:String;
      
      public function §1"+§(param1:§-"a§, param2:§]!e§)
      {
         this.§=P§ = new §&#a§();
         super();
         this.§0!;§ = param1;
         this.§^#!§ = param2.§?!P§();
         this.§=P§[§8K§] = §%!w§;
         this.§=P§[§9#5§] = §,!5§;
         this.§=P§[§@"p§] = §=!B§;
         this.§=P§[§%"-§] = §@E§;
         this.§=P§[§6">§] = §&"$§;
         this.§=P§[§,"d§] = §`!J§;
         this.§=P§[§-$D§] = §2!T§;
         this.§^#2§();
      }
      
      public function get state() : String
      {
         return this.§`"Y§;
      }
      
      public function §;"R§(param1:§4!t§) : void
      {
         if(param1.getBody().GetLinearVelocity().Length() > 1)
         {
            this.§?!i§(§6">§);
         }
      }
      
      public function §[r§(param1:§4!t§) : void
      {
         if(param1 is §[# §)
         {
            this.§?!i§(§6">§);
         }
      }
      
      public function §`!v§(param1:§4!t§) : void
      {
      }
      
      public function §;"5§(param1:§4!t§) : void
      {
         if(param1 is §[# §)
         {
            this.§?!i§(§,"d§);
         }
      }
      
      protected function §`X§(param1:String) : Number
      {
         if(this.§ #;§)
         {
            return -1;
         }
         var _loc2_:Array = this.§=P§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §?!i§(param1:String) : void
      {
         if(this.§1!l§ && param1 != §`&§)
         {
            return;
         }
         if(this.§39§ > 0.5 && param1 != §-$D§)
         {
            return;
         }
         this.§2!I§ = 0;
         this.§]"x§ = this.§`X§(param1);
         if(param1 != §8K§)
         {
            this.§9f§ = -1;
         }
         else
         {
            this.§^#2§();
         }
         this.§`"Y§ = param1;
         this.§0!;§.§2#+§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§`"Y§)
         {
            case §8K§:
               this.§+#2§();
               break;
            case §9#5§:
               this.§8A§();
               break;
            case §@"p§:
               this.§ !j§();
               break;
            case §%"-§:
               this.§,#X§();
               break;
            case §6">§:
               this.§%#Q§();
               break;
            case §,"d§:
               this.§4!]§();
               break;
            default:
               this.§?!i§(§8K§);
         }
      }
      
      protected function §+#2§() : void
      {
         if(Math.random() < §5!#§)
         {
            this.§?!i§(§@"p§);
         }
         else if(Math.random() < §?#F§)
         {
            this.§?!i§(§9#5§);
         }
         else
         {
            this.§?!i§(§8K§);
         }
      }
      
      protected function §8A§() : void
      {
         this.§?!i§(§8K§);
      }
      
      protected function § !j§() : void
      {
         this.§?!i§(§%"-§);
      }
      
      protected function §,#X§() : void
      {
         if(Math.random() < §,"e§)
         {
            this.§?!i§(§9#5§);
         }
         else
         {
            this.§?!i§(§8K§);
         }
      }
      
      protected function §%#Q§() : void
      {
         this.§?!i§(§8K§);
      }
      
      protected function §4!]§() : void
      {
         this.§?!i§(§9#5§);
      }
      
      protected function §^#2§() : void
      {
         if(this.§9f§ < 0)
         {
            this.§9f§ = 0;
            this.§6$C§ = (this.§^#!§[0] + Math.random() * this.§^#!§[1]) * 1000;
         }
      }
      
      public function §8u§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §8K§)
         {
            if(param2 > 0)
            {
               this.§0!;§.§2#+§.selectSubAnimation(0,false);
               this.§^#2§();
            }
            else if(param2 == 0 && param3 > 1 && this.§9f§ > this.§6$C§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§0!;§.§2#+§.selectSubAnimation(_loc4_,false);
               this.§9f§ = -1;
            }
         }
         else if(param1 == §%"-§)
         {
            this.playSound(this.§-"M§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§`"Y§ == §%"-§)
         {
            this.§-"M§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§0!;§.playSoundLua(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§2!I§ += param1;
         if(this.§9f§ >= 0)
         {
            this.§9f§ += param1;
         }
         if(this.§]"x§ >= 0 && this.§2!I§ >= this.§]"x§)
         {
            this.updateState();
         }
      }
      
      public function get §1!l§() : Boolean
      {
         return this.§ #;§;
      }
      
      public function set §1!l§(param1:Boolean) : void
      {
         this.§ #;§ = param1;
         if(this.§ #;§)
         {
            this.§?!i§(§`&§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§39§ = param1;
         if(param1 > 0.5)
         {
            this.§?!i§(§-$D§);
         }
      }
   }
}
