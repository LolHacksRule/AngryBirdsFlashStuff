package §>"!§
{
   import § "I§.§?!%§;
   import §""d§.§3E§;
   import §9!&§.§`-§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §3!h§ extends §`-§
   {
      
      private static var §1!,§:Object = {};
       
      
      private var mAsset:MovieClip;
      
      private var §2!Z§:§3E§;
      
      private var §-"E§:§?!%§;
      
      private var §!"s§:Boolean;
      
      public function §3!h§(param1:Boolean = false)
      {
         super();
         this.§!"s§ = param1;
         this.mAsset = new §5"]§.§4!K§(!!param1 ? "RequestsItemRendererAssetQuick" : "RequestsItemRendererAsset")();
         addChild(this.mAsset);
         this.§2!Z§ = new §3E§(this.mAsset.chkSelected);
         this.mAsset.chkSelected.addEventListener(Event.CHANGE,this.§!!d§);
         this.mAsset.txtName.cacheAsBitmap = true;
         this.mAsset.mcMask.cacheAsBitmap = true;
         this.mAsset.txtName.mask = this.mAsset.mcMask;
      }
      
      private function §!!d§(param1:Event) : void
      {
         this.§<#7§.§""P§ = this.§2!Z§.§""P§;
         dispatchEvent(new §#!m§(§#!m§.§9!y§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         this.§3!6§();
         this.mAsset.chkSelected.removeEventListener(Event.CHANGE,this.§!!d§);
         super.data = param1;
         if(!data)
         {
            visible = false;
            return;
         }
         visible = true;
         this.mAsset.txtName.text = !!this.§!"s§ ? this.§<#7§.name.split(" ")[0] : this.§<#7§.name;
         this.§2!Z§.§""P§ = this.§<#7§.§""P§;
         if(this.§2!Z§.§""P§)
         {
            this.mAsset.chkSelected.mcCheck.gotoAndStop(this.mAsset.chkSelected.mcCheck.totalFrames);
         }
         if(!§1!,§[this.§<#7§.id])
         {
            §1!,§[this.§<#7§.id] = [];
         }
         if(§1!,§[this.§<#7§.id].length > 0)
         {
            this.§-"E§ = §1!,§[this.§<#7§.id].pop();
         }
         else
         {
            this.§-"E§ = new §?!%§(this.§<#7§.id);
         }
         this.mAsset.addChild(this.§-"E§);
         this.§-"E§.x = 37;
         this.§-"E§.y = 2;
         this.§-"E§.scaleY = 30 / 50;
         this.§-"E§.scaleX = 0.6;
         this.mAsset.chkSelected.addEventListener(Event.CHANGE,this.§!!d§);
      }
      
      private function §3!6§() : void
      {
         if(this.§-"E§)
         {
            if(this.§-"E§.parent == this.mAsset)
            {
               this.mAsset.removeChild(this.§-"E§);
            }
            if(!§1!,§[this.§<#7§.id])
            {
               §1!,§[this.§<#7§.id] = [];
            }
            §1!,§[this.§<#7§.id].push(this.§-"E§);
            this.§-"E§ = null;
         }
      }
      
      private function get §<#7§() : §9E§
      {
         return §9E§(data);
      }
   }
}
