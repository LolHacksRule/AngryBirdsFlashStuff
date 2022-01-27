package §9!L§
{
   import §9!U§.§15§;
   import com.rovio.assets.§>!;§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §+!#§ extends Sprite
   {
      
      public static const §#x§:String = "star";
      
      public static const §'!s§:String = "smoke";
      
      public static const §8!§:String = "coin";
      
      public static const §&,§:String = "all";
       
      
      private var §2B§:Sprite;
      
      private var §+t§:Number;
      
      private var §4">§:Number;
      
      private var §=!D§:§15§;
      
      public function §+!#§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §#x§:
               _loc3_ = this.§""4§(0,3);
               break;
            case §'!s§:
               _loc3_ = this.§""4§(4,6);
               break;
            case §8!§:
               _loc3_ = this.§""4§(7,9);
               break;
            case §&,§:
               _loc3_ = this.§""4§(0,6);
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
               _loc4_ = "P_COIN_3";
               break;
            case 8:
               _loc4_ = "P_COIN_2";
               break;
            case 9:
               _loc4_ = "P_COIN_1";
         }
         this.§2B§ = this.§!"9§(_loc4_);
         addChild(this.§2B§);
         this.mouseEnabled = false;
         this.§2B§.x = -this.§2B§.width / 2;
         this.§2B§.y = -this.§2B§.height / 2;
      }
      
      private function §""4§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §&!§() : void
      {
         if(this.§=!D§)
         {
            this.§=!D§.stop();
            this.§=!D§ = null;
         }
         removeChild(this.§2B§);
         this.§2B§ = null;
      }
      
      public function §!"9§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §>!;§.§+!u§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §%y§(param1:§15§) : void
      {
         this.§=!D§ = param1;
      }
      
      public function get §%y§() : §15§
      {
         return this.§=!D§;
      }
      
      public function get §>!x§() : Number
      {
         return this.§+t§;
      }
      
      public function set §>!x§(param1:Number) : void
      {
         this.§+t§ = param1;
      }
      
      public function get §2k§() : Number
      {
         return this.§4">§;
      }
      
      public function set §2k§(param1:Number) : void
      {
         this.§4">§ = param1;
      }
   }
}
