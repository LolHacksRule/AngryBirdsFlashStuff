package §6!3§
{
   import §&!_§.§[!j§;
   import §'G§.§;D§;
   import §'G§.§^"[§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §8#K§.§-!o§;
   import §8#K§.§3Z§;
   import §?$<§.§=$"§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §,!;§ extends §'#S§
   {
      
      private static var §,#"§:§[!j§ = new §[!j§();
       
      
      private var §'#t§:String;
      
      public function §,!;§(param1:String, param2:Sprite, param3:§;D§, param4:b2World, param5:§?$>§, param6:§,!B§, param7:Number, param8:String = "", param9:int = 1)
      {
         this.§'#t§ = param1;
         var _loc10_:String = param5.itemName;
         var _loc11_:§;D§;
         if(!(_loc11_ = §7n§.§6#K§.animationManager.getAnimation(_loc10_)))
         {
            _loc11_ = this.§[$7§(param5,_loc10_);
         }
         super(param2,_loc11_,param4,param5,param6,param7);
      }
      
      private function §[$7§(param1:§?$>§, param2:String) : §;D§
      {
         var _loc3_:Array = param1.getAnimationDefinitions();
         var _loc4_:§^"[§;
         (_loc4_ = §7n§.§6#K§.animationManager).§&"u§(param2,_loc3_);
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
         var _loc1_:String = (levelItem as §=$"§).idleSound;
         var _loc2_:String = (levelItem as §=$"§).soundChannel;
         if(_loc1_)
         {
            §3Z§.§8!K§(_loc1_,_loc2_ == null ? §3Z§.§8#R§ : _loc2_);
         }
      }
      
      override public function playFearSound() : §-!o§
      {
         var _loc1_:String = (levelItem as §=$"§).fearSound;
         var _loc2_:String = (levelItem as §=$"§).soundChannel;
         var _loc3_:§-!o§ = null;
         if(_loc1_)
         {
            _loc3_ = §3Z§.§8!K§(_loc1_,_loc2_ == null ? §3Z§.§8#R§ : _loc2_);
         }
         return _loc3_;
      }
   }
}
