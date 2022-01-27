package §>g§
{
   import §]$§.§<Q§;
   import com.rovio.assets.§^3§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §[C§ extends Sprite
   {
       
      
      private var §6J§:Sprite;
      
      private var §`'§:Number;
      
      private var §%B§:Number;
      
      private var §^M§:§<Q§;
      
      public function §[C§(param1:Number)
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
         this.§6J§ = this.§+5§(_loc3_);
         addChild(this.§6J§);
         this.mouseEnabled = false;
         this.§6J§.x = -this.§6J§.width / 2;
         this.§6J§.y = -this.§6J§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§^M§)
         {
            this.§^M§.stop();
            this.§^M§ = null;
         }
         removeChild(this.§6J§);
         this.§6J§ = null;
      }
      
      public function §+5§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §^3§.§+_§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §&!J§(param1:§<Q§) : void
      {
         this.§^M§ = param1;
      }
      
      public function get §&!J§() : §<Q§
      {
         return this.§^M§;
      }
      
      public function get §+b§() : Number
      {
         return this.§`'§;
      }
      
      public function set §+b§(param1:Number) : void
      {
         this.§`'§ = param1;
      }
      
      public function get §@p§() : Number
      {
         return this.§%B§;
      }
      
      public function set §@p§(param1:Number) : void
      {
         this.§%B§ = param1;
      }
   }
}
