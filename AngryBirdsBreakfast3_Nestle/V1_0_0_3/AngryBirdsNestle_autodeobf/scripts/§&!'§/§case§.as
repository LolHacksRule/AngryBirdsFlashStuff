package §&!'§
{
   import §=3§.§]!X§;
   import com.rovio.assets.§^1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §case§ extends Sprite
   {
      
      public static const §&U§:String = "star";
      
      public static const §2![§:String = "smoke";
      
      public static const §[e§:String = "coin";
      
      public static const §?!B§:String = "all";
       
      
      private var §-!,§:Sprite;
      
      private var §>! §:Number;
      
      private var §!L§:Number;
      
      private var §[_§:§]!X§;
      
      public function §case§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §&U§:
               _loc3_ = this.§<!&§(0,3);
               break;
            case §2![§:
               _loc3_ = this.§<!&§(4,6);
               break;
            case §[e§:
               _loc3_ = this.§<!&§(7,9);
               break;
            case §?!B§:
               _loc3_ = this.§<!&§(0,6);
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
         this.§-!,§ = this.§>!c§(_loc4_);
         addChild(this.§-!,§);
         this.mouseEnabled = false;
         this.§-!,§.x = -this.§-!,§.width / 2;
         this.§-!,§.y = -this.§-!,§.height / 2;
      }
      
      private function §<!&§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §3!<§() : void
      {
         if(this.§[_§)
         {
            this.§[_§.stop();
            this.§[_§ = null;
         }
         removeChild(this.§-!,§);
         this.§-!,§ = null;
      }
      
      public function §>!c§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §^1§.§+!I§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §&!8§(param1:§]!X§) : void
      {
         this.§[_§ = param1;
      }
      
      public function get §&!8§() : §]!X§
      {
         return this.§[_§;
      }
      
      public function get §[!P§() : Number
      {
         return this.§>! §;
      }
      
      public function set §[!P§(param1:Number) : void
      {
         this.§>! § = param1;
      }
      
      public function get §&!j§() : Number
      {
         return this.§!L§;
      }
      
      public function set §&!j§(param1:Number) : void
      {
         this.§!L§ = param1;
      }
   }
}
