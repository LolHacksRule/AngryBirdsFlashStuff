package §,B§
{
   import §#!H§.ColorFadeLayerEvent;
   import §#!H§.§^I§;
   import §1!E§.§&!J§;
   import §>! §.§^!c§;
   import §>7§.§&! §;
   import §[!+§.§4`§;
   
   public class Popup extends §&!J§
   {
       
      
      protected const §&!o§:Number = 0.25;
      
      protected var §4!E§:§^I§;
      
      protected var §"!@§:§4`§;
      
      protected var §[+§:Boolean = false;
      
      public function Popup(param1:XML, param2:§4`§)
      {
         super(param1,param2.§]1§);
         this.§4!E§ = new §^I§(0,0,0,0);
         param2.§]1§.addComponent(this);
         this.§"!@§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §^!c§.pause();
         mClip.addChildAt(this.§4!E§,0);
         if(param1)
         {
            this.§4!E§.§;'§(0.7,this.§&!o§);
         }
         else
         {
            this.§4!E§.§%$§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§4!E§ == null)
         {
            this.close();
            return;
         }
         this.§4!E§.§;'§(0,this.§&!o§);
         this.§4!E§.addEventListener(ColorFadeLayerEvent.§^#§,this.§3!K§);
      }
      
      protected function §3!K§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§[+§)
         {
            return;
         }
         if(this.§4!E§)
         {
            this.§4!E§.removeEventListener(ColorFadeLayerEvent.§^#§,this.§3!K§);
            mClip.removeChild(this.§4!E§);
            this.§4!E§.clean();
            this.§4!E§ = null;
         }
         var _loc1_:§&! § = this.§"!@§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§"!@§.§]1§)
         {
            this.§"!@§.§]1§.§`O§(this);
         }
         this.§[+§ = true;
         §^!c§.resume();
         mClip.dispatchEvent(new §-!0§(§-!0§.§>!R§,this));
      }
   }
}
