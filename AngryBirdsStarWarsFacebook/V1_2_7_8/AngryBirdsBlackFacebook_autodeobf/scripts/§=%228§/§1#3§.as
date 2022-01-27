package §="8§
{
   import §""d§.§2"8§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import flash.display.MovieClip;
   
   public class §1#3§
   {
       
      
      protected var §%K§:§4!Q§;
      
      protected var §8"&§:Boolean;
      
      protected var §&"$§:Boolean;
      
      protected var §'!k§:Boolean;
      
      protected var §true§:Number;
      
      protected var §"#7§:§2"8§;
      
      protected var §5C§:MovieClip;
      
      protected var §0@§:Boolean;
      
      public function §1#3§(param1:§2"8§)
      {
         super();
         this.§"#7§ = param1;
         this.§"#7§.mClip.alpha = 1;
         this.§"#7§.mClip.scaleY = 1;
         this.§"#7§.mClip.scaleX = 1;
         this.§"#7§.mClip.icon.rotation = 0;
         this.§5C§ = this.§"#7§.mClip.sparkles;
         this.§8"&§ = false;
         this.§true§ = 0;
         this.§&"$§ = true;
         this.§'!k§ = true;
         this.§0@§ = false;
         this.§ p§(false);
         this.refresh();
      }
      
      public function get view() : §2"8§
      {
         return this.§"#7§;
      }
      
      public function get §&"s§() : Boolean
      {
         return this.§0@§;
      }
      
      public function set §&"s§(param1:Boolean) : void
      {
         this.§0@§ = param1;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§&"$§ = param1;
         this.refresh();
      }
      
      public function get enabled() : Boolean
      {
         return this.§&"$§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§'!k§ = param1;
         this.refresh();
      }
      
      public function get visible() : Boolean
      {
         return this.§'!k§;
      }
      
      public function get §1"]§() : Boolean
      {
         return this.§8"&§;
      }
      
      public function dispose() : void
      {
         if(this.§%K§)
         {
            this.§%K§.stop();
         }
         this.§%K§ = null;
      }
      
      protected function refresh() : void
      {
         this.§"#7§.setVisibility(this.§'!k§);
         this.§"#7§.setEnabled(this.§&"$§);
      }
      
      public function hide(param1:Boolean = true) : void
      {
         this.§8"&§ = true;
         this.§'!k§ = false;
         this.§&"$§ = false;
         this.§"#7§.setEnabled(this.§&"$§);
         if(this.§%K§)
         {
            this.§%K§.stop();
         }
         this.§%K§ = §41§.§-G§.§&#'§(this.§"#7§.mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§%K§.delay = !!param1 ? Number(1) : Number(0.5);
         this.§%K§.onComplete = this.§'!j§;
         this.§%K§.play();
      }
      
      public function show() : void
      {
         this.§8"&§ = false;
         this.§'!k§ = true;
         this.§&"$§ = true;
         this.refresh();
         if(this.§%K§)
         {
            this.§%K§.stop();
         }
         this.§%K§ = §41§.§-G§.§&#'§(this.§"#7§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "alpha":1
         },null,0.25);
         this.§%K§.onComplete = this.§'!j§;
         this.§%K§.play();
      }
      
      private function §'!j§() : void
      {
         this.refresh();
      }
      
      private function §4N§(param1:§4!Q§) : void
      {
         if(param1)
         {
            param1.§7!"§();
         }
      }
      
      public function §`@§(param1:Number = 0.75) : void
      {
         this.§'!k§ = true;
         this.§&"$§ = false;
         this.§"#7§.setEnabled(this.§&"$§);
         this.refresh();
         if(this.§%K§)
         {
            this.§%K§.stop();
         }
         this.§%K§ = §41§.§-G§.§&#'§(this.§"#7§.mClip,{
            "scaleX":1,
            "scaleY":1,
            "alpha":0.5
         },null,0.5);
         this.§%K§.delay = param1;
         this.§%K§.play();
      }
      
      protected function updateRotation(param1:Number) : Boolean
      {
         if(§,#!§.§^I§)
         {
            if(this.§true§ < 360)
            {
               this.§true§ += 0.6 * param1;
               if(this.§true§ > 360)
               {
                  this.§true§ = 360;
               }
               return true;
            }
            if(this.§true§ > 360)
            {
               this.§true§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§true§ > 0)
            {
               this.§true§ -= 0.6 * param1;
               if(this.§true§ < 0)
               {
                  this.§true§ = 0;
               }
               return true;
            }
            if(this.§true§ < 0)
            {
               this.§true§ = 0;
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
            this.§"#7§.mClip.icon.rotation = this.§true§;
         }
      }
      
      public function § p§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5C§.visible = true;
            this.§5C§.gotoAndPlay(1);
         }
         else
         {
            this.§5C§.visible = false;
            this.§5C§.gotoAndStop(1);
         }
      }
   }
}
