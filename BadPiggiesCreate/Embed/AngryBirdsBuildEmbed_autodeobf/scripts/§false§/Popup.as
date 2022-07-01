package §false§
{
   import §!y§.§2U§;
   import §"!E§.§8!%§;
   import §#!4§.§'^§;
   import §5!`§.§%!Y§;
   import §5!`§.ColorFadeLayerEvent;
   import §?!-§.§'!V§;
   
   public class Popup extends §8!%§
   {
       
      
      protected const §;f§:Number = 0.25;
      
      protected var §7H§:§%!Y§;
      
      protected var §1g§:§2U§;
      
      protected var §0!D§:Boolean = false;
      
      public function Popup(param1:XML, param2:§2U§)
      {
         super(param1,param2.container);
         this.§7H§ = new §%!Y§(0,0,0,0);
         param2.container.§9!k§(this);
         this.§1g§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §'!V§.pause();
         mClip.addChildAt(this.§7H§,0);
         if(param1)
         {
            this.§7H§.§#[§(0.7,this.§;f§);
         }
         else
         {
            this.§7H§.§@!J§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§7H§ == null)
         {
            this.close();
            return;
         }
         this.§7H§.§#[§(0,this.§;f§);
         this.§7H§.addEventListener(ColorFadeLayerEvent.§1!4§,this.§!!E§);
      }
      
      protected function §!!E§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§0!D§)
         {
            return;
         }
         if(this.§7H§)
         {
            this.§7H§.removeEventListener(ColorFadeLayerEvent.§1!4§,this.§!!E§);
            mClip.removeChild(this.§7H§);
            this.§7H§.clean();
            this.§7H§ = null;
         }
         var _loc1_:§'^§ = this.§1g§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§1g§.container)
         {
            this.§1g§.container.§@!t§(this);
         }
         this.§0!D§ = true;
         §'!V§.resume();
         mClip.dispatchEvent(new §=s§(§=s§.§>`§,this));
      }
   }
}
