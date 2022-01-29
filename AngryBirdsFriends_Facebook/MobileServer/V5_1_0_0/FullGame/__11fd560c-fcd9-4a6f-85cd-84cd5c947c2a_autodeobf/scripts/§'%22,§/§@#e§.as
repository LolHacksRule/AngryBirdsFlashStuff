package §'",§
{
   import §!#"§.§4[§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §@#e§ extends Sprite
   {
      
      public static const §1"o§:String = "star";
      
      public static const §-v§:String = "smoke";
      
      public static const §7!v§:String = "coin";
      
      public static const §<"h§:String = "all";
       
      
      private var §8!d§:Sprite;
      
      private var §@!?§:Number;
      
      private var §0$"§:Number;
      
      private var §`L§:§4[§;
      
      public function §@#e§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §1"o§:
               _loc3_ = this.randRange(0,3);
               break;
            case §-v§:
               _loc3_ = this.randRange(4,6);
               break;
            case §7!v§:
               _loc3_ = this.randRange(7,9);
               break;
            case §<"h§:
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
         this.§8!d§ = this.§>#Y§(_loc4_);
         addChild(this.§8!d§);
         this.mouseEnabled = false;
         this.§8!d§.x = -this.§8!d§.width / 2;
         this.§8!d§.y = -this.§8!d§.height / 2;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §,"I§() : void
      {
         if(this.§`L§)
         {
            this.§`L§.stop();
            this.§`L§ = null;
         }
         removeChild(this.§8!d§);
         this.§8!d§ = null;
      }
      
      public function §>#Y§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §!"f§.§##?§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §7$!§(param1:§4[§) : void
      {
         this.§`L§ = param1;
      }
      
      public function get §7$!§() : §4[§
      {
         return this.§`L§;
      }
      
      public function get §[$&§() : Number
      {
         return this.§@!?§;
      }
      
      public function set §[$&§(param1:Number) : void
      {
         this.§@!?§ = param1;
      }
      
      public function get §<#7§() : Number
      {
         return this.§0$"§;
      }
      
      public function set §<#7§(param1:Number) : void
      {
         this.§0$"§ = param1;
      }
   }
}
