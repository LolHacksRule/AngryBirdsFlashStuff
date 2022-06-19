package §_-Q2§
{
   import §_-16§.§_-MF§;
   import §_-Eg§.§_-RK§;
   import §_-TX§.§_-0X§;
   import §_-YK§.ColorFadeLayerEvent;
   import §_-YK§.§_-Ug§;
   import §_-xL§.§_-1-§;
   
   public class Popup extends §_-RK§
   {
       
      
      private const §_-LY§:Number = 0.25;
      
      protected var §_-I1§:§_-Ug§;
      
      private var §_-JA§:§_-1-§;
      
      private var §_-0-E§:Boolean = false;
      
      public function Popup(param1:XML, param2:§_-1-§)
      {
         super(param1,param2.container);
         this.§_-I1§ = new §_-Ug§(0,0,0,0);
         param2.container.addComponent(this);
         this.§_-JA§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §_-0X§.§_-fc§();
         mClip.addChildAt(this.§_-I1§,0);
         if(param1)
         {
            this.§_-I1§.§_-EU§(0.7,this.§_-LY§);
         }
         else
         {
            this.§_-I1§.§_-Hi§(0.7);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§_-I1§ == null)
         {
            this.close();
            return;
         }
         this.§_-I1§.§_-EU§(0,this.§_-LY§);
         this.§_-I1§.addEventListener(ColorFadeLayerEvent.§_-ea§,this.§_-lr§);
      }
      
      private function §_-lr§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§_-0-E§)
         {
            return;
         }
         if(this.§_-I1§)
         {
            this.§_-I1§.removeEventListener(ColorFadeLayerEvent.§_-ea§,this.§_-lr§);
            mClip.removeChild(this.§_-I1§);
            this.§_-I1§.clean();
            this.§_-I1§ = null;
         }
         var _loc1_:§_-MF§ = this.§_-JA§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§_-JA§.container)
         {
            this.§_-JA§.container.removeComponent(this);
         }
         this.§_-0-E§ = true;
         if(§_-Zr§.§_-MS§ == false)
         {
            §_-0X§.§_-UD§();
         }
         mClip.dispatchEvent(new §_-q5§(§_-q5§.§_-ln§,this));
      }
   }
}
