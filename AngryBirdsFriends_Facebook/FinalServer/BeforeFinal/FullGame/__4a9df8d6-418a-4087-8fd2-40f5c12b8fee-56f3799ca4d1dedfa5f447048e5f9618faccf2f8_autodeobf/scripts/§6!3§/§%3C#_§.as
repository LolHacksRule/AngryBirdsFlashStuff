package §6!3§
{
   import §&!_§.§[!j§;
   import §?$<§.§-"B§;
   
   public class §<#_§ implements §5<§
   {
      
      protected static const §^"E§:String = §@!b§.§3!s§;
      
      protected static const §6!$§:String = §@!b§.§[#2§;
      
      protected static const §`#b§:String = §@!b§.§8E§;
      
      protected static const §?3§:String = §@!b§.§&X§;
      
      protected static const §,;§:String = §@!b§.§8"E§;
      
      protected static const §"#o§:String = §@!b§.§7#I§;
      
      protected static const §?#h§:String = §@!b§.§5"y§;
      
      protected static const §1#y§:String = §@!b§.§0n§;
      
      protected static const §>"H§:Array = [3,8];
      
      protected static const §]"1§:Array = [2,2];
      
      protected static const §1"2§:Array = [2,3];
      
      protected static const §^#z§:Array = [5,5];
      
      protected static const §'#'§:Array = [2,2];
      
      protected static const §9q§:Array = [1,2];
      
      protected static const §+#]§:Array = [10,3.5];
      
      protected static const §<b§:Number = 0.05;
      
      protected static const §6#W§:Number = 0.1;
      
      protected static const §0"S§:Number = 0.5;
       
      
      protected var §<!C§:String = "idleState";
      
      protected var §9#'§:Number = 0.0;
      
      protected var §<@§:Number = 0.0;
      
      protected var §<$!§:§[!j§;
      
      protected var §]!W§:Number = -1.0;
      
      protected var §9#P§:Number = 0.0;
      
      protected var §3#z§:Array;
      
      protected var §72§:§-#Q§;
      
      protected var §+!X§:Boolean;
      
      protected var §>#-§:Number = 0.0;
      
      protected var §?!v§:String;
      
      public function §<#_§(param1:§-#Q§, param2:§-"B§)
      {
         this.§<$!§ = new §[!j§();
         super();
         this.§72§ = param1;
         this.§3#z§ = param2.§&#5§();
         this.§<$!§[§^"E§] = §>"H§;
         this.§<$!§[§6!$§] = §]"1§;
         this.§<$!§[§`#b§] = §1"2§;
         this.§<$!§[§?3§] = §^#z§;
         this.§<$!§[§,;§] = §'#'§;
         this.§<$!§[§"#o§] = §9q§;
         this.§<$!§[§?#h§] = §+#]§;
         this.§>#h§();
      }
      
      public function get state() : String
      {
         return this.§<!C§;
      }
      
      public function §6Z§(param1:§!y§) : void
      {
         if(param1.getBody().GetLinearVelocity().Length() > 1)
         {
            this.§^"D§(§,;§);
         }
      }
      
      public function §?!Z§(param1:§!y§) : void
      {
         if(param1 is §,s§)
         {
            this.§^"D§(§,;§);
         }
      }
      
      public function §'$>§(param1:§!y§) : void
      {
      }
      
      public function §6"x§(param1:§!y§) : void
      {
         if(param1 is §,s§)
         {
            this.§^"D§(§"#o§);
         }
      }
      
      protected function § `§(param1:String) : Number
      {
         if(this.§+!X§)
         {
            return -1;
         }
         var _loc2_:Array = this.§<$!§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function §^"D§(param1:String) : void
      {
         if(this.§[#C§ && param1 != §1#y§)
         {
            return;
         }
         if(this.§>#-§ > 0.5 && param1 != §?#h§)
         {
            return;
         }
         this.§9#'§ = 0;
         this.§<@§ = this.§ `§(param1);
         if(param1 != §^"E§)
         {
            this.§]!W§ = -1;
         }
         else
         {
            this.§>#h§();
         }
         this.§<!C§ = param1;
         this.§72§.§8#1§.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§<!C§)
         {
            case §^"E§:
               this.§^"R§();
               break;
            case §6!$§:
               this.§6"5§();
               break;
            case §`#b§:
               this.§"!h§();
               break;
            case §?3§:
               this.§["#§();
               break;
            case §,;§:
               this.§^#'§();
               break;
            case §"#o§:
               this.§<#<§();
               break;
            default:
               this.§^"D§(§^"E§);
         }
      }
      
      protected function §^"R§() : void
      {
         if(Math.random() < §<b§)
         {
            this.§^"D§(§`#b§);
         }
         else if(Math.random() < §6#W§)
         {
            this.§^"D§(§6!$§);
         }
         else
         {
            this.§^"D§(§^"E§);
         }
      }
      
      protected function §6"5§() : void
      {
         this.§^"D§(§^"E§);
      }
      
      protected function §"!h§() : void
      {
         this.§^"D§(§?3§);
      }
      
      protected function §["#§() : void
      {
         if(Math.random() < §0"S§)
         {
            this.§^"D§(§6!$§);
         }
         else
         {
            this.§^"D§(§^"E§);
         }
      }
      
      protected function §^#'§() : void
      {
         this.§^"D§(§^"E§);
      }
      
      protected function §<#<§() : void
      {
         this.§^"D§(§6!$§);
      }
      
      protected function §>#h§() : void
      {
         if(this.§]!W§ < 0)
         {
            this.§]!W§ = 0;
            this.§9#P§ = (this.§3#z§[0] + Math.random() * this.§3#z§[1]) * 1000;
         }
      }
      
      public function §?#-§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §^"E§)
         {
            if(param2 > 0)
            {
               this.§72§.§8#1§.selectSubAnimation(0,false);
               this.§>#h§();
            }
            else if(param2 == 0 && param3 > 1 && this.§]!W§ > this.§9#P§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§72§.§8#1§.selectSubAnimation(_loc4_,false);
               this.§]!W§ = -1;
            }
         }
         else if(param1 == §?3§)
         {
            this.playSound(this.§?!v§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§<!C§ == §?3§)
         {
            this.§?!v§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§72§.playSoundLua(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§9#'§ += param1;
         if(this.§]!W§ >= 0)
         {
            this.§]!W§ += param1;
         }
         if(this.§<@§ >= 0 && this.§9#'§ >= this.§<@§)
         {
            this.updateState();
         }
      }
      
      public function get §[#C§() : Boolean
      {
         return this.§+!X§;
      }
      
      public function set §[#C§(param1:Boolean) : void
      {
         this.§+!X§ = param1;
         if(this.§+!X§)
         {
            this.§^"D§(§1#y§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§>#-§ = param1;
         if(param1 > 0.5)
         {
            this.§^"D§(§?#h§);
         }
      }
   }
}
