package §+!5§
{
   import §6t§.§<!'§;
   import com.rovio.assets.§<U§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §+T§ extends Sprite
   {
      
      public static const §2"§:String = "star";
      
      public static const §8=§:String = "smoke";
      
      public static const §1!_§:String = "coin";
      
      public static const §&!3§:String = "all";
       
      
      private var §%!<§:Sprite;
      
      private var §>6§:Number;
      
      private var §7g§:Number;
      
      private var §<x§:§<!'§;
      
      public function §+T§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §2"§:
               _loc3_ = this.§0!Y§(0,3);
               break;
            case §8=§:
               _loc3_ = this.§0!Y§(4,6);
               break;
            case §1!_§:
               _loc3_ = this.§0!Y§(7,9);
               break;
            case §&!3§:
               _loc3_ = this.§0!Y§(0,6);
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
         this.§%!<§ = this.§8!i§(_loc4_);
         addChild(this.§%!<§);
         this.mouseEnabled = false;
         this.§%!<§.x = -this.§%!<§.width / 2;
         this.§%!<§.y = -this.§%!<§.height / 2;
      }
      
      private function §0!Y§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §[!R§() : void
      {
         if(this.§<x§)
         {
            this.§<x§.stop();
            this.§<x§ = null;
         }
         removeChild(this.§%!<§);
         this.§%!<§ = null;
      }
      
      public function §8!i§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §<U§.§5"0§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §,!T§(param1:§<!'§) : void
      {
         this.§<x§ = param1;
      }
      
      public function get §,!T§() : §<!'§
      {
         return this.§<x§;
      }
      
      public function get §9!'§() : Number
      {
         return this.§>6§;
      }
      
      public function set §9!'§(param1:Number) : void
      {
         this.§>6§ = param1;
      }
      
      public function get §'!8§() : Number
      {
         return this.§7g§;
      }
      
      public function set §'!8§(param1:Number) : void
      {
         this.§7g§ = param1;
      }
   }
}
