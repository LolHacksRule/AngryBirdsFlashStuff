package §;!E§
{
   import §!E§.§!U§;
   import §"!I§.§^!2§;
   import §+!8§.§,_§;
   import §+!8§.§-!N§;
   import §2Y§.Sprite;
   import §2`§.HighscoreSidebar;
   import §^!0§.§&M§;
   import §^!5§.§&!E§;
   
   public class §1!X§ extends §-!N§
   {
       
      
      private var §3!#§:Array;
      
      public function §1!X§(param1:§^!2§, param2:§&!E§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.§3!#§ = HighscoreSidebar.§"!P§;
      }
      
      private function §[!7§(param1:Array, param2:String) : void
      {
         param1 = this.§>p§(param2).sort(this.§^! §);
         param1 = param1.slice(0,1);
         param1.forEach(this.§<!P§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §!U§.§each §;
      }
      
      override protected function checkExplosions(param1:§,_§) : void
      {
         super.checkExplosions(param1);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,_§
      {
         var _loc10_:§,_§ = null;
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,_§
      {
         var _loc10_:§,_§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §>!8§(this,param1,§=!V§.mLevelEngine.mWorld,§=!V§,§9=§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §>!8§(this,param1,§=!V§.mLevelEngine.mWorld,§=!V§,§9=§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§,_§ = §7@§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §`!N§.push(§ 4§.createExplosion(param1,param2,param3));
         §&M§.§6!#§("TntExplosions","ChannelExplosions");
      }
      
      private function §[?§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function §>p§(param1:String) : Array
      {
         var _loc3_:§,_§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §7@§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§>R§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function §^! §(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §<!P§(param1:§,_§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §4!P§(param1,false,false,false);
      }
   }
}
