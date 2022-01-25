package §@!M§
{
   import §#[§.§=!Z§;
   import §'!`§.§%!H§;
   import §'!`§.§for§;
   import §-!F§.§`+§;
   import §0@§.Sprite;
   import §55§.§>![§;
   import §]^§.§7G§;
   import flash.geom.Point;
   
   public class §use § extends §for§
   {
      
      private static const §2!,§:int = 10;
      
      private static const §5_§:int = 25;
      
      private static const §0!2§:int = 200;
      
      private static const §1b§:int = 20;
      
      private static const §^9§:int = 100 * §>![§.§%!k§;
      
      private static const §8S§:int = 3;
      
      private static const §=!g§:Number = 0.5;
       
      
      private var §>!4§:Vector.<§%!H§>;
      
      private var §7!g§:Vector.<Object>;
      
      private var §3!`§:Vector.<§8f§>;
      
      private var §0!3§:Vector.<§8f§>;
      
      public function §use §(param1:§>![§, param2:§`+§, param3:Sprite)
      {
         super(param1,param2,param3);
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:§%!H§ = null;
         this.§3!`§ = new Vector.<§8f§>(3);
         this.§3!`§[0] = new §8f§("BLOCK_FRIES",45,73,§1b§,§8S§,§=!g§);
         this.§3!`§[1] = new §8f§("BLOCK_SODA",77,87,§1b§,§8S§,§=!g§);
         this.§3!`§[2] = new §8f§("BLOCK_HAMBURGER",92,135,§1b§,§8S§,§=!g§);
         this.§0!3§ = new Vector.<§8f§>(3);
         this.§0!3§[0] = new §8f§("BLOCK_COOKIE_ROUND",10,80,4,0,§=!g§);
         this.§0!3§[1] = new §8f§("BLOCK_COOKIE_RECTANGLE",100,170,4,0,§=!g§);
         this.§0!3§[2] = new §8f§("BLOCK_COOKIE_RECTANGLE",190,350,4,0,§=!g§);
         this.§7!g§ = new Vector.<Object>();
         this.§>!4§ = new Vector.<§%!H§>();
         var _loc1_:int = 0;
         while(_loc1_ < §4]§.length)
         {
            _loc2_ = §4]§[_loc1_];
            if(_loc2_.§8+§ == "PIG_KING")
            {
               _loc2_.sprite.parent.setChildIndex(_loc2_.sprite,_loc2_.sprite.parent.numChildren - 1);
            }
            _loc1_++;
         }
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%!H§
      {
         var _loc10_:§%!H§ = null;
         switch(param2)
         {
            case "BIRD_BIG_BROTHER":
               _loc10_ = new §>!5§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§0!X§,param2,param3,param4,param5,false);
               break;
            case "BIRD_REDBIG_HEIKKI":
               _loc10_ = new §>!5§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§0!X§,param2,param3,param4,param5,false);
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
         var _loc5_:§%!H§;
         if((_loc5_ = §4]§[param1]).§8+§ == "BLOCK_HAPPYMEAL")
         {
            if(_loc5_.§0!8§ <= 0)
            {
               this.§,!3§(_loc5_,"HAPPYMEAL");
            }
         }
         else if(_loc5_.§8+§ == "BLOCK_LANTERN_ROUND")
         {
            if(_loc5_.§0!8§ <= 0)
            {
               this.§,!3§(_loc5_,"LANTERN_ROUND");
            }
         }
         else if(_loc5_.§8+§ == "BLOCK_LANTERN_RECTANGLE")
         {
            if(_loc5_.§0!8§ <= 0)
            {
               this.§,!3§(_loc5_,"LANTERN_RECT");
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%!H§
      {
         var _loc10_:§%!H§ = null;
         if(param2 == "BLOCK_HAPPYMEAL" || param2 == "BLOCK_FRIES" || param2 == "BLOCK_SODA" || param2 == "BLOCK_HAMBURGER")
         {
            (_loc10_ = new §2<§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§0!X§,param2,param3,param4,param5,param9)).uniqueID = §6K§();
         }
         else if(param2 == "BLOCK_LANTERN_RECTANGLE" || param2 == "BLOCK_LANTERN_ROUND")
         {
            (_loc10_ = new §8!c§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§0!X§,param2,param3,param4,param5,param9)).uniqueID = §6K§();
         }
         else if(param2 == "BLOCK_COOKIE_RECTANGLE" || param2 == "BLOCK_COOKIE_ROUND")
         {
            (_loc10_ = new §2<§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§0!X§,param2,param3,param4,param5,param9)).uniqueID = §6K§();
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
         var _loc6_:§7!c§ = null;
         super.updateLevelObjectsComplete(param1);
         var _loc2_:§%!H§ = null;
         var _loc3_:int = §4]§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = §4]§[_loc3_];
            if(_loc2_.§8+§ == "BLOCK_HAPPYMEAL" || _loc2_.§8+§ == "BLOCK_FRIES" || _loc2_.§8+§ == "BLOCK_SODA" || _loc2_.§8+§ == "BLOCK_HAMBURGER")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§8+§ == "BLOCK_LANTERN_ROUND" || _loc2_.§8+§ == "BLOCK_LANTERN_RECTANGLE")
            {
               _loc2_.update(param1);
            }
            else if(_loc2_.§8+§ == "BLOCK_COOKIE_RECTANGLE" || _loc2_.§8+§ == "BLOCK_COOKIE_ROUND")
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         _loc3_ = this.§7!g§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7!g§[_loc3_].time) <= 0)
            {
               _loc5_ = this.§7!g§[_loc3_].point;
               _loc6_ = new §7!c§(this);
               switch(this.§7!g§[_loc3_].name)
               {
                  case "HAPPYMEAL":
                     break;
                  case "LANTERN_ROUND":
                     _loc6_.§%!1§ = 50;
                     _loc6_.§4!#§ = 4;
                     _loc6_.§]!>§("BLOCK_LANTERN_ROUND_2",85,95,15);
                     _loc6_.§]!>§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§]!>§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§]!>§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§%!T§(_loc5_,30 * §>![§.§%!k§);
                     break;
                  case "LANTERN_RECT":
                     _loc6_.§%!1§ = 50;
                     _loc6_.§4!#§ = 4;
                     _loc6_.§]!>§("BLOCK_LANTERN_RECTANGLE_2",85,95,15);
                     _loc6_.§]!>§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",10,45);
                     _loc6_.§]!>§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",125,180);
                     _loc6_.§]!>§(Math.random() > 0.5 ? "BLOCK_COOKIE_ROUND" : "BLOCK_COOKIE_RECTANGLE",235,315);
                     _loc6_.§%!T§(_loc5_,30 * §>![§.§%!k§);
               }
               this.§7!g§.splice(_loc3_,1);
            }
            else
            {
               this.§7!g§[_loc3_].time = _loc4_ - param1;
            }
            _loc3_--;
         }
      }
      
      private function §,!3§(param1:§%!H§, param2:String) : void
      {
         var _loc5_:Object = null;
         var _loc3_:Object = new Object();
         _loc3_.point = new Point(param1.§&!p§().GetPosition().x,param1.§&!p§().GetPosition().y);
         _loc3_.time = §0!2§;
         _loc3_.name = param2;
         var _loc4_:int = 0;
         while(_loc4_ < this.§7!g§.length)
         {
            if(((_loc5_ = this.§7!g§[_loc4_]).point as Point).equals(_loc3_.point))
            {
               return;
            }
            _loc4_++;
         }
         this.§7!g§.push(_loc3_);
         §1K§.push(§@X§.createExplosion(§@X§.§ P§,param1.§&!p§().GetPosition().x,param1.§&!p§().GetPosition().y));
      }
      
      private function §;!Z§(param1:§%!H§) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Object = new Object();
         _loc2_.point = new Point(param1.§&!p§().GetPosition().x,param1.§&!p§().GetPosition().y);
         _loc2_.time = §0!2§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§7!g§.length)
         {
            if(((_loc4_ = this.§7!g§[_loc3_]).point as Point).equals(_loc2_.point))
            {
               return;
            }
            _loc3_++;
         }
         this.§7!g§.push(_loc2_);
         §1K§.push(§@X§.createExplosion(§@X§.§ P§,param1.§&!p§().GetPosition().x,param1.§&!p§().GetPosition().y));
      }
      
      public function §%>§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §=!Z§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§=!Z§ = new §=!Z§(this,_loc5_,mLevelMain.mLevelEngine.mWorld,mLevelMain,§0!X§,param1,param2,param3,param4);
         §4]§[§4]§.length] = _loc6_;
         §^I§.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §1K§.push(§@X§.createExplosion(param1,param2,param3));
         §7G§.§4W§("TntExplosions","ChannelExplosions");
      }
   }
}
