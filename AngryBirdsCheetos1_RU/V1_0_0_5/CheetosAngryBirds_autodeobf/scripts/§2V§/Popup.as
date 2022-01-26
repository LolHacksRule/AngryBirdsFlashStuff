package §2V§
{
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §<s§.§'k§;
   import §[%§.§2l§;
   import §]!2§.§8D§;
   import §]!2§.ColorFadeLayerEvent;
   
   public class Popup extends §2l§
   {
       
      
      private const §%m§:Number = 0.25;
      
      protected var §%s§:§8D§;
      
      protected var §0Y§:§;J§;
      
      private var §;=§:Boolean = false;
      
      public function Popup(param1:XML, param2:§;J§)
      {
         super(param1,param2.container);
         this.§%s§ = new §8D§(0,0,0,0);
         param2.container.addComponent(this);
         this.§0Y§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §3>§.§-!>§();
         if(this.§%s§ != null)
         {
            mClip.addChildAt(this.§%s§,0);
            if(param1)
            {
               this.§%s§.§"s§(0.7,this.§%m§);
            }
            else
            {
               this.§%s§.§@g§(0.7);
            }
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§%s§ == null)
         {
            this.close();
            return;
         }
         this.§%s§.§"s§(0,this.§%m§);
         this.§%s§.addEventListener(ColorFadeLayerEvent.§61§,this.§;!4§);
      }
      
      private function §;!4§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§;=§)
         {
            return;
         }
         if(this.§%s§)
         {
            this.§%s§.removeEventListener(ColorFadeLayerEvent.§61§,this.§;!4§);
            mClip.removeChild(this.§%s§);
            this.§%s§.clean();
            this.§%s§ = null;
         }
         var _loc1_:§'k§ = this.§0Y§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§0Y§.container)
         {
            this.§0Y§.container.removeComponent(this);
         }
         this.§;=§ = true;
         if(§!!_§.§=T§ == false)
         {
            §3>§.§7k§();
         }
         mClip.dispatchEvent(new § !@§(§ !@§.§7j§,this));
      }
   }
}
