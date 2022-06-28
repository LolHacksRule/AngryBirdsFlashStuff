package §"!@§
{
   import §2=§.§!T§;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5q§ extends Sprite
   {
       
      
      private var §5L§:Sprite;
      
      private var §`F§:Number;
      
      private var §,u§:Number;
      
      private var §"!0§:§!T§;
      
      public function §5q§(radius:Number)
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
         this.§5L§ = this.§+!P§(assetName);
         addChild(this.§5L§);
         this.mouseEnabled = false;
         this.§5L§.x = -this.§5L§.width / 2;
         this.§5L§.y = -this.§5L§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§"!0§)
         {
            this.§"!0§.stop();
            this.§"!0§ = null;
         }
         removeChild(this.§5L§);
         this.§5L§ = null;
      }
      
      public function §+!P§(assetName:String) : MovieClip
      {
         var image:MovieClip = null;
         var assetCls:Class = AssetCache.§-9§(assetName);
         image = new assetCls();
         image.x = image.width / 2;
         image.y = image.height / 2;
         return image;
      }
      
      public function set §=!1§(val:§!T§) : void
      {
         this.§"!0§ = val;
      }
      
      public function get §=!1§() : §!T§
      {
         return this.§"!0§;
      }
      
      public function get §<t§() : Number
      {
         return this.§`F§;
      }
      
      public function set §<t§(value:Number) : void
      {
         this.§`F§ = value;
      }
      
      public function get §<!D§() : Number
      {
         return this.§,u§;
      }
      
      public function set §<!D§(value:Number) : void
      {
         this.§,u§ = value;
      }
   }
}
