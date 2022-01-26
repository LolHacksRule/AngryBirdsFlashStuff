package §[O§
{
   import §,!Q§.Sprite;
   import §,M§.§,!;§;
   import §-X§.§5!F§;
   import §1"§.HighscoreSidebar;
   import §4A§.§&_§;
   import §7m§.§7I§;
   import §9C§.§4!G§;
   import §9C§.§;,§;
   import flash.utils.Dictionary;
   
   public class §=3§ extends §;,§
   {
      
      public static const COLLECTABLE_ITEMS_EASY_1:String = "BLOCK_COLLECT_DRUM_1";
      
      public static const COLLECTABLE_ITEMS_EASY_2:String = "BLOCK_COLLECT_DRUM_2";
      
      public static const COLLECTABLE_ITEMS_HARD_1:String = "BLOCK_COLLECT_DRUM_3";
      
      public static const COLLECTABLE_ITEMS_HARD_2:String = "BLOCK_COLLECT_DRUM_4";
      
      public static const §^r§:String = "BLOCK_GOLDEN_DRUM_COKE";
       
      
      private var §?!]§:Dictionary;
      
      private var §<!!§:Array;
      
      private var §[b§:Array;
      
      public function §=3§(param1:§&_§, param2:§5!F§, param3:Sprite)
      {
         this.§[b§ = new Array(4,4,4,4,4,4,4,4,4);
         super(param1,param2,param3);
         this.§<!!§ = HighscoreSidebar.§=Z§;
         this.§?!]§ = new Dictionary();
         this.§<!!§.forEach(this.§8R§);
         this.§<!!§.forEach(this.§13§);
         this.§4u§(null,COLLECTABLE_ITEMS_EASY_1);
         this.§4u§(null,COLLECTABLE_ITEMS_EASY_2);
         this.§4u§(null,COLLECTABLE_ITEMS_HARD_1);
         this.§4u§(null,COLLECTABLE_ITEMS_HARD_2);
      }
      
      private function §4u§(param1:Array, param2:String) : void
      {
         param1 = this.§0!A§(param2).sort(this.§6>§);
         param1 = param1.slice(0,1);
         param1.forEach(this.§9T§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §,!;§.§+V§;
      }
      
      override protected function checkExplosions(param1:§4!G§) : void
      {
         if(param1 is §3!K§)
         {
            this.addExplosions(§#3§.§9!0§,param1.§@!?§().GetPosition().x,param1.§@!?§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!G§
      {
         var _loc10_:§4!G§ = null;
         if(param2 == "BLOCK_BOTTLE_COKE")
         {
            _loc10_ = new §3y§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'<§,param2,param3,param4,param5,param9);
         }
         else if(param2 == COLLECTABLE_ITEMS_EASY_1 || param2 == COLLECTABLE_ITEMS_EASY_2 || param2 == COLLECTABLE_ITEMS_HARD_1 || param2 == COLLECTABLE_ITEMS_HARD_2)
         {
            _loc10_ = new §#a§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'<§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_RED_COKE")
         {
            _loc10_ = new §+r§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'<§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_CAP_COKE")
         {
            _loc10_ = new §1!H§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'<§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_GOLDEN_DRUM_COKE")
         {
            _loc10_ = new §3!K§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'<§,param2,param3,param4,param5,param9);
         }
         else
         {
            _loc10_ = super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§4!G§ = §]!X§[param1];
         if(param2 && this.§^s§(_loc5_))
         {
            §"!@§.§6!-§.§3S§(_loc5_);
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §`!!§.push(§#3§.createExplosion(param1,param2,param3));
         §7I§.playSound("TntExplosions","ChannelExplosions");
      }
      
      private function §13§(param1:String, param2:int, param3:Array) : void
      {
         (this.§?!]§[param1] as Array).forEach(this.§]!-§);
      }
      
      private function §8R§(param1:String, param2:int, param3:Array) : void
      {
         this.§?!]§[param1] = new Array(this.§[b§[param2]);
      }
      
      private function §]!-§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function §0!A§(param1:String) : Array
      {
         var _loc3_:§4!G§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §]!X§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§!I§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function §6>§(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §9T§(param1:§4!G§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §+b§(param1,false,false,false);
      }
      
      private function §^s§(param1:§4!G§) : Boolean
      {
         return param1.§!I§.indexOf(COLLECTABLE_ITEMS_EASY_1) != -1 || param1.§!I§.indexOf(COLLECTABLE_ITEMS_EASY_2) != -1 || param1.§!I§.indexOf(COLLECTABLE_ITEMS_HARD_1) != -1 || param1.§!I§.indexOf(COLLECTABLE_ITEMS_HARD_2) != -1;
      }
   }
}
