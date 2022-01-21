package §[!V§
{
   import §2![§.Sprite;
   import §5!L§.§,!&§;
   import §5!L§.§?8§;
   import §7_§.§]![§;
   import §<L§.§!!G§;
   import §@!^§.§`§;
   import §^!K§.§ !$§;
   import flash.geom.Point;
   
   public class §]J§ extends §?8§
   {
      
      private static const §8P§:int = 10;
      
      private static const §6n§:int = 25;
      
      private static const §><§:int = 200;
      
      private static const §2p§:int = 20;
      
      private static const §;^§:int = 100 * §!!G§.§ !E§;
      
      private static const §+_§:int = 3;
      
      private static const §!T§:Number = 0.5;
       
      
      private var §7!T§:Vector.<§,!&§>;
      
      private var §=L§:Vector.<Object>;
      
      private var §+1§:Vector.<§!H§>;
      
      private var §+X§:Vector.<§!H§>;
      
      public function §]J§(param1:§!!G§, param2:§]![§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:§,!&§ = null;
         this.§+1§ = new Vector.<§!H§>(3);
         this.§+1§[0] = new §!H§("BLOCK_FRIES",45,73,§2p§,§+_§,§!T§);
         this.§+1§[1] = new §!H§("BLOCK_SODA",77,87,§2p§,§+_§,§!T§);
         this.§+1§[2] = new §!H§("BLOCK_HAMBURGER",92,135,§2p§,§+_§,§!T§);
         this.§+X§ = new Vector.<§!H§>(3);
         this.§+X§[0] = new §!H§("BLOCK_COOKIE_ROUND",10,80,4,0,§!T§);
         this.§+X§[1] = new §!H§("BLOCK_COOKIE_RECTANGLE",100,170,4,0,§!T§);
         this.§+X§[2] = new §!H§("BLOCK_COOKIE_RECTANGLE",190,350,4,0,§!T§);
         this.§=L§ = new Vector.<Object>();
         this.§7!T§ = new Vector.<§,!&§>();
         var _loc1_:int = 0;
         while(_loc1_ < §?D§.length)
         {
            _loc2_ = §?D§[_loc1_];
            if(_loc2_.§%!O§ == "PIG_KING")
            {
               _loc2_.sprite.parent.setChildIndex(_loc2_.sprite,_loc2_.sprite.parent.numChildren - 1);
            }
            _loc1_++;
         }
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,!&§
      {
         var _loc10_:§,!&§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §7!H§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5I§,param2,param3,param4,param5,false);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §7!H§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5I§,param2,param3,param4,param5,false);
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
         var _loc5_:§,!&§;
         if((_loc5_ = §?D§[param1]).§%!O§ == "BLOCK_HAPPYMEAL")
         {
            if(_loc5_.§3o§ <= 0)
            {
               this.§[r§(_loc5_,"HAPPYMEAL");
            }
         }
         else if(_loc5_.§%!O§ == "BLOCK_LANTERN_ROUND")
         {
            if(_loc5_.§3o§ <= 0)
            {
               this.§[r§(_loc5_,"LANTERN_ROUND");
            }
         }
         else if(_loc5_.§%!O§ == "BLOCK_LANTERN_RECTANGLE")
         {
            if(_loc5_.§3o§ <= 0)
            {
               this.§[r§(_loc5_,"LANTERN_RECT");
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,!&§
      {
         var _loc10_:§,!&§ = null;
         if(param2 == "BLOCK_HAPPYMEAL" || param2 == "BLOCK_FRIES" || param2 == "BLOCK_SODA" || param2 == "BLOCK_HAMBURGER")
         {
            _loc10_ = new §+!X§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5I§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_LANTERN_RECTANGLE" || param2 == "BLOCK_LANTERN_ROUND")
         {
            _loc10_ = new §!2§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5I§,param2,param3,param4,param5,param9);
         }
         else if(param2 == "BLOCK_COOKIE_RECTANGLE" || param2 == "BLOCK_COOKIE_ROUND")
         {
            _loc10_ = new §+!X§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5I§,param2,param3,param4,param5,param9);
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
         var _loc6_:§!!A§ = null;
         super.updateLevelObjectsComplete(param1);
         var _loc2_:§,!&§ = null;
         var _loc3_:int = §?D§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = §?D§[_loc3_];
            if(_loc2_.§%!O§ == "BLOCK_HAPPYMEAL" || _loc2_.§%!O§ == "BLOCK_FRIES" || _loc2_.§%!O§ == "BLOCK_SODA" || _loc2_.§%!O§ == "BLOCK_HAMBURGER")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§%!O§ == "BLOCK_LANTERN_ROUND" || _loc2_.§%!O§ == "BLOCK_LANTERN_RECTANGLE")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§%!O§ == "BLOCK_COOKIE_RECTANGLE" || _loc2_.§%!O§ == "BLOCK_COOKIE_ROUND")
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         _loc3_ = this.§=L§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=L§[_loc3_].time) <= 0)
            {
               _loc5_ = this.§=L§[_loc3_].point;
               _loc6_ = new §!!A§(this);
               switch(this.§=L§[_loc3_].name)
               {
                  case "HAPPYMEAL":
                     break;
                  case "LANTERN_ROUND":
                     _loc6_.§2V§ = 50;
                     _loc6_.§,!R§ = 4;
                     _loc6_.§'e§("BLOCK_LANTERN_ROUND_2",85,95,15);
                     _loc6_.§'e§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§'e§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§'e§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§^I§(_loc5_,30 * §!!G§.§ !E§);
                     break;
                  case "LANTERN_RECT":
                     _loc6_.§2V§ = 50;
                     _loc6_.§,!R§ = 4;
                     _loc6_.§'e§("BLOCK_LANTERN_RECTANGLE_2",85,95,15);
                     _loc6_.§'e§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§'e§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§'e§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§^I§(_loc5_,30 * §!!G§.§ !E§);
               }
               this.§=L§.splice(_loc3_,1);
            }
            else
            {
               this.§=L§[_loc3_].time = _loc4_ - param1;
            }
            _loc3_--;
         }
      }
      
      private function §[r§(param1:§,!&§, param2:String) : void
      {
         var _loc5_:Object = null;
         var _loc3_:Object = new Object();
         _loc3_.point = new Point(param1.§;G§().GetPosition().x,param1.§;G§().GetPosition().y);
         _loc3_.time = §><§;
         _loc3_.name = param2;
         var _loc4_:int = 0;
         while(_loc4_ < this.§=L§.length)
         {
            if(((_loc5_ = this.§=L§[_loc4_]).point as Point).equals(_loc3_.point))
            {
               return;
            }
            _loc4_++;
         }
         this.§=L§.push(_loc3_);
         §]!T§.push(§4n§.createExplosion(§4n§.§3d§,param1.§;G§().GetPosition().x,param1.§;G§().GetPosition().y));
      }
      
      private function §]#§(param1:§,!&§) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = new Object();
         _loc2_.point = new Point(param1.§;G§().GetPosition().x,param1.§;G§().GetPosition().y);
         _loc2_.time = §><§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§=L§.length)
         {
            if(((_loc4_ = this.§=L§[_loc3_]).point as Point).equals(_loc2_.point))
            {
               return;
            }
            _loc3_++;
         }
         this.§=L§.push(_loc2_);
         §]!T§.push(§4n§.createExplosion(§4n§.§3d§,param1.§;G§().GetPosition().x,param1.§;G§().GetPosition().y));
      }
      
      public function §]V§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §`§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§`§ = new §`§(this,_loc5_,mLevelMain.mLevelEngine.mWorld,mLevelMain,§5I§,param1,param2,param3,param4);
         §?D§[§?D§.length] = _loc6_;
         §`o§.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §]!T§.push(§4n§.createExplosion(param1,param2,param3));
         § !$§.§-N§("TntExplosions","ChannelExplosions");
      }
   }
}
