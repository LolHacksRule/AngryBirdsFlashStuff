package §`"]§
{
   import §!!k§.§'§;
   import §!!k§.§?!3§;
   import com.angrybirds.§<!J§;
   
   public class §;j§ extends §'#4§
   {
      
      private static const §!#0§:String = "ExtraBirdGlow";
       
      
      private var §,"N§:uint;
      
      private var §%"w§:Boolean = false;
      
      public function §;j§(param1:uint = 16777215)
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc2_:§?!3§ = §<!J§.§=!%§.animationManager;
         if(!_loc2_.getAnimation(§!#0§))
         {
            _loc3_ = [];
            _loc4_ = 1;
            while(_loc4_ <= 6)
            {
               _loc3_.push("CLONE_BIRD_HIGHLIGHT_0" + _loc4_);
               _loc4_++;
            }
            _loc2_.§&!d§(§!#0§,_loc3_);
         }
         super(_loc2_.getAnimation(§!#0§),true,20);
         scaleY = 0.5;
         scaleX = 0.5;
         this.§>"y§(param1);
      }
      
      public function get tintColor() : uint
      {
         return this.§,"N§;
      }
      
      public function §>"y§(param1:uint) : void
      {
         this.§%"w§ = true;
         this.§,"N§ = param1;
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         rotation -= param1 / 1000;
         if(this.§%"w§ && §5!0§)
         {
            §5!0§.color = this.§,"N§;
         }
      }
   }
}
