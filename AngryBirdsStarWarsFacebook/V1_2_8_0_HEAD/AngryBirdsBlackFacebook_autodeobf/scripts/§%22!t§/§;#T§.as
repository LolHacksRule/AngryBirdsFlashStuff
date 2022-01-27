package §"!t§
{
   import §+!J§.§>n§;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   
   public class §;#T§ extends §>n§ implements §%x§
   {
      
      public static const §";§:Boolean = false;
       
      
      protected var _rect:Rectangle;
      
      protected var §8"X§:Array;
      
      public function §;#T§()
      {
         this.§8"X§ = [];
         super();
         this._rect = new Rectangle();
      }
      
      public function set rect(param1:Rectangle) : void
      {
         if(§";§)
         {
            param1.x = int(param1.x);
            param1.y = int(param1.y);
            param1.width = int(param1.width);
            param1.height = int(param1.height);
         }
         y = param1.y;
         this._rect = param1;
         this.onRectangleChanged();
      }
      
      public function get rect() : Rectangle
      {
         return this._rect;
      }
      
      protected function onRectangleChanged() : void
      {
      }
      
      public function get children() : Array
      {
         return this.§8"X§;
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         this.§8"X§.push(param1);
         return super.addChild(param1);
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:int = this.§8"X§.indexOf(param1);
         if(_loc2_ > -1)
         {
            this.§8"X§.splice(_loc2_,1);
         }
         return super.removeChild(param1);
      }
      
      public function onParentUpdate(param1:Rectangle) : void
      {
         var _loc2_:§5"U§ = null;
         this.rect = param1;
         for each(_loc2_ in this.children)
         {
            _loc2_.onParentUpdate(this.rect);
         }
      }
      
      public function get §9#$§() : Number
      {
         return 0;
      }
      
      public function get §>"Z§() : Number
      {
         return 0;
      }
   }
}
