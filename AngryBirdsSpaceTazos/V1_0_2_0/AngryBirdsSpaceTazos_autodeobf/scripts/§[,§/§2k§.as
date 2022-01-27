package §[,§
{
   import §'#§.§?u§;
   import §;"=§.§-'§;
   
   public class §2k§ implements §`G§
   {
      
      protected static const §+!=§:String = §,"%§.§-!%§;
      
      protected static const §%E§:String = §,"%§.§&H§;
      
      protected static const §4!^§:String = §,"%§.§4!i§;
      
      protected static const §`%§:String = §,"%§.§;!]§;
      
      protected static const §0"4§:String = §,"%§.§%8§;
      
      protected static const §@&§:String = §,"%§.§3"A§;
      
      protected static const §=N§:String = §,"%§.§9v§;
      
      protected static const §'!y§:String = §,"%§.§]"G§;
      
      protected static const §'q§:Array = [3,8];
      
      protected static const §[!-§:Array = [2,2];
      
      protected static const §5@§:Array = [2,3];
      
      protected static const §3!l§:Array = [5,5];
      
      protected static const §,!K§:Array = [2,2];
      
      protected static const §;!b§:Array = [1,2];
      
      protected static const §]]§:Array = [10,3.5];
      
      protected static const § w§:Number = 0.05;
      
      protected static const §]F§:Number = 0.1;
      
      protected static const §[!3§:Number = 0.5;
       
      
      protected var §-"9§:String;
      
      protected var §@O§:Number = 0.0;
      
      protected var §&"#§:Number = 0.0;
      
      protected var §-" §:§?u§;
      
      protected var §"8§:Number = -1.0;
      
      protected var §8`§:Number = 0.0;
      
      protected var §`x§:Array;
      
      protected var §>!N§:§0l§;
      
      protected var §`!1§:Boolean;
      
      protected var §@!'§:Number = 0.0;
      
      protected var §&t§:String;
      
      public function §2k§(param1:§0l§, param2:§-'§)
      {
         this.§-"9§ = §,"%§.§-!%§;
         this.§-" § = new §?u§();
         super();
         this.§>!N§ = param1;
         this.§`x§ = param2.§,j§();
         this.§-" §[§+!=§] = §'q§;
         this.§-" §[§%E§] = §[!-§;
         this.§-" §[§4!^§] = §5@§;
         this.§-" §[§`%§] = §3!l§;
         this.§-" §[§0"4§] = §,!K§;
         this.§-" §[§@&§] = §;!b§;
         this.§-" §[§=N§] = §]]§;
         this.§;!V§();
      }
      
      public function get §4f§() : String
      {
         return this.§-"9§;
      }
      
      public function §%H§(param1:§1d§) : void
      {
         if(param1.§ <§().GetLinearVelocity().§"!E§() > 1)
         {
            this.changeState(§0"4§);
         }
      }
      
      public function §]!P§(param1:§1d§) : void
      {
         if(param1 is §#!v§)
         {
            this.changeState(§0"4§);
         }
      }
      
      public function §`!Q§(param1:§1d§) : void
      {
      }
      
      public function §@"'§(param1:§1d§) : void
      {
         if(param1 is §#!v§)
         {
            this.changeState(§@&§);
         }
      }
      
      protected function §]!t§(param1:String) : Number
      {
         if(this.§`!1§)
         {
            return -1;
         }
         var _loc2_:Array = this.§-" §[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function changeState(param1:String) : void
      {
         if(this.§%h§ && param1 != §'!y§)
         {
            return;
         }
         if(this.§@!'§ > 0.5 && param1 != §=N§)
         {
            return;
         }
         this.§@O§ = 0;
         this.§&"#§ = this.§]!t§(param1);
         if(param1 != §+!=§)
         {
            this.§"8§ = -1;
         }
         else
         {
            this.§;!V§();
         }
         this.§-"9§ = param1;
         this.§>!N§.renderer.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§-"9§)
         {
            case §+!=§:
               this.§7U§();
               break;
            case §%E§:
               this.§&!y§();
               break;
            case §4!^§:
               this.§ §();
               break;
            case §`%§:
               this.§`!,§();
               break;
            case §0"4§:
               this.§+P§();
               break;
            case §@&§:
               this.§7D§();
               break;
            default:
               this.changeState(§+!=§);
         }
      }
      
      protected function §7U§() : void
      {
         if(Math.random() < § w§)
         {
            this.changeState(§4!^§);
         }
         else if(Math.random() < §]F§)
         {
            this.changeState(§%E§);
         }
         else
         {
            this.changeState(§+!=§);
         }
      }
      
      protected function §&!y§() : void
      {
         this.changeState(§+!=§);
      }
      
      protected function § §() : void
      {
         this.changeState(§`%§);
      }
      
      protected function §`!,§() : void
      {
         if(Math.random() < §[!3§)
         {
            this.changeState(§%E§);
         }
         else
         {
            this.changeState(§+!=§);
         }
      }
      
      protected function §+P§() : void
      {
         this.changeState(§+!=§);
      }
      
      protected function §7D§() : void
      {
         this.changeState(§%E§);
      }
      
      protected function §;!V§() : void
      {
         if(this.§"8§ < 0)
         {
            this.§"8§ = 0;
            this.§8`§ = (this.§`x§[0] + Math.random() * this.§`x§[1]) * 1000;
         }
      }
      
      public function handleAnimationEnd(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §+!=§)
         {
            if(param2 > 0)
            {
               this.§>!N§.renderer.selectSubAnimation(0,false);
               this.§;!V§();
            }
            else if(param2 == 0 && param3 > 1 && this.§"8§ > this.§8`§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§>!N§.renderer.selectSubAnimation(_loc4_,false);
               this.§"8§ = -1;
            }
         }
         else if(param1 == §`%§)
         {
            this.playSound(this.§&t§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§-"9§ == §`%§)
         {
            this.§&t§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§>!N§.playSound(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§@O§ += param1;
         if(this.§"8§ >= 0)
         {
            this.§"8§ += param1;
         }
         if(this.§&"#§ >= 0 && this.§@O§ >= this.§&"#§)
         {
            this.updateState();
         }
      }
      
      public function get §%h§() : Boolean
      {
         return this.§`!1§;
      }
      
      public function set §%h§(param1:Boolean) : void
      {
         this.§`!1§ = param1;
         if(this.§`!1§)
         {
            this.changeState(§'!y§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§@!'§ = param1;
         if(param1 > 0.5)
         {
            this.changeState(§=N§);
         }
      }
   }
}
