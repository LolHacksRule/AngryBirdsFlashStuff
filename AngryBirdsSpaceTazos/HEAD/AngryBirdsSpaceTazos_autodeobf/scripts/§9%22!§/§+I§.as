package §9"!§
{
   import §3>§.§34§;
   import §4u§.§5!t§;
   
   public class §+I§ implements §5!m§
   {
      
      protected static const §&§:String = §>!T§.§6Z§;
      
      protected static const §<"1§:String = §>!T§.§+l§;
      
      protected static const §3U§:String = §>!T§.§%"3§;
      
      protected static const §4"#§:String = §>!T§.§?"<§;
      
      protected static const §<g§:String = §>!T§.§ R§;
      
      protected static const §2y§:String = §>!T§.§6X§;
      
      protected static const §<!X§:String = §>!T§.§%"!§;
      
      protected static const §6P§:String = §>!T§.§8!n§;
      
      protected static const §package§:Array = [3,8];
      
      protected static const §`!Q§:Array = [2,2];
      
      protected static const §^s§:Array = [2,3];
      
      protected static const §+"0§:Array = [5,5];
      
      protected static const §]"&§:Array = [2,2];
      
      protected static const §>Z§:Array = [1,2];
      
      protected static const §0o§:Array = [10,3.5];
      
      protected static const §`!A§:Number = 0.05;
      
      protected static const §03§:Number = 0.1;
      
      protected static const §@W§:Number = 0.5;
       
      
      protected var §1j§:String;
      
      protected var §1"7§:Number = 0.0;
      
      protected var §+!n§:Number = 0.0;
      
      protected var §1!U§:§5!t§;
      
      protected var §0c§:Number = -1.0;
      
      protected var §<!a§:Number = 0.0;
      
      protected var §[&§:Array;
      
      protected var §9!e§:§>![§;
      
      protected var §9"'§:Boolean;
      
      protected var § 8§:Number = 0.0;
      
      protected var §"g§:String;
      
      public function §+I§(param1:§>![§, param2:§34§)
      {
         this.§1j§ = §>!T§.§6Z§;
         this.§1!U§ = new §5!t§();
         super();
         this.§9!e§ = param1;
         this.§[&§ = param2.§6!&§();
         this.§1!U§[§&§] = §package§;
         this.§1!U§[§<"1§] = §`!Q§;
         this.§1!U§[§3U§] = §^s§;
         this.§1!U§[§4"#§] = §+"0§;
         this.§1!U§[§<g§] = §]"&§;
         this.§1!U§[§2y§] = §>Z§;
         this.§1!U§[§<!X§] = §0o§;
         this.§+A§();
      }
      
      public function get §9!&§() : String
      {
         return this.§1j§;
      }
      
      public function §%"G§(param1:§,%§) : void
      {
         if(param1.§`I§().GetLinearVelocity().§4"3§() > 1)
         {
            this.changeState(§<g§);
         }
      }
      
      public function §-!-§(param1:§,%§) : void
      {
         if(param1 is §!!H§)
         {
            this.changeState(§<g§);
         }
      }
      
      public function §@!`§(param1:§,%§) : void
      {
      }
      
      public function §?"4§(param1:§,%§) : void
      {
         if(param1 is §!!H§)
         {
            this.changeState(§2y§);
         }
      }
      
      protected function §3!i§(param1:String) : Number
      {
         if(this.§9"'§)
         {
            return -1;
         }
         var _loc2_:Array = this.§1!U§[param1];
         return (_loc2_[0] + Math.random() * _loc2_[1]) * 1000;
      }
      
      protected function changeState(param1:String) : void
      {
         if(this.§]&§ && param1 != §6P§)
         {
            return;
         }
         if(this.§ 8§ > 0.5 && param1 != §<!X§)
         {
            return;
         }
         this.§1"7§ = 0;
         this.§+!n§ = this.§3!i§(param1);
         if(param1 != §&§)
         {
            this.§0c§ = -1;
         }
         else
         {
            this.§+A§();
         }
         this.§1j§ = param1;
         this.§9!e§.renderer.setAnimation(param1);
      }
      
      protected function updateState() : void
      {
         switch(this.§1j§)
         {
            case §&§:
               this.§<!l§();
               break;
            case §<"1§:
               this.§#"1§();
               break;
            case §3U§:
               this.§"";§();
               break;
            case §4"#§:
               this.§5O§();
               break;
            case §<g§:
               this.§&2§();
               break;
            case §2y§:
               this.§2!-§();
               break;
            default:
               this.changeState(§&§);
         }
      }
      
      protected function §<!l§() : void
      {
         if(Math.random() < §`!A§)
         {
            this.changeState(§3U§);
         }
         else if(Math.random() < §03§)
         {
            this.changeState(§<"1§);
         }
         else
         {
            this.changeState(§&§);
         }
      }
      
      protected function §#"1§() : void
      {
         this.changeState(§&§);
      }
      
      protected function §"";§() : void
      {
         this.changeState(§4"#§);
      }
      
      protected function §5O§() : void
      {
         if(Math.random() < §@W§)
         {
            this.changeState(§<"1§);
         }
         else
         {
            this.changeState(§&§);
         }
      }
      
      protected function §&2§() : void
      {
         this.changeState(§&§);
      }
      
      protected function §2!-§() : void
      {
         this.changeState(§<"1§);
      }
      
      protected function §+A§() : void
      {
         if(this.§0c§ < 0)
         {
            this.§0c§ = 0;
            this.§<!a§ = (this.§[&§[0] + Math.random() * this.§[&§[1]) * 1000;
         }
      }
      
      public function handleAnimationEnd(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(param1 == §&§)
         {
            if(param2 > 0)
            {
               this.§9!e§.renderer.selectSubAnimation(0,false);
               this.§+A§();
            }
            else if(param2 == 0 && param3 > 1 && this.§0c§ > this.§<!a§)
            {
               _loc4_ = 1 + Math.floor(Math.random() * (param3 - 1));
               this.§9!e§.renderer.selectSubAnimation(_loc4_,false);
               this.§0c§ = -1;
            }
         }
         else if(param1 == §4"#§)
         {
            this.playSound(this.§"g§);
         }
      }
      
      public function playSound(param1:String) : void
      {
         if(this.§1j§ == §4"#§)
         {
            this.§"g§ = param1;
         }
         if(!param1)
         {
            return;
         }
         this.§9!e§.playSound(param1);
      }
      
      public function update(param1:Number) : void
      {
         this.§1"7§ += param1;
         if(this.§0c§ >= 0)
         {
            this.§0c§ += param1;
         }
         if(this.§+!n§ >= 0 && this.§1"7§ >= this.§+!n§)
         {
            this.updateState();
         }
      }
      
      public function get §]&§() : Boolean
      {
         return this.§9"'§;
      }
      
      public function set §]&§(param1:Boolean) : void
      {
         this.§9"'§ = param1;
         if(this.§9"'§)
         {
            this.changeState(§6P§);
         }
      }
      
      public function setDamageState(param1:Number) : void
      {
         this.§ 8§ = param1;
         if(param1 > 0.5)
         {
            this.changeState(§<!X§);
         }
      }
   }
}
