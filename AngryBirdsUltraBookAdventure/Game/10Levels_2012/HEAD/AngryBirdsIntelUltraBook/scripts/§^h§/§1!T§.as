package §^h§
{
   import §<!G§.§9h§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1!T§ extends Sprite
   {
       
      
      private var §3!_§:Sprite;
      
      private var §+y§:Number;
      
      private var §5H§:Number;
      
      private var §]!'§:§9h§;
      
      public function §1!T§(radius:Number)
      {
         var assetName:String = null;
         super();
         var randomSprite:int = Math.random() * 7;
         switch(randomSprite)
         {
            case 0:
               assetName = "P_STAR_4";
               break;
            case 1:
               assetName = "P_STAR_3";
               break;
            case 2:
               assetName = "P_STAR_2";
               break;
            case 3:
               assetName = "P_STAR_1";
               break;
            case 4:
               assetName = "P_SMOKE_3";
               break;
            case 5:
               assetName = "P_SMOKE_2";
               break;
            case 6:
               assetName = "P_SMOKE_1";
         }
         this.§3!_§ = this.§>m§(assetName);
         addChild(this.§3!_§);
         this.mouseEnabled = false;
         this.§3!_§.x = -this.§3!_§.width / 2;
         this.§3!_§.y = -this.§3!_§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§]!'§)
         {
            this.§]!'§.stop();
            this.§]!'§ = null;
         }
         removeChild(this.§3!_§);
         this.§3!_§ = null;
      }
      
      public function §>m§(assetName:String) : MovieClip
      {
         var image:MovieClip = null;
         var assetCls:Class = AssetCache.§,!k§(assetName);
         image = new assetCls();
         image.x = image.width / 2;
         image.y = image.height / 2;
         return image;
      }
      
      public function set §"n§(val:§9h§) : void
      {
         this.§]!'§ = val;
      }
      
      public function get §"n§() : §9h§
      {
         return this.§]!'§;
      }
      
      public function get §#C§() : Number
      {
         return this.§+y§;
      }
      
      public function set §#C§(value:Number) : void
      {
         this.§+y§ = value;
      }
      
      public function get §&i§() : Number
      {
         return this.§5H§;
      }
      
      public function set §&i§(value:Number) : void
      {
         this.§5H§ = value;
      }
   }
}
