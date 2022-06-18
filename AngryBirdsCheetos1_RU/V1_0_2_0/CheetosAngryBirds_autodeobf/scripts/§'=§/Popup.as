package §'=§
{
   import §!&§.ColorFadeLayerEvent;
   import §!&§.§]o§;
   import §&8§.§<O§;
   import §7L§.§-!B§;
   import §@!W§.§8!W§;
   import §[]§.§<!V§;
   
   public class Popup extends §<!V§
   {
       
      
      private const §>I§:Number = 0.25;
      
      protected var §4>§:§]o§;
      
      protected var §,!Q§:§<O§;
      
      private var §`!I§:Boolean = false;
      
      public function Popup(param1:XML, param2:§<O§)
      {
         super(param1,param2.container);
         this.§4>§ = new §]o§(0,0,0,0);
         param2.container.addComponent(this);
         this.§,!Q§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §8!W§.§-'§();
         if(this.§4>§ != null)
         {
            mClip.addChildAt(this.§4>§,0);
            if(param1)
            {
               this.§4>§.§9$§(0.7,this.§>I§);
            }
            else
            {
               this.§4>§.§4!§(0.7);
            }
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§4>§ == null)
         {
            this.close();
            return;
         }
         this.§4>§.§9$§(0,this.§>I§);
         this.§4>§.addEventListener(ColorFadeLayerEvent.§+A§,this.§=e§);
      }
      
      private function §=e§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§`!I§)
         {
            return;
         }
         if(this.§4>§)
         {
            this.§4>§.removeEventListener(ColorFadeLayerEvent.§+A§,this.§=e§);
            mClip.removeChild(this.§4>§);
            this.§4>§.clean();
            this.§4>§ = null;
         }
         var _loc1_:§-!B§ = this.§,!Q§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§,!Q§.container)
         {
            this.§,!Q§.container.removeComponent(this);
         }
         this.§`!I§ = true;
         if(§]d§.§,o§ == false)
         {
            §8!W§.§?!,§();
         }
         mClip.dispatchEvent(new §!!U§(§!!U§.§[W§,this));
      }
   }
}
