package §@!4§
{
   import §2E§.§!"&§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0]§ extends Sprite
   {
       
      
      private var §+?§:Sprite;
      
      private var §1G§:Number;
      
      private var §#!o§:Number;
      
      private var §#[§:§!"&§;
      
      public function §0]§(param1:Number, param2:Boolean)
      {
         var _loc5_:String = null;
         super();
         var _loc3_:int = 7;
         if(param2)
         {
            _loc3_ = 10;
         }
         var _loc4_:int = Math.random() * _loc3_;
         switch(_loc4_)
         {
            case 0:
               _loc5_ = "P_STAR_4";
               break;
            case 1:
               _loc5_ = "P_STAR_3";
               break;
            case 2:
               _loc5_ = "P_STAR_2";
               break;
            case 3:
               _loc5_ = "P_STAR_1";
               break;
            case 4:
               _loc5_ = "P_SMOKE_3";
               break;
            case 5:
               _loc5_ = "P_SMOKE_2";
               break;
            case 6:
               _loc5_ = "P_SMOKE_1";
               break;
            case 7:
            case 8:
            case 9:
               _loc5_ = "P_COIN_1";
         }
         this.§+?§ = this.§[!;§(_loc5_);
         addChild(this.§+?§);
         this.mouseEnabled = false;
         this.§+?§.x = -this.§+?§.width / 2;
         this.§+?§.y = -this.§+?§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§#[§)
         {
            this.§#[§.stop();
            this.§#[§ = null;
         }
         removeChild(this.§+?§);
         this.§+?§ = null;
      }
      
      public function §[!;§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §>"5§.§6s§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §]!y§(param1:§!"&§) : void
      {
         this.§#[§ = param1;
      }
      
      public function get §]!y§() : §!"&§
      {
         return this.§#[§;
      }
      
      public function get §&5§() : Number
      {
         return this.§1G§;
      }
      
      public function set §&5§(param1:Number) : void
      {
         this.§1G§ = param1;
      }
      
      public function get §5!]§() : Number
      {
         return this.§#!o§;
      }
      
      public function set §5!]§(param1:Number) : void
      {
         this.§#!o§ = param1;
      }
   }
}
