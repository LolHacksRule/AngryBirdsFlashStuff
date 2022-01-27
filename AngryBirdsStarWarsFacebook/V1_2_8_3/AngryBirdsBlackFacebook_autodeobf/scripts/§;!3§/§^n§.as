package §;!3§
{
   import §+&§.§&q§;
   import §8§.§"!E§;
   import §=Z§.§@#-§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^n§ extends §"!E§
   {
      
      private static var §3"`§:Object = {};
       
      
      private var mAsset:MovieClip;
      
      private var §!X§:§@#-§;
      
      private var §8!I§:§&q§;
      
      private var §#!m§:Boolean;
      
      public function §^n§(param1:Boolean = false)
      {
         super();
         this.§#!m§ = param1;
         this.mAsset = new §%!Z§.§;",§(!!param1 ? "RequestsItemRendererAssetQuick" : "RequestsItemRendererAsset")();
         addChild(this.mAsset);
         this.§!X§ = new §@#-§(this.mAsset.chkSelected);
         this.mAsset.chkSelected.addEventListener(Event.CHANGE,this.§6!H§);
         this.mAsset.txtName.cacheAsBitmap = true;
         this.mAsset.mcMask.cacheAsBitmap = true;
         this.mAsset.txtName.mask = this.mAsset.mcMask;
      }
      
      private function §6!H§(param1:Event) : void
      {
         this.§="^§.§ !t§ = this.§!X§.§ !t§;
         dispatchEvent(new §,!d§(§,!d§.§#L§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         this.§^'§();
         this.mAsset.chkSelected.removeEventListener(Event.CHANGE,this.§6!H§);
         super.data = param1;
         if(!data)
         {
            visible = false;
            return;
         }
         visible = true;
         this.mAsset.txtName.text = !!this.§#!m§ ? this.§="^§.name.split(" ")[0] : this.§="^§.name;
         this.§!X§.§ !t§ = this.§="^§.§ !t§;
         if(this.§!X§.§ !t§)
         {
            this.mAsset.chkSelected.mcCheck.gotoAndStop(this.mAsset.chkSelected.mcCheck.totalFrames);
         }
         if(!§3"`§[this.§="^§.id])
         {
            §3"`§[this.§="^§.id] = [];
         }
         if(§3"`§[this.§="^§.id].length > 0)
         {
            this.§8!I§ = §3"`§[this.§="^§.id].pop();
         }
         else
         {
            this.§8!I§ = new §&q§(this.§="^§.id);
         }
         this.mAsset.addChild(this.§8!I§);
         this.§8!I§.x = 37;
         this.§8!I§.y = 2;
         this.§8!I§.scaleY = 30 / 50;
         this.§8!I§.scaleX = 0.6;
         this.mAsset.chkSelected.addEventListener(Event.CHANGE,this.§6!H§);
      }
      
      private function §^'§() : void
      {
         if(this.§8!I§)
         {
            if(this.§8!I§.parent == this.mAsset)
            {
               this.mAsset.removeChild(this.§8!I§);
            }
            if(!§3"`§[this.§="^§.id])
            {
               §3"`§[this.§="^§.id] = [];
            }
            §3"`§[this.§="^§.id].push(this.§8!I§);
            this.§8!I§ = null;
         }
      }
      
      private function get §="^§() : §^!2§
      {
         return §^!2§(data);
      }
   }
}
