package §-#;§
{
   import §;"5§.§@$-§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §>",§ extends Sprite
   {
      
      public static const §;3§:String = "star";
      
      public static const §1$8§:String = "smoke";
      
      public static const §7!V§:String = "coin";
      
      public static const §+!y§:String = "all";
       
      
      private var §&"p§:Sprite;
      
      private var §8#N§:Number;
      
      private var §%! §:Number;
      
      private var §>$-§:§@$-§;
      
      public function §>",§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §;3§:
               _loc3_ = this.randRange(0,3);
               break;
            case §1$8§:
               _loc3_ = this.randRange(4,6);
               break;
            case §7!V§:
               _loc3_ = this.randRange(7,9);
               break;
            case §+!y§:
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
         this.§&"p§ = this.§ "I§(_loc4_);
         addChild(this.§&"p§);
         this.mouseEnabled = false;
         this.§&"p§.x = -this.§&"p§.width / 2;
         this.§&"p§.y = -this.§&"p§.height / 2;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §<![§() : void
      {
         if(this.§>$-§)
         {
            this.§>$-§.stop();
            this.§>$-§ = null;
         }
         removeChild(this.§&"p§);
         this.§&"p§ = null;
      }
      
      public function § "I§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §[a§.§8#k§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §;`§(param1:§@$-§) : void
      {
         this.§>$-§ = param1;
      }
      
      public function get §;`§() : §@$-§
      {
         return this.§>$-§;
      }
      
      public function get §3$;§() : Number
      {
         return this.§8#N§;
      }
      
      public function set §3$;§(param1:Number) : void
      {
         this.§8#N§ = param1;
      }
      
      public function get §]"l§() : Number
      {
         return this.§%! §;
      }
      
      public function set §]"l§(param1:Number) : void
      {
         this.§%! § = param1;
      }
   }
}
