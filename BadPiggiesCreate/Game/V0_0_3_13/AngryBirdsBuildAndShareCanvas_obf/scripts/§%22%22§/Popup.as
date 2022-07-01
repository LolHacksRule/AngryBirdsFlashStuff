package §""§
{
   import § true§.§<!V§;
   import §&k§.§3l§;
   import §&k§.ColorFadeLayerEvent;
   import §0!C§.§=!]§;
   import §4!j§.§[!f§;
   import §=!<§.§5!U§;
   
   public class Popup extends §<!V§
   {
      
      public static const §]!q§:int = 0;
      
      public static const §6=§:int = 1;
      
      public static const §4!_§:int = 2;
       
      
      protected const §1!%§:Number = 0.25;
      
      protected var §!<§:§3l§;
      
      protected var §4!+§:§=!]§;
      
      protected var §<!^§:Boolean = false;
      
      protected var §>!b§:Number = 0.7;
      
      private var §;L§:int = 0;
      
      private var §4Q§:Boolean = false;
      
      public function Popup(param1:XML, param2:§=!]§)
      {
         super(param1,param2.container);
         this.§!<§ = new §3l§(0,0,0,0);
         param2.container.§[!I§(this);
         this.§4!+§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§4Q§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §5!U§.pause();
         this.§4Q§ = true;
         mClip.addChildAt(this.§!<§,0);
         if(param1)
         {
            this.§!<§.§[5§(this.§>!b§,this.§1!%§);
         }
         else
         {
            this.§!<§.§ !`§(this.§>!b§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§!<§ == null)
         {
            this.close();
            return;
         }
         this.§!<§.§[5§(0,this.§1!%§);
         this.§!<§.addEventListener(ColorFadeLayerEvent.§?g§,this.§=F§);
      }
      
      protected function §=F§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§4Q§ = false;
         if(this.§<!^§)
         {
            return;
         }
         if(this.§!<§)
         {
            this.§!<§.removeEventListener(ColorFadeLayerEvent.§?g§,this.§=F§);
            mClip.removeChild(this.§!<§);
            this.§!<§.clean();
            this.§!<§ = null;
         }
         var _loc1_:§[!f§ = this.§4!+§.getItemByName("Container_Popup");
         if(this.§4!+§.container)
         {
            this.§4!+§.container.removeComponent(this);
         }
         this.§<!^§ = true;
         §5!U§.resume();
         mClip.dispatchEvent(new §8>§(§8>§.§2!$§,this));
      }
      
      public function get §<#§() : int
      {
         return this.§;L§;
      }
      
      public function set §<#§(param1:int) : void
      {
         this.§;L§ = param1;
      }
   }
}
