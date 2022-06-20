package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §1#W§.§="D§;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §6V§.§&"g§;
   import §7!j§.§"I§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§;"x§;
   
   public class §!#a§ extends §4#m§
   {
      
      private static var §0"-§:§&"g§ = new §&"g§();
       
      
      private var § ;§:String;
      
      public function §!#a§(param1:String, param2:Sprite, param3:§8#B§, param4:b2World, param5:§!"v§, param6:§]"o§, param7:Number, param8:String = "", param9:int = 1)
      {
         this.§ ;§ = param1;
         var _loc10_:String = param5.itemName;
         var _loc11_:§8#B§;
         if(!(_loc11_ = §!#A§.§#F§.animationManager.getAnimation(_loc10_)))
         {
            _loc11_ = this.§=#;§(param5,_loc10_);
         }
         super(param2,_loc11_,param4,param5,param6,param7);
      }
      
      private function §=#;§(param1:§!"v§, param2:String) : §8#B§
      {
         var _loc3_:Array = param1.getAnimationDefinitions();
         var _loc4_:§"I§;
         (_loc4_ = §!#A§.§#F§.animationManager).§8#f§(param2,_loc3_);
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
         var _loc1_:String = (levelItem as §;"x§).idleSound;
         var _loc2_:String = (levelItem as §;"x§).soundChannel;
         if(_loc1_)
         {
            §!#&§.§2!A§(_loc1_,_loc2_ == null ? §!#&§.§>#c§ : _loc2_);
         }
      }
      
      override public function playFearSound() : §="D§
      {
         var _loc1_:String = (levelItem as §;"x§).fearSound;
         var _loc2_:String = (levelItem as §;"x§).soundChannel;
         var _loc3_:§="D§ = null;
         if(_loc1_)
         {
            _loc3_ = §!#&§.§2!A§(_loc1_,_loc2_ == null ? §!#&§.§>#c§ : _loc2_);
         }
         return _loc3_;
      }
   }
}
