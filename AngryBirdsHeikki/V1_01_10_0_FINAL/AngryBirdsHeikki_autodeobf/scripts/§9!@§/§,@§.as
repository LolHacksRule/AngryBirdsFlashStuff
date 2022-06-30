package §9!@§
{
   import §5!1§.§&[§;
   import §]!6§.§false§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,@§ extends Sprite
   {
       
      
      private var §!q§:Sprite;
      
      private var §8>§:Number;
      
      private var §?!#§:Number;
      
      private var §@J§:§&[§;
      
      public function §,@§(param1:Number)
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
         this.§!q§ = this.§<#§(_loc3_);
         addChild(this.§!q§);
         this.mouseEnabled = false;
         this.§!q§.x = -this.§!q§.width / 2;
         this.§!q§.y = -this.§!q§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§@J§)
         {
            this.§@J§.stop();
            this.§@J§ = null;
         }
         removeChild(this.§!q§);
         this.§!q§ = null;
      }
      
      public function §<#§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §false§.§5#§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §-T§(param1:§&[§) : void
      {
         this.§@J§ = param1;
      }
      
      public function get §-T§() : §&[§
      {
         return this.§@J§;
      }
      
      public function get §&!2§() : Number
      {
         return this.§8>§;
      }
      
      public function set §&!2§(param1:Number) : void
      {
         this.§8>§ = param1;
      }
      
      public function get §]?§() : Number
      {
         return this.§?!#§;
      }
      
      public function set §]?§(param1:Number) : void
      {
         this.§?!#§ = param1;
      }
   }
}
