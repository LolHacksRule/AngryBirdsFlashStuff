package §+!c§
{
   import §7!F§.§0'§;
   import §7!F§.§`y§;
   import com.angrybirds.§,!q§;
   
   public class §;!d§ extends §0'§
   {
      
      private static const §@T§:String = "ExtraBirdGlow";
       
      
      private var §&#B§:uint;
      
      private var §^"<§:Boolean = false;
      
      public function §;!d§(param1:uint = 16777215)
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc2_:§`y§ = §,!q§.§9!,§.animationManager;
         if(!_loc2_.getAnimation(§@T§))
         {
            _loc3_ = [];
            _loc4_ = 1;
            while(_loc4_ <= 6)
            {
               _loc3_.push("CLONE_BIRD_HIGHLIGHT_0" + _loc4_);
               _loc4_++;
            }
            _loc2_.§%#M§(§@T§,_loc3_);
         }
         super(_loc2_.getAnimation(§@T§),true,20);
         scaleY = 0.5;
         scaleX = 0.5;
         this.§^"G§(param1);
      }
      
      public function get tintColor() : uint
      {
         return this.§&#B§;
      }
      
      public function §^"G§(param1:uint) : void
      {
         this.§^"<§ = true;
         this.§&#B§ = param1;
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         rotation -= param1 / 1000;
         if(this.§^"<§ && §>#;§)
         {
            §>#;§.color = this.§&#B§;
         }
      }
   }
}
