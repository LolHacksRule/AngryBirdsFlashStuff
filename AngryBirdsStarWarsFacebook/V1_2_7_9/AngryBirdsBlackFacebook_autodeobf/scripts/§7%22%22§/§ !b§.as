package §7""§
{
   import §3"$§.§@!3§;
   import §3"$§.§]k§;
   import com.angrybirds.§;!e§;
   
   public class § !b§ extends §@!3§
   {
      
      private static const §^!A§:String = "ExtraBirdGlow";
       
      
      private var §,!4§:uint;
      
      private var §-"d§:Boolean = false;
      
      public function § !b§(param1:uint = 16777215)
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc2_:§]k§ = §;!e§.§<x§.animationManager;
         if(!_loc2_.getAnimation(§^!A§))
         {
            _loc3_ = [];
            _loc4_ = 1;
            while(_loc4_ <= 6)
            {
               _loc3_.push("CLONE_BIRD_HIGHLIGHT_0" + _loc4_);
               _loc4_++;
            }
            _loc2_.§`'§(§^!A§,_loc3_);
         }
         super(_loc2_.getAnimation(§^!A§),true,20);
         scaleY = 0.5;
         scaleX = 0.5;
         this.§2"4§(param1);
      }
      
      public function get tintColor() : uint
      {
         return this.§,!4§;
      }
      
      public function §2"4§(param1:uint) : void
      {
         this.§-"d§ = true;
         this.§,!4§ = param1;
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         rotation -= param1 / 1000;
         if(this.§-"d§ && §8#%§)
         {
            §8#%§.color = this.§,!4§;
         }
      }
   }
}
