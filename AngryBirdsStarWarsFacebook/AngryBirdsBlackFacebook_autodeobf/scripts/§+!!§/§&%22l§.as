package §+!!§
{
   import §+D§.§]B§;
   import §,!,§.§0!d§;
   import §7"a§.§@4§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §&"l§ extends §0!d§
   {
      
      private static var §2!D§:Object = {};
       
      
      private var mAsset:MovieClip;
      
      private var §#!1§:§]B§;
      
      private var §?!a§:§@4§;
      
      private var §=#Q§:Boolean;
      
      public function §&"l§(param1:Boolean = false)
      {
         super();
         this.§=#Q§ = param1;
         this.mAsset = new §5_§.§`"G§(!!param1 ? "RequestsItemRendererAssetQuick" : "RequestsItemRendererAsset")();
         addChild(this.mAsset);
         this.§#!1§ = new §]B§(this.mAsset.chkSelected);
         this.mAsset.chkSelected.addEventListener(Event.CHANGE,this.§>&§);
         this.mAsset.txtName.cacheAsBitmap = true;
         this.mAsset.mcMask.cacheAsBitmap = true;
         this.mAsset.txtName.mask = this.mAsset.mcMask;
      }
      
      private function §>&§(param1:Event) : void
      {
         this.§ !%§.§0" § = this.§#!1§.§0" §;
         dispatchEvent(new §8";§(§8";§.§&!b§,data,true));
      }
      
      override public function set data(param1:Object) : void
      {
         this.§<!6§();
         this.mAsset.chkSelected.removeEventListener(Event.CHANGE,this.§>&§);
         super.data = param1;
         if(!data)
         {
            visible = false;
            return;
         }
         visible = true;
         this.mAsset.txtName.text = !!this.§=#Q§ ? this.§ !%§.name.split(" ")[0] : this.§ !%§.name;
         this.§#!1§.§0" § = this.§ !%§.§0" §;
         if(this.§#!1§.§0" §)
         {
            this.mAsset.chkSelected.mcCheck.gotoAndStop(this.mAsset.chkSelected.mcCheck.totalFrames);
         }
         if(!§2!D§[this.§ !%§.id])
         {
            §2!D§[this.§ !%§.id] = [];
         }
         if(§2!D§[this.§ !%§.id].length > 0)
         {
            this.§?!a§ = §2!D§[this.§ !%§.id].pop();
         }
         else
         {
            this.§?!a§ = new §@4§(this.§ !%§.id);
         }
         this.mAsset.addChild(this.§?!a§);
         this.§?!a§.x = 37;
         this.§?!a§.y = 2;
         this.§?!a§.scaleY = 30 / 50;
         this.§?!a§.scaleX = 0.6;
         this.mAsset.chkSelected.addEventListener(Event.CHANGE,this.§>&§);
      }
      
      private function §<!6§() : void
      {
         if(this.§?!a§)
         {
            if(this.§?!a§.parent == this.mAsset)
            {
               this.mAsset.removeChild(this.§?!a§);
            }
            if(!§2!D§[this.§ !%§.id])
            {
               §2!D§[this.§ !%§.id] = [];
            }
            §2!D§[this.§ !%§.id].push(this.§?!a§);
            this.§?!a§ = null;
         }
      }
      
      private function get § !%§() : §`"b§
      {
         return §`"b§(data);
      }
   }
}
