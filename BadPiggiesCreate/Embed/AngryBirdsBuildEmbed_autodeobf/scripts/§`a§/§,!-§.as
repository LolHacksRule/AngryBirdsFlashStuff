package §`a§
{
   import §-!0§.§2! §;
   import §<!<§.§7E§;
   
   public class §,!-§ extends § !U§
   {
      
      public static const §<!,§:int = 6;
       
      
      private var §+V§:Number = 0;
      
      private var §'6§:Number = 0;
      
      private var §=[§:Number = 0;
      
      private var §"!r§:Number = 0;
      
      private var §%!R§:§&W§;
      
      private var §@!K§:Boolean = false;
      
      public function §,!-§(param1:§7E§, param2:§2! §)
      {
         this.§%!R§ = new §&W§(0,0,1,false);
         super(param1,param2);
      }
      
      public function get §2!r§() : Number
      {
         return this.§+V§;
      }
      
      public function get §<8§() : Number
      {
         return this.§'6§;
      }
      
      public function get §^$§() : Number
      {
         return this.§=[§;
      }
      
      public function get §,!_§() : Number
      {
         return this.§"!r§;
      }
      
      public function get §"b§() : Number
      {
         return this.§%!R§.x;
      }
      
      public function get §1!@§() : Number
      {
         return this.§%!R§.y;
      }
      
      public function set §"b§(param1:Number) : void
      {
         this.§%!R§.x = param1;
      }
      
      public function set §1!@§(param1:Number) : void
      {
         this.§%!R§.y = param1;
      }
      
      public function set xCenterB2(param1:Number) : void
      {
         §^T§ = param1;
      }
      
      public function get xCenterB2() : Number
      {
         return §^T§;
      }
      
      public function set yCenterB2(param1:Number) : void
      {
         §<9§ = param1;
      }
      
      public function get yCenterB2() : Number
      {
         return §<9§;
      }
      
      public function §-#§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§@!K§ = true;
         this.§%!R§.x = §^T§;
         this.§%!R§.y = §<9§;
         this.§+V§ = param1;
         this.§'6§ = param3;
         this.§=[§ = param2;
         this.§"!r§ = param4;
         this.§%!R§.scale = §?C§;
      }
      
      override protected function updateCameraLocations() : void
      {
         super.updateCameraLocations();
         this.§%!R§.scale = §"Y§;
         if(SCREEN_WIDTH_B2 / this.§%!R§.scale > this.§'6§ - this.§+V§)
         {
            this.§%!R§.scale = SCREEN_WIDTH_B2 / (this.§'6§ - this.§+V§);
         }
         this.§%!R§.scale = this.§%!R§.scale < §-`§ ? Number(§-`§) : (this.§%!R§.scale > §0u§ ? Number(§0u§) : Number(this.§%!R§.scale));
         var _loc1_:Number = this.§%!R§.x - SCREEN_WIDTH_B2 * 0.5 / this.§%!R§.scale;
         if(_loc1_ < this.§+V§)
         {
            this.§%!R§.y += this.§+V§ - _loc1_;
         }
         var _loc2_:Number = this.§%!R§.x + SCREEN_WIDTH_B2 * 0.5 / this.§%!R§.scale;
         if(_loc2_ > this.§'6§)
         {
            this.§%!R§.x += this.§'6§ - _loc2_;
         }
         var _loc3_:Number = this.§%!R§.y - SCREEN_HEIGHT_B2 * 0.5 / this.§%!R§.scale;
         if(_loc3_ < this.§=[§)
         {
            this.§%!R§.y += this.§=[§ - _loc3_;
         }
         var _loc4_:Number;
         if((_loc4_ = this.§%!R§.y + SCREEN_HEIGHT_B2 * 0.5 / this.§%!R§.scale) > this.§"!r§)
         {
            this.§%!R§.y += this.§"!r§ - _loc4_;
         }
      }
      
      override protected function moveCameraTowardsTarget(param1:§9!2§, param2:Number) : void
      {
         if(this.§@!K§)
         {
            this.§%!R§.x = param1.x;
            this.§%!R§.y = param1.y;
            §"Y§ = param1.scale;
            this.§%!R§.scale = param1.scale;
         }
         else
         {
            super.moveCameraTowardsTarget(param1,param2);
         }
      }
      
      override protected function updateCameraSliderNoBird(param1:Number, param2:Number) : void
      {
         if(this.§@!K§)
         {
            if(!§5u§)
            {
               param2 = 1;
            }
            §^T§ -= (§^T§ - this.§%!R§.x) * param2;
            §<9§ -= (§<9§ - this.§%!R§.y) * param2;
            §?C§ -= (§?C§ - this.§%!R§.scale) * param2;
         }
         else
         {
            super.updateCameraSliderNoBird(param1,param2);
         }
      }
      
      override protected function updateCameraActions(param1:Number) : void
      {
         if(mCurrentAction == §<!,§)
         {
            this.§7!5§(param1);
         }
         else
         {
            super.updateCameraActions(param1);
         }
      }
      
      override protected function setDraggingAction() : void
      {
         if(this.§@!K§)
         {
            §'!6§(§<!,§);
         }
         else
         {
            super.setDraggingAction();
         }
      }
      
      override protected function isDragging() : Boolean
      {
         return super.isDragging() || mCurrentAction == set;
      }
      
      public function §7!5§(param1:Number) : void
      {
         this.§%!R§.x += (§[!r§ - §0!G§) * §7E§.§8!'§;
         this.§%!R§.y += (§%#§ - §2!,§) * §7E§.§8!'§;
         §[!r§ = §0!G§;
         §%#§ = §2!,§;
      }
      
      override protected function manualScaleChanged() : void
      {
         if(this.§@!K§)
         {
            §'!6§(§<!,§);
         }
         else
         {
            super.manualScaleChanged();
         }
      }
   }
}
