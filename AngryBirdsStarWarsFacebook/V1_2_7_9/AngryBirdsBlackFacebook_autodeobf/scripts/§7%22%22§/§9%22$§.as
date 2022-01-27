package §7""§
{
   import §#"_§.§<!Q§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §9"$§
   {
      
      private static const §&!Q§:Number = 0.3;
       
      
      private var mAsset:MovieClip;
      
      private var §5A§:Vector.<MovieClip>;
      
      private var §`r§:Number = 0;
      
      private var §>!t§:§4!Q§;
      
      private var §4"Y§:Number;
      
      private var §["z§:Number;
      
      public function §9"$§(param1:MovieClip)
      {
         var _loc3_:MovieClip = null;
         this.§5A§ = new Vector.<MovieClip>();
         super();
         this.mAsset = param1;
         this.mAsset.mouseChildren = false;
         this.§4"Y§ = this.mAsset.scaleX;
         this.§["z§ = this.mAsset.scaleY;
         var _loc2_:int = 1;
         while(_loc2_ < 100)
         {
            _loc3_ = this.mAsset["layer" + _loc2_];
            if(!_loc3_)
            {
               break;
            }
            this.§5A§.push(_loc3_);
            _loc2_++;
         }
         this.hoverScale = 0;
         this.mAsset.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.mAsset.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
      }
      
      protected function onOver(param1:MouseEvent) : void
      {
         if(this.§>!t§)
         {
            this.§>!t§.stop();
         }
         this.§>!t§ = §41§.§-G§.§&#'§(this,{"hoverScale":1},null,§&!Q§,§<!Q§.easeOut);
         this.§>!t§.play();
      }
      
      protected function onOut(param1:MouseEvent) : void
      {
         this.§8"m§(NaN);
      }
      
      public function §8"m§(param1:Number = 1) : void
      {
         if(this.§>!t§)
         {
            this.§>!t§.stop();
         }
         if(!isNaN(param1))
         {
            this.hoverScale = param1;
         }
         this.§>!t§ = §41§.§-G§.§&#'§(this,{"hoverScale":0},null,§&!Q§,§<!Q§.easeOut);
         this.§>!t§.play();
      }
      
      public function get hoverScale() : Number
      {
         return this.§`r§;
      }
      
      public function set hoverScale(param1:Number) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§`r§ = param1;
         for each(_loc2_ in this.§5A§)
         {
            _loc2_.scaleX = _loc2_.scaleY = this.§`r§;
            _loc2_.visible = this.§`r§ >= 0.1;
         }
         _loc3_ = 1 + this.§`r§ * 0.15;
         this.mAsset.scaleX = this.§4"Y§ * _loc3_;
         this.mAsset.scaleY = this.§["z§ * _loc3_;
      }
   }
}
