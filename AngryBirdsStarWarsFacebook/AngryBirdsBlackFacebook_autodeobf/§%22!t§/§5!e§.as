package §"!t§
{
   import flash.geom.Rectangle;
   
   public class §5!e§ extends §;#T§
   {
       
      
      public var §-!A§:§;#T§;
      
      public var §9"m§:§;#T§;
      
      protected var §,#]§:Number = 0.5;
      
      public function §5!e§()
      {
         this.§-!A§ = new §;#T§();
         this.§9"m§ = new §;#T§();
         super();
         addChild(this.§-!A§);
         addChild(this.§9"m§);
      }
      
      public function get §`_§() : Number
      {
         return this.§,#]§;
      }
      
      public function set §`_§(param1:Number) : void
      {
         this.§,#]§ = Math.max(0,Math.min(1,param1));
         var _loc2_:Rectangle = rect.clone();
         var _loc3_:int = rect.width * this.§,#]§;
         var _loc4_:Number = rect.width - _loc3_;
         var _loc5_:Number;
         if((_loc5_ = rect.width - (_loc3_ + _loc4_)) > 0)
         {
            _loc3_ += _loc5_;
         }
         else if(_loc5_ < 0)
         {
            _loc4_ -= _loc5_;
         }
         var _loc6_:Rectangle = new Rectangle(0,0,_loc3_,rect.height);
         var _loc7_:Rectangle = new Rectangle(_loc3_,0,_loc4_,rect.height);
         this.§-!A§.onParentUpdate(_loc6_);
         this.§9"m§.onParentUpdate(_loc7_);
      }
      
      public function §]!e§(param1:int) : Number
      {
         param1 = int(Math.max(§>"Z§,Math.min(param1,width)));
         this.§`_§ = param1 / width;
         return this.§`_§;
      }
      
      public function §`! §() : int
      {
         return this.§`_§ * width;
      }
      
      override protected function onRectangleChanged() : void
      {
         this.§`_§ = this.§,#]§;
      }
      
      override public function onParentUpdate(param1:Rectangle) : void
      {
         rect = param1;
      }
   }
}
