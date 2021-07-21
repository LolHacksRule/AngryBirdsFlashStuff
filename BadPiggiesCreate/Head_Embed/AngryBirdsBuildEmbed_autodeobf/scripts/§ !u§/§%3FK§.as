package § !u§
{
   import §+]§.§"U§;
   import §<!<§.§]K§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §?K§ extends MovieClip
   {
       
      
      private var §!D§:TextField;
      
      public function §?K§()
      {
         super();
         var _loc1_:Class = §1F§.§"!_§("MovieClip_BirdIndex");
         var _loc2_:MovieClip = new _loc1_();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc3_) is TextField)
            {
               this.§!D§ = _loc2_.getChildAt(_loc3_) as TextField;
               break;
            }
            _loc3_++;
         }
         addChild(_loc2_);
      }
      
      public function update(param1:int, param2:§]K§, param3:§"U§) : void
      {
         var _loc4_:Point = null;
         _loc4_ = param3.§-!M§(param2.mX,param2.mY - param2.radius * 2.5);
         this.x = _loc4_.x;
         this.y = _loc4_.y;
         this.§!D§.text = (param1 + 1).toString();
      }
   }
}
