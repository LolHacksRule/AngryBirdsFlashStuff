package §`!_§
{
   import §><§.§4!N§;
   import com.rovio.assets.§&!2§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §86§ extends Sprite
   {
      
      public static const §0!=§:String = "star";
      
      public static const §8!I§:String = "smoke";
      
      public static const § J§:String = "coin";
      
      public static const §00§:String = "all";
       
      
      private var §-",§:Sprite;
      
      private var §+!j§:Number;
      
      private var §9<§:Number;
      
      private var §^" §:§4!N§;
      
      public function §86§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §0!=§:
               _loc3_ = this.§%h§(0,3);
               break;
            case §8!I§:
               _loc3_ = this.§%h§(4,6);
               break;
            case § J§:
               _loc3_ = this.§%h§(7,9);
               break;
            case §00§:
               _loc3_ = this.§%h§(0,6);
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
         this.§-",§ = this.§'!W§(_loc4_);
         addChild(this.§-",§);
         this.mouseEnabled = false;
         this.§-",§.x = -this.§-",§.width / 2;
         this.§-",§.y = -this.§-",§.height / 2;
      }
      
      private function §%h§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §=!I§() : void
      {
         if(this.§^" §)
         {
            this.§^" §.stop();
            this.§^" § = null;
         }
         removeChild(this.§-",§);
         this.§-",§ = null;
      }
      
      public function §'!W§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §&!2§.§0!O§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §?"'§(param1:§4!N§) : void
      {
         this.§^" § = param1;
      }
      
      public function get §?"'§() : §4!N§
      {
         return this.§^" §;
      }
      
      public function get §2!T§() : Number
      {
         return this.§+!j§;
      }
      
      public function set §2!T§(param1:Number) : void
      {
         this.§+!j§ = param1;
      }
      
      public function get § P§() : Number
      {
         return this.§9<§;
      }
      
      public function set § P§(param1:Number) : void
      {
         this.§9<§ = param1;
      }
   }
}
