package §,y§
{
   import §+D§.§5!P§;
   import §2!Q§.§'[§;
   import §9!T§.§;!"§;
   import §9!T§.§;!_§;
   import §=X§.§"!6§;
   import §?!B§.§^!U§;
   import §[!C§.HighscoreSidebar;
   import §[=§.Sprite;
   
   public class §+K§ extends §;!_§
   {
       
      
      private var §%§:Array;
      
      public function §+K§(param1:§5!P§, param2:§"!6§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.§%§ = HighscoreSidebar.§=!J§;
      }
      
      private function §5!Q§(param1:Array, param2:String) : void
      {
         param1 = this.§>q§(param2).sort(this.§>6§);
         param1 = param1.slice(0,1);
         param1.forEach(this.§,B§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §^!U§.§!W§;
      }
      
      override protected function checkExplosions(param1:§;!"§) : void
      {
         super.checkExplosions(param1);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!"§
      {
         var _loc10_:§;!"§ = null;
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!"§
      {
         var _loc10_:§;!"§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §0J§(this,param1,§^!4§.mLevelEngine.mWorld,§^!4§,§9!N§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §0J§(this,param1,§^!4§.mLevelEngine.mWorld,§^!4§,§9!N§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§;!"§ = §]-§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §4s§.push(§&o§.createExplosion(param1,param2,param3));
         §'[§.§"]§("TntExplosions","ChannelExplosions");
      }
      
      private function §!!-§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function §>q§(param1:String) : Array
      {
         var _loc3_:§;!"§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §]-§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§%!1§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function §>6§(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §,B§(param1:§;!"§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §7!8§(param1,false,false,false);
      }
   }
}
