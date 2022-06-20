package §-!!§
{
   import §+#B§.§4"[§;
   import §?§.§,!T§;
   
   public class §,#6§ implements §@B§
   {
      
      protected static const §6"+§:String = §+!F§.§+m§;
      
      protected static const §["S§:String = §+!F§.§3X§;
      
      protected static const §]#a§:String = §+!F§.§,$<§;
      
      protected static const §,$+§:String = §+!F§.§0#G§;
      
      protected static const §@W§:String = §+!F§.§ #K§;
      
      protected static const § S§:String = §+!F§.§;"5§;
      
      protected static const §]!7§:String = §+!F§.§"9§;
      
      protected static const §[!<§:String = §+!F§.§-!1§;
      
      protected static const §0-§:Array = [3,8];
      
      protected static const §]"I§:Array = [2,2];
      
      protected static const §[#=§:Array = [2,3];
      
      protected static const §>N§:Array = [5,5];
      
      protected static const §,"E§:Array = [2,2];
      
      protected static const §^",§:Array = [1,2];
      
      protected static const § "u§:Array = [10,3.5];
      
      protected static const §'!y§:Number = 0.05;
      
      protected static const § !p§:Number = 0.1;
      
      protected static const §%#W§:Number = 0.5;
       
      
      protected var §0!+§:String = "idleState";
      
      protected var §,$E§:Number = 0.0;
      
      protected var §0#=§:Number = 0.0;
      
      protected var §6!s§:§4"[§;
      
      protected var §!W§:Number = -1.0;
      
      protected var §]"J§:Number = 0.0;
      
      protected var §1"f§:Array;
      
      protected var §8"T§:§48§;
      
      protected var §0!f§:Boolean;
      
      protected var §9!o§:Number = 0.0;
      
      protected var §-#h§:String;
      
      public function §,#6§(param1:§48§, param2:§,!T§)
      {
         this.§6!s§ = new §4"[§();
         super();
         this.§8"T§ = param1;
         this.§1"f§ = param2.§7!Q§();
         this.§6!s§[§6"+§] = §0-§;
         this.§6!s§[§["S§] = §]"I§;
         this.§6!s§[§]#a§] = §[#=§;
         this.§6!s§[§,$+§] = §>N§;
         this.§6!s§[§@W§] = §,"E§;
         this.§6!s§[§ S§] = §^",§;
         this.§6!s§[§]!7§] = § "u§;
         this.§<#t§();
      }
      
      public function get state() : String
      {
         return this.§0!+§;
      }
      
      public function §9$!§(param1:§1#B§) : void
      {
         if(param1.getBody().GetLinearVelocity().Length() > 1)
         {
            this.§,D§(§@W§);
         }
      }
      
      public function §""u§(param1:§1#B§) : void
      {
         if(param1 is §5"W§)
         {
            this.§,D§(§@W§);
         }
      }
      
      public function §&#A§(param1:§1#B§) : void
      {
      }
      
      public function §2H§(param1:§1#B§) : void
      {
         if(param1 is §5"W§)
         {
            this.§,D§(§ S§);
         }
      }
      
      protected function §6#l§(param1:String) : Number
      {
         if(this.§0!f§)
         {
            return -1;
         }
         var _loc2_:Array = this.§6!s§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §,D§(param1:String) : void
      {
         if(this.§'!6§ && param1 != §[!<§)
         {
            return;
         }
         if(this.§9!o§ > 0.5 && param1 != §]!7§)
         {
            return;
         }
         this.§,$E§ = 0;
         this.§0#=§ = this.§6#l§(param1);
         if(param1 != §6"+§)
         {
            this.§!W§ = -1;
         }
         else
         {
            this.§<#t§();
         }
         this.§0!+§ = param1;
         this.§8"T§.§ !7§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§0!+§)
         {
            case §6"+§:
               this.§`!w§();
               break;
            case §["S§:
               this.§<#7§();
               break;
            case §]#a§:
               this.§%$5§();
               break;
            case §,$+§:
               this.§["4§();
               break;
            case §@W§:
               this.§5""§();
               break;
            case § S§:
               this.§ #Z§();
               break;
            default:
               this.§,D§(§6"+§);
         }
      }
      
      protected function §`!w§() : void
      {
         if(Math.random() < §'!y§)
         {
            this.§,D§(§]#a§);
         }
         else if(Math.random() < § !p§)
         {
            this.§,D§(§["S§);
         }
         else
         {
            this.§,D§(§6"+§);
         }
      }
      
      protected function §<#7§() : void
      {
         this.§,D§(§6"+§);
      }
      
      protected function §%$5§() : void
      {
         this.§,D§(§,$+§);
      }
      
      protected function §["4§() : void
      {
         if(Math.random() < §%#W§)
         {
            this.§,D§(§["S§);
         }
         else
         {
            this.§,D§(§6"+§);
         }
      }
      
      protected function §5""§() : void
      {
         this.§,D§(§6"+§);
      }
      
      protected function § #Z§() : void
      {
         this.§,D§(§["S§);
      }
      
      protected function §<#t§() : void
      {
         if(this.§!W§ < 0)
         {
            this.§!W§ = 0;
            this.§]"J§ = (this.§1"f§[0] + Math.random() * this.§1"f§[1]) * 1000;
         }
      }
      
      public function §1"^§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §6"+§)
         {
            if(param2 > 0)
            {
               this.§8"T§.§ !7§.selectSubAnimation(0,false);
               this.§<#t§();
            }
            else if(param2 == 0 && param3 > 1 && this.§!W§ > this.§]"J§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§8"T§.§ !7§.selectSubAnimation(_loc4_,false);
               this.§!W§ = -1;
            }
         }
         else if(param1 == §,$+§)
         {
            this.playSound(this.§-#h§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§0!+§ == §,$+§)
         {
            this.§-#h§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§8"T§.playSoundLua(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§,$E§ += param1;
         if(this.§!W§ >= 0)
         {
            this.§!W§ += param1;
         }
         if(this.§0#=§ >= 0 && this.§,$E§ >= this.§0#=§)
         {
            this.updateState();
         }
      }
      
      public function get §'!6§() : Boolean
      {
         return this.§0!f§;
      }
      
      public function set §'!6§(param1:Boolean) : void
      {
         this.§0!f§ = param1;
         if(this.§0!f§)
         {
            this.§,D§(§[!<§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§9!o§ = param1;
         if(param1 > 0.5)
         {
            this.§,D§(§]!7§);
         }
      }
   }
}
