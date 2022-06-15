package §;!=§
{
   import § !N§.§5"?§;
   import §#"4§.§&r§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §3"V§.§ b§;
   import §3"V§.§9$8§;
   import §7"T§.§4#[§;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import §8#K§.§0"p§;
   import §?#z§.§]$?§;
   
   public class §3#N§ extends §^!8§
   {
      
      private static var §0#R§:§&r§ = new §&r§();
       
      
      private var §^j§:String;
      
      public function §3#N§(param1:String, param2:Sprite, param3:§7b§, param4:b2World, param5:§&2§, param6:§5"?§, param7:Number, param8:String = "", param9:int = 1)
      {
         this.§^j§ = param1;
         var _loc10_:String = param5.itemName;
         var _loc11_:§7b§;
         if(!(_loc11_ = §]$?§.§2#§.animationManager.getAnimation(_loc10_)))
         {
            _loc11_ = this.§""]§(param5,_loc10_);
         }
         super(param2,_loc11_,param4,param5,param6,param7);
      }
      
      private function §""]§(param1:§&2§, param2:String) : §7b§
      {
         var _loc3_:Array = param1.getAnimationDefinitions();
         var _loc4_:§4#[§;
         (_loc4_ = §]$?§.§2#§.animationManager).§9!w§(param2,_loc3_);
         return _loc4_.getAnimation(param2);
      }
      
      override public function isTnt() : Boolean
      {
         var _loc1_:* = Boolean(super.isTnt());
         if(!_loc1_)
         {
            _loc1_ = itemName.indexOf("MISC_THEMED_EXPLOSIVE_") != -1;
         }
         return _loc1_;
      }
      
      override protected function playScreamSound() : void
      {
         var _loc1_:String = (levelItem as §0"p§).idleSound;
         var _loc2_:String = (levelItem as §0"p§).soundChannel;
         if(_loc1_)
         {
            § b§.§^"8§(_loc1_,_loc2_ == null ? § b§.§1#-§ : _loc2_);
         }
      }
      
      override public function playFearSound() : §9$8§
      {
         var _loc1_:String = (levelItem as §0"p§).fearSound;
         var _loc2_:String = (levelItem as §0"p§).soundChannel;
         var _loc3_:§9$8§ = null;
         if(_loc1_)
         {
            _loc3_ = § b§.§^"8§(_loc1_,_loc2_ == null ? § b§.§1#-§ : _loc2_);
         }
         return _loc3_;
      }
   }
}
