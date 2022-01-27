package §&!c§
{
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §=Z§.§;g§;
   import flash.display.MovieClip;
   
   public class §1#5§
   {
       
      
      protected var §'!8§:§%b§;
      
      protected var §"F§:Boolean;
      
      protected var §3e§:Boolean;
      
      protected var § !Q§:Boolean;
      
      protected var §8I§:Number;
      
      protected var §="L§:§;g§;
      
      protected var §6!§:MovieClip;
      
      protected var §+!$§:Boolean;
      
      public function §1#5§(param1:§;g§)
      {
         super();
         this.§="L§ = param1;
         this.§="L§.mClip.alpha = 1;
         this.§="L§.mClip.scaleY = 1;
         this.§="L§.mClip.scaleX = 1;
         this.§="L§.mClip.icon.rotation = 0;
         this.§6!§ = this.§="L§.mClip.sparkles;
         this.§"F§ = false;
         this.§8I§ = 0;
         this.§3e§ = true;
         this.§ !Q§ = true;
         this.§+!$§ = false;
         this.§<7§(false);
         this.refresh();
      }
      
      public function get view() : §;g§
      {
         return this.§="L§;
      }
      
      public function get § "3§() : Boolean
      {
         return this.§+!$§;
      }
      
      public function set § "3§(param1:Boolean) : void
      {
         this.§+!$§ = param1;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§3e§ = param1;
         this.refresh();
      }
      
      public function get enabled() : Boolean
      {
         return this.§3e§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§ !Q§ = param1;
         this.refresh();
      }
      
      public function get visible() : Boolean
      {
         return this.§ !Q§;
      }
      
      public function get §>t§() : Boolean
      {
         return this.§"F§;
      }
      
      public function dispose() : void
      {
         if(this.§'!8§)
         {
            this.§'!8§.stop();
         }
         this.§'!8§ = null;
      }
      
      protected function refresh() : void
      {
         this.§="L§.setVisibility(this.§ !Q§);
         this.§="L§.setEnabled(this.§3e§);
      }
      
      public function hide(param1:Boolean = true) : void
      {
         this.§"F§ = true;
         this.§ !Q§ = false;
         this.§3e§ = false;
         this.§="L§.setEnabled(this.§3e§);
         if(this.§'!8§)
         {
            this.§'!8§.stop();
         }
         this.§'!8§ = §5!%§.§!6§.§4!M§(this.§="L§.mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§'!8§.delay = !!param1 ? Number(1) : Number(0.5);
         this.§'!8§.onComplete = this.§1!s§;
         this.§'!8§.play();
      }
      
      public function show() : void
      {
         this.§"F§ = false;
         this.§ !Q§ = true;
         this.§3e§ = true;
         this.refresh();
         if(this.§'!8§)
         {
            this.§'!8§.stop();
         }
         this.§'!8§ = §5!%§.§!6§.§4!M§(this.§="L§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "alpha":1
         },null,0.25);
         this.§'!8§.onComplete = this.§1!s§;
         this.§'!8§.play();
      }
      
      private function §1!s§() : void
      {
         this.refresh();
      }
      
      private function §'Y§(param1:§%b§) : void
      {
         if(param1)
         {
            param1.§=!L§();
         }
      }
      
      public function §4!o§(param1:Number = 0.75) : void
      {
         this.§ !Q§ = true;
         this.§3e§ = false;
         this.§="L§.setEnabled(this.§3e§);
         this.refresh();
         if(this.§'!8§)
         {
            this.§'!8§.stop();
         }
         this.§'!8§ = §5!%§.§!6§.§4!M§(this.§="L§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "alpha":0.5
         },null,0.5);
         this.§'!8§.delay = param1;
         this.§'!8§.play();
      }
      
      protected function updateRotation(param1:Number) : Boolean
      {
         if(§5!m§.§1U§)
         {
            if(this.§8I§ < 360)
            {
               this.§8I§ += 0.6 * param1;
               if(this.§8I§ > 360)
               {
                  this.§8I§ = 360;
               }
               return true;
            }
            if(this.§8I§ > 360)
            {
               this.§8I§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§8I§ > 0)
            {
               this.§8I§ -= 0.6 * param1;
               if(this.§8I§ < 0)
               {
                  this.§8I§ = 0;
               }
               return true;
            }
            if(this.§8I§ < 0)
            {
               this.§8I§ = 0;
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
            this.§="L§.mClip.icon.rotation = this.§8I§;
         }
      }
      
      public function §<7§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6!§.visible = true;
            this.§6!§.gotoAndPlay(1);
         }
         else
         {
            this.§6!§.visible = false;
            this.§6!§.gotoAndStop(1);
         }
      }
   }
}
