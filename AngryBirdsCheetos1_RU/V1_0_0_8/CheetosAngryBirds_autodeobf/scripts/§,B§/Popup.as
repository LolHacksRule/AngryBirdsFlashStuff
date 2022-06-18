package §,B§
{
   import §'!N§.§2!3§;
   import §1!§.§@!Q§;
   import §3!^§.§ null§;
   import §3!^§.ColorFadeLayerEvent;
   import §;!K§.§+!4§;
   import §;[§.§`![§;
   
   public class Popup extends §`![§
   {
       
      
      private const § "§:Number = 0.25;
      
      protected var §0!1§:§ null§;
      
      protected var §<!E§:§+!4§;
      
      private var §<a§:Boolean = false;
      
      public function Popup(param1:XML, param2:§+!4§)
      {
         super(param1,param2.container);
         this.§0!1§ = new § null§(0,0,0,0);
         param2.container.addComponent(this);
         this.§<!E§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §@!Q§.§?!]§();
         if(this.§0!1§ != null)
         {
            mClip.addChildAt(this.§0!1§,0);
            if(param1)
            {
               this.§0!1§.§,l§(0.7,this.§ "§);
            }
            else
            {
               this.§0!1§.§6!B§(0.7);
            }
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§0!1§ == null)
         {
            this.close();
            return;
         }
         this.§0!1§.§,l§(0,this.§ "§);
         this.§0!1§.addEventListener(ColorFadeLayerEvent.§99§,this.§0m§);
      }
      
      private function §0m§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         if(this.§<a§)
         {
            return;
         }
         if(this.§0!1§)
         {
            this.§0!1§.removeEventListener(ColorFadeLayerEvent.§99§,this.§0m§);
            mClip.removeChild(this.§0!1§);
            this.§0!1§.clean();
            this.§0!1§ = null;
         }
         var _loc1_:§2!3§ = this.§<!E§.getItemByName("Container_Popup");
         if(_loc1_ != null)
         {
            _loc1_.setVisibility(false);
         }
         if(this.§<!E§.container)
         {
            this.§<!E§.container.removeComponent(this);
         }
         this.§<a§ = true;
         if(§4!0§.§<3§ == false)
         {
            §@!Q§.§5m§();
         }
         mClip.dispatchEvent(new §@!L§(§@!L§.§>&§,this));
      }
   }
}
