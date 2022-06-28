package §5!3§
{
   import §?!O§.§?W§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § !N§ extends Sprite
   {
       
      
      private var §>8§:Sprite;
      
      private var §##§:Number;
      
      private var §85§:Number;
      
      private var §?9§:§?W§;
      
      public function § !N§(radius:Number)
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
         this.§>8§ = this.§^V§(assetName);
         addChild(this.§>8§);
         this.mouseEnabled = false;
         this.§>8§.x = -this.§>8§.width / 2;
         this.§>8§.y = -this.§>8§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§?9§)
         {
            this.§?9§.stop();
            this.§?9§ = null;
         }
         removeChild(this.§>8§);
         this.§>8§ = null;
      }
      
      public function §^V§(assetName:String) : MovieClip
      {
         var image:MovieClip = null;
         var assetCls:Class = AssetCache.§%p§(assetName);
         image = new assetCls();
         image.x = image.width / 2;
         image.y = image.height / 2;
         return image;
      }
      
      public function set §#!4§(val:§?W§) : void
      {
         this.§?9§ = val;
      }
      
      public function get §#!4§() : §?W§
      {
         return this.§?9§;
      }
      
      public function get §+!;§() : Number
      {
         return this.§##§;
      }
      
      public function set §+!;§(value:Number) : void
      {
         this.§##§ = value;
      }
      
      public function get §>!?§() : Number
      {
         return this.§85§;
      }
      
      public function set §>!?§(value:Number) : void
      {
         this.§85§ = value;
      }
   }
}
