package §5"t§
{
   import §&$3§.§7$C§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7"Y§ extends Sprite
   {
      
      public static const §"#C§:String = "star";
      
      public static const §["§:String = "smoke";
      
      public static const § !]§:String = "coin";
      
      public static const §^#N§:String = "all";
       
      
      private var §[#7§:Sprite;
      
      private var §-I§:Number;
      
      private var §+!#§:Number;
      
      private var §!#Z§:§7$C§;
      
      public function §7"Y§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §"#C§:
               _loc3_ = this.randRange(0,3);
               break;
            case §["§:
               _loc3_ = this.randRange(4,6);
               break;
            case § !]§:
               _loc3_ = this.randRange(7,9);
               break;
            case §^#N§:
               _loc3_ = this.randRange(0,6);
         }
         switch(_loc3_)
         {
            case 0:
               _loc4_ = "P_STAR_4";
               break;
            case 1:
               _loc4_ = "P_STAR_3";
               break;
            case 2:
               _loc4_ = "P_STAR_2";
               break;
            case 3:
               _loc4_ = "P_STAR_1";
               break;
            case 4:
               _loc4_ = "P_SMOKE_3";
               break;
            case 5:
               _loc4_ = "P_SMOKE_2";
               break;
            case 6:
               _loc4_ = "P_SMOKE_1";
               break;
            case 7:
            case 8:
            case 9:
               _loc4_ = "P_COIN_1";
         }
         this.§[#7§ = this.§8n§(_loc4_);
         addChild(this.§[#7§);
         this.mouseEnabled = false;
         this.§[#7§.x = -this.§[#7§.width / 2;
         this.§[#7§.y = -this.§[#7§.height / 2;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §"#%§() : void
      {
         if(this.§!#Z§)
         {
            this.§!#Z§.stop();
            this.§!#Z§ = null;
         }
         removeChild(this.§[#7§);
         this.§[#7§ = null;
      }
      
      public function §8n§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §6$A§.§1!m§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §=!=§(param1:§7$C§) : void
      {
         this.§!#Z§ = param1;
      }
      
      public function get §=!=§() : §7$C§
      {
         return this.§!#Z§;
      }
      
      public function get §4"Q§() : Number
      {
         return this.§-I§;
      }
      
      public function set §4"Q§(param1:Number) : void
      {
         this.§-I§ = param1;
      }
      
      public function get §7!B§() : Number
      {
         return this.§+!#§;
      }
      
      public function set §7!B§(param1:Number) : void
      {
         this.§+!#§ = param1;
      }
   }
}
