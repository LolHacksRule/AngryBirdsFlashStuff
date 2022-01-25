package §5!b§
{
   import § !9§.§'!U§;
   import §!!a§.§8=§;
   import §1!'§.HighscoreSidebar;
   import §4!O§.§&+§;
   import §4!O§.§+K§;
   import §5!?§.§>"§;
   import §;t§.Sprite;
   import §@!>§.§<!J§;
   import flash.utils.Dictionary;
   
   public class §4!!§ extends §+K§
   {
      
      public static const COLLECTABLE_ITEMS_EASY_1:String = "BLOCK_COLLECT_DRUM_1";
      
      public static const COLLECTABLE_ITEMS_EASY_2:String = "BLOCK_COLLECT_DRUM_2";
      
      public static const COLLECTABLE_ITEMS_HARD_1:String = "BLOCK_COLLECT_DRUM_3";
      
      public static const COLLECTABLE_ITEMS_HARD_2:String = "BLOCK_COLLECT_DRUM_4";
      
      public static const §+!F§:String = "BLOCK_GOLDEN_DRUM_COKE";
       
      
      private var §+"§:Dictionary;
      
      private var §3]§:Array;
      
      private var §"x§:Array;
      
      public function §4!!§(param1:§>"§, param2:§8=§, param3:Sprite)
      {
         this.§"x§ = new Array(4,4,4,4,4,4,4,4,4);
         super(param1,param2,param3);
         this.§3]§ = HighscoreSidebar.§%w§;
         this.§+"§ = new Dictionary();
         this.§3]§.forEach(this.§4a§);
         this.§3]§.forEach(this.§'!Z§);
         this.§@]§(null,COLLECTABLE_ITEMS_EASY_1);
         this.§@]§(null,COLLECTABLE_ITEMS_EASY_2);
         this.§@]§(null,COLLECTABLE_ITEMS_HARD_1);
         this.§@]§(null,COLLECTABLE_ITEMS_HARD_2);
      }
      
      private function §@]§(param1:Array, param2:String) : void
      {
         param1 = this.§ var§(param2).sort(this.§<S§);
         param1 = param1.slice(0,1);
         param1.forEach(this.§?%§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §<!J§.§%q§;
      }
      
      override protected function checkExplosions(param1:§&+§) : void
      {
         if(param1 is §-$§)
         {
            this.addExplosions(§9!O§.§`;§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&+§
      {
         var _loc10_:§&+§ = null;
         if(param2 == "BLOCK_BOTTLE_COKE")
         {
            _loc10_ = new §?-§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§8!F§,param2,param3,param4,param5,param9);
         }
         else if(param2 == COLLECTABLE_ITEMS_EASY_1 || param2 == COLLECTABLE_ITEMS_EASY_2 || param2 == COLLECTABLE_ITEMS_HARD_1 || param2 == COLLECTABLE_ITEMS_HARD_2)
         {
            _loc10_ = new § g§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§8!F§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_RED_COKE")
         {
            _loc10_ = new §6!$§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§8!F§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_CAP_COKE")
         {
            _loc10_ = new §=!F§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§8!F§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_GOLDEN_DRUM_COKE")
         {
            _loc10_ = new §-$§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§8!F§,param2,param3,param4,param5,param9);
         }
         else
         {
            _loc10_ = super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§&+§ = §^!'§[param1];
         if(param2 && this.§?!c§(_loc5_))
         {
            §=i§.§2S§.§!r§(_loc5_);
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §#!Y§.push(§9!O§.createExplosion(param1,param2,param3));
         §'!U§.playSound("TntExplosions","ChannelExplosions");
      }
      
      private function §'!Z§(param1:String, param2:int, param3:Array) : void
      {
         (this.§+"§[param1] as Array).forEach(this.§2!5§);
      }
      
      private function §4a§(param1:String, param2:int, param3:Array) : void
      {
         this.§+"§[param1] = new Array(this.§"x§[param2]);
      }
      
      private function §2!5§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function § var§(param1:String) : Array
      {
         var _loc3_:§&+§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §^!'§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§7!0§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function §<S§(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §?%§(param1:§&+§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §+4§(param1,false,false,false);
      }
      
      private function §?!c§(param1:§&+§) : Boolean
      {
         return param1.§7!0§.indexOf(COLLECTABLE_ITEMS_EASY_1) != -1 || param1.§7!0§.indexOf(COLLECTABLE_ITEMS_EASY_2) != -1 || param1.§7!0§.indexOf(COLLECTABLE_ITEMS_HARD_1) != -1 || param1.§7!0§.indexOf(COLLECTABLE_ITEMS_HARD_2) != -1;
      }
   }
}
