package §>#O§
{
   import §6§.§]%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'##§ extends Sprite
   {
      
      public static const §=!k§:String = "star";
      
      public static const §9#H§:String = "smoke";
      
      public static const §?"9§:String = "coin";
      
      public static const §#R§:String = "all";
       
      
      private var §1#K§:Sprite;
      
      private var §4"X§:Number;
      
      private var §3!7§:Number;
      
      private var §7#[§:§]%§;
      
      public function §'##§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §=!k§:
               _loc3_ = this.randRange(0,3);
               break;
            case §9#H§:
               _loc3_ = this.randRange(4,6);
               break;
            case §?"9§:
               _loc3_ = this.randRange(7,9);
               break;
            case §#R§:
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
         this.§1#K§ = this.§8"2§(_loc4_);
         addChild(this.§1#K§);
         this.mouseEnabled = false;
         this.§1#K§.x = -this.§1#K§.width / 2;
         this.§1#K§.y = -this.§1#K§.height / 2;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §4#y§() : void
      {
         if(this.§7#[§)
         {
            this.§7#[§.stop();
            this.§7#[§ = null;
         }
         removeChild(this.§1#K§);
         this.§1#K§ = null;
      }
      
      public function §8"2§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §2"O§.§`>§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §;7§(param1:§]%§) : void
      {
         this.§7#[§ = param1;
      }
      
      public function get §;7§() : §]%§
      {
         return this.§7#[§;
      }
      
      public function get §=![§() : Number
      {
         return this.§4"X§;
      }
      
      public function set §=![§(param1:Number) : void
      {
         this.§4"X§ = param1;
      }
      
      public function get §<#V§() : Number
      {
         return this.§3!7§;
      }
      
      public function set §<#V§(param1:Number) : void
      {
         this.§3!7§ = param1;
      }
   }
}
