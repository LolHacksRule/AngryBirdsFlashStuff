package §<!b§
{
   import §8Z§.§-#C§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §>#&§ extends Sprite
   {
      
      public static const §3"S§:String = "star";
      
      public static const §@!<§:String = "smoke";
      
      public static const §[e§:String = "coin";
      
      public static const §'!4§:String = "all";
       
      
      private var §+!j§:Sprite;
      
      private var §]#7§:Number;
      
      private var §^"-§:Number;
      
      private var §]S§:§-#C§;
      
      public function §>#&§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §3"S§:
               _loc3_ = this.randRange(0,3);
               break;
            case §@!<§:
               _loc3_ = this.randRange(4,6);
               break;
            case §[e§:
               _loc3_ = this.randRange(7,9);
               break;
            case §'!4§:
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
         this.§+!j§ = this.§<!;§(_loc4_);
         addChild(this.§+!j§);
         this.mouseEnabled = false;
         this.§+!j§.x = -this.§+!j§.width / 2;
         this.§+!j§.y = -this.§+!j§.height / 2;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §;!?§() : void
      {
         if(this.§]S§)
         {
            this.§]S§.stop();
            this.§]S§ = null;
         }
         removeChild(this.§+!j§);
         this.§+!j§ = null;
      }
      
      public function §<!;§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §+$#§.§["`§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §+#T§(param1:§-#C§) : void
      {
         this.§]S§ = param1;
      }
      
      public function get §+#T§() : §-#C§
      {
         return this.§]S§;
      }
      
      public function get §4#1§() : Number
      {
         return this.§]#7§;
      }
      
      public function set §4#1§(param1:Number) : void
      {
         this.§]#7§ = param1;
      }
      
      public function get §`$!§() : Number
      {
         return this.§^"-§;
      }
      
      public function set §`$!§(param1:Number) : void
      {
         this.§^"-§ = param1;
      }
   }
}
