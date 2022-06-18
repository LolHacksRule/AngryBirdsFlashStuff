package §9!Z§
{
   import §"!S§.§"_§;
   import §]!&§.§=!2§;
   import §]!5§.§1k§;
   import §]!Y§.§5W§;
   import §`!A§.§0!8§;
   import §`!A§.ColorFadeLayerEvent;
   
   public class Popup extends §=!2§
   {
       
      
      private const §"!E§:Number = 0.25;
      
      protected var §>`§:§0!8§;
      
      protected var §0!Y§:§5W§;
      
      private var §^!;§:Boolean = false;
      
      public function Popup(param1:XML, param2:§5W§)
      {
         super(param1,param2.container);
         this.§>`§ = new §0!8§(0,0,0,0);
         param2.container.addComponent(this);
         this.§0!Y§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §"_§.§5q§();
         if(this.§>`§ != null)
         {
            mClip.addChildAt(this.§>`§,0);
            if(param1)
            {
               this.§>`§.§?§(0.7,this.§"!E§);
            }
            else
            {
               this.§>`§.§8H§(0.7);
            }
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§>`§ == null)
         {
            this.close();
            return;
         }
         this.§>`§.§?§(0,this.§"!E§);
         this.§>`§.addEventListener(ColorFadeLayerEvent.§%!M§,this.§'%§);
      }
      
      private function §'%§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§^!;§)
         {
            return;
         }
         if(this.§>`§)
         {
            this.§>`§.removeEventListener(ColorFadeLayerEvent.§%!M§,this.§'%§);
            mClip.removeChild(this.§>`§);
            this.§>`§.clean();
            this.§>`§ = null;
         }
         var _loc1_:§1k§ = this.§0!Y§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§0!Y§.container)
         {
            this.§0!Y§.container.removeComponent(this);
         }
         this.§^!;§ = true;
         if(§<!W§.§<+§ == false)
         {
            §"_§.§@A§();
         }
         mClip.dispatchEvent(new §;!T§(§;!T§.§4!<§,this));
      }
   }
}
