package §['§
{
   import § d§.§'!"§;
   import §"§.§2z§;
   import §"W§.§;N§;
   import §"W§.§?!T§;
   import §#!f§.Sprite;
   import §%i§.§#`§;
   import §4M§.HighscoreSidebar;
   import §8! §.§1_§;
   
   public class §!!#§ extends §?!T§
   {
       
      
      private var §[1§:Array;
      
      public function §!!#§(param1:§'!"§, param2:§1_§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.§[1§ = HighscoreSidebar.§?'§;
      }
      
      private function §6![§(param1:Array, param2:String) : void
      {
         param1 = this.§!t§(param2).sort(this.§<t§);
         param1 = param1.slice(0,1);
         param1.forEach(this.§1!"§);
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §2z§.§8T§;
      }
      
      override protected function checkExplosions(param1:§;N§) : void
      {
         super.checkExplosions(param1);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;N§
      {
         var _loc10_:§;N§ = null;
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;N§
      {
         var _loc10_:§;N§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new § !@§(this,param1,§"2§.mLevelEngine.mWorld,§"2§,§]!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new § !@§(this,param1,§"2§.mLevelEngine.mWorld,§"2§,§]!b§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§;N§ = §&!3§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §4J§.push(§]!$§.createExplosion(param1,param2,param3));
         §#`§.§2o§("TntExplosions","ChannelExplosions");
      }
      
      private function §`!R§(param1:int, param2:int, param3:Array) : void
      {
         var _loc4_:int = Math.random() * 10 + 1;
         while(param3.indexOf(_loc4_) != -1)
         {
            _loc4_ = Math.random() * 10 + 1;
         }
         param3[param2] = _loc4_;
      }
      
      private function §!t§(param1:String) : Array
      {
         var _loc3_:§;N§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §&!3§)
         {
            if(param1.toUpperCase().indexOf(_loc3_.§]D§.toUpperCase()) != -1)
            {
               _loc2_[_loc2_.length] = _loc3_;
               _loc3_.sprite.visible = true;
            }
         }
         return _loc2_;
      }
      
      private function §<t§(param1:Object, param2:Object) : Number
      {
         return Number(Math.round(Math.random() * 2) - 1);
      }
      
      private function §1!"§(param1:§;N§, param2:int, param3:Array) : void
      {
         param1.sprite.visible = false;
         §@&§(param1,false,false,false);
      }
   }
}
