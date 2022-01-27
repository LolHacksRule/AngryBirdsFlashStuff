package §3§#7
{
   import §6"G§.§[#R§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1"M§ extends Sprite
   {
      
      public static const § #C§:String = "star";
      
      public static const §2#X§:String = "smoke";
      
      public static const §&!y§:String = "coin";
      
      public static const §-!g§:String = "all";
       
      
      private var §9"z§:Sprite;
      
      private var §8"4§:Number;
      
      private var §4!`§:Number;
      
      private var §]k§:§[#R§;
      
      public function §1"M§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case § #C§:
               _loc3_ = this.§=@§(0,3);
               break;
            case §2#X§:
               _loc3_ = this.§=@§(4,6);
               break;
            case §&!y§:
               _loc3_ = this.§=@§(7,9);
               break;
            case §-!g§:
               _loc3_ = this.§=@§(0,6);
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
         this.§9"z§ = this.§]"-§(_loc4_);
         addChild(this.§9"z§);
         this.mouseEnabled = false;
         this.§9"z§.x = -this.§9"z§.width / 2;
         this.§9"z§.y = -this.§9"z§.height / 2;
      }
      
      private function §=@§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §%!G§() : void
      {
         if(this.§]k§)
         {
            this.§]k§.stop();
            this.§]k§ = null;
         }
         removeChild(this.§9"z§);
         this.§9"z§ = null;
      }
      
      public function §]"-§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §5_§.§`"G§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §,#0§(param1:§[#R§) : void
      {
         this.§]k§ = param1;
      }
      
      public function get §,#0§() : §[#R§
      {
         return this.§]k§;
      }
      
      public function get §6#3§() : Number
      {
         return this.§8"4§;
      }
      
      public function set §6#3§(param1:Number) : void
      {
         this.§8"4§ = param1;
      }
      
      public function get §+!P§() : Number
      {
         return this.§4!`§;
      }
      
      public function set §+!P§(param1:Number) : void
      {
         this.§4!`§ = param1;
      }
   }
}
