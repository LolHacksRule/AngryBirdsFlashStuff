package §!"2§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   
   public class §1w§ extends Sprite
   {
      
      public static const §"K§:Number = 0.75;
       
      
      private var §;!X§:Bitmap;
      
      private var §[e§:BitmapData;
      
      private var §">§:String;
      
      public function §1w§(param1:String)
      {
         super();
         this.§">§ = param1;
         addEventListener(MouseEvent.CLICK,this.§5V§);
         buttonMode = true;
         scaleX = scaleY = §"K§;
         x = 47;
      }
      
      public function get link() : String
      {
         return this.§">§;
      }
      
      public function §<!v§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §5V§(param1:MouseEvent) : void
      {
         §3T§.§67§.§#m§();
         var _loc2_:URLRequest = new URLRequest(this.§">§);
         navigateToURL(_loc2_,"_blank");
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         this.§[e§ = _loc2_.bitmapData.clone();
         this.§`!A§(this.§[e§);
      }
      
      public function §,!6§() : BitmapData
      {
         if(this.§[e§)
         {
            this.§`!A§(this.§[e§);
         }
         return this.§[e§;
      }
      
      public function §`!A§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §?f§.§=Z§;
         _loc2_.height = §?f§.§7G§;
         addChild(_loc2_);
      }
   }
}
