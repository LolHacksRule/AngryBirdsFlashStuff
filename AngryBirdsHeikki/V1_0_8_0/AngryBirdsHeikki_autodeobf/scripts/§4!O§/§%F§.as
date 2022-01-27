package §4!O§
{
   import §#;§.§42§;
   import §+!#§.§"!6§;
   import §+!#§.§9!5§;
   import §0!&§.§!'§;
   import §2z§.§2!U§;
   import §=!E§.Sprite;
   import §^t§.§[I§;
   import §`V§.HighscoreSidebar;
   
   public class §%F§ extends §"!6§
   {
       
      
      private var §"I§:Array;
      
      public function §%F§(param1:§2!U§, param2:§!'§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.§"I§ = HighscoreSidebar.§#R§;
      }
      
      private function §<!K§(param1:Array, param2:String) : void
      {
         param1 = this.§%a§(param2).sort(this.§7!c§);
         param1 = param1.slice(0,1);
         param1.forEach(this.§2h§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §[I§.§<l§;
      }
      
      override protected function checkExplosions(param1:§9!5§) : void
      {
         super.checkExplosions(param1);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9!5§
      {
         var _loc10_:§9!5§ = null;
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9!5§
      {
         var _loc10_:§9!5§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §][§(this,param1,§7o§.mLevelEngine.mWorld,§7o§,§,X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §][§(this,param1,§7o§.mLevelEngine.mWorld,§7o§,§,X§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§9!5§ = §59§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §[!c§.push(§4!G§.createExplosion(param1,param2,param3));
         §42§.§;!`§("TntExplosions","ChannelExplosions");
      }
      
      private function §#!I§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function §%a§(param1:String) : Array
      {
         var _loc3_:§9!5§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §59§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§@c§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function §7!c§(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §2h§(param1:§9!5§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §@,§(param1,false,false,false);
      }
   }
}
