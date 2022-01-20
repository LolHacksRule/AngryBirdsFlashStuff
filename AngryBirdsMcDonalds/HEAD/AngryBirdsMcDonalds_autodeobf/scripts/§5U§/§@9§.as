package §5U§
{
   import § !J§.§%M§;
   import §+P§.§#X§;
   import §,4§.§0B§;
   import §4j§.§0K§;
   import §4j§.§9M§;
   import §[!4§.§-#§;
   import §`!n§.Sprite;
   import flash.geom.Point;
   
   public class §@9§ extends §0K§
   {
      
      private static const §7$§:int = 10;
      
      private static const §>!4§:int = 25;
      
      private static const §;!N§:int = 200;
      
      private static const § ;§:int = 20;
      
      private static const §,v§:int = 100 * §%M§.§'!Y§;
      
      private static const §]V§:int = 3;
      
      private static const §#!O§:Number = 0.5;
       
      
      private var §9r§:Vector.<§9M§>;
      
      private var §"7§:Vector.<Object>;
      
      private var §^,§:Vector.<§-!7§>;
      
      private var §>!'§:Vector.<§-!7§>;
      
      public function §@9§(param1:§%M§, param2:§0B§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:§9M§ = null;
         this.§^,§ = new Vector.<§-!7§>(3);
         this.§^,§[0] = new §-!7§("BLOCK_FRIES",45,73,§ ;§,§]V§,§#!O§);
         this.§^,§[1] = new §-!7§("BLOCK_SODA",77,87,§ ;§,§]V§,§#!O§);
         this.§^,§[2] = new §-!7§("BLOCK_HAMBURGER",92,135,§ ;§,§]V§,§#!O§);
         this.§>!'§ = new Vector.<§-!7§>(3);
         this.§>!'§[0] = new §-!7§("BLOCK_COOKIE_ROUND",10,80,4,0,§#!O§);
         this.§>!'§[1] = new §-!7§("BLOCK_COOKIE_RECTANGLE",100,170,4,0,§#!O§);
         this.§>!'§[2] = new §-!7§("BLOCK_COOKIE_RECTANGLE",190,350,4,0,§#!O§);
         this.§"7§ = new Vector.<Object>();
         this.§9r§ = new Vector.<§9M§>();
         var _loc1_:int = 0;
         while(_loc1_ < §@'§.length)
         {
            _loc2_ = §@'§[_loc1_];
            if(_loc2_.§`!p§ == "PIG_KING")
            {
               _loc2_.sprite.parent.setChildIndex(_loc2_.sprite,_loc2_.sprite.parent.numChildren - 1);
            }
            _loc1_++;
         }
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9M§
      {
         var _loc10_:§9M§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §8"§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5?§,param2,param3,param4,param5,false);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §8"§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5?§,param2,param3,param4,param5,false);
               break;
            default:
               _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§9M§;
         if((_loc5_ = §@'§[param1]).§`!p§ == "BLOCK_HAPPYMEAL")
         {
            if(_loc5_.§4!6§ <= 0)
            {
               this.§^&§(_loc5_,"HAPPYMEAL");
            }
         }
         else if(_loc5_.§`!p§ == "BLOCK_LANTERN_ROUND")
         {
            if(_loc5_.§4!6§ <= 0)
            {
               this.§^&§(_loc5_,"LANTERN_ROUND");
            }
         }
         else if(_loc5_.§`!p§ == "BLOCK_LANTERN_RECTANGLE")
         {
            if(_loc5_.§4!6§ <= 0)
            {
               this.§^&§(_loc5_,"LANTERN_RECT");
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9M§
      {
         var _loc10_:§9M§ = null;
         if(param2 == "BLOCK_HAPPYMEAL" || param2 == "BLOCK_FRIES" || param2 == "BLOCK_SODA" || param2 == "BLOCK_HAMBURGER")
         {
            (_loc10_ = new §^!a§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5?§,param2,param3,param4,param5,param9)).uniqueID = §]!7§();
         }
         else if(param2 == "BLOCK_LANTERN_RECTANGLE" || param2 == "BLOCK_LANTERN_ROUND")
         {
            (_loc10_ = new §?!,§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5?§,param2,param3,param4,param5,param9)).uniqueID = §]!7§();
         }
         else if(param2 == "BLOCK_COOKIE_RECTANGLE" || param2 == "BLOCK_COOKIE_ROUND")
         {
            (_loc10_ = new §^!a§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5?§,param2,param3,param4,param5,param9)).uniqueID = §]!7§();
         }
         else
         {
            _loc10_ = super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Point = null;
         var _loc6_:§ var§ = null;
         super.updateLevelObjectsComplete(param1);
         var _loc2_:§9M§ = null;
         var _loc3_:int = §@'§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = §@'§[_loc3_];
            if(_loc2_.§`!p§ == "BLOCK_HAPPYMEAL" || _loc2_.§`!p§ == "BLOCK_FRIES" || _loc2_.§`!p§ == "BLOCK_SODA" || _loc2_.§`!p§ == "BLOCK_HAMBURGER")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§`!p§ == "BLOCK_LANTERN_ROUND" || _loc2_.§`!p§ == "BLOCK_LANTERN_RECTANGLE")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§`!p§ == "BLOCK_COOKIE_RECTANGLE" || _loc2_.§`!p§ == "BLOCK_COOKIE_ROUND")
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         _loc3_ = this.§"7§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§"7§[_loc3_].time) <= 0)
            {
               _loc5_ = this.§"7§[_loc3_].point;
               _loc6_ = new § var§(this);
               switch(this.§"7§[_loc3_].name)
               {
                  case "HAPPYMEAL":
                     break;
                  case "LANTERN_ROUND":
                     _loc6_.§#i§ = 50;
                     _loc6_.§5o§ = 4;
                     _loc6_.§+"§("BLOCK_LANTERN_ROUND_2",85,95,15);
                     _loc6_.§+"§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§+"§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§+"§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§<7§(_loc5_,30 * §%M§.§'!Y§);
                     break;
                  case "LANTERN_RECT":
                     _loc6_.§#i§ = 50;
                     _loc6_.§5o§ = 4;
                     _loc6_.§+"§("BLOCK_LANTERN_RECTANGLE_2",85,95,15);
                     _loc6_.§+"§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§+"§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§+"§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§<7§(_loc5_,30 * §%M§.§'!Y§);
               }
               this.§"7§.splice(_loc3_,1);
            }
            else
            {
               this.§"7§[_loc3_].time = _loc4_ - param1;
            }
            _loc3_--;
         }
      }
      
      private function §^&§(param1:§9M§, param2:String) : void
      {
         var _loc5_:Object = null;
         var _loc3_:Object = new Object();
         _loc3_.point = new Point(param1.§3H§().GetPosition().x,param1.§3H§().GetPosition().y);
         _loc3_.time = §;!N§;
         _loc3_.name = param2;
         var _loc4_:int = 0;
         while(_loc4_ < this.§"7§.length)
         {
            if(((_loc5_ = this.§"7§[_loc4_]).point as Point).equals(_loc3_.point))
            {
               return;
            }
            _loc4_++;
         }
         this.§"7§.push(_loc3_);
         §,V§.push(§1!`§.createExplosion(§1!`§.§"s§,param1.§3H§().GetPosition().x,param1.§3H§().GetPosition().y));
      }
      
      private function §9!#§(param1:§9M§) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = new Object();
         _loc2_.point = new Point(param1.§3H§().GetPosition().x,param1.§3H§().GetPosition().y);
         _loc2_.time = §;!N§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§"7§.length)
         {
            if(((_loc4_ = this.§"7§[_loc3_]).point as Point).equals(_loc2_.point))
            {
               return;
            }
            _loc3_++;
         }
         this.§"7§.push(_loc2_);
         §,V§.push(§1!`§.createExplosion(§1!`§.§"s§,param1.§3H§().GetPosition().x,param1.§3H§().GetPosition().y));
      }
      
      public function §;T§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §#X§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§#X§ = new §#X§(this,_loc5_,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5?§,param1,param2,param3,param4);
         §@'§[§@'§.length] = _loc6_;
         §?q§.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§9M§> = null) : void
      {
         §,V§.push(§1!`§.createExplosion(param1,param2,param3));
         §-#§.§4h§("TntExplosions","ChannelExplosions");
      }
   }
}
