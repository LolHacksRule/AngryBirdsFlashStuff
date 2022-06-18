package §,!$§
{
   import §6[§.§`!-§;
   import com.rovio.assets.§''§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §";§ extends Sprite
   {
       
      
      private var §3^§:Sprite;
      
      private var §!f§:Number;
      
      private var §]^§:Number;
      
      private var §-o§:§`!-§;
      
      public function §";§(param1:Number)
      {
         var _loc3_:String = null;
         super();
         var _loc2_:int = Math.random() * 7;
         switch(_loc2_)
         {
            case 0:
               _loc3_ = "P_STAR_4";
               break;
            case 1:
               _loc3_ = "P_STAR_3";
               break;
            case 2:
               _loc3_ = "P_STAR_2";
               break;
            case 3:
               _loc3_ = "P_STAR_1";
               break;
            case 4:
               _loc3_ = "P_SMOKE_3";
               break;
            case 5:
               _loc3_ = "P_SMOKE_2";
               break;
            case 6:
               _loc3_ = "P_SMOKE_1";
         }
         this.§3^§ = this.§?f§(_loc3_);
         addChild(this.§3^§);
         this.mouseEnabled = false;
         this.§3^§.x = -this.§3^§.width / 2;
         this.§3^§.y = -this.§3^§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§-o§)
         {
            this.§-o§.stop();
            this.§-o§ = null;
         }
         removeChild(this.§3^§);
         this.§3^§ = null;
      }
      
      public function §?f§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §''§.§-C§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §3>§(param1:§`!-§) : void
      {
         this.§-o§ = param1;
      }
      
      public function get §3>§() : §`!-§
      {
         return this.§-o§;
      }
      
      public function get §3!4§() : Number
      {
         return this.§!f§;
      }
      
      public function set §3!4§(param1:Number) : void
      {
         this.§!f§ = param1;
      }
      
      public function get §9!C§() : Number
      {
         return this.§]^§;
      }
      
      public function set §9!C§(param1:Number) : void
      {
         this.§]^§ = param1;
      }
   }
}
