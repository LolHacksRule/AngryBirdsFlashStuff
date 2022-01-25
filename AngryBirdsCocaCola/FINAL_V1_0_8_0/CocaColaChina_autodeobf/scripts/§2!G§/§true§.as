package §2!G§
{
   import § ]§.HighscoreSidebar;
   import §%!^§.§"!7§;
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §+x§.§-6§;
   import §?=§.§8S§;
   import §^!$§.§;!D§;
   import §^!$§.§?![§;
   import flash.utils.Dictionary;
   
   public class §true§ extends §;!D§
   {
      
      public static const COLLECTABLE_ITEMS_EASY_1:String = "BLOCK_COLLECT_DRUM_1";
      
      public static const COLLECTABLE_ITEMS_EASY_2:String = "BLOCK_COLLECT_DRUM_2";
      
      public static const COLLECTABLE_ITEMS_HARD_1:String = "BLOCK_COLLECT_DRUM_3";
      
      public static const COLLECTABLE_ITEMS_HARD_2:String = "BLOCK_COLLECT_DRUM_4";
      
      public static const §[s§:String = "BLOCK_GOLDEN_DRUM_COKE";
       
      
      private var §?&§:Dictionary;
      
      private var §"P§:Array;
      
      private var §;!T§:Array;
      
      public function §true§(param1:§>!2§, param2:§"!7§, param3:Sprite)
      {
         this.§;!T§ = new Array(4,4,4,4,4,4,4,4,4);
         super(param1,param2,param3);
         this.§"P§ = HighscoreSidebar.§9Y§;
         this.§?&§ = new Dictionary();
         this.§"P§.forEach(this.§,#§);
         this.§"P§.forEach(this.§1!Y§);
         this.§8#§(null,COLLECTABLE_ITEMS_EASY_1);
         this.§8#§(null,COLLECTABLE_ITEMS_EASY_2);
         this.§8#§(null,COLLECTABLE_ITEMS_HARD_1);
         this.§8#§(null,COLLECTABLE_ITEMS_HARD_2);
      }
      
      private function §8#§(param1:Array, param2:String) : void
      {
         param1 = this.§&v§(param2).sort(this.§;4§);
         param1 = param1.slice(0,1);
         param1.forEach(this.§'u§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §8S§.§%!K§;
      }
      
      override protected function checkExplosions(param1:§?![§) : void
      {
         if(param1 is §5i§)
         {
            this.addExplosions(§;W§.§ u§,param1.§#!!§().GetPosition().x,param1.§#!!§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §?![§
      {
         var _loc10_:§?![§ = null;
         if(param2 == "BLOCK_BOTTLE_COKE")
         {
            _loc10_ = new §"!^§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'!3§,param2,param3,param4,param5,param9);
         }
         else if(param2 == COLLECTABLE_ITEMS_EASY_1 || param2 == COLLECTABLE_ITEMS_EASY_2 || param2 == COLLECTABLE_ITEMS_HARD_1 || param2 == COLLECTABLE_ITEMS_HARD_2)
         {
            _loc10_ = new §while§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'!3§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_RED_COKE")
         {
            _loc10_ = new §6!]§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'!3§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_CAP_COKE")
         {
            _loc10_ = new §,r§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'!3§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_GOLDEN_DRUM_COKE")
         {
            _loc10_ = new §5i§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§'!3§,param2,param3,param4,param5,param9);
         }
         else
         {
            _loc10_ = super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§?![§ = §[1§[param1];
         if(param2 && this.§9!,§(_loc5_))
         {
            §-!#§.§4,§.§75§(_loc5_);
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §5!+§.push(§;W§.createExplosion(param1,param2,param3));
         §-6§.§6!#§("TntExplosions","ChannelExplosions");
      }
      
      private function §1!Y§(param1:String, param2:int, param3:Array) : void
      {
         (this.§?&§[param1] as Array).forEach(this.§>x§);
      }
      
      private function §,#§(param1:String, param2:int, param3:Array) : void
      {
         this.§?&§[param1] = new Array(this.§;!T§[param2]);
      }
      
      private function §>x§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function §&v§(param1:String) : Array
      {
         var _loc3_:§?![§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §[1§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§=^§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function §;4§(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §'u§(param1:§?![§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §+!d§(param1,false,false,false);
      }
      
      private function §9!,§(param1:§?![§) : Boolean
      {
         return param1.§=^§.indexOf(COLLECTABLE_ITEMS_EASY_1) != -1 || param1.§=^§.indexOf(COLLECTABLE_ITEMS_EASY_2) != -1 || param1.§=^§.indexOf(COLLECTABLE_ITEMS_HARD_1) != -1 || param1.§=^§.indexOf(COLLECTABLE_ITEMS_HARD_2) != -1;
      }
   }
}
