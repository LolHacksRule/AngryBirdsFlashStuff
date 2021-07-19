package §9!!§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §>-§.§6H§;
   import §>-§.ColorFadeLayerEvent;
   import §[v§.§+B§;
   import §`W§.§`H§;
   
   public class Popup extends §+B§
   {
       
      
      protected const §;! §:Number = 0.25;
      
      protected var §^!D§:§6H§;
      
      protected var §%!#§:§#H§;
      
      protected var §]T§:Boolean = false;
      
      public function Popup(param1:XML, param2:§#H§)
      {
         super(param1,param2.container);
         this.§^!D§ = new §6H§(0,0,0,0);
         param2.container.§&!?§(this);
         this.§%!#§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §[o§.pause();
         mClip.addChildAt(this.§^!D§,0);
         if(param1)
         {
            this.§^!D§.§@2§(0.7,this.§;! §);
         }
         else
         {
            this.§^!D§.§,`§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§^!D§ == null)
         {
            this.close();
            return;
         }
         this.§^!D§.§@2§(0,this.§;! §);
         this.§^!D§.addEventListener(ColorFadeLayerEvent.§+!>§,this.§1@§);
      }
      
      protected function §1@§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§]T§)
         {
            return;
         }
         if(this.§^!D§)
         {
            this.§^!D§.removeEventListener(ColorFadeLayerEvent.§+!>§,this.§1@§);
            mClip.removeChild(this.§^!D§);
            this.§^!D§.clean();
            this.§^!D§ = null;
         }
         var _loc1_:§`H§ = this.§%!#§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§%!#§.container)
         {
            this.§%!#§.container.§[4§(this);
         }
         this.§]T§ = true;
         §[o§.resume();
         mClip.dispatchEvent(new §9!"§(§9!"§.§`y§,this));
      }
   }
}
