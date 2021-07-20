package § z§
{
   import § !$§.§7!!§;
   import § !$§.§>C§;
   import §,!A§.§-q§;
   import §6!;§.Sprite;
   import §7e§.§8!P§;
   import §9!'§.§0!%§;
   import §=!§.HighscoreSidebar;
   import §^f§.§<q§;
   
   public class §5+§ extends §7!!§
   {
       
      
      private var §"!c§:Array;
      
      public function §5+§(param1:§0!%§, param2:§8!P§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.§"!c§ = HighscoreSidebar.§9'§;
      }
      
      private function §7!H§(param1:Array, param2:String) : void
      {
         param1 = this.§+!-§(param2).sort(this.§ !8§);
         param1 = param1.slice(0,1);
         param1.forEach(this.§4!>§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §-q§.§0!T§;
      }
      
      override protected function checkExplosions(param1:§>C§) : void
      {
         super.checkExplosions(param1);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>C§
      {
         var _loc10_:§>C§ = null;
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>C§
      {
         var _loc10_:§>C§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §"!h§(this,param1,§]B§.mLevelEngine.mWorld,§]B§,§3D§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §"!h§(this,param1,§]B§.mLevelEngine.mWorld,§]B§,§3D§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§>C§ = §3!`§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§>C§> = null) : void
      {
         §8!N§.push(§!!#§.createExplosion(param1,param2,param3));
         §<q§.§5!S§("TntExplosions","ChannelExplosions");
      }
      
      private function §0u§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function §+!-§(param1:String) : Array
      {
         var _loc3_:§>C§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §3!`§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§ [§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function § !8§(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §4!>§(param1:§>C§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §?l§(param1,false,false,false);
      }
   }
}
