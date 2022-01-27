package §5"D§
{
   import §'!n§.§@B§;
   import §6!M§.§74§;
   
   public class §6"§ implements §@!t§
   {
      
      protected static const §1l§:String = §!0§.§3`§;
      
      protected static const §2!q§:String = §!0§.§]!P§;
      
      protected static const § l§:String = §!0§.§8F§;
      
      protected static const §1!1§:String = §!0§.§`5§;
      
      protected static const §5;§:String = §!0§.§-!r§;
      
      protected static const §?o§:String = §!0§.§,!c§;
      
      protected static const §@!P§:String = §!0§.§,",§;
      
      protected static const §4!3§:String = §!0§.§;V§;
      
      protected static const §#'§:Array = [3,8];
      
      protected static const §#!M§:Array = [2,2];
      
      protected static const §0"A§:Array = [2,3];
      
      protected static const §`1§:Array = [5,5];
      
      protected static const §4z§:Array = [2,2];
      
      protected static const §7!r§:Array = [1,2];
      
      protected static const § #§:Array = [10,3.5];
      
      protected static const §0j§:Number = 0.05;
      
      protected static const §%5§:Number = 0.1;
      
      protected static const §,!0§:Number = 0.5;
       
      
      protected var §%!o§:String;
      
      protected var §^!_§:Number = 0.0;
      
      protected var §6a§:Number = 0.0;
      
      protected var §8!Z§:§@B§;
      
      protected var §9"§:Number = -1.0;
      
      protected var §"!=§:Number = 0.0;
      
      protected var §<! §:Array;
      
      protected var §1!^§:§2!k§;
      
      protected var §'h§:Boolean;
      
      protected var §;X§:Number = 0.0;
      
      protected var §0";§:String;
      
      public function §6"§(param1:§2!k§, param2:§74§)
      {
         this.§%!o§ = §!0§.§3`§;
         this.§8!Z§ = new §@B§();
         super();
         this.§1!^§ = param1;
         this.§<! § = param2.§!!w§();
         this.§8!Z§[§1l§] = §#'§;
         this.§8!Z§[§2!q§] = §#!M§;
         this.§8!Z§[§ l§] = §0"A§;
         this.§8!Z§[§1!1§] = §`1§;
         this.§8!Z§[§5;§] = §4z§;
         this.§8!Z§[§?o§] = §7!r§;
         this.§8!Z§[§@!P§] = § #§;
         this.§#"3§();
      }
      
      public function get §##§() : String
      {
         return this.§%!o§;
      }
      
      public function §@"#§(param1:§>q§) : void
      {
         if(param1.§9B§().GetLinearVelocity().§@"9§() > 1)
         {
            this.changeState(§5;§);
         }
      }
      
      public function §?b§(param1:§>q§) : void
      {
         if(param1 is §1"G§)
         {
            this.changeState(§5;§);
         }
      }
      
      public function §#!U§(param1:§>q§) : void
      {
      }
      
      public function §4!z§(param1:§>q§) : void
      {
         if(param1 is §1"G§)
         {
            this.changeState(§?o§);
         }
      }
      
      protected function §#A§(param1:String) : Number
      {
         if(this.§'h§)
         {
            return -1;
         }
         var _loc2_:Array = this.§8!Z§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function changeState(param1:String) : void
      {
         if(this.§5I§ && param1 != §4!3§)
         {
            return;
         }
         if(this.§;X§ > 0.5 && param1 != §@!P§)
         {
            return;
         }
         this.§^!_§ = 0;
         this.§6a§ = this.§#A§(param1);
         if(param1 != §1l§)
         {
            this.§9"§ = -1;
         }
         else
         {
            this.§#"3§();
         }
         this.§%!o§ = param1;
         this.§1!^§.renderer.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§%!o§)
         {
            case §1l§:
               this.§"_§();
               break;
            case §2!q§:
               this.§4!U§();
               break;
            case § l§:
               this.§8"%§();
               break;
            case §1!1§:
               this.§'!<§();
               break;
            case §5;§:
               this.§throw§();
               break;
            case §?o§:
               this.§&c§();
               break;
            default:
               this.changeState(§1l§);
         }
      }
      
      protected function §"_§() : void
      {
         if(Math.random() < §0j§)
         {
            this.changeState(§ l§);
         }
         else if(Math.random() < §%5§)
         {
            this.changeState(§2!q§);
         }
         else
         {
            this.changeState(§1l§);
         }
      }
      
      protected function §4!U§() : void
      {
         this.changeState(§1l§);
      }
      
      protected function §8"%§() : void
      {
         this.changeState(§1!1§);
      }
      
      protected function §'!<§() : void
      {
         if(Math.random() < §,!0§)
         {
            this.changeState(§2!q§);
         }
         else
         {
            this.changeState(§1l§);
         }
      }
      
      protected function §throw§() : void
      {
         this.changeState(§1l§);
      }
      
      protected function §&c§() : void
      {
         this.changeState(§2!q§);
      }
      
      protected function §#"3§() : void
      {
         if(this.§9"§ < 0)
         {
            this.§9"§ = 0;
            this.§"!=§ = (this.§<! §[0] + Math.random() * this.§<! §[1]) * 1000;
         }
      }
      
      public function handleAnimationEnd(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §1l§)
         {
            if(param2 > 0)
            {
               this.§1!^§.renderer.selectSubAnimation(0,false);
               this.§#"3§();
            }
            else if(param2 == 0 && param3 > 1 && this.§9"§ > this.§"!=§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§1!^§.renderer.selectSubAnimation(_loc4_,false);
               this.§9"§ = -1;
            }
         }
         else if(param1 == §1!1§)
         {
            this.playSound(this.§0";§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§%!o§ == §1!1§)
         {
            this.§0";§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§1!^§.playSound(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§^!_§ += param1;
         if(this.§9"§ >= 0)
         {
            this.§9"§ += param1;
         }
         if(this.§6a§ >= 0 && this.§^!_§ >= this.§6a§)
         {
            this.updateState();
         }
      }
      
      public function get §5I§() : Boolean
      {
         return this.§'h§;
      }
      
      public function set §5I§(param1:Boolean) : void
      {
         this.§'h§ = param1;
         if(this.§'h§)
         {
            this.changeState(§4!3§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§;X§ = param1;
         if(param1 > 0.5)
         {
            this.changeState(§@!P§);
         }
      }
   }
}
