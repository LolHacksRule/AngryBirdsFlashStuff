package §]!O§
{
   import §<§.§8"+§;
   import com.rovio.assets.§2!3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §]"@§ extends Sprite
   {
      
      public static const §`!4§:String = "star";
      
      public static const §9b§:String = "smoke";
      
      public static const §<"=§:String = "coin";
      
      public static const §[!F§:String = "all";
       
      
      private var §-U§:Sprite;
      
      private var §`W§:Number;
      
      private var §^§:Number;
      
      private var §0!5§:§8"+§;
      
      public function §]"@§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §`!4§:
               _loc3_ = this.§^"1§(0,3);
               break;
            case §9b§:
               _loc3_ = this.§^"1§(4,6);
               break;
            case §<"=§:
               _loc3_ = this.§^"1§(7,9);
               break;
            case §[!F§:
               _loc3_ = this.§^"1§(0,6);
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
         this.§-U§ = this.§'+§(_loc4_);
         addChild(this.§-U§);
         this.mouseEnabled = false;
         this.§-U§.x = -this.§-U§.width / 2;
         this.§-U§.y = -this.§-U§.height / 2;
      }
      
      private function §^"1§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §#!O§() : void
      {
         if(this.§0!5§)
         {
            this.§0!5§.stop();
            this.§0!5§ = null;
         }
         removeChild(this.§-U§);
         this.§-U§ = null;
      }
      
      public function §'+§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §2!3§.dynamic(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §9a§(param1:§8"+§) : void
      {
         this.§0!5§ = param1;
      }
      
      public function get §9a§() : §8"+§
      {
         return this.§0!5§;
      }
      
      public function get §[H§() : Number
      {
         return this.§`W§;
      }
      
      public function set §[H§(param1:Number) : void
      {
         this.§`W§ = param1;
      }
      
      public function get §-d§() : Number
      {
         return this.§^§;
      }
      
      public function set §-d§(param1:Number) : void
      {
         this.§^§ = param1;
      }
   }
}
