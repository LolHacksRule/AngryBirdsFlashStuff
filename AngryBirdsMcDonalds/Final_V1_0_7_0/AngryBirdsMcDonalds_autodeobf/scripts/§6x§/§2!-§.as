package §6x§
{
   import §<l§.§@0§;
   import §^m§.§0!-§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2!-§ extends Sprite
   {
       
      
      private var § !<§:Sprite;
      
      private var §@B§:Number;
      
      private var §2o§:Number;
      
      private var §+!Y§:§0!-§;
      
      public function §2!-§(param1:Number)
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
         this.§ !<§ = this.§-E§(_loc3_);
         addChild(this.§ !<§);
         this.mouseEnabled = false;
         this.§ !<§.x = -this.§ !<§.width / 2;
         this.§ !<§.y = -this.§ !<§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§+!Y§)
         {
            this.§+!Y§.stop();
            this.§+!Y§ = null;
         }
         removeChild(this.§ !<§);
         this.§ !<§ = null;
      }
      
      public function §-E§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §@0§.§5+§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §!r§(param1:§0!-§) : void
      {
         this.§+!Y§ = param1;
      }
      
      public function get §!r§() : §0!-§
      {
         return this.§+!Y§;
      }
      
      public function get §!!d§() : Number
      {
         return this.§@B§;
      }
      
      public function set §!!d§(param1:Number) : void
      {
         this.§@B§ = param1;
      }
      
      public function get § e§() : Number
      {
         return this.§2o§;
      }
      
      public function set § e§(param1:Number) : void
      {
         this.§2o§ = param1;
      }
   }
}
