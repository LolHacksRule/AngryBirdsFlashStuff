package §9!a§
{
   import §0"g§.§%b§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §]a§ extends Sprite
   {
      
      public static const §4@§:String = "star";
      
      public static const §9!E§:String = "smoke";
      
      public static const §+!#§:String = "coin";
      
      public static const §?!5§:String = "all";
       
      
      private var §&!P§:Sprite;
      
      private var §-?§:Number;
      
      private var §9!&§:Number;
      
      private var §6!l§:§%b§;
      
      public function §]a§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §4@§:
               _loc3_ = this.§""I§(0,3);
               break;
            case §9!E§:
               _loc3_ = this.§""I§(4,6);
               break;
            case §+!#§:
               _loc3_ = this.§""I§(7,9);
               break;
            case §?!5§:
               _loc3_ = this.§""I§(0,6);
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
         this.§&!P§ = this.§7c§(_loc4_);
         addChild(this.§&!P§);
         this.mouseEnabled = false;
         this.§&!P§.x = -this.§&!P§.width / 2;
         this.§&!P§.y = -this.§&!P§.height / 2;
      }
      
      private function §""I§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function § "!§() : void
      {
         if(this.§6!l§)
         {
            this.§6!l§.stop();
            this.§6!l§ = null;
         }
         removeChild(this.§&!P§);
         this.§&!P§ = null;
      }
      
      public function §7c§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §%!Z§.§;",§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §1!V§(param1:§%b§) : void
      {
         this.§6!l§ = param1;
      }
      
      public function get §1!V§() : §%b§
      {
         return this.§6!l§;
      }
      
      public function get §1K§() : Number
      {
         return this.§-?§;
      }
      
      public function set §1K§(param1:Number) : void
      {
         this.§-?§ = param1;
      }
      
      public function get §["l§() : Number
      {
         return this.§9!&§;
      }
      
      public function set §["l§(param1:Number) : void
      {
         this.§9!&§ = param1;
      }
   }
}
