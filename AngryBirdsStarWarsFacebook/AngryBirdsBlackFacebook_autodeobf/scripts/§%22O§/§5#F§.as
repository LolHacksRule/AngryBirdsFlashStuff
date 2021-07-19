package §"O§
{
   import §+D§.§^"m§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import flash.display.MovieClip;
   
   public class §5#F§
   {
       
      
      protected var §@+§:§[#R§;
      
      protected var §[!k§:Boolean;
      
      protected var §;"x§:Boolean;
      
      protected var §"!A§:Boolean;
      
      protected var § "C§:Number;
      
      protected var §9!D§:§^"m§;
      
      protected var §?#Y§:MovieClip;
      
      protected var §4!^§:Boolean;
      
      public function §5#F§(param1:§^"m§)
      {
         super();
         this.§9!D§ = param1;
         this.§9!D§.mClip.alpha = 1;
         this.§9!D§.mClip.scaleY = 1;
         this.§9!D§.mClip.scaleX = 1;
         this.§9!D§.mClip.icon.rotation = 0;
         this.§?#Y§ = this.§9!D§.mClip.sparkles;
         this.§[!k§ = false;
         this.§ "C§ = 0;
         this.§;"x§ = true;
         this.§"!A§ = true;
         this.§4!^§ = false;
         this.§&#0§(false);
         this.refresh();
      }
      
      public function get view() : §^"m§
      {
         return this.§9!D§;
      }
      
      public function get §`!^§() : Boolean
      {
         return this.§4!^§;
      }
      
      public function set §`!^§(param1:Boolean) : void
      {
         this.§4!^§ = param1;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§;"x§ = param1;
         this.refresh();
      }
      
      public function get enabled() : Boolean
      {
         return this.§;"x§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§"!A§ = param1;
         this.refresh();
      }
      
      public function get visible() : Boolean
      {
         return this.§"!A§;
      }
      
      public function get §,R§() : Boolean
      {
         return this.§[!k§;
      }
      
      public function dispose() : void
      {
         if(this.§@+§)
         {
            this.§@+§.stop();
         }
         this.§@+§ = null;
      }
      
      protected function refresh() : void
      {
         this.§9!D§.setVisibility(this.§"!A§);
         this.§9!D§.setEnabled(this.§;"x§);
      }
      
      public function hide(param1:Boolean = true) : void
      {
         this.§[!k§ = true;
         this.§"!A§ = false;
         this.§;"x§ = false;
         this.§9!D§.setEnabled(this.§;"x§);
         if(this.§@+§)
         {
            this.§@+§.stop();
         }
         this.§@+§ = §-#C§.§%!E§.§^!H§(this.§9!D§.mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§@+§.delay = !!param1 ? Number(1) : Number(0.5);
         this.§@+§.onComplete = this.§=R§;
         this.§@+§.play();
      }
      
      public function show() : void
      {
         this.§[!k§ = false;
         this.§"!A§ = true;
         this.§;"x§ = true;
         this.refresh();
         if(this.§@+§)
         {
            this.§@+§.stop();
         }
         this.§@+§ = §-#C§.§%!E§.§^!H§(this.§9!D§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "alpha":1
         },null,0.25);
         this.§@+§.onComplete = this.§=R§;
         this.§@+§.play();
      }
      
      private function §=R§() : void
      {
         this.refresh();
      }
      
      private function §'V§(param1:§[#R§) : void
      {
         if(param1)
         {
            param1.§^"P§();
         }
      }
      
      public function §@#D§(param1:Number = 0.75) : void
      {
         this.§"!A§ = true;
         this.§;"x§ = false;
         this.§9!D§.setEnabled(this.§;"x§);
         this.refresh();
         if(this.§@+§)
         {
            this.§@+§.stop();
         }
         this.§@+§ = §-#C§.§%!E§.§^!H§(this.§9!D§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "alpha":0.5
         },null,0.5);
         this.§@+§.delay = param1;
         this.§@+§.play();
      }
      
      protected function updateRotation(param1:Number) : Boolean
      {
         if(§^#]§.§>!e§)
         {
            if(this.§ "C§ < 360)
            {
               this.§ "C§ += 0.6 * param1;
               if(this.§ "C§ > 360)
               {
                  this.§ "C§ = 360;
               }
               return true;
            }
            if(this.§ "C§ > 360)
            {
               this.§ "C§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§ "C§ > 0)
            {
               this.§ "C§ -= 0.6 * param1;
               if(this.§ "C§ < 0)
               {
                  this.§ "C§ = 0;
               }
               return true;
            }
            if(this.§ "C§ < 0)
            {
               this.§ "C§ = 0;
               return true;
            }
         }
         return false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = this.updateRotation(param1);
         if(_loc2_)
         {
            this.§9!D§.mClip.icon.rotation = this.§ "C§;
         }
      }
      
      public function §&#0§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?#Y§.visible = true;
            this.§?#Y§.gotoAndPlay(1);
         }
         else
         {
            this.§?#Y§.visible = false;
            this.§?#Y§.gotoAndStop(1);
         }
      }
   }
}
