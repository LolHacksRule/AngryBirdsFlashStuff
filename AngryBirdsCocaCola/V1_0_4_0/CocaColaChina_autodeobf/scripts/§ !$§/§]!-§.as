package § !$§
{
   import § !K§.Sprite;
   import §32§.HighscoreSidebar;
   import §4A§.§&_§;
   import §7I§.§<!0§;
   import §86§.§9]§;
   import §;+§.§+!?§;
   import §;+§.§[!3§;
   import §;G§.§;Z§;
   import flash.utils.Dictionary;
   
   public class §]!-§ extends §+!?§
   {
      
      public static const COLLECTABLE_ITEMS_EASY_1:String = "BLOCK_COLLECT_DRUM_1";
      
      public static const COLLECTABLE_ITEMS_EASY_2:String = "BLOCK_COLLECT_DRUM_2";
      
      public static const COLLECTABLE_ITEMS_HARD_1:String = "BLOCK_COLLECT_DRUM_3";
      
      public static const COLLECTABLE_ITEMS_HARD_2:String = "BLOCK_COLLECT_DRUM_4";
      
      public static const §<!8§:String = "BLOCK_GOLDEN_DRUM_COKE";
       
      
      private var §0!A§:Dictionary;
      
      private var §6>§:Array;
      
      private var §9T§:Array;
      
      public function §]!-§(param1:§&_§, param2:§9]§, param3:Sprite)
      {
         this.§9T§ = new Array(4,4,4,4,4,4,4,4,4);
         super(param1,param2,param3);
         this.§6>§ = HighscoreSidebar.§!^§;
         this.§0!A§ = new Dictionary();
         this.§6>§.forEach(this.§#3§);
         this.§6>§.forEach(this.§^r§);
         this.§^s§(null,COLLECTABLE_ITEMS_EASY_1);
         this.§^s§(null,COLLECTABLE_ITEMS_EASY_2);
         this.§^s§(null,COLLECTABLE_ITEMS_HARD_1);
         this.§^s§(null,COLLECTABLE_ITEMS_HARD_2);
      }
      
      private function §^s§(param1:Array, param2:String) : void
      {
         param1 = this.§ !3§(param2).sort(this.§+r§);
         param1 = param1.slice(0,1);
         param1.forEach(this.§3y§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §;Z§.§%#§;
      }
      
      override protected function checkExplosions(param1:§[!3§) : void
      {
         if(param1 is §4u§)
         {
            this.addExplosions(§`@§.§,!+§,param1.§1!d§().GetPosition().x,param1.§1!d§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!3§
      {
         var _loc10_:§[!3§ = null;
         if(param2 == "BLOCK_BOTTLE_COKE")
         {
            _loc10_ = new §8;§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§[U§,param2,param3,param4,param5,param9);
         }
         else if(param2 == COLLECTABLE_ITEMS_EASY_1 || param2 == COLLECTABLE_ITEMS_EASY_2 || param2 == COLLECTABLE_ITEMS_HARD_1 || param2 == COLLECTABLE_ITEMS_HARD_2)
         {
            _loc10_ = new §0D§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§[U§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_RED_COKE")
         {
            _loc10_ = new §`!W§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§[U§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_CAP_COKE")
         {
            _loc10_ = new §-7§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§[U§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_GOLDEN_DRUM_COKE")
         {
            _loc10_ = new §4u§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§[U§,param2,param3,param4,param5,param9);
         }
         else
         {
            _loc10_ = super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§[!3§ = §,!U§[param1];
         if(param2 && this.§1!H§(_loc5_))
         {
            §"!@§.§-5§.§?!V§(_loc5_);
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §3E§.push(§`@§.createExplosion(param1,param2,param3));
         §<!0§.playSound("TntExplosions","ChannelExplosions");
      }
      
      private function §^r§(param1:String, param2:int, param3:Array) : void
      {
         (this.§0!A§[param1] as Array).forEach(this.§9!0§);
      }
      
      private function §#3§(param1:String, param2:int, param3:Array) : void
      {
         this.§0!A§[param1] = new Array(this.§9T§[param2]);
      }
      
      private function §9!0§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function § !3§(param1:String) : Array
      {
         var _loc3_:§[!3§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §,!U§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§1T§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function §+r§(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §3y§(param1:§[!3§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §3A§(param1,false,false,false);
      }
      
      private function §1!H§(param1:§[!3§) : Boolean
      {
         return param1.§1T§.indexOf(COLLECTABLE_ITEMS_EASY_1) != -1 || param1.§1T§.indexOf(COLLECTABLE_ITEMS_EASY_2) != -1 || param1.§1T§.indexOf(COLLECTABLE_ITEMS_HARD_1) != -1 || param1.§1T§.indexOf(COLLECTABLE_ITEMS_HARD_2) != -1;
      }
   }
}
