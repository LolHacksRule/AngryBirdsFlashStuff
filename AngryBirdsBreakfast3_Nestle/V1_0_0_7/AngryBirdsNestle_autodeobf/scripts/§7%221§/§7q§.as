package §7"1§
{
   import §-b§.§4`§;
   import com.rovio.assets.§[O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7q§ extends Sprite
   {
      
      public static const §"@§:String = "star";
      
      public static const §9T§:String = "smoke";
      
      public static const §80§:String = "coin";
      
      public static const § !<§:String = "all";
       
      
      private var §2w§:Sprite;
      
      private var §">§:Number;
      
      private var § "5§:Number;
      
      private var §[D§:§4`§;
      
      public function §7q§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §"@§:
               _loc3_ = this.§@V§(0,3);
               break;
            case §9T§:
               _loc3_ = this.§@V§(4,6);
               break;
            case §80§:
               _loc3_ = this.§@V§(7,9);
               break;
            case § !<§:
               _loc3_ = this.§@V§(0,6);
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
         this.§2w§ = this.§#!B§(_loc4_);
         addChild(this.§2w§);
         this.mouseEnabled = false;
         this.§2w§.x = -this.§2w§.width / 2;
         this.§2w§.y = -this.§2w§.height / 2;
      }
      
      private function §@V§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §^!%§() : void
      {
         if(this.§[D§)
         {
            this.§[D§.stop();
            this.§[D§ = null;
         }
         removeChild(this.§2w§);
         this.§2w§ = null;
      }
      
      public function §#!B§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §[O§.§1s§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §case§(param1:§4`§) : void
      {
         this.§[D§ = param1;
      }
      
      public function get §case§() : §4`§
      {
         return this.§[D§;
      }
      
      public function get §7!w§() : Number
      {
         return this.§">§;
      }
      
      public function set §7!w§(param1:Number) : void
      {
         this.§">§ = param1;
      }
      
      public function get §"!%§() : Number
      {
         return this.§ "5§;
      }
      
      public function set §"!%§(param1:Number) : void
      {
         this.§ "5§ = param1;
      }
   }
}
