package §1'§
{
   import §;g§.§]W§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'!G§ extends Sprite
   {
      
      public static const §0P§:String = "star";
      
      public static const §"!P§:String = "smoke";
      
      public static const §[§:String = "coin";
      
      public static const § !P§:String = "all";
       
      
      private var §"!H§:Sprite;
      
      private var §6!G§:Number;
      
      private var §8r§:Number;
      
      private var §%"1§:§]W§;
      
      public function §'!G§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §0P§:
               _loc3_ = this.§,Y§(0,3);
               break;
            case §"!P§:
               _loc3_ = this.§,Y§(4,6);
               break;
            case §[§:
               _loc3_ = this.§,Y§(7,9);
               break;
            case § !P§:
               _loc3_ = this.§,Y§(0,6);
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
         this.§"!H§ = this.§2!S§(_loc4_);
         addChild(this.§"!H§);
         this.mouseEnabled = false;
         this.§"!H§.x = -this.§"!H§.width / 2;
         this.§"!H§.y = -this.§"!H§.height / 2;
      }
      
      private function §,Y§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §,!#§() : void
      {
         if(this.§%"1§)
         {
            this.§%"1§.stop();
            this.§%"1§ = null;
         }
         removeChild(this.§"!H§);
         this.§"!H§ = null;
      }
      
      public function §2!S§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §=!V§.§?!O§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §]!#§(param1:§]W§) : void
      {
         this.§%"1§ = param1;
      }
      
      public function get §]!#§() : §]W§
      {
         return this.§%"1§;
      }
      
      public function get §"$§() : Number
      {
         return this.§6!G§;
      }
      
      public function set §"$§(param1:Number) : void
      {
         this.§6!G§ = param1;
      }
      
      public function get §8!g§() : Number
      {
         return this.§8r§;
      }
      
      public function set §8!g§(param1:Number) : void
      {
         this.§8r§ = param1;
      }
   }
}
