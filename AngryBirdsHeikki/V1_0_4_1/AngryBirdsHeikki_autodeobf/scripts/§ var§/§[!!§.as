package § var§
{
   import §,J§.§74§;
   import §7h§.§7!"§;
   import §<!-§.Sprite;
   import §>!Z§.§+!Z§;
   import §^!7§.§^A§;
   import §`!X§.§5&§;
   import §`!X§.§@!^§;
   
   public class §[!!§ extends §@!^§
   {
       
      
      private var §?!9§:Array;
      
      public function §[!!§(param1:§^A§, param2:§74§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.§?!9§ = HighscoreSidebar.§5z§;
      }
      
      private function §return§(param1:Array, param2:String) : void
      {
         param1 = this.§&4§(param2).sort(this.§"2§);
         param1 = param1.slice(0,1);
         param1.forEach(this.§>c§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §+!Z§.§ !a§;
      }
      
      override protected function checkExplosions(param1:§5&§) : void
      {
         super.checkExplosions(param1);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §5&§
      {
         var _loc10_:§5&§ = null;
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §5&§
      {
         var _loc10_:§5&§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §6§(this,param1,§<&§.mLevelEngine.mWorld,§<&§,§2e§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §6§(this,param1,§<&§.mLevelEngine.mWorld,§<&§,§2e§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§5&§ = §1!'§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §8]§.push(§]X§.createExplosion(param1,param2,param3));
         §7!"§.§#W§("TntExplosions","ChannelExplosions");
      }
      
      private function §while§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function §&4§(param1:String) : Array
      {
         var _loc3_:§5&§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §1!'§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§7=§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function §"2§(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §>c§(param1:§5&§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §1!§(param1,false,false,false);
      }
   }
}
