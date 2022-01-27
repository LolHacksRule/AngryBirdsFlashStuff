package §'z§
{
   import §#!+§.§"$§;
   import §#!T§.§&2§;
   import §-!V§.§>,§;
   import §2!D§.§&9§;
   import §5!5§.§1!4§;
   import §5!5§.ColorFadeLayerEvent;
   
   public class Popup extends §>,§
   {
       
      
      private const §&!Z§:Number = 0.25;
      
      protected var § !D§:§1!4§ = null;
      
      protected var §8T§:§"$§;
      
      private var §[k§:Boolean;
      
      protected var §`s§:§&9§;
      
      public function Popup(param1:XML, param2:§"$§)
      {
         super(param1,param2.container);
         if(this.§ !D§ == null)
         {
            this.§ !D§ = new §1!4§(0,0,0,0);
         }
         param2.container.addComponent(this);
         this.§8T§ = param2;
         this.§[k§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §&2§.§"!J§();
         mClip.addChildAt(this.§ !D§,0);
         if(param1)
         {
            this.§ !D§.§?!%§(0.7,this.§&!Z§);
         }
         else
         {
            this.§ !D§.§[m§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§ !D§ == null)
         {
            this.close();
            return;
         }
         this.§ !D§.§?!%§(0,this.§&!Z§);
         this.§ !D§.addEventListener(ColorFadeLayerEvent.§4=§,this.§!!L§);
      }
      
      private function §!!L§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§`s§ != null)
         {
            this.§`s§.stop();
         }
         if(this.§[k§)
         {
            return;
         }
         if(this.§ !D§)
         {
            this.§ !D§.removeEventListener(ColorFadeLayerEvent.§4=§,this.§!!L§);
            mClip.removeChild(this.§ !D§);
            this.§ !D§.clean();
            this.§ !D§ = null;
         }
         if(this.§8T§.container)
         {
            this.§8T§.container.removeComponent(this);
         }
         this.§[k§ = true;
         §&2§.§,`§();
         mClip.dispatchEvent(new §3!§(§3!§.§%;§,this));
      }
   }
}
