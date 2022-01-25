package §0!_§
{
   import § 9§.§=!a§;
   import §7H§.§'!Y§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §#!$§ extends Sprite
   {
       
      
      private var §=!6§:Sprite;
      
      private var §%!=§:Number;
      
      private var §8@§:Number;
      
      private var §@!M§:§'!Y§;
      
      public function §#!$§(param1:Number)
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
         this.§=!6§ = this.§,B§(_loc3_);
         addChild(this.§=!6§);
         this.mouseEnabled = false;
         this.§=!6§.x = -this.§=!6§.width / 2;
         this.§=!6§.y = -this.§=!6§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§@!M§)
         {
            this.§@!M§.stop();
            this.§@!M§ = null;
         }
         removeChild(this.§=!6§);
         this.§=!6§ = null;
      }
      
      public function §,B§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §=!a§.§@o§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §1p§(param1:§'!Y§) : void
      {
         this.§@!M§ = param1;
      }
      
      public function get §1p§() : §'!Y§
      {
         return this.§@!M§;
      }
      
      public function get §^4§() : Number
      {
         return this.§%!=§;
      }
      
      public function set §^4§(param1:Number) : void
      {
         this.§%!=§ = param1;
      }
      
      public function get §'@§() : Number
      {
         return this.§8@§;
      }
      
      public function set §'@§(param1:Number) : void
      {
         this.§8@§ = param1;
      }
   }
}
