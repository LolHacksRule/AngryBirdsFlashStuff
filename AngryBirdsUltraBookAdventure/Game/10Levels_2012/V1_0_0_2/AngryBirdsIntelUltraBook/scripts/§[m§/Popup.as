package §[m§
{
   import §2h§.§'!^§;
   import §4L§.§,!_§;
   import §4L§.ColorFadeLayerEvent;
   import §9Y§.§9j§;
   import §?!7§.§[![§;
   import §true§.§ _§;
   
   public class Popup extends §[![§
   {
       
      
      protected const § !L§:Number = 0.25;
      
      protected var §#x§:§,!_§;
      
      protected var §+7§:§'!^§;
      
      protected var §=!O§:Boolean = false;
      
      public function Popup(param1:XML, param2:§'!^§)
      {
         super(param1,param2.§;H§);
         this.§#x§ = new §,!_§(0,0,0,0);
         param2.§;H§.addComponent(this);
         this.§+7§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         § _§.pause();
         mClip.addChildAt(this.§#x§,0);
         if(param1)
         {
            this.§#x§.§7!+§(0.7,this.§ !L§);
         }
         else
         {
            this.§#x§.§]f§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§#x§ == null)
         {
            this.close();
            return;
         }
         this.§#x§.§7!+§(0,this.§ !L§);
         this.§#x§.addEventListener(ColorFadeLayerEvent.§5!t§,this.§;!-§);
      }
      
      protected function §;!-§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§=!O§)
         {
            return;
         }
         if(this.§#x§)
         {
            this.§#x§.removeEventListener(ColorFadeLayerEvent.§5!t§,this.§;!-§);
            mClip.removeChild(this.§#x§);
            this.§#x§.clean();
            this.§#x§ = null;
         }
         var _loc1_:§9j§ = this.§+7§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§+7§.§;H§)
         {
            this.§+7§.§;H§.§@!g§(this);
         }
         this.§=!O§ = true;
         § _§.resume();
         mClip.dispatchEvent(new §%!b§(§%!b§.§<!k§,this));
      }
   }
}
