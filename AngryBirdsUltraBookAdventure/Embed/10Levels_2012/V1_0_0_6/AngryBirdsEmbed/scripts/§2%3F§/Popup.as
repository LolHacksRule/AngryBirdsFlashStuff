package §2?§
{
   import §'o§.ColorFadeLayerEvent;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §4C§.§'!D§;
   import §`!0§.§4Y§;
   
   public class Popup extends §'!D§
   {
       
      
      protected const §"R§:Number = 0.25;
      
      protected var §=@§:§`K§;
      
      protected var § -§:§0#§;
      
      protected var §1B§:Boolean = false;
      
      public function Popup(param1:XML, param2:§0#§)
      {
         super(param1,param2.container);
         this.§=@§ = new §`K§(0,0,0,0);
         param2.container.§^!I§(this);
         this.§ -§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §"h§.pause();
         mClip.addChildAt(this.§=@§,0);
         if(param1)
         {
            this.§=@§.§?`§(0.7,this.§"R§);
         }
         else
         {
            this.§=@§.§!!6§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§=@§ == null)
         {
            this.close();
            return;
         }
         this.§=@§.§?`§(0,this.§"R§);
         this.§=@§.addEventListener(ColorFadeLayerEvent.§&Y§,this.§6P§);
      }
      
      protected function §6P§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§1B§)
         {
            return;
         }
         if(this.§=@§)
         {
            this.§=@§.removeEventListener(ColorFadeLayerEvent.§&Y§,this.§6P§);
            mClip.removeChild(this.§=@§);
            this.§=@§.clean();
            this.§=@§ = null;
         }
         var _loc1_:§4Y§ = this.§ -§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§ -§.container)
         {
            this.§ -§.container.§9K§(this);
         }
         this.§1B§ = true;
         §"h§.resume();
         mClip.dispatchEvent(new §;!#§(§;!#§.§'A§,this));
      }
   }
}
